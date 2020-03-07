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

unadjusted

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/f5b4328a-21fa-4a8f-b89f-ecaf2285a7c2/e43174ba-2430-4afb-88a4-dd849d9ed44f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f5b4328a-21fa-4a8f-b89f-ecaf2285a7c2/e43174ba-2430-4afb-88a4-dd849d9ed44f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f5b4328a-21fa-4a8f-b89f-ecaf2285a7c2/e43174ba-2430-4afb-88a4-dd849d9ed44f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f5b4328a-21fa-4a8f-b89f-ecaf2285a7c2/e43174ba-2430-4afb-88a4-dd849d9ed44f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA        4+                   NA                0.3571429   0.1058123   0.6084734
0-24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.6633663   0.5981118   0.7286209
0-24 months   CMC-V-BCS-2002   INDIA        2                    NA                0.5943396   0.5007394   0.6879398
0-24 months   CMC-V-BCS-2002   INDIA        3                    NA                0.5098039   0.3724211   0.6471867
0-24 months   COHORTS          INDIA        4+                   NA                0.1509434   0.0970884   0.2047984
0-24 months   COHORTS          INDIA        1                    NA                0.3634292   0.3475179   0.3793406
0-24 months   COHORTS          INDIA        2                    NA                0.2992278   0.2764584   0.3219972
0-24 months   COHORTS          INDIA        3                    NA                0.2205128   0.1623169   0.2787088
0-24 months   GMS-Nepal        NEPAL        4+                   NA                0.6305732   0.5771498   0.6839967
0-24 months   GMS-Nepal        NEPAL        1                    NA                0.5510204   0.4116521   0.6903887
0-24 months   GMS-Nepal        NEPAL        2                    NA                0.5244755   0.4425638   0.6063872
0-24 months   GMS-Nepal        NEPAL        3                    NA                0.5833333   0.5112589   0.6554078
0-24 months   IRC              INDIA        4+                   NA                0.7058824   0.4890205   0.9227442
0-24 months   IRC              INDIA        1                    NA                0.6270270   0.5572557   0.6967983
0-24 months   IRC              INDIA        2                    NA                0.6705882   0.5998500   0.7413264
0-24 months   IRC              INDIA        3                    NA                0.7222222   0.5757302   0.8687142
0-24 months   JiVitA-3         BANGLADESH   4+                   NA                0.2132159   0.1858353   0.2405964
0-24 months   JiVitA-3         BANGLADESH   1                    NA                0.2608832   0.2528182   0.2689482
0-24 months   JiVitA-3         BANGLADESH   2                    NA                0.2617931   0.2505658   0.2730204
0-24 months   JiVitA-3         BANGLADESH   3                    NA                0.2489419   0.2311541   0.2667297
0-24 months   JiVitA-4         BANGLADESH   4+                   NA                0.2727273   0.1979113   0.3475432
0-24 months   JiVitA-4         BANGLADESH   1                    NA                0.3220551   0.3029279   0.3411824
0-24 months   JiVitA-4         BANGLADESH   2                    NA                0.3006489   0.2745257   0.3267720
0-24 months   JiVitA-4         BANGLADESH   3                    NA                0.2846975   0.2404550   0.3289401
0-24 months   MAL-ED           INDIA        4+                   NA                0.3600000   0.1714418   0.5485582
0-24 months   MAL-ED           INDIA        1                    NA                0.4761905   0.3691590   0.5832219
0-24 months   MAL-ED           INDIA        2                    NA                0.5256410   0.4145894   0.6366927
0-24 months   MAL-ED           INDIA        3                    NA                0.5000000   0.3582499   0.6417501
0-24 months   MAL-ED           NEPAL        4+                   NA                0.2900763   0.2122016   0.3679511
0-24 months   MAL-ED           NEPAL        1                    NA                0.4230769   0.2885104   0.5576435
0-24 months   MAL-ED           NEPAL        2                    NA                0.2258065   0.0783098   0.3733031
0-24 months   MAL-ED           NEPAL        3                    NA                0.2727273   0.0862303   0.4592242
0-24 months   NIH-Crypto       BANGLADESH   4+                   NA                0.3052632   0.2125972   0.3979291
0-24 months   NIH-Crypto       BANGLADESH   1                    NA                0.3423913   0.2938785   0.3909041
0-24 months   NIH-Crypto       BANGLADESH   2                    NA                0.3246073   0.2581603   0.3910543
0-24 months   NIH-Crypto       BANGLADESH   3                    NA                0.3173077   0.2277978   0.4068176
0-24 months   PROVIDE          BANGLADESH   4+                   NA                0.4347826   0.2320431   0.6375221
0-24 months   PROVIDE          BANGLADESH   1                    NA                0.3510848   0.3095077   0.3926619
0-24 months   PROVIDE          BANGLADESH   2                    NA                0.3148148   0.2271595   0.4024701
0-24 months   PROVIDE          BANGLADESH   3                    NA                0.3870968   0.2657667   0.5084268
0-6 months    COHORTS          INDIA        4+                   NA                0.1400000   0.0872753   0.1927247
0-6 months    COHORTS          INDIA        1                    NA                0.2625814   0.2477409   0.2774219
0-6 months    COHORTS          INDIA        2                    NA                0.2356091   0.2140878   0.2571304
0-6 months    COHORTS          INDIA        3                    NA                0.1808511   0.1258269   0.2358752
0-6 months    GMS-Nepal        NEPAL        4+                   NA                0.4171975   0.3626177   0.4717772
0-6 months    GMS-Nepal        NEPAL        1                    NA                0.3265306   0.1951329   0.4579283
0-6 months    GMS-Nepal        NEPAL        2                    NA                0.3076923   0.2319908   0.3833939
0-6 months    GMS-Nepal        NEPAL        3                    NA                0.3722222   0.3015526   0.4428918
0-6 months    IRC              INDIA        4+                   NA                0.5882353   0.3539977   0.8224729
0-6 months    IRC              INDIA        1                    NA                0.5351351   0.4631753   0.6070950
0-6 months    IRC              INDIA        2                    NA                0.5529412   0.4781107   0.6277716
0-6 months    IRC              INDIA        3                    NA                0.5277778   0.3644995   0.6910561
0-6 months    JiVitA-3         BANGLADESH   4+                   NA                0.1603189   0.1351227   0.1855151
0-6 months    JiVitA-3         BANGLADESH   1                    NA                0.1785130   0.1714642   0.1855619
0-6 months    JiVitA-3         BANGLADESH   2                    NA                0.1762749   0.1666646   0.1858853
0-6 months    JiVitA-3         BANGLADESH   3                    NA                0.1686002   0.1527556   0.1844447
0-6 months    JiVitA-4         BANGLADESH   4+                   NA                0.1203008   0.0695268   0.1710747
0-6 months    JiVitA-4         BANGLADESH   1                    NA                0.1072503   0.0948862   0.1196143
0-6 months    JiVitA-4         BANGLADESH   2                    NA                0.1020093   0.0839061   0.1201125
0-6 months    JiVitA-4         BANGLADESH   3                    NA                0.1188679   0.0845343   0.1532016
0-6 months    MAL-ED           INDIA        4+                   NA                0.2000000   0.0428682   0.3571318
0-6 months    MAL-ED           INDIA        1                    NA                0.3095238   0.2104507   0.4085969
0-6 months    MAL-ED           INDIA        2                    NA                0.3076923   0.2050480   0.4103366
0-6 months    MAL-ED           INDIA        3                    NA                0.4375000   0.2968616   0.5781384
0-6 months    NIH-Crypto       BANGLADESH   4+                   NA                0.2526316   0.1651968   0.3400663
0-6 months    NIH-Crypto       BANGLADESH   1                    NA                0.2608696   0.2159761   0.3057630
0-6 months    NIH-Crypto       BANGLADESH   2                    NA                0.2460733   0.1849489   0.3071977
0-6 months    NIH-Crypto       BANGLADESH   3                    NA                0.2692308   0.1839265   0.3545350
0-6 months    PROVIDE          BANGLADESH   4+                   NA                0.3478261   0.1530402   0.5426119
0-6 months    PROVIDE          BANGLADESH   1                    NA                0.2544379   0.2164987   0.2923770
0-6 months    PROVIDE          BANGLADESH   2                    NA                0.2407407   0.1600513   0.3214301
0-6 months    PROVIDE          BANGLADESH   3                    NA                0.2903226   0.1772562   0.4033890
6-24 months   GMS-Nepal        NEPAL        4+                   NA                0.4640288   0.4053559   0.5227016
6-24 months   GMS-Nepal        NEPAL        1                    NA                0.5750000   0.4216743   0.7283257
6-24 months   GMS-Nepal        NEPAL        2                    NA                0.4409449   0.3545209   0.5273688
6-24 months   GMS-Nepal        NEPAL        3                    NA                0.4896552   0.4082205   0.5710899
6-24 months   IRC              INDIA        4+                   NA                0.4705882   0.2330280   0.7081485
6-24 months   IRC              INDIA        1                    NA                0.2594595   0.1962177   0.3227013
6-24 months   IRC              INDIA        2                    NA                0.3529412   0.2810162   0.4248661
6-24 months   IRC              INDIA        3                    NA                0.3055556   0.1548971   0.4562140
6-24 months   JiVitA-3         BANGLADESH   4+                   NA                0.1076115   0.0860326   0.1291905
6-24 months   JiVitA-3         BANGLADESH   1                    NA                0.1696320   0.1617978   0.1774663
6-24 months   JiVitA-3         BANGLADESH   2                    NA                0.1657096   0.1547113   0.1767079
6-24 months   JiVitA-3         BANGLADESH   3                    NA                0.1497722   0.1315108   0.1680336
6-24 months   JiVitA-4         BANGLADESH   4+                   NA                0.1859649   0.1143091   0.2576207
6-24 months   JiVitA-4         BANGLADESH   1                    NA                0.2632404   0.2449646   0.2815161
6-24 months   JiVitA-4         BANGLADESH   2                    NA                0.2395382   0.2154123   0.2636642
6-24 months   JiVitA-4         BANGLADESH   3                    NA                0.2067736   0.1672053   0.2463419
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
0-24 months   COHORTS          INDIA        1                    4+                2.4077186   1.6807061   3.4492102
0-24 months   COHORTS          INDIA        2                    4+                1.9823842   1.3764208   2.8551203
0-24 months   COHORTS          INDIA        3                    4+                1.4608974   0.9373134   2.2769558
0-24 months   GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL        1                    4+                0.8738404   0.6692501   1.1409742
0-24 months   GMS-Nepal        NEPAL        2                    4+                0.8317440   0.6963460   0.9934689
0-24 months   GMS-Nepal        NEPAL        3                    4+                0.9250842   0.7963762   1.0745936
0-24 months   IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA        1                    4+                0.8882883   0.6406895   1.2315733
0-24 months   IRC              INDIA        2                    4+                0.9500000   0.6865201   1.3146009
0-24 months   IRC              INDIA        3                    4+                1.0231481   0.7080395   1.4784939
0-24 months   JiVitA-3         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH   1                    4+                1.2235638   1.0739917   1.3939664
0-24 months   JiVitA-3         BANGLADESH   2                    4+                1.2278313   1.0745325   1.4030005
0-24 months   JiVitA-3         BANGLADESH   3                    4+                1.1675581   1.0128797   1.3458577
0-24 months   JiVitA-4         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH   1                    4+                1.1808688   0.8917914   1.5636517
0-24 months   JiVitA-4         BANGLADESH   2                    4+                1.1023792   0.8288271   1.4662166
0-24 months   JiVitA-4         BANGLADESH   3                    4+                1.0438909   0.7619462   1.4301641
0-24 months   MAL-ED           INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA        1                    4+                1.3227513   0.7480773   2.3388906
0-24 months   MAL-ED           INDIA        2                    4+                1.4601140   0.8300562   2.5684199
0-24 months   MAL-ED           INDIA        3                    4+                1.3888889   0.7656184   2.5195482
0-24 months   MAL-ED           NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           NEPAL        1                    4+                1.4585020   0.9619340   2.2114076
0-24 months   MAL-ED           NEPAL        2                    4+                0.7784380   0.3841652   1.5773572
0-24 months   MAL-ED           NEPAL        3                    4+                0.9401914   0.4509926   1.9600320
0-24 months   NIH-Crypto       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH   1                    4+                1.1216267   0.8023426   1.5679667
0-24 months   NIH-Crypto       BANGLADESH   2                    4+                1.0633688   0.7373534   1.5335297
0-24 months   NIH-Crypto       BANGLADESH   3                    4+                1.0394562   0.6868088   1.5731734
0-24 months   PROVIDE          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH   1                    4+                0.8074951   0.4991133   1.3064135
0-24 months   PROVIDE          BANGLADESH   2                    4+                0.7240741   0.4206450   1.2463793
0-24 months   PROVIDE          BANGLADESH   3                    4+                0.8903226   0.5076189   1.5615540
0-6 months    COHORTS          INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA        1                    4+                1.8755815   1.2815840   2.7448890
0-6 months    COHORTS          INDIA        2                    4+                1.6829222   1.1422590   2.4794962
0-6 months    COHORTS          INDIA        3                    4+                1.2917933   0.7960310   2.0963127
0-6 months    GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL        1                    4+                0.7826764   0.5126442   1.1949465
0-6 months    GMS-Nepal        NEPAL        2                    4+                0.7375220   0.5581601   0.9745210
0-6 months    GMS-Nepal        NEPAL        3                    4+                0.8921968   0.7084781   1.1235565
0-6 months    IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA        1                    4+                0.9097297   0.5975582   1.3849834
0-6 months    IRC              INDIA        2                    4+                0.9400000   0.6172707   1.4314628
0-6 months    IRC              INDIA        3                    4+                0.8972222   0.5418807   1.4855810
0-6 months    JiVitA-3         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH   1                    4+                1.1134873   0.9478596   1.3080565
0-6 months    JiVitA-3         BANGLADESH   2                    4+                1.0995271   0.9316166   1.2977012
0-6 months    JiVitA-3         BANGLADESH   3                    4+                1.0516551   0.8817216   1.2543398
0-6 months    JiVitA-4         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH   1                    4+                0.8915177   0.5745273   1.3834049
0-6 months    JiVitA-4         BANGLADESH   2                    4+                0.8479521   0.5368668   1.3392944
0-6 months    JiVitA-4         BANGLADESH   3                    4+                0.9880896   0.6072571   1.6077558
0-6 months    MAL-ED           INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA        1                    4+                1.5476190   0.6625619   3.6149446
0-6 months    MAL-ED           INDIA        2                    4+                1.5384615   0.6552323   3.6122518
0-6 months    MAL-ED           INDIA        3                    4+                2.1875000   0.9360186   5.1122448
0-6 months    NIH-Crypto       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH   1                    4+                1.0326087   0.7015719   1.5198453
0-6 months    NIH-Crypto       BANGLADESH   2                    4+                0.9740401   0.6361551   1.4913882
0-6 months    NIH-Crypto       BANGLADESH   3                    4+                1.0657051   0.6665841   1.7038021
0-6 months    PROVIDE          BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH   1                    4+                0.7315089   0.4097670   1.3058767
0-6 months    PROVIDE          BANGLADESH   2                    4+                0.6921296   0.3603676   1.3293188
0-6 months    PROVIDE          BANGLADESH   3                    4+                0.8346774   0.4219679   1.6510413
6-24 months   GMS-Nepal        NEPAL        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL        1                    4+                1.2391473   0.9224801   1.6645194
6-24 months   GMS-Nepal        NEPAL        2                    4+                0.9502533   0.7525633   1.1998743
6-24 months   GMS-Nepal        NEPAL        3                    4+                1.0552259   0.8562754   1.3004013
6-24 months   IRC              INDIA        4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA        1                    4+                0.5513514   0.3147542   0.9657958
6-24 months   IRC              INDIA        2                    4+                0.7500000   0.4351437   1.2926765
6-24 months   IRC              INDIA        3                    4+                0.6493056   0.3206169   1.3149578
6-24 months   JiVitA-3         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH   1                    4+                1.5763366   1.2835283   1.9359427
6-24 months   JiVitA-3         BANGLADESH   2                    4+                1.5398868   1.2476539   1.9005682
6-24 months   JiVitA-3         BANGLADESH   3                    4+                1.3917857   1.1050295   1.7529554
6-24 months   JiVitA-4         BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH   1                    4+                1.4155378   0.9570426   2.0936866
6-24 months   JiVitA-4         BANGLADESH   2                    4+                1.2880830   0.8705389   1.9058974
6-24 months   JiVitA-4         BANGLADESH   3                    4+                1.1118959   0.7225393   1.7110660
6-24 months   NIH-Crypto       BANGLADESH   4+                   4+                1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH   1                    4+                1.7373919   0.8566152   3.5237886
6-24 months   NIH-Crypto       BANGLADESH   2                    4+                1.5126330   0.7100358   3.2224551
6-24 months   NIH-Crypto       BANGLADESH   3                    4+                1.0937500   0.4506349   2.6546744


### Parameter: PAR


agecat        studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA        4+                   NA                 0.2541172    0.0073804    0.5008540
0-24 months   COHORTS          INDIA        4+                   NA                 0.1845020    0.1305116    0.2384924
0-24 months   GMS-Nepal        NEPAL        4+                   NA                -0.0401942   -0.0801629   -0.0002256
0-24 months   IRC              INDIA        4+                   NA                -0.0490196   -0.2617104    0.1636712
0-24 months   JiVitA-3         BANGLADESH   4+                   NA                 0.0447504    0.0183043    0.0711965
0-24 months   JiVitA-4         BANGLADESH   4+                   NA                 0.0373888   -0.0347097    0.1094873
0-24 months   MAL-ED           INDIA        4+                   NA                 0.1251064   -0.0540303    0.3042430
0-24 months   MAL-ED           NEPAL        4+                   NA                 0.0192457   -0.0338976    0.0723890
0-24 months   NIH-Crypto       BANGLADESH   4+                   NA                 0.0245521   -0.0623745    0.1114788
0-24 months   PROVIDE          BANGLADESH   4+                   NA                -0.0833540   -0.2824893    0.1157812
0-6 months    COHORTS          INDIA        4+                   NA                 0.1094186    0.0566901    0.1621471
0-6 months    GMS-Nepal        NEPAL        4+                   NA                -0.0411042   -0.0806991   -0.0015092
0-6 months    IRC              INDIA        4+                   NA                -0.0441176   -0.2735435    0.1853082
0-6 months    JiVitA-3         BANGLADESH   4+                   NA                 0.0158711   -0.0086245    0.0403666
0-6 months    JiVitA-4         BANGLADESH   4+                   NA                -0.0124904   -0.0612561    0.0362753
0-6 months    MAL-ED           INDIA        4+                   NA                 0.1234043   -0.0283498    0.2751583
0-6 months    NIH-Crypto       BANGLADESH   4+                   NA                 0.0046244   -0.0772183    0.0864670
0-6 months    PROVIDE          BANGLADESH   4+                   NA                -0.0892547   -0.2803091    0.1017998
6-24 months   GMS-Nepal        NEPAL        4+                   NA                 0.0088526   -0.0338567    0.0515619
6-24 months   IRC              INDIA        4+                   NA                -0.1593137   -0.3911659    0.0725384
6-24 months   JiVitA-3         BANGLADESH   4+                   NA                 0.0561626    0.0348007    0.0775245
6-24 months   JiVitA-4         BANGLADESH   4+                   NA                 0.0613152   -0.0075499    0.1301803
6-24 months   NIH-Crypto       BANGLADESH   4+                   NA                 0.0435948   -0.0124970    0.0996865


### Parameter: PAF


agecat        studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA        4+                   NA                 0.4157268   -0.1682288    0.7077840
0-24 months   COHORTS          INDIA        4+                   NA                 0.5500210    0.3584039    0.6844103
0-24 months   GMS-Nepal        NEPAL        4+                   NA                -0.0680821   -0.1382681   -0.0022238
0-24 months   IRC              INDIA        4+                   NA                -0.0746269   -0.4526773    0.2050382
0-24 months   JiVitA-3         BANGLADESH   4+                   NA                 0.1734739    0.0641018    0.2700644
0-24 months   JiVitA-4         BANGLADESH   4+                   NA                 0.1205639   -0.1463126    0.3253081
0-24 months   MAL-ED           INDIA        4+                   NA                 0.2578947   -0.2216217    0.5491892
0-24 months   MAL-ED           NEPAL        4+                   NA                 0.0622190   -0.1262521    0.2191506
0-24 months   NIH-Crypto       BANGLADESH   4+                   NA                 0.0744421   -0.2304633    0.3037928
0-24 months   PROVIDE          BANGLADESH   4+                   NA                -0.2371863   -0.9561718    0.2175381
0-6 months    COHORTS          INDIA        4+                   NA                 0.4386946    0.1838870    0.6139460
0-6 months    GMS-Nepal        NEPAL        4+                   NA                -0.1092925   -0.2199254   -0.0086926
0-6 months    IRC              INDIA        4+                   NA                -0.0810811   -0.5969182    0.2681301
0-6 months    JiVitA-3         BANGLADESH   4+                   NA                 0.0900794   -0.0602059    0.2190615
0-6 months    JiVitA-4         BANGLADESH   4+                   NA                -0.1158553   -0.6720896    0.2553431
0-6 months    MAL-ED           INDIA        4+                   NA                 0.3815789   -0.3160749    0.7094051
0-6 months    NIH-Crypto       BANGLADESH   4+                   NA                 0.0179757   -0.3577361    0.2897208
0-6 months    PROVIDE          BANGLADESH   4+                   NA                -0.3451838   -1.3297335    0.2232934
6-24 months   GMS-Nepal        NEPAL        4+                   NA                 0.0187205   -0.0758954    0.1050157
6-24 months   IRC              INDIA        4+                   NA                -0.5118110   -1.4765926    0.0771302
6-24 months   JiVitA-3         BANGLADESH   4+                   NA                 0.3429272    0.1995622    0.4606143
6-24 months   JiVitA-4         BANGLADESH   4+                   NA                 0.2479584   -0.0917737    0.4819746
6-24 months   NIH-Crypto       BANGLADESH   4+                   NA                 0.3315018   -0.2585387    0.6449137
