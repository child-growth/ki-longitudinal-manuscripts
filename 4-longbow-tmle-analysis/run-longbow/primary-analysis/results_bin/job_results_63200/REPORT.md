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

**Outcome Variable:** ever_sstunted

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

agecat        studyid          country                        nrooms    ever_sstunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  -------  --------------  -------  ------  -----------------
0-24 months   CMC-V-BCS-2002   INDIA                          4+                    0        5     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          4+                    1        9     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          1                     0       68     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          1                     1      134     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          2                     0       40     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          2                     1       66     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          3                     0       23     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          3                     1       28     373  ever_sstunted    
0-24 months   COHORTS          INDIA                          4+                    0      102    5374  ever_sstunted    
0-24 months   COHORTS          INDIA                          4+                    1        4    5374  ever_sstunted    
0-24 months   COHORTS          INDIA                          1                     0     2917    5374  ever_sstunted    
0-24 months   COHORTS          INDIA                          1                     1      602    5374  ever_sstunted    
0-24 months   COHORTS          INDIA                          2                     0     1440    5374  ever_sstunted    
0-24 months   COHORTS          INDIA                          2                     1      114    5374  ever_sstunted    
0-24 months   COHORTS          INDIA                          3                     0      178    5374  ever_sstunted    
0-24 months   COHORTS          INDIA                          3                     1       17    5374  ever_sstunted    
0-24 months   CONTENT          PERU                           4+                    0       75     215  ever_sstunted    
0-24 months   CONTENT          PERU                           4+                    1        3     215  ever_sstunted    
0-24 months   CONTENT          PERU                           1                     0       42     215  ever_sstunted    
0-24 months   CONTENT          PERU                           1                     1        2     215  ever_sstunted    
0-24 months   CONTENT          PERU                           2                     0       50     215  ever_sstunted    
0-24 months   CONTENT          PERU                           2                     1        4     215  ever_sstunted    
0-24 months   CONTENT          PERU                           3                     0       38     215  ever_sstunted    
0-24 months   CONTENT          PERU                           3                     1        1     215  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          4+                    0      241     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          4+                    1       82     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          1                     0       37     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          1                     1       12     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          2                     0      111     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          2                     1       34     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          3                     0      140     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          3                     1       41     698  ever_sstunted    
0-24 months   IRC              INDIA                          4+                    0       14     408  ever_sstunted    
0-24 months   IRC              INDIA                          4+                    1        3     408  ever_sstunted    
0-24 months   IRC              INDIA                          1                     0      138     408  ever_sstunted    
0-24 months   IRC              INDIA                          1                     1       47     408  ever_sstunted    
0-24 months   IRC              INDIA                          2                     0      124     408  ever_sstunted    
0-24 months   IRC              INDIA                          2                     1       46     408  ever_sstunted    
0-24 months   IRC              INDIA                          3                     0       30     408  ever_sstunted    
0-24 months   IRC              INDIA                          3                     1        6     408  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     4+                    0     1017   27197  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     4+                    1      122   27197  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     1                     0    13084   27197  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     1                     1     3039   27197  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     2                     0     5874   27197  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     2                     1     1446   27197  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     3                     0     2203   27197  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     3                     1      412   27197  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     4+                    0      250    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     4+                    1       36    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     1                     0     2466    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     1                     1      725    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     2                     0     1130    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     2                     1      257    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     3                     0      476    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     3                     1       86    5426  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     4+                    0       12     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     4+                    1        0     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     1                     0      113     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     1                     1       39     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     2                     0       38     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     2                     1       12     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     3                     0       26     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     3                     1        2     242  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         4+                    0      116     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         4+                    1       11     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         1                     0        4     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         1                     1        0     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         2                     0       18     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         2                     1        2     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         3                     0       51     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         3                     1        8     210  ever_sstunted    
0-24 months   MAL-ED           INDIA                          4+                    0       21     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          4+                    1        4     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          1                     0       65     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          1                     1       19     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          2                     0       53     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          2                     1       25     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          3                     0       38     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          3                     1       10     235  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          4+                    0      120     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          4+                    1       11     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          1                     0       46     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          1                     1        6     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          2                     0       30     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          2                     1        1     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          3                     0       19     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          3                     1        3     236  ever_sstunted    
0-24 months   MAL-ED           PERU                           4+                    0      110     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           4+                    1       29     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           1                     0       13     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           1                     1        6     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           2                     0       41     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           2                     1       11     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           3                     0       49     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           3                     1       13     272  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   4+                    0      140     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   4+                    1       56     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   1                     0       10     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   1                     1        4     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   2                     0       19     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   2                     1        3     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   3                     0       18     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   3                     1        7     257  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                    0       51     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                    1       57     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        7     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        6     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0       24     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1       39     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0       34     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1       32     250  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     4+                    0       86     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     4+                    1        9     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     1                     0      318     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     1                     1       50     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     2                     0      162     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     2                     1       29     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     3                     0       93     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     3                     1       11     758  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     4+                    0       21     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     4+                    1        2     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     1                     0      434     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     1                     1       73     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     2                     0       96     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     2                     1       12     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     3                     0       54     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     3                     1        8     700  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          4+                    0       12     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          4+                    1        2     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          1                     0      153     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          1                     1       46     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          2                     0       74     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          2                     1       30     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          3                     0       38     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          3                     1       13     368  ever_sstunted    
0-6 months    COHORTS          INDIA                          4+                    0      100    5193  ever_sstunted    
0-6 months    COHORTS          INDIA                          4+                    1        1    5193  ever_sstunted    
0-6 months    COHORTS          INDIA                          1                     0     3204    5193  ever_sstunted    
0-6 months    COHORTS          INDIA                          1                     1      199    5193  ever_sstunted    
0-6 months    COHORTS          INDIA                          2                     0     1456    5193  ever_sstunted    
0-6 months    COHORTS          INDIA                          2                     1       45    5193  ever_sstunted    
0-6 months    COHORTS          INDIA                          3                     0      180    5193  ever_sstunted    
0-6 months    COHORTS          INDIA                          3                     1        8    5193  ever_sstunted    
0-6 months    CONTENT          PERU                           4+                    0       75     215  ever_sstunted    
0-6 months    CONTENT          PERU                           4+                    1        3     215  ever_sstunted    
0-6 months    CONTENT          PERU                           1                     0       42     215  ever_sstunted    
0-6 months    CONTENT          PERU                           1                     1        2     215  ever_sstunted    
0-6 months    CONTENT          PERU                           2                     0       52     215  ever_sstunted    
0-6 months    CONTENT          PERU                           2                     1        2     215  ever_sstunted    
0-6 months    CONTENT          PERU                           3                     0       38     215  ever_sstunted    
0-6 months    CONTENT          PERU                           3                     1        1     215  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          4+                    0      294     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          4+                    1       29     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          1                     0       43     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          1                     1        6     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          2                     0      133     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          2                     1       12     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          3                     0      168     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          3                     1       13     698  ever_sstunted    
0-6 months    IRC              INDIA                          4+                    0       16     408  ever_sstunted    
0-6 months    IRC              INDIA                          4+                    1        1     408  ever_sstunted    
0-6 months    IRC              INDIA                          1                     0      158     408  ever_sstunted    
0-6 months    IRC              INDIA                          1                     1       27     408  ever_sstunted    
0-6 months    IRC              INDIA                          2                     0      140     408  ever_sstunted    
0-6 months    IRC              INDIA                          2                     1       30     408  ever_sstunted    
0-6 months    IRC              INDIA                          3                     0       32     408  ever_sstunted    
0-6 months    IRC              INDIA                          3                     1        4     408  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     4+                    0     1029   27131  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     4+                    1      104   27131  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     1                     0    13700   27131  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     1                     1     2394   27131  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     2                     0     6127   27131  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     2                     1     1173   27131  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     3                     0     2273   27131  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     3                     1      331   27131  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     4+                    0      250    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     4+                    1       18    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     1                     0     2682    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     1                     1      336    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     2                     0     1184    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     2                     1      116    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     3                     0      482    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     3                     1       49    5117  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     4+                    0       12     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     4+                    1        0     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     1                     0      140     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     1                     1       12     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     2                     0       46     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     2                     1        4     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     3                     0       28     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     3                     1        0     242  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         4+                    0      119     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         4+                    1        8     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         1                     0        4     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         1                     1        0     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         2                     0       18     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         2                     1        2     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         3                     0       53     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         3                     1        6     210  ever_sstunted    
0-6 months    MAL-ED           INDIA                          4+                    0       25     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          4+                    1        0     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          1                     0       77     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          1                     1        7     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          2                     0       68     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          2                     1       10     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          3                     0       45     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          3                     1        3     235  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          4+                    0      125     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          4+                    1        6     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          1                     0       48     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          1                     1        4     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          2                     0       31     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          2                     1        0     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          3                     0       22     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          3                     1        0     236  ever_sstunted    
0-6 months    MAL-ED           PERU                           4+                    0      126     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           4+                    1       13     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           1                     0       14     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           1                     1        5     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           2                     0       47     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           2                     1        5     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           3                     0       52     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           3                     1       10     272  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   4+                    0      172     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   4+                    1       24     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   1                     0       13     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   1                     1        1     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   2                     0       21     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   2                     1        1     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   3                     0       25     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   3                     1        0     257  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                    0       94     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                    1       14     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       10     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        3     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     0       50     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                     1       13     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     0       61     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                     1        5     250  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     4+                    0       90     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     4+                    1        5     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     1                     0      346     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     1                     1       22     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     2                     0      176     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     2                     1       15     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     3                     0       99     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     3                     1        5     758  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     4+                    0       23     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     4+                    1        0     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     1                     0      485     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     1                     1       22     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     2                     0      102     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     2                     1        6     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     3                     0       59     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     3                     1        3     700  ever_sstunted    


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH

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
