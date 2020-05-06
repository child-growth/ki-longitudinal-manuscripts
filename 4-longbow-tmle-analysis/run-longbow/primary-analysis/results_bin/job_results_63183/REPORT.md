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

agecat        studyid          country                        nrooms    ever_stunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  -------  -------------  -------  ------  -----------------
0-24 months   CMC-V-BCS-2002   INDIA                          4+                   0        2     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          4+                   1       12     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0       11     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          1                    1      191     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          2                    0        8     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          2                    1       98     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          3                    0        7     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          3                    1       44     373  ever_stunted     
0-24 months   COHORTS          INDIA                          4+                   0       87    5374  ever_stunted     
0-24 months   COHORTS          INDIA                          4+                   1       19    5374  ever_stunted     
0-24 months   COHORTS          INDIA                          1                    0     1943    5374  ever_stunted     
0-24 months   COHORTS          INDIA                          1                    1     1576    5374  ever_stunted     
0-24 months   COHORTS          INDIA                          2                    0     1116    5374  ever_stunted     
0-24 months   COHORTS          INDIA                          2                    1      438    5374  ever_stunted     
0-24 months   COHORTS          INDIA                          3                    0      143    5374  ever_stunted     
0-24 months   COHORTS          INDIA                          3                    1       52    5374  ever_stunted     
0-24 months   CONTENT          PERU                           4+                   0       62     215  ever_stunted     
0-24 months   CONTENT          PERU                           4+                   1       16     215  ever_stunted     
0-24 months   CONTENT          PERU                           1                    0       32     215  ever_stunted     
0-24 months   CONTENT          PERU                           1                    1       12     215  ever_stunted     
0-24 months   CONTENT          PERU                           2                    0       39     215  ever_stunted     
0-24 months   CONTENT          PERU                           2                    1       15     215  ever_stunted     
0-24 months   CONTENT          PERU                           3                    0       29     215  ever_stunted     
0-24 months   CONTENT          PERU                           3                    1       10     215  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          4+                   0      113     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          4+                   1      210     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          1                    0       20     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          1                    1       29     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          2                    0       49     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          2                    1       96     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          3                    0       70     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          3                    1      111     698  ever_stunted     
0-24 months   IRC              INDIA                          4+                   0        4     408  ever_stunted     
0-24 months   IRC              INDIA                          4+                   1       13     408  ever_stunted     
0-24 months   IRC              INDIA                          1                    0       65     408  ever_stunted     
0-24 months   IRC              INDIA                          1                    1      120     408  ever_stunted     
0-24 months   IRC              INDIA                          2                    0       66     408  ever_stunted     
0-24 months   IRC              INDIA                          2                    1      104     408  ever_stunted     
0-24 months   IRC              INDIA                          3                    0       10     408  ever_stunted     
0-24 months   IRC              INDIA                          3                    1       26     408  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     4+                   0      769   27197  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     4+                   1      370   27197  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     1                    0     7848   27197  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     1                    1     8275   27197  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     2                    0     3624   27197  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     2                    1     3696   27197  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     3                    0     1481   27197  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     3                    1     1134   27197  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     4+                   0      143    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     4+                   1      143    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     1                    0     1253    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     1                    1     1938    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     2                    0      610    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     2                    1      777    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     3                    0      263    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     3                    1      299    5426  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     4+                   0        8     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     4+                   1        4     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     1                    0       56     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     1                    1       96     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     2                    0       18     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     2                    1       32     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     3                    0       11     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     3                    1       17     242  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         4+                   0       97     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         4+                   1       30     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         1                    0        4     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         1                    1        0     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         2                    0       16     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         2                    1        4     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         3                    0       37     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         3                    1       22     210  ever_stunted     
0-24 months   MAL-ED           INDIA                          4+                   0        9     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          4+                   1       16     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          1                    0       38     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          1                    1       46     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          2                    0       21     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          2                    1       57     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          3                    0       21     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          3                    1       27     235  ever_stunted     
0-24 months   MAL-ED           NEPAL                          4+                   0       87     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          4+                   1       44     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          1                    0       33     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          1                    1       19     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          2                    0       22     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          2                    1        9     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          3                    0       12     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          3                    1       10     236  ever_stunted     
0-24 months   MAL-ED           PERU                           4+                   0       47     272  ever_stunted     
0-24 months   MAL-ED           PERU                           4+                   1       92     272  ever_stunted     
0-24 months   MAL-ED           PERU                           1                    0        4     272  ever_stunted     
0-24 months   MAL-ED           PERU                           1                    1       15     272  ever_stunted     
0-24 months   MAL-ED           PERU                           2                    0       15     272  ever_stunted     
0-24 months   MAL-ED           PERU                           2                    1       37     272  ever_stunted     
0-24 months   MAL-ED           PERU                           3                    0       25     272  ever_stunted     
0-24 months   MAL-ED           PERU                           3                    1       37     272  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   4+                   0       78     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   4+                   1      118     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0        5     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   1                    1        9     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   2                    0        8     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   2                    1       14     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   3                    0        7     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   3                    1       18     257  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   0       12     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   1       96     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        5     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        8     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    0        8     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1       55     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    0        9     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1       57     250  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     4+                   0       56     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     4+                   1       39     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     1                    0      174     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     1                    1      194     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     2                    0       98     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     2                    1       93     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     3                    0       68     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     3                    1       36     758  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     4+                   0       16     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     4+                   1        7     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     1                    0      278     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     1                    1      229     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     2                    0       65     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     2                    1       43     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     3                    0       36     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     3                    1       26     700  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   0        7     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          4+                   1        7     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0       93     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          1                    1      106     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          2                    0       51     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          2                    1       53     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          3                    0       29     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          3                    1       22     368  ever_stunted     
0-6 months    COHORTS          INDIA                          4+                   0       91    5193  ever_stunted     
0-6 months    COHORTS          INDIA                          4+                   1       10    5193  ever_stunted     
0-6 months    COHORTS          INDIA                          1                    0     2654    5193  ever_stunted     
0-6 months    COHORTS          INDIA                          1                    1      749    5193  ever_stunted     
0-6 months    COHORTS          INDIA                          2                    0     1294    5193  ever_stunted     
0-6 months    COHORTS          INDIA                          2                    1      207    5193  ever_stunted     
0-6 months    COHORTS          INDIA                          3                    0      164    5193  ever_stunted     
0-6 months    COHORTS          INDIA                          3                    1       24    5193  ever_stunted     
0-6 months    CONTENT          PERU                           4+                   0       68     215  ever_stunted     
0-6 months    CONTENT          PERU                           4+                   1       10     215  ever_stunted     
0-6 months    CONTENT          PERU                           1                    0       40     215  ever_stunted     
0-6 months    CONTENT          PERU                           1                    1        4     215  ever_stunted     
0-6 months    CONTENT          PERU                           2                    0       47     215  ever_stunted     
0-6 months    CONTENT          PERU                           2                    1        7     215  ever_stunted     
0-6 months    CONTENT          PERU                           3                    0       33     215  ever_stunted     
0-6 months    CONTENT          PERU                           3                    1        6     215  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          4+                   0      227     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          4+                   1       96     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          1                    0       34     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          1                    1       15     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          2                    0       97     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          2                    1       48     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          3                    0      118     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          3                    1       63     698  ever_stunted     
0-6 months    IRC              INDIA                          4+                   0        6     408  ever_stunted     
0-6 months    IRC              INDIA                          4+                   1       11     408  ever_stunted     
0-6 months    IRC              INDIA                          1                    0      108     408  ever_stunted     
0-6 months    IRC              INDIA                          1                    1       77     408  ever_stunted     
0-6 months    IRC              INDIA                          2                    0       97     408  ever_stunted     
0-6 months    IRC              INDIA                          2                    1       73     408  ever_stunted     
0-6 months    IRC              INDIA                          3                    0       23     408  ever_stunted     
0-6 months    IRC              INDIA                          3                    1       13     408  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     4+                   0      826   27131  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     4+                   1      307   27131  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     1                    0     9222   27131  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     1                    1     6872   27131  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     2                    0     4198   27131  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     2                    1     3102   27131  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     3                    0     1677   27131  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     3                    1      927   27131  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     4+                   0      189    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     4+                   1       79    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     1                    0     1901    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     1                    1     1117    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     2                    0      878    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     2                    1      422    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     3                    0      371    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     3                    1      160    5117  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     4+                   0       10     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     4+                   1        2     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     1                    0       95     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     1                    1       57     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     2                    0       33     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     2                    1       17     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     3                    0       22     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     3                    1        6     242  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         4+                   0      103     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         4+                   1       24     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         1                    0        4     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         1                    1        0     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         2                    0       16     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         2                    1        4     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         3                    0       42     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         3                    1       17     210  ever_stunted     
0-6 months    MAL-ED           INDIA                          4+                   0       18     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          4+                   1        7     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          1                    0       58     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          1                    1       26     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          2                    0       45     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          2                    1       33     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          3                    0       33     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          3                    1       15     235  ever_stunted     
0-6 months    MAL-ED           NEPAL                          4+                   0      108     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          4+                   1       23     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          1                    0       43     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          1                    1        9     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          2                    0       28     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          2                    1        3     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          3                    0       16     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          3                    1        6     236  ever_stunted     
0-6 months    MAL-ED           PERU                           4+                   0       79     272  ever_stunted     
0-6 months    MAL-ED           PERU                           4+                   1       60     272  ever_stunted     
0-6 months    MAL-ED           PERU                           1                    0        7     272  ever_stunted     
0-6 months    MAL-ED           PERU                           1                    1       12     272  ever_stunted     
0-6 months    MAL-ED           PERU                           2                    0       27     272  ever_stunted     
0-6 months    MAL-ED           PERU                           2                    1       25     272  ever_stunted     
0-6 months    MAL-ED           PERU                           3                    0       37     272  ever_stunted     
0-6 months    MAL-ED           PERU                           3                    1       25     272  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   4+                   0      119     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   4+                   1       77     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0        9     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   1                    1        5     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   2                    0       14     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   2                    1        8     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   3                    0       14     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   3                    1       11     257  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   0       64     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   1       44     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        8     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        5     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    0       31     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1       32     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    0       44     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1       22     250  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     4+                   0       68     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     4+                   1       27     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     1                    0      254     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     1                    1      114     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     2                    0      128     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     2                    1       63     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     3                    0       79     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     3                    1       25     758  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     4+                   0       19     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     4+                   1        4     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     1                    0      381     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     1                    1      126     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     2                    0       85     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     2                    1       23     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     3                    0       47     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     3                    1       15     700  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          4+                   0        2     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          4+                   1        5     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          1                    0       11     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          1                    1       85     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          2                    0        8     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          2                    1       45     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          3                    0        7     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          3                    1       22     185  ever_stunted     
6-24 months   COHORTS          INDIA                          4+                   0       77    4108  ever_stunted     
6-24 months   COHORTS          INDIA                          4+                   1        9    4108  ever_stunted     
6-24 months   COHORTS          INDIA                          1                    0     1740    4108  ever_stunted     
6-24 months   COHORTS          INDIA                          1                    1      827    4108  ever_stunted     
6-24 months   COHORTS          INDIA                          2                    0     1059    4108  ever_stunted     
6-24 months   COHORTS          INDIA                          2                    1      231    4108  ever_stunted     
6-24 months   COHORTS          INDIA                          3                    0      137    4108  ever_stunted     
6-24 months   COHORTS          INDIA                          3                    1       28    4108  ever_stunted     
6-24 months   CONTENT          PERU                           4+                   0       62     188  ever_stunted     
6-24 months   CONTENT          PERU                           4+                   1        6     188  ever_stunted     
6-24 months   CONTENT          PERU                           1                    0       32     188  ever_stunted     
6-24 months   CONTENT          PERU                           1                    1        8     188  ever_stunted     
6-24 months   CONTENT          PERU                           2                    0       39     188  ever_stunted     
6-24 months   CONTENT          PERU                           2                    1        8     188  ever_stunted     
6-24 months   CONTENT          PERU                           3                    0       29     188  ever_stunted     
6-24 months   CONTENT          PERU                           3                    1        4     188  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          4+                   0       82     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          4+                   1      114     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          1                    0       11     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          1                    1       14     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          2                    0       36     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          2                    1       48     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          3                    0       44     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          3                    1       48     397  ever_stunted     
6-24 months   IRC              INDIA                          4+                   0        4     234  ever_stunted     
6-24 months   IRC              INDIA                          4+                   1        2     234  ever_stunted     
6-24 months   IRC              INDIA                          1                    0       65     234  ever_stunted     
6-24 months   IRC              INDIA                          1                    1       43     234  ever_stunted     
6-24 months   IRC              INDIA                          2                    0       66     234  ever_stunted     
6-24 months   IRC              INDIA                          2                    1       31     234  ever_stunted     
6-24 months   IRC              INDIA                          3                    0       10     234  ever_stunted     
6-24 months   IRC              INDIA                          3                    1       13     234  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     4+                   0      503   10486  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     4+                   1       63   10486  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     1                    0     4479   10486  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     1                    1     1403   10486  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     2                    0     2301   10486  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     2                    1      594   10486  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     3                    0      936   10486  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     3                    1      207   10486  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     4+                   0      142    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     4+                   1       64    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     1                    0     1252    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     1                    1      821    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     2                    0      609    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     2                    1      355    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     3                    0      262    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     3                    1      139    3644  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     4+                   0        8     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     4+                   1        2     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     1                    0       55     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     1                    1       39     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     2                    0       17     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     2                    1       15     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     3                    0       11     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     3                    1       11     158  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         4+                   0       96     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         4+                   1        6     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         1                    0        4     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         1                    1        0     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         2                    0       15     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         2                    1        0     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         3                    0       37     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         3                    1        5     163  ever_stunted     
6-24 months   MAL-ED           INDIA                          4+                   0        9     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          4+                   1        9     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          1                    0       38     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          1                    1       20     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          2                    0       21     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          2                    1       24     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          3                    0       21     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          3                    1       12     154  ever_stunted     
6-24 months   MAL-ED           NEPAL                          4+                   0       87     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          4+                   1       21     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          1                    0       32     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          1                    1       10     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          2                    0       22     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          2                    1        6     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          3                    0       12     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          3                    1        4     194  ever_stunted     
6-24 months   MAL-ED           PERU                           4+                   0       47     149  ever_stunted     
6-24 months   MAL-ED           PERU                           4+                   1       32     149  ever_stunted     
6-24 months   MAL-ED           PERU                           1                    0        4     149  ever_stunted     
6-24 months   MAL-ED           PERU                           1                    1        3     149  ever_stunted     
6-24 months   MAL-ED           PERU                           2                    0       14     149  ever_stunted     
6-24 months   MAL-ED           PERU                           2                    1       12     149  ever_stunted     
6-24 months   MAL-ED           PERU                           3                    0       25     149  ever_stunted     
6-24 months   MAL-ED           PERU                           3                    1       12     149  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   4+                   0       78     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   4+                   1       41     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0        5     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   1                    1        4     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   2                    0        8     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   2                    1        6     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   3                    0        6     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   3                    1        7     155  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   0       12     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   1       52     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        4     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        3     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    0        7     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    1       23     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    0        8     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    1       35     144  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     4+                   0       52     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     4+                   1       12     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     1                    0      157     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     1                    1       80     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     2                    0       96     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     2                    1       30     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     3                    0       68     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     3                    1       11     506  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     4+                   0       15     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     4+                   1        3     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     1                    0      217     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     1                    1      103     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     2                    0       55     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     2                    1       20     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     3                    0       32     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     3                    1       11     456  ever_stunted     


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
