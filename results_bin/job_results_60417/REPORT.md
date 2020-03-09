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

**Outcome Variable:** ever_wasted

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

agecat        studyid          country                        nrooms    ever_wasted   n_cell       n
------------  ---------------  -----------------------------  -------  ------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          4+                  0        9     373
0-24 months   CMC-V-BCS-2002   INDIA                          4+                  1        5     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                   0       68     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                   1      134     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                   0       43     373
0-24 months   CMC-V-BCS-2002   INDIA                          2                   1       63     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                   0       25     373
0-24 months   CMC-V-BCS-2002   INDIA                          3                   1       26     373
0-24 months   COHORTS          INDIA                          4+                  0       90    5366
0-24 months   COHORTS          INDIA                          4+                  1       16    5366
0-24 months   COHORTS          INDIA                          1                   0     2235    5366
0-24 months   COHORTS          INDIA                          1                   1     1276    5366
0-24 months   COHORTS          INDIA                          2                   0     1089    5366
0-24 months   COHORTS          INDIA                          2                   1      465    5366
0-24 months   COHORTS          INDIA                          3                   0      152    5366
0-24 months   COHORTS          INDIA                          3                   1       43    5366
0-24 months   CONTENT          PERU                           4+                  0       75     215
0-24 months   CONTENT          PERU                           4+                  1        3     215
0-24 months   CONTENT          PERU                           1                   0       42     215
0-24 months   CONTENT          PERU                           1                   1        2     215
0-24 months   CONTENT          PERU                           2                   0       54     215
0-24 months   CONTENT          PERU                           2                   1        0     215
0-24 months   CONTENT          PERU                           3                   0       39     215
0-24 months   CONTENT          PERU                           3                   1        0     215
0-24 months   GMS-Nepal        NEPAL                          4+                  0      116     686
0-24 months   GMS-Nepal        NEPAL                          4+                  1      198     686
0-24 months   GMS-Nepal        NEPAL                          1                   0       22     686
0-24 months   GMS-Nepal        NEPAL                          1                   1       27     686
0-24 months   GMS-Nepal        NEPAL                          2                   0       68     686
0-24 months   GMS-Nepal        NEPAL                          2                   1       75     686
0-24 months   GMS-Nepal        NEPAL                          3                   0       75     686
0-24 months   GMS-Nepal        NEPAL                          3                   1      105     686
0-24 months   IRC              INDIA                          4+                  0        5     408
0-24 months   IRC              INDIA                          4+                  1       12     408
0-24 months   IRC              INDIA                          1                   0       69     408
0-24 months   IRC              INDIA                          1                   1      116     408
0-24 months   IRC              INDIA                          2                   0       56     408
0-24 months   IRC              INDIA                          2                   1      114     408
0-24 months   IRC              INDIA                          3                   0       10     408
0-24 months   IRC              INDIA                          3                   1       26     408
0-24 months   JiVitA-3         BANGLADESH                     4+                  0      893   26926
0-24 months   JiVitA-3         BANGLADESH                     4+                  1      242   26926
0-24 months   JiVitA-3         BANGLADESH                     1                   0    11783   26926
0-24 months   JiVitA-3         BANGLADESH                     1                   1     4159   26926
0-24 months   JiVitA-3         BANGLADESH                     2                   0     5352   26926
0-24 months   JiVitA-3         BANGLADESH                     2                   1     1898   26926
0-24 months   JiVitA-3         BANGLADESH                     3                   0     1952   26926
0-24 months   JiVitA-3         BANGLADESH                     3                   1      647   26926
0-24 months   JiVitA-4         BANGLADESH                     4+                  0      208    5427
0-24 months   JiVitA-4         BANGLADESH                     4+                  1       78    5427
0-24 months   JiVitA-4         BANGLADESH                     1                   0     2164    5427
0-24 months   JiVitA-4         BANGLADESH                     1                   1     1028    5427
0-24 months   JiVitA-4         BANGLADESH                     2                   0      970    5427
0-24 months   JiVitA-4         BANGLADESH                     2                   1      417    5427
0-24 months   JiVitA-4         BANGLADESH                     3                   0      402    5427
0-24 months   JiVitA-4         BANGLADESH                     3                   1      160    5427
0-24 months   MAL-ED           BANGLADESH                     4+                  0        9     242
0-24 months   MAL-ED           BANGLADESH                     4+                  1        3     242
0-24 months   MAL-ED           BANGLADESH                     1                   0       92     242
0-24 months   MAL-ED           BANGLADESH                     1                   1       60     242
0-24 months   MAL-ED           BANGLADESH                     2                   0       37     242
0-24 months   MAL-ED           BANGLADESH                     2                   1       13     242
0-24 months   MAL-ED           BANGLADESH                     3                   0       20     242
0-24 months   MAL-ED           BANGLADESH                     3                   1        8     242
0-24 months   MAL-ED           BRAZIL                         4+                  0      113     210
0-24 months   MAL-ED           BRAZIL                         4+                  1       14     210
0-24 months   MAL-ED           BRAZIL                         1                   0        4     210
0-24 months   MAL-ED           BRAZIL                         1                   1        0     210
0-24 months   MAL-ED           BRAZIL                         2                   0       18     210
0-24 months   MAL-ED           BRAZIL                         2                   1        2     210
0-24 months   MAL-ED           BRAZIL                         3                   0       55     210
0-24 months   MAL-ED           BRAZIL                         3                   1        4     210
0-24 months   MAL-ED           INDIA                          4+                  0       16     235
0-24 months   MAL-ED           INDIA                          4+                  1        9     235
0-24 months   MAL-ED           INDIA                          1                   0       44     235
0-24 months   MAL-ED           INDIA                          1                   1       40     235
0-24 months   MAL-ED           INDIA                          2                   0       37     235
0-24 months   MAL-ED           INDIA                          2                   1       41     235
0-24 months   MAL-ED           INDIA                          3                   0       24     235
0-24 months   MAL-ED           INDIA                          3                   1       24     235
0-24 months   MAL-ED           NEPAL                          4+                  0       93     236
0-24 months   MAL-ED           NEPAL                          4+                  1       38     236
0-24 months   MAL-ED           NEPAL                          1                   0       30     236
0-24 months   MAL-ED           NEPAL                          1                   1       22     236
0-24 months   MAL-ED           NEPAL                          2                   0       24     236
0-24 months   MAL-ED           NEPAL                          2                   1        7     236
0-24 months   MAL-ED           NEPAL                          3                   0       16     236
0-24 months   MAL-ED           NEPAL                          3                   1        6     236
0-24 months   MAL-ED           PERU                           4+                  0      126     272
0-24 months   MAL-ED           PERU                           4+                  1       13     272
0-24 months   MAL-ED           PERU                           1                   0       16     272
0-24 months   MAL-ED           PERU                           1                   1        3     272
0-24 months   MAL-ED           PERU                           2                   0       48     272
0-24 months   MAL-ED           PERU                           2                   1        4     272
0-24 months   MAL-ED           PERU                           3                   0       56     272
0-24 months   MAL-ED           PERU                           3                   1        6     272
0-24 months   MAL-ED           SOUTH AFRICA                   4+                  0      152     257
0-24 months   MAL-ED           SOUTH AFRICA                   4+                  1       44     257
0-24 months   MAL-ED           SOUTH AFRICA                   1                   0       10     257
0-24 months   MAL-ED           SOUTH AFRICA                   1                   1        4     257
0-24 months   MAL-ED           SOUTH AFRICA                   2                   0       19     257
0-24 months   MAL-ED           SOUTH AFRICA                   2                   1        3     257
0-24 months   MAL-ED           SOUTH AFRICA                   3                   0       19     257
0-24 months   MAL-ED           SOUTH AFRICA                   3                   1        6     257
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                  0       95     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                  1       13     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       12     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        1     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   0       51     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   1       12     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   0       56     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   1       10     250
0-24 months   NIH-Crypto       BANGLADESH                     4+                  0       66     758
0-24 months   NIH-Crypto       BANGLADESH                     4+                  1       29     758
0-24 months   NIH-Crypto       BANGLADESH                     1                   0      242     758
0-24 months   NIH-Crypto       BANGLADESH                     1                   1      126     758
0-24 months   NIH-Crypto       BANGLADESH                     2                   0      129     758
0-24 months   NIH-Crypto       BANGLADESH                     2                   1       62     758
0-24 months   NIH-Crypto       BANGLADESH                     3                   0       71     758
0-24 months   NIH-Crypto       BANGLADESH                     3                   1       33     758
0-24 months   PROVIDE          BANGLADESH                     4+                  0       13     700
0-24 months   PROVIDE          BANGLADESH                     4+                  1       10     700
0-24 months   PROVIDE          BANGLADESH                     1                   0      329     700
0-24 months   PROVIDE          BANGLADESH                     1                   1      178     700
0-24 months   PROVIDE          BANGLADESH                     2                   0       74     700
0-24 months   PROVIDE          BANGLADESH                     2                   1       34     700
0-24 months   PROVIDE          BANGLADESH                     3                   0       38     700
0-24 months   PROVIDE          BANGLADESH                     3                   1       24     700
0-6 months    CMC-V-BCS-2002   INDIA                          4+                  0       10     368
0-6 months    CMC-V-BCS-2002   INDIA                          4+                  1        4     368
0-6 months    CMC-V-BCS-2002   INDIA                          1                   0       92     368
0-6 months    CMC-V-BCS-2002   INDIA                          1                   1      107     368
0-6 months    CMC-V-BCS-2002   INDIA                          2                   0       48     368
0-6 months    CMC-V-BCS-2002   INDIA                          2                   1       56     368
0-6 months    CMC-V-BCS-2002   INDIA                          3                   0       28     368
0-6 months    CMC-V-BCS-2002   INDIA                          3                   1       23     368
0-6 months    COHORTS          INDIA                          4+                  0       86    5160
0-6 months    COHORTS          INDIA                          4+                  1       14    5160
0-6 months    COHORTS          INDIA                          1                   0     2491    5160
0-6 months    COHORTS          INDIA                          1                   1      887    5160
0-6 months    COHORTS          INDIA                          2                   0     1142    5160
0-6 months    COHORTS          INDIA                          2                   1      352    5160
0-6 months    COHORTS          INDIA                          3                   0      154    5160
0-6 months    COHORTS          INDIA                          3                   1       34    5160
0-6 months    CONTENT          PERU                           4+                  0       76     215
0-6 months    CONTENT          PERU                           4+                  1        2     215
0-6 months    CONTENT          PERU                           1                   0       42     215
0-6 months    CONTENT          PERU                           1                   1        2     215
0-6 months    CONTENT          PERU                           2                   0       54     215
0-6 months    CONTENT          PERU                           2                   1        0     215
0-6 months    CONTENT          PERU                           3                   0       39     215
0-6 months    CONTENT          PERU                           3                   1        0     215
0-6 months    GMS-Nepal        NEPAL                          4+                  0      183     686
0-6 months    GMS-Nepal        NEPAL                          4+                  1      131     686
0-6 months    GMS-Nepal        NEPAL                          1                   0       33     686
0-6 months    GMS-Nepal        NEPAL                          1                   1       16     686
0-6 months    GMS-Nepal        NEPAL                          2                   0       99     686
0-6 months    GMS-Nepal        NEPAL                          2                   1       44     686
0-6 months    GMS-Nepal        NEPAL                          3                   0      113     686
0-6 months    GMS-Nepal        NEPAL                          3                   1       67     686
0-6 months    IRC              INDIA                          4+                  0        7     408
0-6 months    IRC              INDIA                          4+                  1       10     408
0-6 months    IRC              INDIA                          1                   0       86     408
0-6 months    IRC              INDIA                          1                   1       99     408
0-6 months    IRC              INDIA                          2                   0       76     408
0-6 months    IRC              INDIA                          2                   1       94     408
0-6 months    IRC              INDIA                          3                   0       17     408
0-6 months    IRC              INDIA                          3                   1       19     408
0-6 months    JiVitA-3         BANGLADESH                     4+                  0      948   26829
0-6 months    JiVitA-3         BANGLADESH                     4+                  1      181   26829
0-6 months    JiVitA-3         BANGLADESH                     1                   0    13060   26829
0-6 months    JiVitA-3         BANGLADESH                     1                   1     2838   26829
0-6 months    JiVitA-3         BANGLADESH                     2                   0     5944   26829
0-6 months    JiVitA-3         BANGLADESH                     2                   1     1272   26829
0-6 months    JiVitA-3         BANGLADESH                     3                   0     2150   26829
0-6 months    JiVitA-3         BANGLADESH                     3                   1      436   26829
0-6 months    JiVitA-4         BANGLADESH                     4+                  0      234    5083
0-6 months    JiVitA-4         BANGLADESH                     4+                  1       32    5083
0-6 months    JiVitA-4         BANGLADESH                     1                   0     2672    5083
0-6 months    JiVitA-4         BANGLADESH                     1                   1      321    5083
0-6 months    JiVitA-4         BANGLADESH                     2                   0     1162    5083
0-6 months    JiVitA-4         BANGLADESH                     2                   1      132    5083
0-6 months    JiVitA-4         BANGLADESH                     3                   0      467    5083
0-6 months    JiVitA-4         BANGLADESH                     3                   1       63    5083
0-6 months    MAL-ED           BANGLADESH                     4+                  0       10     242
0-6 months    MAL-ED           BANGLADESH                     4+                  1        2     242
0-6 months    MAL-ED           BANGLADESH                     1                   0      111     242
0-6 months    MAL-ED           BANGLADESH                     1                   1       41     242
0-6 months    MAL-ED           BANGLADESH                     2                   0       43     242
0-6 months    MAL-ED           BANGLADESH                     2                   1        7     242
0-6 months    MAL-ED           BANGLADESH                     3                   0       21     242
0-6 months    MAL-ED           BANGLADESH                     3                   1        7     242
0-6 months    MAL-ED           BRAZIL                         4+                  0      117     210
0-6 months    MAL-ED           BRAZIL                         4+                  1       10     210
0-6 months    MAL-ED           BRAZIL                         1                   0        4     210
0-6 months    MAL-ED           BRAZIL                         1                   1        0     210
0-6 months    MAL-ED           BRAZIL                         2                   0       18     210
0-6 months    MAL-ED           BRAZIL                         2                   1        2     210
0-6 months    MAL-ED           BRAZIL                         3                   0       56     210
0-6 months    MAL-ED           BRAZIL                         3                   1        3     210
0-6 months    MAL-ED           INDIA                          4+                  0       20     235
0-6 months    MAL-ED           INDIA                          4+                  1        5     235
0-6 months    MAL-ED           INDIA                          1                   0       58     235
0-6 months    MAL-ED           INDIA                          1                   1       26     235
0-6 months    MAL-ED           INDIA                          2                   0       54     235
0-6 months    MAL-ED           INDIA                          2                   1       24     235
0-6 months    MAL-ED           INDIA                          3                   0       27     235
0-6 months    MAL-ED           INDIA                          3                   1       21     235
0-6 months    MAL-ED           NEPAL                          4+                  0      104     236
0-6 months    MAL-ED           NEPAL                          4+                  1       27     236
0-6 months    MAL-ED           NEPAL                          1                   0       40     236
0-6 months    MAL-ED           NEPAL                          1                   1       12     236
0-6 months    MAL-ED           NEPAL                          2                   0       27     236
0-6 months    MAL-ED           NEPAL                          2                   1        4     236
0-6 months    MAL-ED           NEPAL                          3                   0       18     236
0-6 months    MAL-ED           NEPAL                          3                   1        4     236
0-6 months    MAL-ED           PERU                           4+                  0      132     272
0-6 months    MAL-ED           PERU                           4+                  1        7     272
0-6 months    MAL-ED           PERU                           1                   0       18     272
0-6 months    MAL-ED           PERU                           1                   1        1     272
0-6 months    MAL-ED           PERU                           2                   0       51     272
0-6 months    MAL-ED           PERU                           2                   1        1     272
0-6 months    MAL-ED           PERU                           3                   0       61     272
0-6 months    MAL-ED           PERU                           3                   1        1     272
0-6 months    MAL-ED           SOUTH AFRICA                   4+                  0      174     257
0-6 months    MAL-ED           SOUTH AFRICA                   4+                  1       22     257
0-6 months    MAL-ED           SOUTH AFRICA                   1                   0       13     257
0-6 months    MAL-ED           SOUTH AFRICA                   1                   1        1     257
0-6 months    MAL-ED           SOUTH AFRICA                   2                   0       21     257
0-6 months    MAL-ED           SOUTH AFRICA                   2                   1        1     257
0-6 months    MAL-ED           SOUTH AFRICA                   3                   0       21     257
0-6 months    MAL-ED           SOUTH AFRICA                   3                   1        4     257
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                  0      103     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                  1        5     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       13     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   0       58     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   1        5     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   0       63     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   1        3     250
0-6 months    NIH-Crypto       BANGLADESH                     4+                  0       71     758
0-6 months    NIH-Crypto       BANGLADESH                     4+                  1       24     758
0-6 months    NIH-Crypto       BANGLADESH                     1                   0      272     758
0-6 months    NIH-Crypto       BANGLADESH                     1                   1       96     758
0-6 months    NIH-Crypto       BANGLADESH                     2                   0      144     758
0-6 months    NIH-Crypto       BANGLADESH                     2                   1       47     758
0-6 months    NIH-Crypto       BANGLADESH                     3                   0       76     758
0-6 months    NIH-Crypto       BANGLADESH                     3                   1       28     758
0-6 months    PROVIDE          BANGLADESH                     4+                  0       15     700
0-6 months    PROVIDE          BANGLADESH                     4+                  1        8     700
0-6 months    PROVIDE          BANGLADESH                     1                   0      378     700
0-6 months    PROVIDE          BANGLADESH                     1                   1      129     700
0-6 months    PROVIDE          BANGLADESH                     2                   0       82     700
0-6 months    PROVIDE          BANGLADESH                     2                   1       26     700
0-6 months    PROVIDE          BANGLADESH                     3                   0       44     700
0-6 months    PROVIDE          BANGLADESH                     3                   1       18     700
6-24 months   CMC-V-BCS-2002   INDIA                          4+                  0       13     373
6-24 months   CMC-V-BCS-2002   INDIA                          4+                  1        1     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                   0      133     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                   1       69     373
6-24 months   CMC-V-BCS-2002   INDIA                          2                   0       84     373
6-24 months   CMC-V-BCS-2002   INDIA                          2                   1       22     373
6-24 months   CMC-V-BCS-2002   INDIA                          3                   0       44     373
6-24 months   CMC-V-BCS-2002   INDIA                          3                   1        7     373
6-24 months   COHORTS          INDIA                          4+                  0       91    5016
6-24 months   COHORTS          INDIA                          4+                  1        3    5016
6-24 months   COHORTS          INDIA                          1                   0     2749    5016
6-24 months   COHORTS          INDIA                          1                   1      502    5016
6-24 months   COHORTS          INDIA                          2                   0     1343    5016
6-24 months   COHORTS          INDIA                          2                   1      144    5016
6-24 months   COHORTS          INDIA                          3                   0      172    5016
6-24 months   COHORTS          INDIA                          3                   1       12    5016
6-24 months   CONTENT          PERU                           4+                  0       76     215
6-24 months   CONTENT          PERU                           4+                  1        2     215
6-24 months   CONTENT          PERU                           1                   0       44     215
6-24 months   CONTENT          PERU                           1                   1        0     215
6-24 months   CONTENT          PERU                           2                   0       54     215
6-24 months   CONTENT          PERU                           2                   1        0     215
6-24 months   CONTENT          PERU                           3                   0       39     215
6-24 months   CONTENT          PERU                           3                   1        0     215
6-24 months   GMS-Nepal        NEPAL                          4+                  0      149     590
6-24 months   GMS-Nepal        NEPAL                          4+                  1      129     590
6-24 months   GMS-Nepal        NEPAL                          1                   0       17     590
6-24 months   GMS-Nepal        NEPAL                          1                   1       23     590
6-24 months   GMS-Nepal        NEPAL                          2                   0       71     590
6-24 months   GMS-Nepal        NEPAL                          2                   1       56     590
6-24 months   GMS-Nepal        NEPAL                          3                   0       74     590
6-24 months   GMS-Nepal        NEPAL                          3                   1       71     590
6-24 months   IRC              INDIA                          4+                  0        9     408
6-24 months   IRC              INDIA                          4+                  1        8     408
6-24 months   IRC              INDIA                          1                   0      137     408
6-24 months   IRC              INDIA                          1                   1       48     408
6-24 months   IRC              INDIA                          2                   0      110     408
6-24 months   IRC              INDIA                          2                   1       60     408
6-24 months   IRC              INDIA                          3                   0       25     408
6-24 months   IRC              INDIA                          3                   1       11     408
6-24 months   JiVitA-3         BANGLADESH                     4+                  0      680   17286
6-24 months   JiVitA-3         BANGLADESH                     4+                  1       82   17286
6-24 months   JiVitA-3         BANGLADESH                     1                   0     8214   17286
6-24 months   JiVitA-3         BANGLADESH                     1                   1     1678   17286
6-24 months   JiVitA-3         BANGLADESH                     2                   0     4068   17286
6-24 months   JiVitA-3         BANGLADESH                     2                   1      808   17286
6-24 months   JiVitA-3         BANGLADESH                     3                   0     1493   17286
6-24 months   JiVitA-3         BANGLADESH                     3                   1      263   17286
6-24 months   JiVitA-4         BANGLADESH                     4+                  0      232    5423
6-24 months   JiVitA-4         BANGLADESH                     4+                  1       53    5423
6-24 months   JiVitA-4         BANGLADESH                     1                   0     2351    5423
6-24 months   JiVitA-4         BANGLADESH                     1                   1      840    5423
6-24 months   JiVitA-4         BANGLADESH                     2                   0     1054    5423
6-24 months   JiVitA-4         BANGLADESH                     2                   1      332    5423
6-24 months   JiVitA-4         BANGLADESH                     3                   0      445    5423
6-24 months   JiVitA-4         BANGLADESH                     3                   1      116    5423
6-24 months   MAL-ED           BANGLADESH                     4+                  0       10     240
6-24 months   MAL-ED           BANGLADESH                     4+                  1        2     240
6-24 months   MAL-ED           BANGLADESH                     1                   0      118     240
6-24 months   MAL-ED           BANGLADESH                     1                   1       33     240
6-24 months   MAL-ED           BANGLADESH                     2                   0       42     240
6-24 months   MAL-ED           BANGLADESH                     2                   1        7     240
6-24 months   MAL-ED           BANGLADESH                     3                   0       27     240
6-24 months   MAL-ED           BANGLADESH                     3                   1        1     240
6-24 months   MAL-ED           BRAZIL                         4+                  0      121     207
6-24 months   MAL-ED           BRAZIL                         4+                  1        5     207
6-24 months   MAL-ED           BRAZIL                         1                   0        4     207
6-24 months   MAL-ED           BRAZIL                         1                   1        0     207
6-24 months   MAL-ED           BRAZIL                         2                   0       18     207
6-24 months   MAL-ED           BRAZIL                         2                   1        0     207
6-24 months   MAL-ED           BRAZIL                         3                   0       58     207
6-24 months   MAL-ED           BRAZIL                         3                   1        1     207
6-24 months   MAL-ED           INDIA                          4+                  0       21     235
6-24 months   MAL-ED           INDIA                          4+                  1        4     235
6-24 months   MAL-ED           INDIA                          1                   0       60     235
6-24 months   MAL-ED           INDIA                          1                   1       24     235
6-24 months   MAL-ED           INDIA                          2                   0       51     235
6-24 months   MAL-ED           INDIA                          2                   1       27     235
6-24 months   MAL-ED           INDIA                          3                   0       39     235
6-24 months   MAL-ED           INDIA                          3                   1        9     235
6-24 months   MAL-ED           NEPAL                          4+                  0      112     235
6-24 months   MAL-ED           NEPAL                          4+                  1       19     235
6-24 months   MAL-ED           NEPAL                          1                   0       39     235
6-24 months   MAL-ED           NEPAL                          1                   1       12     235
6-24 months   MAL-ED           NEPAL                          2                   0       28     235
6-24 months   MAL-ED           NEPAL                          2                   1        3     235
6-24 months   MAL-ED           NEPAL                          3                   0       20     235
6-24 months   MAL-ED           NEPAL                          3                   1        2     235
6-24 months   MAL-ED           PERU                           4+                  0      131     270
6-24 months   MAL-ED           PERU                           4+                  1        8     270
6-24 months   MAL-ED           PERU                           1                   0       17     270
6-24 months   MAL-ED           PERU                           1                   1        2     270
6-24 months   MAL-ED           PERU                           2                   0       47     270
6-24 months   MAL-ED           PERU                           2                   1        3     270
6-24 months   MAL-ED           PERU                           3                   0       57     270
6-24 months   MAL-ED           PERU                           3                   1        5     270
6-24 months   MAL-ED           SOUTH AFRICA                   4+                  0      166     255
6-24 months   MAL-ED           SOUTH AFRICA                   4+                  1       29     255
6-24 months   MAL-ED           SOUTH AFRICA                   1                   0       11     255
6-24 months   MAL-ED           SOUTH AFRICA                   1                   1        3     255
6-24 months   MAL-ED           SOUTH AFRICA                   2                   0       20     255
6-24 months   MAL-ED           SOUTH AFRICA                   2                   1        2     255
6-24 months   MAL-ED           SOUTH AFRICA                   3                   0       21     255
6-24 months   MAL-ED           SOUTH AFRICA                   3                   1        3     255
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                  0       97     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                  1       10     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       11     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   0       52     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                   1        9     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   0       57     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                   1        8     245
6-24 months   NIH-Crypto       BANGLADESH                     4+                  0       83     730
6-24 months   NIH-Crypto       BANGLADESH                     4+                  1        8     730
6-24 months   NIH-Crypto       BANGLADESH                     1                   0      294     730
6-24 months   NIH-Crypto       BANGLADESH                     1                   1       53     730
6-24 months   NIH-Crypto       BANGLADESH                     2                   0      163     730
6-24 months   NIH-Crypto       BANGLADESH                     2                   1       25     730
6-24 months   NIH-Crypto       BANGLADESH                     3                   0       94     730
6-24 months   NIH-Crypto       BANGLADESH                     3                   1       10     730
6-24 months   PROVIDE          BANGLADESH                     4+                  0       18     615
6-24 months   PROVIDE          BANGLADESH                     4+                  1        4     615
6-24 months   PROVIDE          BANGLADESH                     1                   0      367     615
6-24 months   PROVIDE          BANGLADESH                     1                   1       71     615
6-24 months   PROVIDE          BANGLADESH                     2                   0       84     615
6-24 months   PROVIDE          BANGLADESH                     2                   1       13     615
6-24 months   PROVIDE          BANGLADESH                     3                   0       47     615
6-24 months   PROVIDE          BANGLADESH                     3                   1       11     615


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

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/d5622b85-530e-490a-a610-1f5095a1fea6/05c2ec50-822d-4df6-9b94-d03d5ae5c82a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d5622b85-530e-490a-a610-1f5095a1fea6/05c2ec50-822d-4df6-9b94-d03d5ae5c82a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d5622b85-530e-490a-a610-1f5095a1fea6/05c2ec50-822d-4df6-9b94-d03d5ae5c82a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d5622b85-530e-490a-a610-1f5095a1fea6/05c2ec50-822d-4df6-9b94-d03d5ae5c82a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA        4+                   NA                0.3571429   0.1058123   0.6084734
0-24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.6633663   0.5981118   0.7286209
0-24 months   CMC-V-BCS-2002   INDIA        2                    NA                0.5943396   0.5007394   0.6879398
0-24 months   CMC-V-BCS-2002   INDIA        3                    NA                0.5098039   0.3724211   0.6471867
0-24 months   COHORTS          INDIA        4+                   NA                0.1556287   0.1040181   0.2072392
0-24 months   COHORTS          INDIA        1                    NA                0.3630398   0.3470325   0.3790472
0-24 months   COHORTS          INDIA        2                    NA                0.2968309   0.2736203   0.3200416
0-24 months   COHORTS          INDIA        3                    NA                0.2209297   0.1644004   0.2774590
0-24 months   GMS-Nepal        NEPAL        4+                   NA                0.6319735   0.5780620   0.6858850
0-24 months   GMS-Nepal        NEPAL        1                    NA                0.5480257   0.4084827   0.6875687
0-24 months   GMS-Nepal        NEPAL        2                    NA                0.5159073   0.4336619   0.5981527
0-24 months   GMS-Nepal        NEPAL        3                    NA                0.5839891   0.5103113   0.6576669
0-24 months   IRC              INDIA        4+                   NA                0.7058824   0.4890205   0.9227442
0-24 months   IRC              INDIA        1                    NA                0.6270270   0.5572557   0.6967983
0-24 months   IRC              INDIA        2                    NA                0.6705882   0.5998500   0.7413264
0-24 months   IRC              INDIA        3                    NA                0.7222222   0.5757302   0.8687142
0-24 months   JiVitA-3         BANGLADESH   4+                   NA                0.2404557   0.2253076   0.2556039
0-24 months   JiVitA-3         BANGLADESH   1                    NA                0.2557211   0.2452554   0.2661868
0-24 months   JiVitA-3         BANGLADESH   2                    NA                0.2606465   0.2448821   0.2764110
0-24 months   JiVitA-3         BANGLADESH   3                    NA                0.2541052   0.2343411   0.2738693
0-24 months   JiVitA-4         BANGLADESH   4+                   NA                0.3467954   0.2960535   0.3975374
0-24 months   JiVitA-4         BANGLADESH   1                    NA                0.3098009   0.2854959   0.3341059
0-24 months   JiVitA-4         BANGLADESH   2                    NA                0.3103313   0.2698712   0.3507915
0-24 months   JiVitA-4         BANGLADESH   3                    NA                0.2994393   0.2527114   0.3461671
0-24 months   MAL-ED           INDIA        4+                   NA                0.3600000   0.1714418   0.5485582
0-24 months   MAL-ED           INDIA        1                    NA                0.4761905   0.3691590   0.5832219
0-24 months   MAL-ED           INDIA        2                    NA                0.5256410   0.4145894   0.6366927
0-24 months   MAL-ED           INDIA        3                    NA                0.5000000   0.3582499   0.6417501
0-24 months   MAL-ED           NEPAL        4+                   NA                0.2900763   0.2122016   0.3679511
0-24 months   MAL-ED           NEPAL        1                    NA                0.4230769   0.2885104   0.5576435
0-24 months   MAL-ED           NEPAL        2                    NA                0.2258065   0.0783098   0.3733031
0-24 months   MAL-ED           NEPAL        3                    NA                0.2727273   0.0862303   0.4592242
0-24 months   NIH-Crypto       BANGLADESH   4+                   NA                0.3043005   0.2115633   0.3970376
0-24 months   NIH-Crypto       BANGLADESH   1                    NA                0.3411339   0.2925866   0.3896813
0-24 months   NIH-Crypto       BANGLADESH   2                    NA                0.3216856   0.2552496   0.3881217
0-24 months   NIH-Crypto       BANGLADESH   3                    NA                0.3220802   0.2307041   0.4134563
0-24 months   PROVIDE          BANGLADESH   4+                   NA                0.4565612   0.2423115   0.6708109
0-24 months   PROVIDE          BANGLADESH   1                    NA                0.3489696   0.3073303   0.3906090
0-24 months   PROVIDE          BANGLADESH   2                    NA                0.3180836   0.2312191   0.4049481
0-24 months   PROVIDE          BANGLADESH   3                    NA                0.3931512   0.2759892   0.5103131
0-6 months    COHORTS          INDIA        4+                   NA                0.1490857   0.0976131   0.2005584
0-6 months    COHORTS          INDIA        1                    NA                0.2608860   0.2460110   0.2757611
0-6 months    COHORTS          INDIA        2                    NA                0.2338630   0.2119483   0.2557777
0-6 months    COHORTS          INDIA        3                    NA                0.1829357   0.1298490   0.2360224
0-6 months    GMS-Nepal        NEPAL        4+                   NA                0.4171195   0.3624535   0.4717855
0-6 months    GMS-Nepal        NEPAL        1                    NA                0.3419571   0.2081223   0.4757918
0-6 months    GMS-Nepal        NEPAL        2                    NA                0.3086415   0.2325822   0.3847008
0-6 months    GMS-Nepal        NEPAL        3                    NA                0.3800324   0.3081423   0.4519225
0-6 months    IRC              INDIA        4+                   NA                0.5882353   0.3539977   0.8224729
0-6 months    IRC              INDIA        1                    NA                0.5351351   0.4631753   0.6070950
0-6 months    IRC              INDIA        2                    NA                0.5529412   0.4781107   0.6277716
0-6 months    IRC              INDIA        3                    NA                0.5277778   0.3644995   0.6910561
0-6 months    JiVitA-3         BANGLADESH   4+                   NA                0.1877595   0.1734065   0.2021125
0-6 months    JiVitA-3         BANGLADESH   1                    NA                0.1764508   0.1673609   0.1855408
0-6 months    JiVitA-3         BANGLADESH   2                    NA                0.1732406   0.1604519   0.1860293
0-6 months    JiVitA-3         BANGLADESH   3                    NA                0.1714911   0.1543717   0.1886104
0-6 months    JiVitA-4         BANGLADESH   4+                   NA                0.1459005   0.1095327   0.1822682
0-6 months    JiVitA-4         BANGLADESH   1                    NA                0.1041015   0.0889780   0.1192250
0-6 months    JiVitA-4         BANGLADESH   2                    NA                0.0980727   0.0778181   0.1183273
0-6 months    JiVitA-4         BANGLADESH   3                    NA                0.1389616   0.0952877   0.1826355
0-6 months    MAL-ED           INDIA        4+                   NA                0.2000000   0.0428682   0.3571318
0-6 months    MAL-ED           INDIA        1                    NA                0.3095238   0.2104507   0.4085969
0-6 months    MAL-ED           INDIA        2                    NA                0.3076923   0.2050480   0.4103366
0-6 months    MAL-ED           INDIA        3                    NA                0.4375000   0.2968616   0.5781384
0-6 months    NIH-Crypto       BANGLADESH   4+                   NA                0.2563692   0.1681442   0.3445943
0-6 months    NIH-Crypto       BANGLADESH   1                    NA                0.2567610   0.2121276   0.3013944
0-6 months    NIH-Crypto       BANGLADESH   2                    NA                0.2469901   0.1854234   0.3085569
0-6 months    NIH-Crypto       BANGLADESH   3                    NA                0.2734559   0.1867291   0.3601827
0-6 months    PROVIDE          BANGLADESH   4+                   NA                0.3478261   0.1530402   0.5426119
0-6 months    PROVIDE          BANGLADESH   1                    NA                0.2544379   0.2164987   0.2923770
0-6 months    PROVIDE          BANGLADESH   2                    NA                0.2407407   0.1600513   0.3214301
0-6 months    PROVIDE          BANGLADESH   3                    NA                0.2903226   0.1772562   0.4033890
6-24 months   GMS-Nepal        NEPAL        4+                   NA                0.4654059   0.4067673   0.5240444
6-24 months   GMS-Nepal        NEPAL        1                    NA                0.5825887   0.4272956   0.7378818
6-24 months   GMS-Nepal        NEPAL        2                    NA                0.4449966   0.3570334   0.5329597
6-24 months   GMS-Nepal        NEPAL        3                    NA                0.4940367   0.4120058   0.5760675
6-24 months   IRC              INDIA        4+                   NA                0.4705882   0.2330280   0.7081485
6-24 months   IRC              INDIA        1                    NA                0.2594595   0.1962177   0.3227013
6-24 months   IRC              INDIA        2                    NA                0.3529412   0.2810162   0.4248661
6-24 months   IRC              INDIA        3                    NA                0.3055556   0.1548971   0.4562140
6-24 months   JiVitA-3         BANGLADESH   4+                   NA                0.1112692   0.0970921   0.1254462
6-24 months   JiVitA-3         BANGLADESH   1                    NA                0.1596037   0.1501869   0.1690204
6-24 months   JiVitA-3         BANGLADESH   2                    NA                0.1718553   0.1533827   0.1903279
6-24 months   JiVitA-3         BANGLADESH   3                    NA                0.1592045   0.1359848   0.1824241
6-24 months   JiVitA-4         BANGLADESH   4+                   NA                0.2664055   0.2113153   0.3214957
6-24 months   JiVitA-4         BANGLADESH   1                    NA                0.2488490   0.2248625   0.2728355
6-24 months   JiVitA-4         BANGLADESH   2                    NA                0.2540519   0.2173659   0.2907378
6-24 months   JiVitA-4         BANGLADESH   3                    NA                0.2225171   0.1779041   0.2671301
6-24 months   NIH-Crypto       BANGLADESH   4+                   NA                0.0879121   0.0296927   0.1461315
6-24 months   NIH-Crypto       BANGLADESH   1                    NA                0.1527378   0.1148618   0.1906137
6-24 months   NIH-Crypto       BANGLADESH   2                    NA                0.1329787   0.0844082   0.1815492
6-24 months   NIH-Crypto       BANGLADESH   3                    NA                0.0961538   0.0394569   0.1528508


### Parameter: E(Y)


agecat        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.6112601   0.5617242   0.6607959
0-24 months   COHORTS          INDIA        NA                   NA                0.3354454   0.3228114   0.3480794
0-24 months   GMS-Nepal        NEPAL        NA                   NA                0.5903790   0.5535526   0.6272054
0-24 months   IRC              INDIA        NA                   NA                0.6568627   0.6107393   0.7029862
0-24 months   JiVitA-3         BANGLADESH   NA                   NA                0.2579663   0.2514934   0.2644392
0-24 months   JiVitA-4         BANGLADESH   NA                   NA                0.3101161   0.2957091   0.3245231
0-24 months   MAL-ED           INDIA        NA                   NA                0.4851064   0.4210714   0.5491414
0-24 months   MAL-ED           NEPAL        NA                   NA                0.3093220   0.2502261   0.3684179
0-24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   PROVIDE          BANGLADESH   NA                   NA                0.3514286   0.3160364   0.3868207
0-6 months    COHORTS          INDIA        NA                   NA                0.2494186   0.2376119   0.2612253
0-6 months    GMS-Nepal        NEPAL        NA                   NA                0.3760933   0.3398180   0.4123685
0-6 months    IRC              INDIA        NA                   NA                0.5441176   0.4957312   0.5925041
0-6 months    JiVitA-3         BANGLADESH   NA                   NA                0.1761899   0.1705583   0.1818216
0-6 months    JiVitA-4         BANGLADESH   NA                   NA                0.1078103   0.0979894   0.1176312
0-6 months    MAL-ED           INDIA        NA                   NA                0.3234043   0.2634696   0.3833389
0-6 months    NIH-Crypto       BANGLADESH   NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    PROVIDE          BANGLADESH   NA                   NA                0.2585714   0.2261125   0.2910304
6-24 months   GMS-Nepal        NEPAL        NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   IRC              INDIA        NA                   NA                0.3112745   0.2662918   0.3562572
6-24 months   JiVitA-3         BANGLADESH   NA                   NA                0.1637742   0.1576516   0.1698967
6-24 months   JiVitA-4         BANGLADESH   NA                   NA                0.2472801   0.2337480   0.2608122
6-24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393


### Parameter: RR


agecat        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA        1                    4+                1.8574257   0.9126746   3.7801318
0-24 months   CMC-V-BCS-2002   INDIA        2                    4+                1.6641509   0.8091128   3.4227594
0-24 months   CMC-V-BCS-2002   INDIA        3                    4+                1.4274510   0.6718852   3.0326854
0-24 months   COHORTS          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA        1                    4+                2.3327314   1.6693972   3.2596410
0-24 months   COHORTS          INDIA        2                    4+                1.9073027   1.3566486   2.6814634
0-24 months   COHORTS          INDIA        3                    4+                1.4195952   0.9338135   2.1580868
0-24 months   GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL        1                    4+                0.8671656   0.6628446   1.1344683
0-24 months   GMS-Nepal        NEPAL        2                    4+                0.8163433   0.6813018   0.9781516
0-24 months   GMS-Nepal        NEPAL        3                    4+                0.9240721   0.7935404   1.0760755
0-24 months   IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA        1                    4+                0.8882883   0.6406895   1.2315733
0-24 months   IRC              INDIA        2                    4+                0.9500000   0.6865201   1.3146009
0-24 months   IRC              INDIA        3                    4+                1.0231481   0.7080395   1.4784939
0-24 months   JiVitA-3         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH   1                    4+                1.0634852   0.9866855   1.1462627
0-24 months   JiVitA-3         BANGLADESH   2                    4+                1.0839689   0.9972477   1.1782314
0-24 months   JiVitA-3         BANGLADESH   3                    4+                1.0567649   0.9545862   1.1698808
0-24 months   JiVitA-4         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH   1                    4+                0.8933246   0.7564703   1.0549376
0-24 months   JiVitA-4         BANGLADESH   2                    4+                0.8948542   0.7387759   1.0839065
0-24 months   JiVitA-4         BANGLADESH   3                    4+                0.8634464   0.6995893   1.0656818
0-24 months   MAL-ED           INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA        1                    4+                1.3227513   0.7480773   2.3388906
0-24 months   MAL-ED           INDIA        2                    4+                1.4601140   0.8300562   2.5684199
0-24 months   MAL-ED           INDIA        3                    4+                1.3888889   0.7656184   2.5195482
0-24 months   MAL-ED           NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           NEPAL        1                    4+                1.4585020   0.9619340   2.2114076
0-24 months   MAL-ED           NEPAL        2                    4+                0.7784380   0.3841652   1.5773572
0-24 months   MAL-ED           NEPAL        3                    4+                0.9401914   0.4509926   1.9600320
0-24 months   NIH-Crypto       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH   1                    4+                1.1210431   0.8007666   1.5694183
0-24 months   NIH-Crypto       BANGLADESH   2                    4+                1.0571316   0.7314697   1.5277834
0-24 months   NIH-Crypto       BANGLADESH   3                    4+                1.0584281   0.6979200   1.6051556
0-24 months   PROVIDE          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH   1                    4+                0.7643436   0.4710387   1.2402829
0-24 months   PROVIDE          BANGLADESH   2                    4+                0.6966944   0.4051050   1.1981663
0-24 months   PROVIDE          BANGLADESH   3                    4+                0.8611139   0.4943467   1.4999939
0-6 months    COHORTS          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA        1                    4+                1.7499061   1.2331457   2.4832196
0-6 months    COHORTS          INDIA        2                    4+                1.5686479   1.0969165   2.2432484
0-6 months    COHORTS          INDIA        3                    4+                1.2270503   0.7816173   1.9263294
0-6 months    GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL        1                    4+                0.8198061   0.5424996   1.2388617
0-6 months    GMS-Nepal        NEPAL        2                    4+                0.7399355   0.5597491   0.9781251
0-6 months    GMS-Nepal        NEPAL        3                    4+                0.9110878   0.7235984   1.1471569
0-6 months    IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA        1                    4+                0.9097297   0.5975582   1.3849834
0-6 months    IRC              INDIA        2                    4+                0.9400000   0.6172707   1.4314628
0-6 months    IRC              INDIA        3                    4+                0.8972222   0.5418807   1.4855810
0-6 months    JiVitA-3         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH   1                    4+                0.9397707   0.8570755   1.0304448
0-6 months    JiVitA-3         BANGLADESH   2                    4+                0.9226729   0.8293332   1.0265178
0-6 months    JiVitA-3         BANGLADESH   3                    4+                0.9133551   0.8034058   1.0383514
0-6 months    JiVitA-4         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH   1                    4+                0.7135106   0.5331659   0.9548574
0-6 months    JiVitA-4         BANGLADESH   2                    4+                0.6721890   0.4829887   0.9355043
0-6 months    JiVitA-4         BANGLADESH   3                    4+                0.9524413   0.6596918   1.3751033
0-6 months    MAL-ED           INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA        1                    4+                1.5476190   0.6625619   3.6149446
0-6 months    MAL-ED           INDIA        2                    4+                1.5384615   0.6552323   3.6122518
0-6 months    MAL-ED           INDIA        3                    4+                2.1875000   0.9360186   5.1122448
0-6 months    NIH-Crypto       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH   1                    4+                1.0015281   0.6809868   1.4729484
0-6 months    NIH-Crypto       BANGLADESH   2                    4+                0.9634156   0.6298820   1.4735613
0-6 months    NIH-Crypto       BANGLADESH   3                    4+                1.0666486   0.6683514   1.7023070
0-6 months    PROVIDE          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH   1                    4+                0.7315089   0.4097670   1.3058767
0-6 months    PROVIDE          BANGLADESH   2                    4+                0.6921296   0.3603676   1.3293188
0-6 months    PROVIDE          BANGLADESH   3                    4+                0.8346774   0.4219679   1.6510413
6-24 months   GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL        1                    4+                1.2517863   0.9320342   1.6812353
6-24 months   GMS-Nepal        NEPAL        2                    4+                0.9561473   0.7563721   1.2086878
6-24 months   GMS-Nepal        NEPAL        3                    4+                1.0615179   0.8618103   1.3075038
6-24 months   IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA        1                    4+                0.5513514   0.3147542   0.9657958
6-24 months   IRC              INDIA        2                    4+                0.7500000   0.4351437   1.2926765
6-24 months   IRC              INDIA        3                    4+                0.6493056   0.3206169   1.3149578
6-24 months   JiVitA-3         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH   1                    4+                1.4343924   1.2439133   1.6540393
6-24 months   JiVitA-3         BANGLADESH   2                    4+                1.5445007   1.3118561   1.8184025
6-24 months   JiVitA-3         BANGLADESH   3                    4+                1.4308048   1.1764311   1.7401803
6-24 months   JiVitA-4         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH   1                    4+                0.9340985   0.7426408   1.1749153
6-24 months   JiVitA-4         BANGLADESH   2                    4+                0.9536285   0.7451451   1.2204432
6-24 months   JiVitA-4         BANGLADESH   3                    4+                0.8352571   0.6267399   1.1131481
6-24 months   NIH-Crypto       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH   1                    4+                1.7373919   0.8566152   3.5237886
6-24 months   NIH-Crypto       BANGLADESH   2                    4+                1.5126330   0.7100358   3.2224551
6-24 months   NIH-Crypto       BANGLADESH   3                    4+                1.0937500   0.4506349   2.6546744


### Parameter: PAR


agecat        studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA        4+                   NA                 0.2541172    0.0073804    0.5008540
0-24 months   COHORTS          INDIA        4+                   NA                 0.1798167    0.1279971    0.2316364
0-24 months   GMS-Nepal        NEPAL        4+                   NA                -0.0415945   -0.0820573   -0.0011316
0-24 months   IRC              INDIA        4+                   NA                -0.0490196   -0.2617104    0.1636712
0-24 months   JiVitA-3         BANGLADESH   4+                   NA                 0.0175105    0.0021156    0.0329055
0-24 months   JiVitA-4         BANGLADESH   4+                   NA                -0.0366793   -0.0862152    0.0128565
0-24 months   MAL-ED           INDIA        4+                   NA                 0.1251064   -0.0540303    0.3042430
0-24 months   MAL-ED           NEPAL        4+                   NA                 0.0192457   -0.0338976    0.0723890
0-24 months   NIH-Crypto       BANGLADESH   4+                   NA                 0.0255148   -0.0615882    0.1126179
0-24 months   PROVIDE          BANGLADESH   4+                   NA                -0.1051326   -0.3155896    0.1053244
0-6 months    COHORTS          INDIA        4+                   NA                 0.1003329    0.0488187    0.1518470
0-6 months    GMS-Nepal        NEPAL        4+                   NA                -0.0410262   -0.0807120   -0.0013403
0-6 months    IRC              INDIA        4+                   NA                -0.0441176   -0.2735435    0.1853082
0-6 months    JiVitA-3         BANGLADESH   4+                   NA                -0.0115695   -0.0260850    0.0029459
0-6 months    JiVitA-4         BANGLADESH   4+                   NA                -0.0380901   -0.0739993   -0.0021809
0-6 months    MAL-ED           INDIA        4+                   NA                 0.1234043   -0.0283498    0.2751583
0-6 months    NIH-Crypto       BANGLADESH   4+                   NA                 0.0008867   -0.0817575    0.0835308
0-6 months    PROVIDE          BANGLADESH   4+                   NA                -0.0892547   -0.2803091    0.1017998
6-24 months   GMS-Nepal        NEPAL        4+                   NA                 0.0074755   -0.0352555    0.0502065
6-24 months   IRC              INDIA        4+                   NA                -0.1593137   -0.3911659    0.0725384
6-24 months   JiVitA-3         BANGLADESH   4+                   NA                 0.0525050    0.0376826    0.0673273
6-24 months   JiVitA-4         BANGLADESH   4+                   NA                -0.0191254   -0.0723370    0.0340862
6-24 months   NIH-Crypto       BANGLADESH   4+                   NA                 0.0435948   -0.0124970    0.0996865


### Parameter: PAF


agecat        studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA        4+                   NA                 0.4157268   -0.1682288    0.7077840
0-24 months   COHORTS          INDIA        4+                   NA                 0.5360537    0.3548110    0.6663828
0-24 months   GMS-Nepal        NEPAL        4+                   NA                -0.0704538   -0.1415190   -0.0038128
0-24 months   IRC              INDIA        4+                   NA                -0.0746269   -0.4526773    0.2050382
0-24 months   JiVitA-3         BANGLADESH   4+                   NA                 0.0678792    0.0066750    0.1253123
0-24 months   JiVitA-4         BANGLADESH   4+                   NA                -0.1182762   -0.2904738    0.0309438
0-24 months   MAL-ED           INDIA        4+                   NA                 0.2578947   -0.2216217    0.5491892
0-24 months   MAL-ED           NEPAL        4+                   NA                 0.0622190   -0.1262521    0.2191506
0-24 months   NIH-Crypto       BANGLADESH   4+                   NA                 0.0773610   -0.2283742    0.3070005
0-24 months   PROVIDE          BANGLADESH   4+                   NA                -0.2991578   -1.0599942    0.1806720
0-6 months    COHORTS          INDIA        4+                   NA                 0.4022670    0.1574979    0.5759242
0-6 months    GMS-Nepal        NEPAL        4+                   NA                -0.1090850   -0.2199742   -0.0082752
0-6 months    IRC              INDIA        4+                   NA                -0.0810811   -0.5969182    0.2681301
0-6 months    JiVitA-3         BANGLADESH   4+                   NA                -0.0656651   -0.1518508    0.0140719
0-6 months    JiVitA-4         BANGLADESH   4+                   NA                -0.3533067   -0.7366090   -0.0546064
0-6 months    MAL-ED           INDIA        4+                   NA                 0.3815789   -0.3160749    0.7094051
0-6 months    NIH-Crypto       BANGLADESH   4+                   NA                 0.0034467   -0.3756276    0.2780615
0-6 months    PROVIDE          BANGLADESH   4+                   NA                -0.3451838   -1.3297335    0.2232934
6-24 months   GMS-Nepal        NEPAL        4+                   NA                 0.0158083   -0.0788384    0.1021517
6-24 months   IRC              INDIA        4+                   NA                -0.5118110   -1.4765926    0.0771302
6-24 months   JiVitA-3         BANGLADESH   4+                   NA                 0.3205938    0.2271653    0.4027276
6-24 months   JiVitA-4         BANGLADESH   4+                   NA                -0.0773431   -0.3155046    0.1177011
6-24 months   NIH-Crypto       BANGLADESH   4+                   NA                 0.3315018   -0.2585387    0.6449137
