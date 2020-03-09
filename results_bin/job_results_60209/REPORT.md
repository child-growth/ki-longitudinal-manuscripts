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
* delta_sex
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

agecat        studyid          country                        nrooms    ever_stunted   n_cell       n
------------  ---------------  -----------------------------  -------  -------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          4+                   0        2     373
0-24 months   CMC-V-BCS-2002   INDIA                          4+                   1       12     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0       11     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                    1      191     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                    0        8     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                    1       98     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                    0        7     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                    1       44     373
0-24 months   COHORTS          INDIA                          4+                   0       87    5374
0-24 months   COHORTS          INDIA                          4+                   1       19    5374
0-24 months   COHORTS          INDIA                          1                    0     1943    5374
0-24 months   COHORTS          INDIA                          1                    1     1576    5374
0-24 months   COHORTS          INDIA                          2                    0     1116    5374
0-24 months   COHORTS          INDIA                          2                    1      438    5374
0-24 months   COHORTS          INDIA                          3                    0      143    5374
0-24 months   COHORTS          INDIA                          3                    1       52    5374
0-24 months   CONTENT          PERU                           4+                   0       62     215
0-24 months   CONTENT          PERU                           4+                   1       16     215
0-24 months   CONTENT          PERU                           1                    0       32     215
0-24 months   CONTENT          PERU                           1                    1       12     215
0-24 months   CONTENT          PERU                           2                    0       39     215
0-24 months   CONTENT          PERU                           2                    1       15     215
0-24 months   CONTENT          PERU                           3                    0       29     215
0-24 months   CONTENT          PERU                           3                    1       10     215
0-24 months   GMS-Nepal        NEPAL                          4+                   0      113     698
0-24 months   GMS-Nepal        NEPAL                          4+                   1      210     698
0-24 months   GMS-Nepal        NEPAL                          1                    0       20     698
0-24 months   GMS-Nepal        NEPAL                          1                    1       29     698
0-24 months   GMS-Nepal        NEPAL                          2                    0       49     698
0-24 months   GMS-Nepal        NEPAL                          2                    1       96     698
0-24 months   GMS-Nepal        NEPAL                          3                    0       70     698
0-24 months   GMS-Nepal        NEPAL                          3                    1      111     698
0-24 months   IRC              INDIA                          4+                   0        4     408
0-24 months   IRC              INDIA                          4+                   1       13     408
0-24 months   IRC              INDIA                          1                    0       65     408
0-24 months   IRC              INDIA                          1                    1      120     408
0-24 months   IRC              INDIA                          2                    0       66     408
0-24 months   IRC              INDIA                          2                    1      104     408
0-24 months   IRC              INDIA                          3                    0       10     408
0-24 months   IRC              INDIA                          3                    1       26     408
0-24 months   JiVitA-3         BANGLADESH                     4+                   0      769   27197
0-24 months   JiVitA-3         BANGLADESH                     4+                   1      370   27197
0-24 months   JiVitA-3         BANGLADESH                     1                    0     7848   27197
0-24 months   JiVitA-3         BANGLADESH                     1                    1     8275   27197
0-24 months   JiVitA-3         BANGLADESH                     2                    0     3624   27197
0-24 months   JiVitA-3         BANGLADESH                     2                    1     3696   27197
0-24 months   JiVitA-3         BANGLADESH                     3                    0     1481   27197
0-24 months   JiVitA-3         BANGLADESH                     3                    1     1134   27197
0-24 months   JiVitA-4         BANGLADESH                     4+                   0      143    5426
0-24 months   JiVitA-4         BANGLADESH                     4+                   1      143    5426
0-24 months   JiVitA-4         BANGLADESH                     1                    0     1253    5426
0-24 months   JiVitA-4         BANGLADESH                     1                    1     1938    5426
0-24 months   JiVitA-4         BANGLADESH                     2                    0      610    5426
0-24 months   JiVitA-4         BANGLADESH                     2                    1      777    5426
0-24 months   JiVitA-4         BANGLADESH                     3                    0      263    5426
0-24 months   JiVitA-4         BANGLADESH                     3                    1      299    5426
0-24 months   MAL-ED           BANGLADESH                     4+                   0        8     242
0-24 months   MAL-ED           BANGLADESH                     4+                   1        4     242
0-24 months   MAL-ED           BANGLADESH                     1                    0       56     242
0-24 months   MAL-ED           BANGLADESH                     1                    1       96     242
0-24 months   MAL-ED           BANGLADESH                     2                    0       18     242
0-24 months   MAL-ED           BANGLADESH                     2                    1       32     242
0-24 months   MAL-ED           BANGLADESH                     3                    0       11     242
0-24 months   MAL-ED           BANGLADESH                     3                    1       17     242
0-24 months   MAL-ED           BRAZIL                         4+                   0       97     210
0-24 months   MAL-ED           BRAZIL                         4+                   1       30     210
0-24 months   MAL-ED           BRAZIL                         1                    0        4     210
0-24 months   MAL-ED           BRAZIL                         1                    1        0     210
0-24 months   MAL-ED           BRAZIL                         2                    0       16     210
0-24 months   MAL-ED           BRAZIL                         2                    1        4     210
0-24 months   MAL-ED           BRAZIL                         3                    0       37     210
0-24 months   MAL-ED           BRAZIL                         3                    1       22     210
0-24 months   MAL-ED           INDIA                          4+                   0        9     235
0-24 months   MAL-ED           INDIA                          4+                   1       16     235
0-24 months   MAL-ED           INDIA                          1                    0       38     235
0-24 months   MAL-ED           INDIA                          1                    1       46     235
0-24 months   MAL-ED           INDIA                          2                    0       21     235
0-24 months   MAL-ED           INDIA                          2                    1       57     235
0-24 months   MAL-ED           INDIA                          3                    0       21     235
0-24 months   MAL-ED           INDIA                          3                    1       27     235
0-24 months   MAL-ED           NEPAL                          4+                   0       87     236
0-24 months   MAL-ED           NEPAL                          4+                   1       44     236
0-24 months   MAL-ED           NEPAL                          1                    0       33     236
0-24 months   MAL-ED           NEPAL                          1                    1       19     236
0-24 months   MAL-ED           NEPAL                          2                    0       22     236
0-24 months   MAL-ED           NEPAL                          2                    1        9     236
0-24 months   MAL-ED           NEPAL                          3                    0       12     236
0-24 months   MAL-ED           NEPAL                          3                    1       10     236
0-24 months   MAL-ED           PERU                           4+                   0       47     272
0-24 months   MAL-ED           PERU                           4+                   1       92     272
0-24 months   MAL-ED           PERU                           1                    0        4     272
0-24 months   MAL-ED           PERU                           1                    1       15     272
0-24 months   MAL-ED           PERU                           2                    0       15     272
0-24 months   MAL-ED           PERU                           2                    1       37     272
0-24 months   MAL-ED           PERU                           3                    0       25     272
0-24 months   MAL-ED           PERU                           3                    1       37     272
0-24 months   MAL-ED           SOUTH AFRICA                   4+                   0       78     257
0-24 months   MAL-ED           SOUTH AFRICA                   4+                   1      118     257
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0        5     257
0-24 months   MAL-ED           SOUTH AFRICA                   1                    1        9     257
0-24 months   MAL-ED           SOUTH AFRICA                   2                    0        8     257
0-24 months   MAL-ED           SOUTH AFRICA                   2                    1       14     257
0-24 months   MAL-ED           SOUTH AFRICA                   3                    0        7     257
0-24 months   MAL-ED           SOUTH AFRICA                   3                    1       18     257
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   0       12     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   1       96     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        5     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        8     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    0        8     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1       55     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    0        9     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1       57     250
0-24 months   NIH-Crypto       BANGLADESH                     4+                   0       56     758
0-24 months   NIH-Crypto       BANGLADESH                     4+                   1       39     758
0-24 months   NIH-Crypto       BANGLADESH                     1                    0      174     758
0-24 months   NIH-Crypto       BANGLADESH                     1                    1      194     758
0-24 months   NIH-Crypto       BANGLADESH                     2                    0       98     758
0-24 months   NIH-Crypto       BANGLADESH                     2                    1       93     758
0-24 months   NIH-Crypto       BANGLADESH                     3                    0       68     758
0-24 months   NIH-Crypto       BANGLADESH                     3                    1       36     758
0-24 months   PROVIDE          BANGLADESH                     4+                   0       16     700
0-24 months   PROVIDE          BANGLADESH                     4+                   1        7     700
0-24 months   PROVIDE          BANGLADESH                     1                    0      278     700
0-24 months   PROVIDE          BANGLADESH                     1                    1      229     700
0-24 months   PROVIDE          BANGLADESH                     2                    0       65     700
0-24 months   PROVIDE          BANGLADESH                     2                    1       43     700
0-24 months   PROVIDE          BANGLADESH                     3                    0       36     700
0-24 months   PROVIDE          BANGLADESH                     3                    1       26     700
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   0        7     368
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   1        7     368
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0       93     368
0-6 months    CMC-V-BCS-2002   INDIA                          1                    1      106     368
0-6 months    CMC-V-BCS-2002   INDIA                          2                    0       51     368
0-6 months    CMC-V-BCS-2002   INDIA                          2                    1       53     368
0-6 months    CMC-V-BCS-2002   INDIA                          3                    0       29     368
0-6 months    CMC-V-BCS-2002   INDIA                          3                    1       22     368
0-6 months    COHORTS          INDIA                          4+                   0       91    5193
0-6 months    COHORTS          INDIA                          4+                   1       10    5193
0-6 months    COHORTS          INDIA                          1                    0     2654    5193
0-6 months    COHORTS          INDIA                          1                    1      749    5193
0-6 months    COHORTS          INDIA                          2                    0     1294    5193
0-6 months    COHORTS          INDIA                          2                    1      207    5193
0-6 months    COHORTS          INDIA                          3                    0      164    5193
0-6 months    COHORTS          INDIA                          3                    1       24    5193
0-6 months    CONTENT          PERU                           4+                   0       68     215
0-6 months    CONTENT          PERU                           4+                   1       10     215
0-6 months    CONTENT          PERU                           1                    0       40     215
0-6 months    CONTENT          PERU                           1                    1        4     215
0-6 months    CONTENT          PERU                           2                    0       47     215
0-6 months    CONTENT          PERU                           2                    1        7     215
0-6 months    CONTENT          PERU                           3                    0       33     215
0-6 months    CONTENT          PERU                           3                    1        6     215
0-6 months    GMS-Nepal        NEPAL                          4+                   0      227     698
0-6 months    GMS-Nepal        NEPAL                          4+                   1       96     698
0-6 months    GMS-Nepal        NEPAL                          1                    0       34     698
0-6 months    GMS-Nepal        NEPAL                          1                    1       15     698
0-6 months    GMS-Nepal        NEPAL                          2                    0       97     698
0-6 months    GMS-Nepal        NEPAL                          2                    1       48     698
0-6 months    GMS-Nepal        NEPAL                          3                    0      118     698
0-6 months    GMS-Nepal        NEPAL                          3                    1       63     698
0-6 months    IRC              INDIA                          4+                   0        6     408
0-6 months    IRC              INDIA                          4+                   1       11     408
0-6 months    IRC              INDIA                          1                    0      108     408
0-6 months    IRC              INDIA                          1                    1       77     408
0-6 months    IRC              INDIA                          2                    0       97     408
0-6 months    IRC              INDIA                          2                    1       73     408
0-6 months    IRC              INDIA                          3                    0       23     408
0-6 months    IRC              INDIA                          3                    1       13     408
0-6 months    JiVitA-3         BANGLADESH                     4+                   0      826   27131
0-6 months    JiVitA-3         BANGLADESH                     4+                   1      307   27131
0-6 months    JiVitA-3         BANGLADESH                     1                    0     9222   27131
0-6 months    JiVitA-3         BANGLADESH                     1                    1     6872   27131
0-6 months    JiVitA-3         BANGLADESH                     2                    0     4198   27131
0-6 months    JiVitA-3         BANGLADESH                     2                    1     3102   27131
0-6 months    JiVitA-3         BANGLADESH                     3                    0     1677   27131
0-6 months    JiVitA-3         BANGLADESH                     3                    1      927   27131
0-6 months    JiVitA-4         BANGLADESH                     4+                   0      189    5117
0-6 months    JiVitA-4         BANGLADESH                     4+                   1       79    5117
0-6 months    JiVitA-4         BANGLADESH                     1                    0     1901    5117
0-6 months    JiVitA-4         BANGLADESH                     1                    1     1117    5117
0-6 months    JiVitA-4         BANGLADESH                     2                    0      878    5117
0-6 months    JiVitA-4         BANGLADESH                     2                    1      422    5117
0-6 months    JiVitA-4         BANGLADESH                     3                    0      371    5117
0-6 months    JiVitA-4         BANGLADESH                     3                    1      160    5117
0-6 months    MAL-ED           BANGLADESH                     4+                   0       10     242
0-6 months    MAL-ED           BANGLADESH                     4+                   1        2     242
0-6 months    MAL-ED           BANGLADESH                     1                    0       95     242
0-6 months    MAL-ED           BANGLADESH                     1                    1       57     242
0-6 months    MAL-ED           BANGLADESH                     2                    0       33     242
0-6 months    MAL-ED           BANGLADESH                     2                    1       17     242
0-6 months    MAL-ED           BANGLADESH                     3                    0       22     242
0-6 months    MAL-ED           BANGLADESH                     3                    1        6     242
0-6 months    MAL-ED           BRAZIL                         4+                   0      103     210
0-6 months    MAL-ED           BRAZIL                         4+                   1       24     210
0-6 months    MAL-ED           BRAZIL                         1                    0        4     210
0-6 months    MAL-ED           BRAZIL                         1                    1        0     210
0-6 months    MAL-ED           BRAZIL                         2                    0       16     210
0-6 months    MAL-ED           BRAZIL                         2                    1        4     210
0-6 months    MAL-ED           BRAZIL                         3                    0       42     210
0-6 months    MAL-ED           BRAZIL                         3                    1       17     210
0-6 months    MAL-ED           INDIA                          4+                   0       18     235
0-6 months    MAL-ED           INDIA                          4+                   1        7     235
0-6 months    MAL-ED           INDIA                          1                    0       58     235
0-6 months    MAL-ED           INDIA                          1                    1       26     235
0-6 months    MAL-ED           INDIA                          2                    0       45     235
0-6 months    MAL-ED           INDIA                          2                    1       33     235
0-6 months    MAL-ED           INDIA                          3                    0       33     235
0-6 months    MAL-ED           INDIA                          3                    1       15     235
0-6 months    MAL-ED           NEPAL                          4+                   0      108     236
0-6 months    MAL-ED           NEPAL                          4+                   1       23     236
0-6 months    MAL-ED           NEPAL                          1                    0       43     236
0-6 months    MAL-ED           NEPAL                          1                    1        9     236
0-6 months    MAL-ED           NEPAL                          2                    0       28     236
0-6 months    MAL-ED           NEPAL                          2                    1        3     236
0-6 months    MAL-ED           NEPAL                          3                    0       16     236
0-6 months    MAL-ED           NEPAL                          3                    1        6     236
0-6 months    MAL-ED           PERU                           4+                   0       79     272
0-6 months    MAL-ED           PERU                           4+                   1       60     272
0-6 months    MAL-ED           PERU                           1                    0        7     272
0-6 months    MAL-ED           PERU                           1                    1       12     272
0-6 months    MAL-ED           PERU                           2                    0       27     272
0-6 months    MAL-ED           PERU                           2                    1       25     272
0-6 months    MAL-ED           PERU                           3                    0       37     272
0-6 months    MAL-ED           PERU                           3                    1       25     272
0-6 months    MAL-ED           SOUTH AFRICA                   4+                   0      119     257
0-6 months    MAL-ED           SOUTH AFRICA                   4+                   1       77     257
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0        9     257
0-6 months    MAL-ED           SOUTH AFRICA                   1                    1        5     257
0-6 months    MAL-ED           SOUTH AFRICA                   2                    0       14     257
0-6 months    MAL-ED           SOUTH AFRICA                   2                    1        8     257
0-6 months    MAL-ED           SOUTH AFRICA                   3                    0       14     257
0-6 months    MAL-ED           SOUTH AFRICA                   3                    1       11     257
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   0       64     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   1       44     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        8     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        5     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    0       31     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1       32     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    0       44     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1       22     250
0-6 months    NIH-Crypto       BANGLADESH                     4+                   0       68     758
0-6 months    NIH-Crypto       BANGLADESH                     4+                   1       27     758
0-6 months    NIH-Crypto       BANGLADESH                     1                    0      254     758
0-6 months    NIH-Crypto       BANGLADESH                     1                    1      114     758
0-6 months    NIH-Crypto       BANGLADESH                     2                    0      128     758
0-6 months    NIH-Crypto       BANGLADESH                     2                    1       63     758
0-6 months    NIH-Crypto       BANGLADESH                     3                    0       79     758
0-6 months    NIH-Crypto       BANGLADESH                     3                    1       25     758
0-6 months    PROVIDE          BANGLADESH                     4+                   0       19     700
0-6 months    PROVIDE          BANGLADESH                     4+                   1        4     700
0-6 months    PROVIDE          BANGLADESH                     1                    0      381     700
0-6 months    PROVIDE          BANGLADESH                     1                    1      126     700
0-6 months    PROVIDE          BANGLADESH                     2                    0       85     700
0-6 months    PROVIDE          BANGLADESH                     2                    1       23     700
0-6 months    PROVIDE          BANGLADESH                     3                    0       47     700
0-6 months    PROVIDE          BANGLADESH                     3                    1       15     700
6-24 months   CMC-V-BCS-2002   INDIA                          4+                   0        2     185
6-24 months   CMC-V-BCS-2002   INDIA                          4+                   1        5     185
6-24 months   CMC-V-BCS-2002   INDIA                          1                    0       11     185
6-24 months   CMC-V-BCS-2002   INDIA                          1                    1       85     185
6-24 months   CMC-V-BCS-2002   INDIA                          2                    0        8     185
6-24 months   CMC-V-BCS-2002   INDIA                          2                    1       45     185
6-24 months   CMC-V-BCS-2002   INDIA                          3                    0        7     185
6-24 months   CMC-V-BCS-2002   INDIA                          3                    1       22     185
6-24 months   COHORTS          INDIA                          4+                   0       77    4108
6-24 months   COHORTS          INDIA                          4+                   1        9    4108
6-24 months   COHORTS          INDIA                          1                    0     1740    4108
6-24 months   COHORTS          INDIA                          1                    1      827    4108
6-24 months   COHORTS          INDIA                          2                    0     1059    4108
6-24 months   COHORTS          INDIA                          2                    1      231    4108
6-24 months   COHORTS          INDIA                          3                    0      137    4108
6-24 months   COHORTS          INDIA                          3                    1       28    4108
6-24 months   CONTENT          PERU                           4+                   0       62     188
6-24 months   CONTENT          PERU                           4+                   1        6     188
6-24 months   CONTENT          PERU                           1                    0       32     188
6-24 months   CONTENT          PERU                           1                    1        8     188
6-24 months   CONTENT          PERU                           2                    0       39     188
6-24 months   CONTENT          PERU                           2                    1        8     188
6-24 months   CONTENT          PERU                           3                    0       29     188
6-24 months   CONTENT          PERU                           3                    1        4     188
6-24 months   GMS-Nepal        NEPAL                          4+                   0       82     397
6-24 months   GMS-Nepal        NEPAL                          4+                   1      114     397
6-24 months   GMS-Nepal        NEPAL                          1                    0       11     397
6-24 months   GMS-Nepal        NEPAL                          1                    1       14     397
6-24 months   GMS-Nepal        NEPAL                          2                    0       36     397
6-24 months   GMS-Nepal        NEPAL                          2                    1       48     397
6-24 months   GMS-Nepal        NEPAL                          3                    0       44     397
6-24 months   GMS-Nepal        NEPAL                          3                    1       48     397
6-24 months   IRC              INDIA                          4+                   0        4     234
6-24 months   IRC              INDIA                          4+                   1        2     234
6-24 months   IRC              INDIA                          1                    0       65     234
6-24 months   IRC              INDIA                          1                    1       43     234
6-24 months   IRC              INDIA                          2                    0       66     234
6-24 months   IRC              INDIA                          2                    1       31     234
6-24 months   IRC              INDIA                          3                    0       10     234
6-24 months   IRC              INDIA                          3                    1       13     234
6-24 months   JiVitA-3         BANGLADESH                     4+                   0      503   10486
6-24 months   JiVitA-3         BANGLADESH                     4+                   1       63   10486
6-24 months   JiVitA-3         BANGLADESH                     1                    0     4479   10486
6-24 months   JiVitA-3         BANGLADESH                     1                    1     1403   10486
6-24 months   JiVitA-3         BANGLADESH                     2                    0     2301   10486
6-24 months   JiVitA-3         BANGLADESH                     2                    1      594   10486
6-24 months   JiVitA-3         BANGLADESH                     3                    0      936   10486
6-24 months   JiVitA-3         BANGLADESH                     3                    1      207   10486
6-24 months   JiVitA-4         BANGLADESH                     4+                   0      142    3644
6-24 months   JiVitA-4         BANGLADESH                     4+                   1       64    3644
6-24 months   JiVitA-4         BANGLADESH                     1                    0     1252    3644
6-24 months   JiVitA-4         BANGLADESH                     1                    1      821    3644
6-24 months   JiVitA-4         BANGLADESH                     2                    0      609    3644
6-24 months   JiVitA-4         BANGLADESH                     2                    1      355    3644
6-24 months   JiVitA-4         BANGLADESH                     3                    0      262    3644
6-24 months   JiVitA-4         BANGLADESH                     3                    1      139    3644
6-24 months   MAL-ED           BANGLADESH                     4+                   0        8     158
6-24 months   MAL-ED           BANGLADESH                     4+                   1        2     158
6-24 months   MAL-ED           BANGLADESH                     1                    0       55     158
6-24 months   MAL-ED           BANGLADESH                     1                    1       39     158
6-24 months   MAL-ED           BANGLADESH                     2                    0       17     158
6-24 months   MAL-ED           BANGLADESH                     2                    1       15     158
6-24 months   MAL-ED           BANGLADESH                     3                    0       11     158
6-24 months   MAL-ED           BANGLADESH                     3                    1       11     158
6-24 months   MAL-ED           BRAZIL                         4+                   0       96     163
6-24 months   MAL-ED           BRAZIL                         4+                   1        6     163
6-24 months   MAL-ED           BRAZIL                         1                    0        4     163
6-24 months   MAL-ED           BRAZIL                         1                    1        0     163
6-24 months   MAL-ED           BRAZIL                         2                    0       15     163
6-24 months   MAL-ED           BRAZIL                         2                    1        0     163
6-24 months   MAL-ED           BRAZIL                         3                    0       37     163
6-24 months   MAL-ED           BRAZIL                         3                    1        5     163
6-24 months   MAL-ED           INDIA                          4+                   0        9     154
6-24 months   MAL-ED           INDIA                          4+                   1        9     154
6-24 months   MAL-ED           INDIA                          1                    0       38     154
6-24 months   MAL-ED           INDIA                          1                    1       20     154
6-24 months   MAL-ED           INDIA                          2                    0       21     154
6-24 months   MAL-ED           INDIA                          2                    1       24     154
6-24 months   MAL-ED           INDIA                          3                    0       21     154
6-24 months   MAL-ED           INDIA                          3                    1       12     154
6-24 months   MAL-ED           NEPAL                          4+                   0       87     194
6-24 months   MAL-ED           NEPAL                          4+                   1       21     194
6-24 months   MAL-ED           NEPAL                          1                    0       32     194
6-24 months   MAL-ED           NEPAL                          1                    1       10     194
6-24 months   MAL-ED           NEPAL                          2                    0       22     194
6-24 months   MAL-ED           NEPAL                          2                    1        6     194
6-24 months   MAL-ED           NEPAL                          3                    0       12     194
6-24 months   MAL-ED           NEPAL                          3                    1        4     194
6-24 months   MAL-ED           PERU                           4+                   0       47     149
6-24 months   MAL-ED           PERU                           4+                   1       32     149
6-24 months   MAL-ED           PERU                           1                    0        4     149
6-24 months   MAL-ED           PERU                           1                    1        3     149
6-24 months   MAL-ED           PERU                           2                    0       14     149
6-24 months   MAL-ED           PERU                           2                    1       12     149
6-24 months   MAL-ED           PERU                           3                    0       25     149
6-24 months   MAL-ED           PERU                           3                    1       12     149
6-24 months   MAL-ED           SOUTH AFRICA                   4+                   0       78     155
6-24 months   MAL-ED           SOUTH AFRICA                   4+                   1       41     155
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0        5     155
6-24 months   MAL-ED           SOUTH AFRICA                   1                    1        4     155
6-24 months   MAL-ED           SOUTH AFRICA                   2                    0        8     155
6-24 months   MAL-ED           SOUTH AFRICA                   2                    1        6     155
6-24 months   MAL-ED           SOUTH AFRICA                   3                    0        6     155
6-24 months   MAL-ED           SOUTH AFRICA                   3                    1        7     155
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   0       12     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   1       52     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        4     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        3     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    0        7     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1       23     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    0        8     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1       35     144
6-24 months   NIH-Crypto       BANGLADESH                     4+                   0       52     506
6-24 months   NIH-Crypto       BANGLADESH                     4+                   1       12     506
6-24 months   NIH-Crypto       BANGLADESH                     1                    0      157     506
6-24 months   NIH-Crypto       BANGLADESH                     1                    1       80     506
6-24 months   NIH-Crypto       BANGLADESH                     2                    0       96     506
6-24 months   NIH-Crypto       BANGLADESH                     2                    1       30     506
6-24 months   NIH-Crypto       BANGLADESH                     3                    0       68     506
6-24 months   NIH-Crypto       BANGLADESH                     3                    1       11     506
6-24 months   PROVIDE          BANGLADESH                     4+                   0       15     456
6-24 months   PROVIDE          BANGLADESH                     4+                   1        3     456
6-24 months   PROVIDE          BANGLADESH                     1                    0      217     456
6-24 months   PROVIDE          BANGLADESH                     1                    1      103     456
6-24 months   PROVIDE          BANGLADESH                     2                    0       55     456
6-24 months   PROVIDE          BANGLADESH                     2                    1       20     456
6-24 months   PROVIDE          BANGLADESH                     3                    0       32     456
6-24 months   PROVIDE          BANGLADESH                     3                    1       11     456


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




# Results Detail

## Results Plots
![](/tmp/7bad66b8-800f-4127-8589-9f230d8ee24b/3c641615-0624-4ad1-90e5-23c3c1baf288/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7bad66b8-800f-4127-8589-9f230d8ee24b/3c641615-0624-4ad1-90e5-23c3c1baf288/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7bad66b8-800f-4127-8589-9f230d8ee24b/3c641615-0624-4ad1-90e5-23c3c1baf288/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7bad66b8-800f-4127-8589-9f230d8ee24b/3c641615-0624-4ad1-90e5-23c3c1baf288/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          INDIA                          4+                   NA                0.2516287   0.1984852   0.3047723
0-24 months   COHORTS          INDIA                          1                    NA                0.4233436   0.4064977   0.4401896
0-24 months   COHORTS          INDIA                          2                    NA                0.3270353   0.2998578   0.3542127
0-24 months   COHORTS          INDIA                          3                    NA                0.3454971   0.2849561   0.4060382
0-24 months   CONTENT          PERU                           4+                   NA                0.2087750   0.1175235   0.3000264
0-24 months   CONTENT          PERU                           1                    NA                0.2668799   0.1305511   0.4032087
0-24 months   CONTENT          PERU                           2                    NA                0.2736959   0.1504391   0.3969528
0-24 months   CONTENT          PERU                           3                    NA                0.2503256   0.1096924   0.3909588
0-24 months   GMS-Nepal        NEPAL                          4+                   NA                0.6646692   0.6131499   0.7161885
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.5634919   0.4189575   0.7080264
0-24 months   GMS-Nepal        NEPAL                          2                    NA                0.6512788   0.5729008   0.7296569
0-24 months   GMS-Nepal        NEPAL                          3                    NA                0.6083815   0.5360103   0.6807527
0-24 months   JiVitA-3         BANGLADESH                     4+                   NA                0.4046204   0.3885185   0.4207223
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.4981280   0.4866693   0.5095868
0-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.4939709   0.4766370   0.5113048
0-24 months   JiVitA-3         BANGLADESH                     3                    NA                0.4786663   0.4564812   0.5008514
0-24 months   JiVitA-4         BANGLADESH                     4+                   NA                0.6847852   0.6298012   0.7397691
0-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.5735764   0.5480576   0.5990951
0-24 months   JiVitA-4         BANGLADESH                     2                    NA                0.5667006   0.5180435   0.6153577
0-24 months   JiVitA-4         BANGLADESH                     3                    NA                0.5919327   0.5439569   0.6399086
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
0-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.4661319   0.3688426   0.5634212
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.5081203   0.4581525   0.5580880
0-24 months   NIH-Crypto       BANGLADESH                     2                    NA                0.4827923   0.4103609   0.5552237
0-24 months   NIH-Crypto       BANGLADESH                     3                    NA                0.3555273   0.2637831   0.4472716
0-24 months   PROVIDE          BANGLADESH                     4+                   NA                0.3043478   0.1161668   0.4925288
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.4516765   0.4083268   0.4950263
0-24 months   PROVIDE          BANGLADESH                     2                    NA                0.3981481   0.3057605   0.4905358
0-24 months   PROVIDE          BANGLADESH                     3                    NA                0.4193548   0.2964387   0.5422710
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                0.5000000   0.2377322   0.7622678
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.5326633   0.4632482   0.6020784
0-6 months    CMC-V-BCS-2002   INDIA                          2                    NA                0.5096154   0.4134072   0.6058236
0-6 months    CMC-V-BCS-2002   INDIA                          3                    NA                0.4313725   0.2952613   0.5674838
0-6 months    COHORTS          INDIA                          4+                   NA                0.1302895   0.0871140   0.1734651
0-6 months    COHORTS          INDIA                          1                    NA                0.2077292   0.1938603   0.2215981
0-6 months    COHORTS          INDIA                          2                    NA                0.1491780   0.1278681   0.1704879
0-6 months    COHORTS          INDIA                          3                    NA                0.1670042   0.1157492   0.2182593
0-6 months    GMS-Nepal        NEPAL                          4+                   NA                0.3061885   0.2548718   0.3575053
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.2852769   0.1609641   0.4095898
0-6 months    GMS-Nepal        NEPAL                          2                    NA                0.3129588   0.2355427   0.3903749
0-6 months    GMS-Nepal        NEPAL                          3                    NA                0.3500427   0.2788376   0.4212477
0-6 months    IRC              INDIA                          4+                   NA                0.6470588   0.4196122   0.8745055
0-6 months    IRC              INDIA                          1                    NA                0.4162162   0.3450980   0.4873344
0-6 months    IRC              INDIA                          2                    NA                0.4294118   0.3549120   0.5039115
0-6 months    IRC              INDIA                          3                    NA                0.3611111   0.2040159   0.5182063
0-6 months    JiVitA-3         BANGLADESH                     4+                   NA                0.3445013   0.3292074   0.3597952
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.4133799   0.4021644   0.4245955
0-6 months    JiVitA-3         BANGLADESH                     2                    NA                0.4103744   0.3934132   0.4273355
0-6 months    JiVitA-3         BANGLADESH                     3                    NA                0.3913857   0.3695386   0.4132328
0-6 months    JiVitA-4         BANGLADESH                     4+                   NA                0.3423558   0.2937749   0.3909368
0-6 months    JiVitA-4         BANGLADESH                     1                    NA                0.3557072   0.3302313   0.3811831
0-6 months    JiVitA-4         BANGLADESH                     2                    NA                0.3338279   0.2951070   0.3725487
0-6 months    JiVitA-4         BANGLADESH                     3                    NA                0.3544643   0.3037447   0.4051840
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
0-6 months    NIH-Crypto       BANGLADESH                     4+                   NA                0.3265820   0.2342519   0.4189122
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.2964395   0.2495642   0.3433147
0-6 months    NIH-Crypto       BANGLADESH                     2                    NA                0.3318813   0.2649699   0.3987927
0-6 months    NIH-Crypto       BANGLADESH                     3                    NA                0.2488955   0.1644253   0.3333657
6-24 months   COHORTS          INDIA                          4+                   NA                0.1046512   0.0504701   0.1588323
6-24 months   COHORTS          INDIA                          1                    NA                0.3221660   0.3040863   0.3402456
6-24 months   COHORTS          INDIA                          2                    NA                0.1790698   0.1581445   0.1999950
6-24 months   COHORTS          INDIA                          3                    NA                0.1696970   0.1124155   0.2269785
6-24 months   GMS-Nepal        NEPAL                          4+                   NA                0.5789864   0.5094507   0.6485220
6-24 months   GMS-Nepal        NEPAL                          1                    NA                0.5506936   0.3522003   0.7491869
6-24 months   GMS-Nepal        NEPAL                          2                    NA                0.5634421   0.4561580   0.6707262
6-24 months   GMS-Nepal        NEPAL                          3                    NA                0.5213303   0.4178230   0.6248375
6-24 months   JiVitA-3         BANGLADESH                     4+                   NA                0.1298004   0.1023013   0.1572995
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.2284272   0.2156994   0.2411549
6-24 months   JiVitA-3         BANGLADESH                     2                    NA                0.2126058   0.1934099   0.2318017
6-24 months   JiVitA-3         BANGLADESH                     3                    NA                0.1804817   0.1558308   0.2051326
6-24 months   JiVitA-4         BANGLADESH                     4+                   NA                0.4821282   0.4131109   0.5511456
6-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.3618515   0.3347848   0.3889181
6-24 months   JiVitA-4         BANGLADESH                     2                    NA                0.3733687   0.3115104   0.4352270
6-24 months   JiVitA-4         BANGLADESH                     3                    NA                0.3859504   0.3246331   0.4472677
6-24 months   MAL-ED           INDIA                          4+                   NA                0.5000000   0.2682624   0.7317376
6-24 months   MAL-ED           INDIA                          1                    NA                0.3448276   0.2221041   0.4675510
6-24 months   MAL-ED           INDIA                          2                    NA                0.5333333   0.3870957   0.6795710
6-24 months   MAL-ED           INDIA                          3                    NA                0.3636364   0.1989749   0.5282979
6-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.1961391   0.0995072   0.2927709
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.3333312   0.2729846   0.3936778
6-24 months   NIH-Crypto       BANGLADESH                     2                    NA                0.2387602   0.1634399   0.3140804
6-24 months   NIH-Crypto       BANGLADESH                     3                    NA                0.1394298   0.0619266   0.2169330


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          INDIA                          NA                   NA                0.3879792   0.3749497   0.4010086
0-24 months   CONTENT          PERU                           NA                   NA                0.2465116   0.1887688   0.3042545
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.6389685   0.6033115   0.6746254
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4954591   0.4876236   0.5032945
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.5818282   0.5658219   0.5978346
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
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.4131068   0.4056579   0.4205556
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.3474692   0.3322601   0.3626783
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3446809   0.2837868   0.4055749
0-6 months    MAL-ED           PERU                           NA                   NA                0.4485294   0.3893160   0.5077428
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.3929961   0.3331663   0.4528260
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4120000   0.3508656   0.4731344
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
6-24 months   COHORTS          INDIA                          NA                   NA                0.2665531   0.2530304   0.2800757
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2161930   0.2068189   0.2255671
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3784303   0.3598372   0.3970234
6-24 months   MAL-ED           INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          1                    4+                1.6824137   1.3574402   2.0851863
0-24 months   COHORTS          INDIA                          2                    4+                1.2996737   1.0361261   1.6302569
0-24 months   COHORTS          INDIA                          3                    4+                1.3730432   1.0439339   1.8059072
0-24 months   CONTENT          PERU                           4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   CONTENT          PERU                           1                    4+                1.2783137   0.6520946   2.5059032
0-24 months   CONTENT          PERU                           2                    4+                1.3109614   0.7001232   2.4547391
0-24 months   CONTENT          PERU                           3                    4+                1.1990211   0.5886053   2.4424717
0-24 months   GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          1                    4+                0.8477781   0.6485119   1.1082720
0-24 months   GMS-Nepal        NEPAL                          2                    4+                0.9798541   0.8494003   1.1303434
0-24 months   GMS-Nepal        NEPAL                          3                    4+                0.9153148   0.7942523   1.0548300
0-24 months   JiVitA-3         BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     1                    4+                1.2310995   1.1775527   1.2870813
0-24 months   JiVitA-3         BANGLADESH                     2                    4+                1.2208255   1.1588429   1.2861235
0-24 months   JiVitA-3         BANGLADESH                     3                    4+                1.1830008   1.1141680   1.2560861
0-24 months   JiVitA-4         BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     1                    4+                0.8376004   0.7641891   0.9180640
0-24 months   JiVitA-4         BANGLADESH                     2                    4+                0.8275597   0.7398049   0.9257237
0-24 months   JiVitA-4         BANGLADESH                     3                    4+                0.8644064   0.7718742   0.9680314
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
0-24 months   NIH-Crypto       BANGLADESH                     1                    4+                1.0900783   0.8672569   1.3701485
0-24 months   NIH-Crypto       BANGLADESH                     2                    4+                1.0357418   0.8019022   1.3377706
0-24 months   NIH-Crypto       BANGLADESH                     3                    4+                0.7627183   0.5474610   1.0626130
0-24 months   PROVIDE          BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     1                    4+                1.4840800   0.7938043   2.7746052
0-24 months   PROVIDE          BANGLADESH                     2                    4+                1.3082011   0.6758638   2.5321522
0-24 months   PROVIDE          BANGLADESH                     3                    4+                1.3778802   0.6950869   2.7313908
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          1                    4+                1.0653266   0.6205185   1.8289880
0-6 months    CMC-V-BCS-2002   INDIA                          2                    4+                1.0192308   0.5836661   1.7798384
0-6 months    CMC-V-BCS-2002   INDIA                          3                    4+                0.8627451   0.4677782   1.5912011
0-6 months    COHORTS          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          1                    4+                1.5943661   1.1372499   2.2352194
0-6 months    COHORTS          INDIA                          2                    4+                1.1449732   0.7981958   1.6424085
0-6 months    COHORTS          INDIA                          3                    4+                1.2817932   0.8160613   2.0133216
0-6 months    GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          1                    4+                0.9317036   0.5842045   1.4859037
0-6 months    GMS-Nepal        NEPAL                          2                    4+                1.0221115   0.7582212   1.3778459
0-6 months    GMS-Nepal        NEPAL                          3                    4+                1.1432259   0.8783685   1.4879466
0-6 months    IRC              INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          1                    4+                0.6432432   0.4351475   0.9508542
0-6 months    IRC              INDIA                          2                    4+                0.6636364   0.4484253   0.9821328
0-6 months    IRC              INDIA                          3                    4+                0.5580808   0.3190054   0.9763289
0-6 months    JiVitA-3         BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     1                    4+                1.1999371   1.1413775   1.2615012
0-6 months    JiVitA-3         BANGLADESH                     2                    4+                1.1912127   1.1215770   1.2651720
0-6 months    JiVitA-3         BANGLADESH                     3                    4+                1.1360933   1.0600756   1.2175622
0-6 months    JiVitA-4         BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     1                    4+                1.0389986   0.8872306   1.2167276
0-6 months    JiVitA-4         BANGLADESH                     2                    4+                0.9750904   0.8141017   1.1679146
0-6 months    JiVitA-4         BANGLADESH                     3                    4+                1.0353683   0.8423063   1.2726813
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
0-6 months    NIH-Crypto       BANGLADESH                     1                    4+                0.9077030   0.6572642   1.2535669
0-6 months    NIH-Crypto       BANGLADESH                     2                    4+                1.0162264   0.7186389   1.4370444
0-6 months    NIH-Crypto       BANGLADESH                     3                    4+                0.7621224   0.4899847   1.1854057
6-24 months   COHORTS          INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          1                    4+                3.0784747   1.8288201   5.1820330
6-24 months   COHORTS          INDIA                          2                    4+                1.7111111   1.0064091   2.9092556
6-24 months   COHORTS          INDIA                          3                    4+                1.6215488   0.8740056   3.0084711
6-24 months   GMS-Nepal        NEPAL                          4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          1                    4+                0.9511339   0.6505395   1.3906239
6-24 months   GMS-Nepal        NEPAL                          2                    4+                0.9731526   0.7767311   1.2192455
6-24 months   GMS-Nepal        NEPAL                          3                    4+                0.9004189   0.7138389   1.1357663
6-24 months   JiVitA-3         BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     1                    4+                1.7598341   1.4139935   2.1902620
6-24 months   JiVitA-3         BANGLADESH                     2                    4+                1.6379441   1.3038718   2.0576109
6-24 months   JiVitA-3         BANGLADESH                     3                    4+                1.3904559   1.0809552   1.7885734
6-24 months   JiVitA-4         BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     1                    4+                0.7505295   0.6416352   0.8779047
6-24 months   JiVitA-4         BANGLADESH                     2                    4+                0.7744178   0.6221164   0.9640044
6-24 months   JiVitA-4         BANGLADESH                     3                    4+                0.8005140   0.6493474   0.9868719
6-24 months   MAL-ED           INDIA                          4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          1                    4+                0.6896552   0.3844582   1.2371286
6-24 months   MAL-ED           INDIA                          2                    4+                1.0666667   0.6225253   1.8276811
6-24 months   MAL-ED           INDIA                          3                    4+                0.7272727   0.3804443   1.3902840
6-24 months   NIH-Crypto       BANGLADESH                     4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     1                    4+                1.6994634   1.0057115   2.8717737
6-24 months   NIH-Crypto       BANGLADESH                     2                    4+                1.2173003   0.6783994   2.1842884
6-24 months   NIH-Crypto       BANGLADESH                     3                    4+                0.7108721   0.3382978   1.4937697


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          INDIA                          4+                   NA                 0.1363504    0.0830920    0.1896088
0-24 months   CONTENT          PERU                           4+                   NA                 0.0377367   -0.0378530    0.1133263
0-24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0257007   -0.0638737    0.0124723
0-24 months   JiVitA-3         BANGLADESH                     4+                   NA                 0.0908386    0.0743770    0.1073003
0-24 months   JiVitA-4         BANGLADESH                     4+                   NA                -0.1029569   -0.1568029   -0.0491109
0-24 months   MAL-ED           INDIA                          4+                   NA                -0.0187234   -0.1971951    0.1597482
0-24 months   MAL-ED           NEPAL                          4+                   NA                 0.0115798   -0.0430333    0.0661928
0-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0166362   -0.0159799    0.0492523
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0248889   -0.0727688    0.0229910
0-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.0114407   -0.0795214    0.1024027
0-24 months   PROVIDE          BANGLADESH                     4+                   NA                 0.1313665   -0.0542035    0.3169364
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0108696   -0.2463587    0.2680978
0-6 months    COHORTS          INDIA                          4+                   NA                 0.0603517    0.0169752    0.1037283
0-6 months    GMS-Nepal        NEPAL                          4+                   NA                 0.0118631   -0.0266858    0.0504119
0-6 months    IRC              INDIA                          4+                   NA                -0.2205882   -0.4435895    0.0024130
0-6 months    JiVitA-3         BANGLADESH                     4+                   NA                 0.0686055    0.0530323    0.0841786
0-6 months    JiVitA-4         BANGLADESH                     4+                   NA                 0.0051134   -0.0434549    0.0536817
0-6 months    MAL-ED           INDIA                          4+                   NA                 0.0646809   -0.1032443    0.2326060
0-6 months    MAL-ED           PERU                           4+                   NA                 0.0168747   -0.0410573    0.0748067
0-6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0001390   -0.0332432    0.0335212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0045926   -0.0654787    0.0746638
0-6 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0244712   -0.1110079    0.0620655
6-24 months   COHORTS          INDIA                          4+                   NA                 0.1619019    0.1073888    0.2164150
6-24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0147546   -0.0645785    0.0350692
6-24 months   JiVitA-3         BANGLADESH                     4+                   NA                 0.0863926    0.0587387    0.1140465
6-24 months   JiVitA-4         BANGLADESH                     4+                   NA                -0.1036979   -0.1707798   -0.0366160
6-24 months   MAL-ED           INDIA                          4+                   NA                -0.0779221   -0.2953456    0.1395014
6-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.0667068   -0.0253262    0.1587397


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          INDIA                          4+                   NA                 0.3514375    0.1998470    0.4743088
0-24 months   CONTENT          PERU                           4+                   NA                 0.1530827   -0.2151732    0.4097393
0-24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0402222   -0.1018222    0.0179339
0-24 months   JiVitA-3         BANGLADESH                     4+                   NA                 0.1833424    0.1501637    0.2152257
0-24 months   JiVitA-4         BANGLADESH                     4+                   NA                -0.1769542   -0.2737777   -0.0874905
0-24 months   MAL-ED           INDIA                          4+                   NA                -0.0301370   -0.3615044    0.2205812
0-24 months   MAL-ED           NEPAL                          4+                   NA                 0.0333271   -0.1373558    0.1783957
0-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0268900   -0.0274276    0.0783359
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0288066   -0.0859740    0.0253514
0-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.0239559   -0.1863510    0.1969812
0-24 months   PROVIDE          BANGLADESH                     4+                   NA                 0.3014968   -0.2853100    0.6203976
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0212766   -0.6371469    0.4148970
0-6 months    COHORTS          INDIA                          4+                   NA                 0.3165722    0.0491444    0.5087860
0-6 months    GMS-Nepal        NEPAL                          4+                   NA                 0.0372992   -0.0918583    0.1511784
0-6 months    IRC              INDIA                          4+                   NA                -0.5172414   -1.1472988   -0.0720545
0-6 months    JiVitA-3         BANGLADESH                     4+                   NA                 0.1660720    0.1282573    0.2022462
0-6 months    JiVitA-4         BANGLADESH                     4+                   NA                 0.0147161   -0.1353479    0.1449456
0-6 months    MAL-ED           INDIA                          4+                   NA                 0.1876543   -0.4794960    0.5539660
0-6 months    MAL-ED           PERU                           4+                   NA                 0.0376224   -0.1006676    0.1585373
0-6 months    MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0003536   -0.0883025    0.0817876
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0111471   -0.1744343    0.1674033
0-6 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0810008   -0.4092202    0.1707735
6-24 months   COHORTS          INDIA                          4+                   NA                 0.6073909    0.3428302    0.7654458
6-24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0261499   -0.1184126    0.0585016
6-24 months   JiVitA-3         BANGLADESH                     4+                   NA                 0.3996088    0.2595995    0.5131424
6-24 months   JiVitA-4         BANGLADESH                     4+                   NA                -0.2740212   -0.4653045   -0.1077083
6-24 months   MAL-ED           INDIA                          4+                   NA                -0.1846154   -0.8311894    0.2336600
6-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.2537867   -0.1910606    0.5324887
