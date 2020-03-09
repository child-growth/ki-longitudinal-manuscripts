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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        nrooms    ever_co   n_cell       n
------------  ---------------  -----------------------------  -------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          4+              0       12     373
0-24 months   CMC-V-BCS-2002   INDIA                          4+              1        2     373
0-24 months   CMC-V-BCS-2002   INDIA                          1               0      149     373
0-24 months   CMC-V-BCS-2002   INDIA                          1               1       53     373
0-24 months   CMC-V-BCS-2002   INDIA                          2               0       83     373
0-24 months   CMC-V-BCS-2002   INDIA                          2               1       23     373
0-24 months   CMC-V-BCS-2002   INDIA                          3               0       43     373
0-24 months   CMC-V-BCS-2002   INDIA                          3               1        8     373
0-24 months   COHORTS          INDIA                          4+              0      105    5364
0-24 months   COHORTS          INDIA                          4+              1        1    5364
0-24 months   COHORTS          INDIA                          1               0     3081    5364
0-24 months   COHORTS          INDIA                          1               1      429    5364
0-24 months   COHORTS          INDIA                          2               0     1465    5364
0-24 months   COHORTS          INDIA                          2               1       88    5364
0-24 months   COHORTS          INDIA                          3               0      188    5364
0-24 months   COHORTS          INDIA                          3               1        7    5364
0-24 months   CONTENT          PERU                           4+              0       78     215
0-24 months   CONTENT          PERU                           4+              1        0     215
0-24 months   CONTENT          PERU                           1               0       44     215
0-24 months   CONTENT          PERU                           1               1        0     215
0-24 months   CONTENT          PERU                           2               0       54     215
0-24 months   CONTENT          PERU                           2               1        0     215
0-24 months   CONTENT          PERU                           3               0       39     215
0-24 months   CONTENT          PERU                           3               1        0     215
0-24 months   GMS-Nepal        NEPAL                          4+              0      216     686
0-24 months   GMS-Nepal        NEPAL                          4+              1       98     686
0-24 months   GMS-Nepal        NEPAL                          1               0       34     686
0-24 months   GMS-Nepal        NEPAL                          1               1       15     686
0-24 months   GMS-Nepal        NEPAL                          2               0      102     686
0-24 months   GMS-Nepal        NEPAL                          2               1       41     686
0-24 months   GMS-Nepal        NEPAL                          3               0      132     686
0-24 months   GMS-Nepal        NEPAL                          3               1       48     686
0-24 months   IRC              INDIA                          4+              0       13     408
0-24 months   IRC              INDIA                          4+              1        4     408
0-24 months   IRC              INDIA                          1               0      153     408
0-24 months   IRC              INDIA                          1               1       32     408
0-24 months   IRC              INDIA                          2               0      136     408
0-24 months   IRC              INDIA                          2               1       34     408
0-24 months   IRC              INDIA                          3               0       30     408
0-24 months   IRC              INDIA                          3               1        6     408
0-24 months   JiVitA-3         BANGLADESH                     4+              0     1089   26893
0-24 months   JiVitA-3         BANGLADESH                     4+              1       46   26893
0-24 months   JiVitA-3         BANGLADESH                     1               0    14426   26893
0-24 months   JiVitA-3         BANGLADESH                     1               1     1495   26893
0-24 months   JiVitA-3         BANGLADESH                     2               0     6586   26893
0-24 months   JiVitA-3         BANGLADESH                     2               1      653   26893
0-24 months   JiVitA-3         BANGLADESH                     3               0     2403   26893
0-24 months   JiVitA-3         BANGLADESH                     3               1      195   26893
0-24 months   JiVitA-4         BANGLADESH                     4+              0      257    5426
0-24 months   JiVitA-4         BANGLADESH                     4+              1       29    5426
0-24 months   JiVitA-4         BANGLADESH                     1               0     2620    5426
0-24 months   JiVitA-4         BANGLADESH                     1               1      571    5426
0-24 months   JiVitA-4         BANGLADESH                     2               0     1182    5426
0-24 months   JiVitA-4         BANGLADESH                     2               1      205    5426
0-24 months   JiVitA-4         BANGLADESH                     3               0      491    5426
0-24 months   JiVitA-4         BANGLADESH                     3               1       71    5426
0-24 months   MAL-ED           BANGLADESH                     4+              0       10     242
0-24 months   MAL-ED           BANGLADESH                     4+              1        2     242
0-24 months   MAL-ED           BANGLADESH                     1               0      123     242
0-24 months   MAL-ED           BANGLADESH                     1               1       29     242
0-24 months   MAL-ED           BANGLADESH                     2               0       43     242
0-24 months   MAL-ED           BANGLADESH                     2               1        7     242
0-24 months   MAL-ED           BANGLADESH                     3               0       27     242
0-24 months   MAL-ED           BANGLADESH                     3               1        1     242
0-24 months   MAL-ED           BRAZIL                         4+              0      124     210
0-24 months   MAL-ED           BRAZIL                         4+              1        3     210
0-24 months   MAL-ED           BRAZIL                         1               0        4     210
0-24 months   MAL-ED           BRAZIL                         1               1        0     210
0-24 months   MAL-ED           BRAZIL                         2               0       20     210
0-24 months   MAL-ED           BRAZIL                         2               1        0     210
0-24 months   MAL-ED           BRAZIL                         3               0       59     210
0-24 months   MAL-ED           BRAZIL                         3               1        0     210
0-24 months   MAL-ED           INDIA                          4+              0       22     235
0-24 months   MAL-ED           INDIA                          4+              1        3     235
0-24 months   MAL-ED           INDIA                          1               0       66     235
0-24 months   MAL-ED           INDIA                          1               1       18     235
0-24 months   MAL-ED           INDIA                          2               0       54     235
0-24 months   MAL-ED           INDIA                          2               1       24     235
0-24 months   MAL-ED           INDIA                          3               0       40     235
0-24 months   MAL-ED           INDIA                          3               1        8     235
0-24 months   MAL-ED           NEPAL                          4+              0      122     236
0-24 months   MAL-ED           NEPAL                          4+              1        9     236
0-24 months   MAL-ED           NEPAL                          1               0       42     236
0-24 months   MAL-ED           NEPAL                          1               1       10     236
0-24 months   MAL-ED           NEPAL                          2               0       30     236
0-24 months   MAL-ED           NEPAL                          2               1        1     236
0-24 months   MAL-ED           NEPAL                          3               0       20     236
0-24 months   MAL-ED           NEPAL                          3               1        2     236
0-24 months   MAL-ED           PERU                           4+              0      132     272
0-24 months   MAL-ED           PERU                           4+              1        7     272
0-24 months   MAL-ED           PERU                           1               0       18     272
0-24 months   MAL-ED           PERU                           1               1        1     272
0-24 months   MAL-ED           PERU                           2               0       51     272
0-24 months   MAL-ED           PERU                           2               1        1     272
0-24 months   MAL-ED           PERU                           3               0       60     272
0-24 months   MAL-ED           PERU                           3               1        2     272
0-24 months   MAL-ED           SOUTH AFRICA                   4+              0      178     257
0-24 months   MAL-ED           SOUTH AFRICA                   4+              1       18     257
0-24 months   MAL-ED           SOUTH AFRICA                   1               0       13     257
0-24 months   MAL-ED           SOUTH AFRICA                   1               1        1     257
0-24 months   MAL-ED           SOUTH AFRICA                   2               0       21     257
0-24 months   MAL-ED           SOUTH AFRICA                   2               1        1     257
0-24 months   MAL-ED           SOUTH AFRICA                   3               0       23     257
0-24 months   MAL-ED           SOUTH AFRICA                   3               1        2     257
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              0      102     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              1        6     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0       12     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        1     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       54     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        9     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       59     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1        7     250
0-24 months   NIH-Crypto       BANGLADESH                     4+              0       88     758
0-24 months   NIH-Crypto       BANGLADESH                     4+              1        7     758
0-24 months   NIH-Crypto       BANGLADESH                     1               0      328     758
0-24 months   NIH-Crypto       BANGLADESH                     1               1       40     758
0-24 months   NIH-Crypto       BANGLADESH                     2               0      173     758
0-24 months   NIH-Crypto       BANGLADESH                     2               1       18     758
0-24 months   NIH-Crypto       BANGLADESH                     3               0       98     758
0-24 months   NIH-Crypto       BANGLADESH                     3               1        6     758
0-24 months   PROVIDE          BANGLADESH                     4+              0       21     700
0-24 months   PROVIDE          BANGLADESH                     4+              1        2     700
0-24 months   PROVIDE          BANGLADESH                     1               0      436     700
0-24 months   PROVIDE          BANGLADESH                     1               1       71     700
0-24 months   PROVIDE          BANGLADESH                     2               0      100     700
0-24 months   PROVIDE          BANGLADESH                     2               1        8     700
0-24 months   PROVIDE          BANGLADESH                     3               0       53     700
0-24 months   PROVIDE          BANGLADESH                     3               1        9     700
0-6 months    CMC-V-BCS-2002   INDIA                          4+              0       13     368
0-6 months    CMC-V-BCS-2002   INDIA                          4+              1        1     368
0-6 months    CMC-V-BCS-2002   INDIA                          1               0      183     368
0-6 months    CMC-V-BCS-2002   INDIA                          1               1       16     368
0-6 months    CMC-V-BCS-2002   INDIA                          2               0       95     368
0-6 months    CMC-V-BCS-2002   INDIA                          2               1        9     368
0-6 months    CMC-V-BCS-2002   INDIA                          3               0       46     368
0-6 months    CMC-V-BCS-2002   INDIA                          3               1        5     368
0-6 months    COHORTS          INDIA                          4+              0      100    5159
0-6 months    COHORTS          INDIA                          4+              1        0    5159
0-6 months    COHORTS          INDIA                          1               0     3276    5159
0-6 months    COHORTS          INDIA                          1               1      101    5159
0-6 months    COHORTS          INDIA                          2               0     1457    5159
0-6 months    COHORTS          INDIA                          2               1       37    5159
0-6 months    COHORTS          INDIA                          3               0      185    5159
0-6 months    COHORTS          INDIA                          3               1        3    5159
0-6 months    CONTENT          PERU                           4+              0       78     215
0-6 months    CONTENT          PERU                           4+              1        0     215
0-6 months    CONTENT          PERU                           1               0       44     215
0-6 months    CONTENT          PERU                           1               1        0     215
0-6 months    CONTENT          PERU                           2               0       54     215
0-6 months    CONTENT          PERU                           2               1        0     215
0-6 months    CONTENT          PERU                           3               0       39     215
0-6 months    CONTENT          PERU                           3               1        0     215
0-6 months    GMS-Nepal        NEPAL                          4+              0      295     686
0-6 months    GMS-Nepal        NEPAL                          4+              1       19     686
0-6 months    GMS-Nepal        NEPAL                          1               0       48     686
0-6 months    GMS-Nepal        NEPAL                          1               1        1     686
0-6 months    GMS-Nepal        NEPAL                          2               0      133     686
0-6 months    GMS-Nepal        NEPAL                          2               1       10     686
0-6 months    GMS-Nepal        NEPAL                          3               0      174     686
0-6 months    GMS-Nepal        NEPAL                          3               1        6     686
0-6 months    IRC              INDIA                          4+              0       16     407
0-6 months    IRC              INDIA                          4+              1        1     407
0-6 months    IRC              INDIA                          1               0      170     407
0-6 months    IRC              INDIA                          1               1       14     407
0-6 months    IRC              INDIA                          2               0      161     407
0-6 months    IRC              INDIA                          2               1        9     407
0-6 months    IRC              INDIA                          3               0       35     407
0-6 months    IRC              INDIA                          3               1        1     407
0-6 months    JiVitA-3         BANGLADESH                     4+              0     1101   26786
0-6 months    JiVitA-3         BANGLADESH                     4+              1       27   26786
0-6 months    JiVitA-3         BANGLADESH                     1               0    15212   26786
0-6 months    JiVitA-3         BANGLADESH                     1               1      658   26786
0-6 months    JiVitA-3         BANGLADESH                     2               0     6914   26786
0-6 months    JiVitA-3         BANGLADESH                     2               1      290   26786
0-6 months    JiVitA-3         BANGLADESH                     3               0     2497   26786
0-6 months    JiVitA-3         BANGLADESH                     3               1       87   26786
0-6 months    JiVitA-4         BANGLADESH                     4+              0      258    5079
0-6 months    JiVitA-4         BANGLADESH                     4+              1        8    5079
0-6 months    JiVitA-4         BANGLADESH                     1               0     2904    5079
0-6 months    JiVitA-4         BANGLADESH                     1               1       87    5079
0-6 months    JiVitA-4         BANGLADESH                     2               0     1267    5079
0-6 months    JiVitA-4         BANGLADESH                     2               1       25    5079
0-6 months    JiVitA-4         BANGLADESH                     3               0      516    5079
0-6 months    JiVitA-4         BANGLADESH                     3               1       14    5079
0-6 months    MAL-ED           BANGLADESH                     4+              0       12     242
0-6 months    MAL-ED           BANGLADESH                     4+              1        0     242
0-6 months    MAL-ED           BANGLADESH                     1               0      145     242
0-6 months    MAL-ED           BANGLADESH                     1               1        7     242
0-6 months    MAL-ED           BANGLADESH                     2               0       48     242
0-6 months    MAL-ED           BANGLADESH                     2               1        2     242
0-6 months    MAL-ED           BANGLADESH                     3               0       28     242
0-6 months    MAL-ED           BANGLADESH                     3               1        0     242
0-6 months    MAL-ED           BRAZIL                         4+              0      126     210
0-6 months    MAL-ED           BRAZIL                         4+              1        1     210
0-6 months    MAL-ED           BRAZIL                         1               0        4     210
0-6 months    MAL-ED           BRAZIL                         1               1        0     210
0-6 months    MAL-ED           BRAZIL                         2               0       20     210
0-6 months    MAL-ED           BRAZIL                         2               1        0     210
0-6 months    MAL-ED           BRAZIL                         3               0       59     210
0-6 months    MAL-ED           BRAZIL                         3               1        0     210
0-6 months    MAL-ED           INDIA                          4+              0       25     235
0-6 months    MAL-ED           INDIA                          4+              1        0     235
0-6 months    MAL-ED           INDIA                          1               0       77     235
0-6 months    MAL-ED           INDIA                          1               1        7     235
0-6 months    MAL-ED           INDIA                          2               0       71     235
0-6 months    MAL-ED           INDIA                          2               1        7     235
0-6 months    MAL-ED           INDIA                          3               0       44     235
0-6 months    MAL-ED           INDIA                          3               1        4     235
0-6 months    MAL-ED           NEPAL                          4+              0      128     236
0-6 months    MAL-ED           NEPAL                          4+              1        3     236
0-6 months    MAL-ED           NEPAL                          1               0       48     236
0-6 months    MAL-ED           NEPAL                          1               1        4     236
0-6 months    MAL-ED           NEPAL                          2               0       31     236
0-6 months    MAL-ED           NEPAL                          2               1        0     236
0-6 months    MAL-ED           NEPAL                          3               0       21     236
0-6 months    MAL-ED           NEPAL                          3               1        1     236
0-6 months    MAL-ED           PERU                           4+              0      138     272
0-6 months    MAL-ED           PERU                           4+              1        1     272
0-6 months    MAL-ED           PERU                           1               0       19     272
0-6 months    MAL-ED           PERU                           1               1        0     272
0-6 months    MAL-ED           PERU                           2               0       52     272
0-6 months    MAL-ED           PERU                           2               1        0     272
0-6 months    MAL-ED           PERU                           3               0       62     272
0-6 months    MAL-ED           PERU                           3               1        0     272
0-6 months    MAL-ED           SOUTH AFRICA                   4+              0      192     257
0-6 months    MAL-ED           SOUTH AFRICA                   4+              1        4     257
0-6 months    MAL-ED           SOUTH AFRICA                   1               0       14     257
0-6 months    MAL-ED           SOUTH AFRICA                   1               1        0     257
0-6 months    MAL-ED           SOUTH AFRICA                   2               0       22     257
0-6 months    MAL-ED           SOUTH AFRICA                   2               1        0     257
0-6 months    MAL-ED           SOUTH AFRICA                   3               0       25     257
0-6 months    MAL-ED           SOUTH AFRICA                   3               1        0     257
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              0      107     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              1        1     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0       13     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       61     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        2     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       65     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1        1     250
0-6 months    NIH-Crypto       BANGLADESH                     4+              0       93     758
0-6 months    NIH-Crypto       BANGLADESH                     4+              1        2     758
0-6 months    NIH-Crypto       BANGLADESH                     1               0      359     758
0-6 months    NIH-Crypto       BANGLADESH                     1               1        9     758
0-6 months    NIH-Crypto       BANGLADESH                     2               0      187     758
0-6 months    NIH-Crypto       BANGLADESH                     2               1        4     758
0-6 months    NIH-Crypto       BANGLADESH                     3               0      102     758
0-6 months    NIH-Crypto       BANGLADESH                     3               1        2     758
0-6 months    PROVIDE          BANGLADESH                     4+              0       22     700
0-6 months    PROVIDE          BANGLADESH                     4+              1        1     700
0-6 months    PROVIDE          BANGLADESH                     1               0      483     700
0-6 months    PROVIDE          BANGLADESH                     1               1       24     700
0-6 months    PROVIDE          BANGLADESH                     2               0      106     700
0-6 months    PROVIDE          BANGLADESH                     2               1        2     700
0-6 months    PROVIDE          BANGLADESH                     3               0       59     700
0-6 months    PROVIDE          BANGLADESH                     3               1        3     700
6-24 months   CMC-V-BCS-2002   INDIA                          4+              0       13     373
6-24 months   CMC-V-BCS-2002   INDIA                          4+              1        1     373
6-24 months   CMC-V-BCS-2002   INDIA                          1               0      155     373
6-24 months   CMC-V-BCS-2002   INDIA                          1               1       47     373
6-24 months   CMC-V-BCS-2002   INDIA                          2               0       87     373
6-24 months   CMC-V-BCS-2002   INDIA                          2               1       19     373
6-24 months   CMC-V-BCS-2002   INDIA                          3               0       48     373
6-24 months   CMC-V-BCS-2002   INDIA                          3               1        3     373
6-24 months   COHORTS          INDIA                          4+              0       93    5014
6-24 months   COHORTS          INDIA                          4+              1        1    5014
6-24 months   COHORTS          INDIA                          1               0     2864    5014
6-24 months   COHORTS          INDIA                          1               1      386    5014
6-24 months   COHORTS          INDIA                          2               0     1414    5014
6-24 months   COHORTS          INDIA                          2               1       72    5014
6-24 months   COHORTS          INDIA                          3               0      178    5014
6-24 months   COHORTS          INDIA                          3               1        6    5014
6-24 months   CONTENT          PERU                           4+              0       78     215
6-24 months   CONTENT          PERU                           4+              1        0     215
6-24 months   CONTENT          PERU                           1               0       44     215
6-24 months   CONTENT          PERU                           1               1        0     215
6-24 months   CONTENT          PERU                           2               0       54     215
6-24 months   CONTENT          PERU                           2               1        0     215
6-24 months   CONTENT          PERU                           3               0       39     215
6-24 months   CONTENT          PERU                           3               1        0     215
6-24 months   GMS-Nepal        NEPAL                          4+              0      187     590
6-24 months   GMS-Nepal        NEPAL                          4+              1       91     590
6-24 months   GMS-Nepal        NEPAL                          1               0       25     590
6-24 months   GMS-Nepal        NEPAL                          1               1       15     590
6-24 months   GMS-Nepal        NEPAL                          2               0       87     590
6-24 months   GMS-Nepal        NEPAL                          2               1       40     590
6-24 months   GMS-Nepal        NEPAL                          3               0       99     590
6-24 months   GMS-Nepal        NEPAL                          3               1       46     590
6-24 months   IRC              INDIA                          4+              0       13     408
6-24 months   IRC              INDIA                          4+              1        4     408
6-24 months   IRC              INDIA                          1               0      160     408
6-24 months   IRC              INDIA                          1               1       25     408
6-24 months   IRC              INDIA                          2               0      140     408
6-24 months   IRC              INDIA                          2               1       30     408
6-24 months   IRC              INDIA                          3               0       31     408
6-24 months   IRC              INDIA                          3               1        5     408
6-24 months   JiVitA-3         BANGLADESH                     4+              0      741   17268
6-24 months   JiVitA-3         BANGLADESH                     4+              1       21   17268
6-24 months   JiVitA-3         BANGLADESH                     1               0     8940   17268
6-24 months   JiVitA-3         BANGLADESH                     1               1      941   17268
6-24 months   JiVitA-3         BANGLADESH                     2               0     4446   17268
6-24 months   JiVitA-3         BANGLADESH                     2               1      423   17268
6-24 months   JiVitA-3         BANGLADESH                     3               0     1642   17268
6-24 months   JiVitA-3         BANGLADESH                     3               1      114   17268
6-24 months   JiVitA-4         BANGLADESH                     4+              0      260    5422
6-24 months   JiVitA-4         BANGLADESH                     4+              1       25    5422
6-24 months   JiVitA-4         BANGLADESH                     1               0     2669    5422
6-24 months   JiVitA-4         BANGLADESH                     1               1      521    5422
6-24 months   JiVitA-4         BANGLADESH                     2               0     1197    5422
6-24 months   JiVitA-4         BANGLADESH                     2               1      189    5422
6-24 months   JiVitA-4         BANGLADESH                     3               0      495    5422
6-24 months   JiVitA-4         BANGLADESH                     3               1       66    5422
6-24 months   MAL-ED           BANGLADESH                     4+              0       10     239
6-24 months   MAL-ED           BANGLADESH                     4+              1        2     239
6-24 months   MAL-ED           BANGLADESH                     1               0      124     239
6-24 months   MAL-ED           BANGLADESH                     1               1       27     239
6-24 months   MAL-ED           BANGLADESH                     2               0       43     239
6-24 months   MAL-ED           BANGLADESH                     2               1        5     239
6-24 months   MAL-ED           BANGLADESH                     3               0       27     239
6-24 months   MAL-ED           BANGLADESH                     3               1        1     239
6-24 months   MAL-ED           BRAZIL                         4+              0      124     207
6-24 months   MAL-ED           BRAZIL                         4+              1        2     207
6-24 months   MAL-ED           BRAZIL                         1               0        4     207
6-24 months   MAL-ED           BRAZIL                         1               1        0     207
6-24 months   MAL-ED           BRAZIL                         2               0       18     207
6-24 months   MAL-ED           BRAZIL                         2               1        0     207
6-24 months   MAL-ED           BRAZIL                         3               0       59     207
6-24 months   MAL-ED           BRAZIL                         3               1        0     207
6-24 months   MAL-ED           INDIA                          4+              0       22     235
6-24 months   MAL-ED           INDIA                          4+              1        3     235
6-24 months   MAL-ED           INDIA                          1               0       67     235
6-24 months   MAL-ED           INDIA                          1               1       17     235
6-24 months   MAL-ED           INDIA                          2               0       57     235
6-24 months   MAL-ED           INDIA                          2               1       21     235
6-24 months   MAL-ED           INDIA                          3               0       42     235
6-24 months   MAL-ED           INDIA                          3               1        6     235
6-24 months   MAL-ED           NEPAL                          4+              0      124     235
6-24 months   MAL-ED           NEPAL                          4+              1        7     235
6-24 months   MAL-ED           NEPAL                          1               0       44     235
6-24 months   MAL-ED           NEPAL                          1               1        7     235
6-24 months   MAL-ED           NEPAL                          2               0       30     235
6-24 months   MAL-ED           NEPAL                          2               1        1     235
6-24 months   MAL-ED           NEPAL                          3               0       21     235
6-24 months   MAL-ED           NEPAL                          3               1        1     235
6-24 months   MAL-ED           PERU                           4+              0      132     270
6-24 months   MAL-ED           PERU                           4+              1        7     270
6-24 months   MAL-ED           PERU                           1               0       18     270
6-24 months   MAL-ED           PERU                           1               1        1     270
6-24 months   MAL-ED           PERU                           2               0       49     270
6-24 months   MAL-ED           PERU                           2               1        1     270
6-24 months   MAL-ED           PERU                           3               0       60     270
6-24 months   MAL-ED           PERU                           3               1        2     270
6-24 months   MAL-ED           SOUTH AFRICA                   4+              0      179     255
6-24 months   MAL-ED           SOUTH AFRICA                   4+              1       16     255
6-24 months   MAL-ED           SOUTH AFRICA                   1               0       13     255
6-24 months   MAL-ED           SOUTH AFRICA                   1               1        1     255
6-24 months   MAL-ED           SOUTH AFRICA                   2               0       21     255
6-24 months   MAL-ED           SOUTH AFRICA                   2               1        1     255
6-24 months   MAL-ED           SOUTH AFRICA                   3               0       22     255
6-24 months   MAL-ED           SOUTH AFRICA                   3               1        2     255
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              0      102     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              1        5     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0       11     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       53     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        8     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       58     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1        7     245
6-24 months   NIH-Crypto       BANGLADESH                     4+              0       86     730
6-24 months   NIH-Crypto       BANGLADESH                     4+              1        5     730
6-24 months   NIH-Crypto       BANGLADESH                     1               0      311     730
6-24 months   NIH-Crypto       BANGLADESH                     1               1       36     730
6-24 months   NIH-Crypto       BANGLADESH                     2               0      172     730
6-24 months   NIH-Crypto       BANGLADESH                     2               1       16     730
6-24 months   NIH-Crypto       BANGLADESH                     3               0       98     730
6-24 months   NIH-Crypto       BANGLADESH                     3               1        6     730
6-24 months   PROVIDE          BANGLADESH                     4+              0       20     614
6-24 months   PROVIDE          BANGLADESH                     4+              1        2     614
6-24 months   PROVIDE          BANGLADESH                     1               0      377     614
6-24 months   PROVIDE          BANGLADESH                     1               1       60     614
6-24 months   PROVIDE          BANGLADESH                     2               0       91     614
6-24 months   PROVIDE          BANGLADESH                     2               1        6     614
6-24 months   PROVIDE          BANGLADESH                     3               0       51     614
6-24 months   PROVIDE          BANGLADESH                     3               1        7     614


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
* agecat: 0-24 months, studyid: IRC, country: INDIA
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
* agecat: 6-24 months, studyid: IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/148880dc-f78f-40c6-a717-4e35e61aba06/68ceb63e-872a-4005-a663-36344ae59ebf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/148880dc-f78f-40c6-a717-4e35e61aba06/68ceb63e-872a-4005-a663-36344ae59ebf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/148880dc-f78f-40c6-a717-4e35e61aba06/68ceb63e-872a-4005-a663-36344ae59ebf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/148880dc-f78f-40c6-a717-4e35e61aba06/68ceb63e-872a-4005-a663-36344ae59ebf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        4+                   NA                0.3142546    0.2629032   0.3656060
0-24 months   GMS-Nepal    NEPAL        1                    NA                0.3101672    0.1792062   0.4411281
0-24 months   GMS-Nepal    NEPAL        2                    NA                0.2822695    0.2083376   0.3562014
0-24 months   GMS-Nepal    NEPAL        3                    NA                0.2679436    0.2031325   0.3327547
0-24 months   JiVitA-3     BANGLADESH   4+                   NA                0.0506480    0.0371320   0.0641639
0-24 months   JiVitA-3     BANGLADESH   1                    NA                0.0910765    0.0860968   0.0960562
0-24 months   JiVitA-3     BANGLADESH   2                    NA                0.0894631    0.0819117   0.0970144
0-24 months   JiVitA-3     BANGLADESH   3                    NA                0.0808053    0.0681804   0.0934303
0-24 months   JiVitA-4     BANGLADESH   4+                   NA                0.1561971    0.1249135   0.1874806
0-24 months   JiVitA-4     BANGLADESH   1                    NA                0.1600354    0.1428113   0.1772594
0-24 months   JiVitA-4     BANGLADESH   2                    NA                0.1571228    0.1314242   0.1828214
0-24 months   JiVitA-4     BANGLADESH   3                    NA                0.1627990    0.1254769   0.2001211
0-24 months   NIH-Crypto   BANGLADESH   4+                   NA                0.0736842    0.0211140   0.1262544
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.1086957    0.0768735   0.1405178
0-24 months   NIH-Crypto   BANGLADESH   2                    NA                0.0942408    0.0527794   0.1357022
0-24 months   NIH-Crypto   BANGLADESH   3                    NA                0.0576923    0.0128515   0.1025331
0-6 months    JiVitA-3     BANGLADESH   4+                   NA                0.0261760    0.0158116   0.0365404
0-6 months    JiVitA-3     BANGLADESH   1                    NA                0.0409477    0.0376202   0.0442752
0-6 months    JiVitA-3     BANGLADESH   2                    NA                0.0401690    0.0353759   0.0449621
0-6 months    JiVitA-3     BANGLADESH   3                    NA                0.0347599    0.0269038   0.0426160
0-6 months    JiVitA-4     BANGLADESH   4+                   NA                0.0300752   -0.0071104   0.0672608
0-6 months    JiVitA-4     BANGLADESH   1                    NA                0.0290873    0.0219427   0.0362318
0-6 months    JiVitA-4     BANGLADESH   2                    NA                0.0193498    0.0117793   0.0269204
0-6 months    JiVitA-4     BANGLADESH   3                    NA                0.0264151    0.0116483   0.0411818
6-24 months   GMS-Nepal    NEPAL        4+                   NA                0.3297437    0.2745627   0.3849247
6-24 months   GMS-Nepal    NEPAL        1                    NA                0.3933748    0.2338363   0.5529134
6-24 months   GMS-Nepal    NEPAL        2                    NA                0.3078131    0.2269269   0.3886992
6-24 months   GMS-Nepal    NEPAL        3                    NA                0.3227401    0.2459337   0.3995465
6-24 months   JiVitA-3     BANGLADESH   4+                   NA                0.0311562    0.0174555   0.0448570
6-24 months   JiVitA-3     BANGLADESH   1                    NA                0.0925790    0.0866036   0.0985544
6-24 months   JiVitA-3     BANGLADESH   2                    NA                0.0864565    0.0773608   0.0955521
6-24 months   JiVitA-3     BANGLADESH   3                    NA                0.0696586    0.0558534   0.0834637
6-24 months   JiVitA-4     BANGLADESH   4+                   NA                0.1390513    0.1107549   0.1673477
6-24 months   JiVitA-4     BANGLADESH   1                    NA                0.1456481    0.1293109   0.1619852
6-24 months   JiVitA-4     BANGLADESH   2                    NA                0.1473039    0.1221935   0.1724143
6-24 months   JiVitA-4     BANGLADESH   3                    NA                0.1468312    0.1118837   0.1817786
6-24 months   NIH-Crypto   BANGLADESH   4+                   NA                0.0549451    0.0080942   0.1017960
6-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.1037464    0.0716406   0.1358522
6-24 months   NIH-Crypto   BANGLADESH   2                    NA                0.0851064    0.0451917   0.1250211
6-24 months   NIH-Crypto   BANGLADESH   3                    NA                0.0576923    0.0128504   0.1025342


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        NA                   NA                0.2944606   0.2603274   0.3285938
0-24 months   JiVitA-3     BANGLADESH   NA                   NA                0.0888335   0.0849259   0.0927411
0-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.1614449   0.1501252   0.1727646
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-6 months    JiVitA-3     BANGLADESH   NA                   NA                0.0396476   0.0371448   0.0421504
0-6 months    JiVitA-4     BANGLADESH   NA                   NA                0.0263831   0.0210411   0.0317252
6-24 months   GMS-Nepal    NEPAL        NA                   NA                0.3254237   0.2875855   0.3632619
6-24 months   JiVitA-3     BANGLADESH   NA                   NA                0.0868080   0.0821483   0.0914677
6-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.1477315   0.1371478   0.1583151
6-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856


### Parameter: RR


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal    NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal    NEPAL        1                    4+                0.9869933   0.6276441   1.552083
0-24 months   GMS-Nepal    NEPAL        2                    4+                0.8982192   0.6602835   1.221896
0-24 months   GMS-Nepal    NEPAL        3                    4+                0.8526323   0.6372433   1.140823
0-24 months   JiVitA-3     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3     BANGLADESH   1                    4+                1.7982247   1.3726052   2.355821
0-24 months   JiVitA-3     BANGLADESH   2                    4+                1.7663692   1.3390173   2.330112
0-24 months   JiVitA-3     BANGLADESH   3                    4+                1.5954300   1.1595384   2.195181
0-24 months   JiVitA-4     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4     BANGLADESH   1                    4+                1.0245734   0.8186048   1.282366
0-24 months   JiVitA-4     BANGLADESH   2                    4+                1.0059268   0.7706155   1.313092
0-24 months   JiVitA-4     BANGLADESH   3                    4+                1.0422668   0.7736240   1.404197
0-24 months   NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   1                    4+                1.4751553   0.6822075   3.189767
0-24 months   NIH-Crypto   BANGLADESH   2                    4+                1.2789828   0.5531474   2.957254
0-24 months   NIH-Crypto   BANGLADESH   3                    4+                0.7829670   0.2726112   2.248761
0-6 months    JiVitA-3     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3     BANGLADESH   1                    4+                1.5643234   1.0496219   2.331418
0-6 months    JiVitA-3     BANGLADESH   2                    4+                1.5345752   1.0140700   2.322247
0-6 months    JiVitA-3     BANGLADESH   3                    4+                1.3279299   0.8368019   2.107306
0-6 months    JiVitA-4     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4     BANGLADESH   1                    4+                0.9671515   0.2726685   3.430473
0-6 months    JiVitA-4     BANGLADESH   2                    4+                0.6433824   0.1753735   2.360339
0-6 months    JiVitA-4     BANGLADESH   3                    4+                0.8783019   0.2404209   3.208598
6-24 months   GMS-Nepal    NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal    NEPAL        1                    4+                1.1929716   0.7689204   1.850882
6-24 months   GMS-Nepal    NEPAL        2                    4+                0.9334920   0.6840240   1.273942
6-24 months   GMS-Nepal    NEPAL        3                    4+                0.9787605   0.7316796   1.309278
6-24 months   JiVitA-3     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3     BANGLADESH   1                    4+                2.9714429   1.9050265   4.634829
6-24 months   JiVitA-3     BANGLADESH   2                    4+                2.7749317   1.7602945   4.374408
6-24 months   JiVitA-3     BANGLADESH   3                    4+                2.2357812   1.3704283   3.647558
6-24 months   JiVitA-4     BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4     BANGLADESH   1                    4+                1.0474412   0.8343392   1.314972
6-24 months   JiVitA-4     BANGLADESH   2                    4+                1.0593490   0.8069322   1.390724
6-24 months   JiVitA-4     BANGLADESH   3                    4+                1.0559494   0.7778049   1.433559
6-24 months   NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto   BANGLADESH   1                    4+                1.8881844   0.7622425   4.677305
6-24 months   NIH-Crypto   BANGLADESH   2                    4+                1.5489362   0.5853251   4.098924
6-24 months   NIH-Crypto   BANGLADESH   3                    4+                1.0500000   0.3312144   3.328660


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        4+                   NA                -0.0197939   -0.0570022   0.0174143
0-24 months   JiVitA-3     BANGLADESH   4+                   NA                 0.0381855    0.0246776   0.0516934
0-24 months   JiVitA-4     BANGLADESH   4+                   NA                 0.0052478   -0.0268424   0.0373381
0-24 months   NIH-Crypto   BANGLADESH   4+                   NA                 0.0199833   -0.0300336   0.0700003
0-6 months    JiVitA-3     BANGLADESH   4+                   NA                 0.0134716    0.0033148   0.0236284
0-6 months    JiVitA-4     BANGLADESH   4+                   NA                -0.0036920   -0.0391994   0.0318154
6-24 months   GMS-Nepal    NEPAL        4+                   NA                -0.0043199   -0.0444523   0.0358124
6-24 months   JiVitA-3     BANGLADESH   4+                   NA                 0.0556517    0.0415226   0.0697808
6-24 months   JiVitA-4     BANGLADESH   4+                   NA                 0.0086801   -0.0200801   0.0374404
6-24 months   NIH-Crypto   BANGLADESH   4+                   NA                 0.0313563   -0.0140670   0.0767796


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        4+                   NA                -0.0672210   -0.2013349   0.0519208
0-24 months   JiVitA-3     BANGLADESH   4+                   NA                 0.4298549    0.2575819   0.5621532
0-24 months   JiVitA-4     BANGLADESH   4+                   NA                 0.0325055   -0.1874795   0.2117374
0-24 months   NIH-Crypto   BANGLADESH   4+                   NA                 0.2133432   -0.5474483   0.6000972
0-6 months    JiVitA-3     BANGLADESH   4+                   NA                 0.3397836    0.0267239   0.5521458
0-6 months    JiVitA-4     BANGLADESH   4+                   NA                -0.1399394   -2.6903450   0.6478752
6-24 months   GMS-Nepal    NEPAL        4+                   NA                -0.0132748   -0.1444262   0.1028466
6-24 months   JiVitA-3     BANGLADESH   4+                   NA                 0.6410900    0.4433290   0.7685951
6-24 months   JiVitA-4     BANGLADESH   4+                   NA                 0.0587562   -0.1563953   0.2338780
6-24 months   NIH-Crypto   BANGLADESH   4+                   NA                 0.3633351   -0.4411875   0.7187443
