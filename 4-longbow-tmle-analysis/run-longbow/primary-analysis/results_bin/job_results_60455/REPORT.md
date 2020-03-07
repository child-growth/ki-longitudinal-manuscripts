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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* hdlvry
* W_birthwt
* W_birthlen
* single
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_hdlvry
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid         country                        perdiar24    ever_wasted   n_cell      n
----------------------------  --------------  -----------------------------  ----------  ------------  -------  -----
0-24 months (no birth wast)   CMIN            BANGLADESH                     0%                     0        8    268
0-24 months (no birth wast)   CMIN            BANGLADESH                     0%                     1        1    268
0-24 months (no birth wast)   CMIN            BANGLADESH                     (0%, 5%]               0       69    268
0-24 months (no birth wast)   CMIN            BANGLADESH                     (0%, 5%]               1       51    268
0-24 months (no birth wast)   CMIN            BANGLADESH                     >5%                    0       76    268
0-24 months (no birth wast)   CMIN            BANGLADESH                     >5%                    1       63    268
0-24 months (no birth wast)   CONTENT         PERU                           0%                     0        6    215
0-24 months (no birth wast)   CONTENT         PERU                           0%                     1        0    215
0-24 months (no birth wast)   CONTENT         PERU                           (0%, 5%]               0      139    215
0-24 months (no birth wast)   CONTENT         PERU                           (0%, 5%]               1        3    215
0-24 months (no birth wast)   CONTENT         PERU                           >5%                    0       66    215
0-24 months (no birth wast)   CONTENT         PERU                           >5%                    1        1    215
0-24 months (no birth wast)   EE              PAKISTAN                       0%                     0      123    377
0-24 months (no birth wast)   EE              PAKISTAN                       0%                     1      137    377
0-24 months (no birth wast)   EE              PAKISTAN                       (0%, 5%]               0       51    377
0-24 months (no birth wast)   EE              PAKISTAN                       (0%, 5%]               1       66    377
0-24 months (no birth wast)   EE              PAKISTAN                       >5%                    0        0    377
0-24 months (no birth wast)   EE              PAKISTAN                       >5%                    1        0    377
0-24 months (no birth wast)   Guatemala BSC   GUATEMALA                      0%                     0       30    307
0-24 months (no birth wast)   Guatemala BSC   GUATEMALA                      0%                     1        2    307
0-24 months (no birth wast)   Guatemala BSC   GUATEMALA                      (0%, 5%]               0       63    307
0-24 months (no birth wast)   Guatemala BSC   GUATEMALA                      (0%, 5%]               1        8    307
0-24 months (no birth wast)   Guatemala BSC   GUATEMALA                      >5%                    0      188    307
0-24 months (no birth wast)   Guatemala BSC   GUATEMALA                      >5%                    1       16    307
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO                   0%                     0      307   2348
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO                   0%                     1       22   2348
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]               0     1169   2348
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]               1      114   2348
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO                   >5%                    0      651   2348
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO                   >5%                    1       85   2348
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     0%                     0      165   5396
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     0%                     1       51   5396
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     (0%, 5%]               0     3444   5396
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     (0%, 5%]               1     1155   5396
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     >5%                    0      396   5396
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     >5%                    1      185   5396
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0%                     0       17    263
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0%                     1        3    263
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     (0%, 5%]               0      112    263
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     (0%, 5%]               1       36    263
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     >5%                    0       76    263
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     >5%                    1       19    263
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0%                     0      124    233
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0%                     1        6    233
0-24 months (no birth wast)   MAL-ED          BRAZIL                         (0%, 5%]               0       95    233
0-24 months (no birth wast)   MAL-ED          BRAZIL                         (0%, 5%]               1        6    233
0-24 months (no birth wast)   MAL-ED          BRAZIL                         >5%                    0        1    233
0-24 months (no birth wast)   MAL-ED          BRAZIL                         >5%                    1        1    233
0-24 months (no birth wast)   MAL-ED          INDIA                          0%                     0       11    246
0-24 months (no birth wast)   MAL-ED          INDIA                          0%                     1        2    246
0-24 months (no birth wast)   MAL-ED          INDIA                          (0%, 5%]               0      117    246
0-24 months (no birth wast)   MAL-ED          INDIA                          (0%, 5%]               1       74    246
0-24 months (no birth wast)   MAL-ED          INDIA                          >5%                    0       27    246
0-24 months (no birth wast)   MAL-ED          INDIA                          >5%                    1       15    246
0-24 months (no birth wast)   MAL-ED          NEPAL                          0%                     0       16    239
0-24 months (no birth wast)   MAL-ED          NEPAL                          0%                     1        1    239
0-24 months (no birth wast)   MAL-ED          NEPAL                          (0%, 5%]               0      112    239
0-24 months (no birth wast)   MAL-ED          NEPAL                          (0%, 5%]               1       31    239
0-24 months (no birth wast)   MAL-ED          NEPAL                          >5%                    0       65    239
0-24 months (no birth wast)   MAL-ED          NEPAL                          >5%                    1       14    239
0-24 months (no birth wast)   MAL-ED          PERU                           0%                     0       28    302
0-24 months (no birth wast)   MAL-ED          PERU                           0%                     1        0    302
0-24 months (no birth wast)   MAL-ED          PERU                           (0%, 5%]               0      106    302
0-24 months (no birth wast)   MAL-ED          PERU                           (0%, 5%]               1        7    302
0-24 months (no birth wast)   MAL-ED          PERU                           >5%                    0      147    302
0-24 months (no birth wast)   MAL-ED          PERU                           >5%                    1       14    302
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0%                     0       97    302
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0%                     1       20    302
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   (0%, 5%]               0      157    302
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       25    302
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   >5%                    0        3    302
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   >5%                    1        0    302
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0       13    261
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        3    261
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      161    261
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       22    261
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0       53    261
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        9    261
0-24 months (no birth wast)   NIH-Birth       BANGLADESH                     0%                     0       41    599
0-24 months (no birth wast)   NIH-Birth       BANGLADESH                     0%                     1        2    599
0-24 months (no birth wast)   NIH-Birth       BANGLADESH                     (0%, 5%]               0      242    599
0-24 months (no birth wast)   NIH-Birth       BANGLADESH                     (0%, 5%]               1      112    599
0-24 months (no birth wast)   NIH-Birth       BANGLADESH                     >5%                    0      138    599
0-24 months (no birth wast)   NIH-Birth       BANGLADESH                     >5%                    1       64    599
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH                     0%                     0      131    754
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH                     0%                     1       22    754
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH                     (0%, 5%]               0      340    754
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH                     (0%, 5%]               1       58    754
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH                     >5%                    0      175    754
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH                     >5%                    1       28    754
0-24 months (no birth wast)   PROVIDE         BANGLADESH                     0%                     0       57    687
0-24 months (no birth wast)   PROVIDE         BANGLADESH                     0%                     1        3    687
0-24 months (no birth wast)   PROVIDE         BANGLADESH                     (0%, 5%]               0      340    687
0-24 months (no birth wast)   PROVIDE         BANGLADESH                     (0%, 5%]               1       87    687
0-24 months (no birth wast)   PROVIDE         BANGLADESH                     >5%                    0      168    687
0-24 months (no birth wast)   PROVIDE         BANGLADESH                     >5%                    1       32    687
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0%                     0       48    397
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0%                     1       31    397
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          (0%, 5%]               0       33    397
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          (0%, 5%]               1       12    397
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          >5%                    0      173    397
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          >5%                    1      100    397
0-6 months (no birth wast)    CMIN            BANGLADESH                     0%                     0        9    267
0-6 months (no birth wast)    CMIN            BANGLADESH                     0%                     1        0    267
0-6 months (no birth wast)    CMIN            BANGLADESH                     (0%, 5%]               0      102    267
0-6 months (no birth wast)    CMIN            BANGLADESH                     (0%, 5%]               1       17    267
0-6 months (no birth wast)    CMIN            BANGLADESH                     >5%                    0      125    267
0-6 months (no birth wast)    CMIN            BANGLADESH                     >5%                    1       14    267
0-6 months (no birth wast)    CONTENT         PERU                           0%                     0        6    215
0-6 months (no birth wast)    CONTENT         PERU                           0%                     1        0    215
0-6 months (no birth wast)    CONTENT         PERU                           (0%, 5%]               0      140    215
0-6 months (no birth wast)    CONTENT         PERU                           (0%, 5%]               1        2    215
0-6 months (no birth wast)    CONTENT         PERU                           >5%                    0       66    215
0-6 months (no birth wast)    CONTENT         PERU                           >5%                    1        1    215
0-6 months (no birth wast)    EE              PAKISTAN                       0%                     0      209    375
0-6 months (no birth wast)    EE              PAKISTAN                       0%                     1       49    375
0-6 months (no birth wast)    EE              PAKISTAN                       (0%, 5%]               0       85    375
0-6 months (no birth wast)    EE              PAKISTAN                       (0%, 5%]               1       32    375
0-6 months (no birth wast)    EE              PAKISTAN                       >5%                    0        0    375
0-6 months (no birth wast)    EE              PAKISTAN                       >5%                    1        0    375
0-6 months (no birth wast)    Guatemala BSC   GUATEMALA                      0%                     0       29    284
0-6 months (no birth wast)    Guatemala BSC   GUATEMALA                      0%                     1        0    284
0-6 months (no birth wast)    Guatemala BSC   GUATEMALA                      (0%, 5%]               0       63    284
0-6 months (no birth wast)    Guatemala BSC   GUATEMALA                      (0%, 5%]               1        2    284
0-6 months (no birth wast)    Guatemala BSC   GUATEMALA                      >5%                    0      187    284
0-6 months (no birth wast)    Guatemala BSC   GUATEMALA                      >5%                    1        3    284
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     0%                     0      167   4957
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     0%                     1        4   4957
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     (0%, 5%]               0     4149   4957
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     (0%, 5%]               1      105   4957
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     >5%                    0      514   4957
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     >5%                    1       18   4957
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0%                     0       19    262
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0%                     1        1    262
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     (0%, 5%]               0      136    262
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     (0%, 5%]               1       11    262
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     >5%                    0       88    262
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     >5%                    1        7    262
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0%                     0      126    233
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0%                     1        4    233
0-6 months (no birth wast)    MAL-ED          BRAZIL                         (0%, 5%]               0       97    233
0-6 months (no birth wast)    MAL-ED          BRAZIL                         (0%, 5%]               1        4    233
0-6 months (no birth wast)    MAL-ED          BRAZIL                         >5%                    0        2    233
0-6 months (no birth wast)    MAL-ED          BRAZIL                         >5%                    1        0    233
0-6 months (no birth wast)    MAL-ED          INDIA                          0%                     0       12    244
0-6 months (no birth wast)    MAL-ED          INDIA                          0%                     1        1    244
0-6 months (no birth wast)    MAL-ED          INDIA                          (0%, 5%]               0      161    244
0-6 months (no birth wast)    MAL-ED          INDIA                          (0%, 5%]               1       30    244
0-6 months (no birth wast)    MAL-ED          INDIA                          >5%                    0       32    244
0-6 months (no birth wast)    MAL-ED          INDIA                          >5%                    1        8    244
0-6 months (no birth wast)    MAL-ED          NEPAL                          0%                     0       16    237
0-6 months (no birth wast)    MAL-ED          NEPAL                          0%                     1        0    237
0-6 months (no birth wast)    MAL-ED          NEPAL                          (0%, 5%]               0      128    237
0-6 months (no birth wast)    MAL-ED          NEPAL                          (0%, 5%]               1       14    237
0-6 months (no birth wast)    MAL-ED          NEPAL                          >5%                    0       77    237
0-6 months (no birth wast)    MAL-ED          NEPAL                          >5%                    1        2    237
0-6 months (no birth wast)    MAL-ED          PERU                           0%                     0       28    302
0-6 months (no birth wast)    MAL-ED          PERU                           0%                     1        0    302
0-6 months (no birth wast)    MAL-ED          PERU                           (0%, 5%]               0      112    302
0-6 months (no birth wast)    MAL-ED          PERU                           (0%, 5%]               1        1    302
0-6 months (no birth wast)    MAL-ED          PERU                           >5%                    0      157    302
0-6 months (no birth wast)    MAL-ED          PERU                           >5%                    1        4    302
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0%                     0      111    301
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0%                     1        6    301
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   (0%, 5%]               0      173    301
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   (0%, 5%]               1        8    301
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   >5%                    0        3    301
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   >5%                    1        0    301
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0       15    261
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        1    261
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      175    261
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1        8    261
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0       61    261
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        1    261
0-6 months (no birth wast)    NIH-Birth       BANGLADESH                     0%                     0       42    581
0-6 months (no birth wast)    NIH-Birth       BANGLADESH                     0%                     1        1    581
0-6 months (no birth wast)    NIH-Birth       BANGLADESH                     (0%, 5%]               0      316    581
0-6 months (no birth wast)    NIH-Birth       BANGLADESH                     (0%, 5%]               1       23    581
0-6 months (no birth wast)    NIH-Birth       BANGLADESH                     >5%                    0      177    581
0-6 months (no birth wast)    NIH-Birth       BANGLADESH                     >5%                    1       22    581
0-6 months (no birth wast)    NIH-Crypto      BANGLADESH                     0%                     0      149    749
0-6 months (no birth wast)    NIH-Crypto      BANGLADESH                     0%                     1        3    749
0-6 months (no birth wast)    NIH-Crypto      BANGLADESH                     (0%, 5%]               0      383    749
0-6 months (no birth wast)    NIH-Crypto      BANGLADESH                     (0%, 5%]               1       13    749
0-6 months (no birth wast)    NIH-Crypto      BANGLADESH                     >5%                    0      197    749
0-6 months (no birth wast)    NIH-Crypto      BANGLADESH                     >5%                    1        4    749
0-6 months (no birth wast)    PROVIDE         BANGLADESH                     0%                     0       60    683
0-6 months (no birth wast)    PROVIDE         BANGLADESH                     0%                     1        0    683
0-6 months (no birth wast)    PROVIDE         BANGLADESH                     (0%, 5%]               0      398    683
0-6 months (no birth wast)    PROVIDE         BANGLADESH                     (0%, 5%]               1       25    683
0-6 months (no birth wast)    PROVIDE         BANGLADESH                     >5%                    0      188    683
0-6 months (no birth wast)    PROVIDE         BANGLADESH                     >5%                    1       12    683
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0%                     0       69    341
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0%                     1        0    341
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          (0%, 5%]               0       36    341
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          (0%, 5%]               1        0    341
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          >5%                    0      236    341
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          >5%                    1        0    341
6-24 months                   CMIN            BANGLADESH                     0%                     0        2    252
6-24 months                   CMIN            BANGLADESH                     0%                     1        1    252
6-24 months                   CMIN            BANGLADESH                     (0%, 5%]               0       74    252
6-24 months                   CMIN            BANGLADESH                     (0%, 5%]               1       42    252
6-24 months                   CMIN            BANGLADESH                     >5%                    0       79    252
6-24 months                   CMIN            BANGLADESH                     >5%                    1       54    252
6-24 months                   CONTENT         PERU                           0%                     0        6    215
6-24 months                   CONTENT         PERU                           0%                     1        0    215
6-24 months                   CONTENT         PERU                           (0%, 5%]               0      140    215
6-24 months                   CONTENT         PERU                           (0%, 5%]               1        2    215
6-24 months                   CONTENT         PERU                           >5%                    0       67    215
6-24 months                   CONTENT         PERU                           >5%                    1        0    215
6-24 months                   EE              PAKISTAN                       0%                     0      144    374
6-24 months                   EE              PAKISTAN                       0%                     1      112    374
6-24 months                   EE              PAKISTAN                       (0%, 5%]               0       69    374
6-24 months                   EE              PAKISTAN                       (0%, 5%]               1       49    374
6-24 months                   EE              PAKISTAN                       >5%                    0        0    374
6-24 months                   EE              PAKISTAN                       >5%                    1        0    374
6-24 months                   Guatemala BSC   GUATEMALA                      0%                     0       20    277
6-24 months                   Guatemala BSC   GUATEMALA                      0%                     1        2    277
6-24 months                   Guatemala BSC   GUATEMALA                      (0%, 5%]               0       61    277
6-24 months                   Guatemala BSC   GUATEMALA                      (0%, 5%]               1        7    277
6-24 months                   Guatemala BSC   GUATEMALA                      >5%                    0      173    277
6-24 months                   Guatemala BSC   GUATEMALA                      >5%                    1       14    277
6-24 months                   iLiNS-Zinc      BURKINA FASO                   0%                     0      270   2450
6-24 months                   iLiNS-Zinc      BURKINA FASO                   0%                     1       87   2450
6-24 months                   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]               0     1022   2450
6-24 months                   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]               1      302   2450
6-24 months                   iLiNS-Zinc      BURKINA FASO                   >5%                    0      586   2450
6-24 months                   iLiNS-Zinc      BURKINA FASO                   >5%                    1      183   2450
6-24 months                   JiVitA-4        BANGLADESH                     0%                     0      161   5430
6-24 months                   JiVitA-4        BANGLADESH                     0%                     1       50   5430
6-24 months                   JiVitA-4        BANGLADESH                     (0%, 5%]               0     3517   5430
6-24 months                   JiVitA-4        BANGLADESH                     (0%, 5%]               1     1112   5430
6-24 months                   JiVitA-4        BANGLADESH                     >5%                    0      409   5430
6-24 months                   JiVitA-4        BANGLADESH                     >5%                    1      181   5430
6-24 months                   MAL-ED          BANGLADESH                     0%                     0        4    240
6-24 months                   MAL-ED          BANGLADESH                     0%                     1        2    240
6-24 months                   MAL-ED          BANGLADESH                     (0%, 5%]               0      114    240
6-24 months                   MAL-ED          BANGLADESH                     (0%, 5%]               1       28    240
6-24 months                   MAL-ED          BANGLADESH                     >5%                    0       79    240
6-24 months                   MAL-ED          BANGLADESH                     >5%                    1       13    240
6-24 months                   MAL-ED          BRAZIL                         0%                     0      102    207
6-24 months                   MAL-ED          BRAZIL                         0%                     1        2    207
6-24 months                   MAL-ED          BRAZIL                         (0%, 5%]               0       98    207
6-24 months                   MAL-ED          BRAZIL                         (0%, 5%]               1        3    207
6-24 months                   MAL-ED          BRAZIL                         >5%                    0        1    207
6-24 months                   MAL-ED          BRAZIL                         >5%                    1        1    207
6-24 months                   MAL-ED          INDIA                          0%                     0        2    235
6-24 months                   MAL-ED          INDIA                          0%                     1        1    235
6-24 months                   MAL-ED          INDIA                          (0%, 5%]               0      137    235
6-24 months                   MAL-ED          INDIA                          (0%, 5%]               1       53    235
6-24 months                   MAL-ED          INDIA                          >5%                    0       32    235
6-24 months                   MAL-ED          INDIA                          >5%                    1       10    235
6-24 months                   MAL-ED          NEPAL                          0%                     0       13    235
6-24 months                   MAL-ED          NEPAL                          0%                     1        1    235
6-24 months                   MAL-ED          NEPAL                          (0%, 5%]               0      120    235
6-24 months                   MAL-ED          NEPAL                          (0%, 5%]               1       23    235
6-24 months                   MAL-ED          NEPAL                          >5%                    0       66    235
6-24 months                   MAL-ED          NEPAL                          >5%                    1       12    235
6-24 months                   MAL-ED          PERU                           0%                     0        6    270
6-24 months                   MAL-ED          PERU                           0%                     1        0    270
6-24 months                   MAL-ED          PERU                           (0%, 5%]               0      101    270
6-24 months                   MAL-ED          PERU                           (0%, 5%]               1        6    270
6-24 months                   MAL-ED          PERU                           >5%                    0      145    270
6-24 months                   MAL-ED          PERU                           >5%                    1       12    270
6-24 months                   MAL-ED          SOUTH AFRICA                   0%                     0       64    259
6-24 months                   MAL-ED          SOUTH AFRICA                   0%                     1       15    259
6-24 months                   MAL-ED          SOUTH AFRICA                   (0%, 5%]               0      156    259
6-24 months                   MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       22    259
6-24 months                   MAL-ED          SOUTH AFRICA                   >5%                    0        2    259
6-24 months                   MAL-ED          SOUTH AFRICA                   >5%                    1        0    259
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0        6    245
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        2    245
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      158    245
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       18    245
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0       53    245
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        8    245
6-24 months                   NIH-Birth       BANGLADESH                     0%                     0       14    542
6-24 months                   NIH-Birth       BANGLADESH                     0%                     1        1    542
6-24 months                   NIH-Birth       BANGLADESH                     (0%, 5%]               0      241    542
6-24 months                   NIH-Birth       BANGLADESH                     (0%, 5%]               1      102    542
6-24 months                   NIH-Birth       BANGLADESH                     >5%                    0      128    542
6-24 months                   NIH-Birth       BANGLADESH                     >5%                    1       56    542
6-24 months                   NIH-Crypto      BANGLADESH                     0%                     0      114    730
6-24 months                   NIH-Crypto      BANGLADESH                     0%                     1       20    730
6-24 months                   NIH-Crypto      BANGLADESH                     (0%, 5%]               0      343    730
6-24 months                   NIH-Crypto      BANGLADESH                     (0%, 5%]               1       51    730
6-24 months                   NIH-Crypto      BANGLADESH                     >5%                    0      177    730
6-24 months                   NIH-Crypto      BANGLADESH                     >5%                    1       25    730
6-24 months                   PROVIDE         BANGLADESH                     0%                     0        7    615
6-24 months                   PROVIDE         BANGLADESH                     0%                     1        3    615
6-24 months                   PROVIDE         BANGLADESH                     (0%, 5%]               0      344    615
6-24 months                   PROVIDE         BANGLADESH                     (0%, 5%]               1       73    615
6-24 months                   PROVIDE         BANGLADESH                     >5%                    0      165    615
6-24 months                   PROVIDE         BANGLADESH                     >5%                    1       23    615
6-24 months                   SAS-FoodSuppl   INDIA                          0%                     0       48    402
6-24 months                   SAS-FoodSuppl   INDIA                          0%                     1       31    402
6-24 months                   SAS-FoodSuppl   INDIA                          (0%, 5%]               0       35    402
6-24 months                   SAS-FoodSuppl   INDIA                          (0%, 5%]               1       12    402
6-24 months                   SAS-FoodSuppl   INDIA                          >5%                    0      176    402
6-24 months                   SAS-FoodSuppl   INDIA                          >5%                    1      100    402


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/613f01a3-2a5c-40ed-817e-6d15a8a89fc6/7fa50abd-bdbd-45e4-8e1e-0ef81264a48f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/613f01a3-2a5c-40ed-817e-6d15a8a89fc6/7fa50abd-bdbd-45e4-8e1e-0ef81264a48f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/613f01a3-2a5c-40ed-817e-6d15a8a89fc6/7fa50abd-bdbd-45e4-8e1e-0ef81264a48f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/613f01a3-2a5c-40ed-817e-6d15a8a89fc6/7fa50abd-bdbd-45e4-8e1e-0ef81264a48f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid         country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   0%                   NA                0.0687889   0.0470212   0.0905565
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             NA                0.0893045   0.0649945   0.1136145
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   >5%                  NA                0.1158105   0.0688263   0.1627946
0-24 months (no birth wast)   JiVitA-4        BANGLADESH     0%                   NA                0.2501210   0.1831225   0.3171195
0-24 months (no birth wast)   JiVitA-4        BANGLADESH     (0%, 5%]             NA                0.2517687   0.2373758   0.2661616
0-24 months (no birth wast)   JiVitA-4        BANGLADESH     >5%                  NA                0.3032495   0.2600868   0.3464123
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     0%                   NA                0.1337823   0.0772112   0.1903533
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     (0%, 5%]             NA                0.1444538   0.1096597   0.1792479
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     >5%                  NA                0.1349837   0.0871654   0.1828021
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          0%                   NA                0.4163519   0.3036967   0.5290070
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.2650189   0.1277617   0.4022761
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          >5%                  NA                0.3665867   0.3087607   0.4244128
6-24 months                   iLiNS-Zinc      BURKINA FASO   0%                   NA                0.2421242   0.1801747   0.3040737
6-24 months                   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             NA                0.2285140   0.1848805   0.2721476
6-24 months                   iLiNS-Zinc      BURKINA FASO   >5%                  NA                0.2317125   0.1804535   0.2829715
6-24 months                   JiVitA-4        BANGLADESH     0%                   NA                0.2472568   0.1785734   0.3159403
6-24 months                   JiVitA-4        BANGLADESH     (0%, 5%]             NA                0.2411149   0.2269101   0.2553198
6-24 months                   JiVitA-4        BANGLADESH     >5%                  NA                0.2939670   0.2506332   0.3373008
6-24 months                   NIH-Crypto      BANGLADESH     0%                   NA                0.1527427   0.0935288   0.2119566
6-24 months                   NIH-Crypto      BANGLADESH     (0%, 5%]             NA                0.1308698   0.0977311   0.1640085
6-24 months                   NIH-Crypto      BANGLADESH     >5%                  NA                0.1197077   0.0743158   0.1650997
6-24 months                   SAS-FoodSuppl   INDIA          0%                   NA                0.4090525   0.3004067   0.5176983
6-24 months                   SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.2550903   0.1207079   0.3894728
6-24 months                   SAS-FoodSuppl   INDIA          >5%                  NA                0.3610487   0.3039345   0.4181628


### Parameter: E(Y)


agecat                        studyid         country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   NA                   NA                0.0941227   0.0721577   0.1160876
0-24 months (no birth wast)   JiVitA-4        BANGLADESH     NA                   NA                0.2577835   0.2441424   0.2714247
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          NA                   NA                0.3602015   0.3129196   0.4074834
6-24 months                   iLiNS-Zinc      BURKINA FASO   NA                   NA                0.2334694   0.1980609   0.2688779
6-24 months                   JiVitA-4        BANGLADESH     NA                   NA                0.2473297   0.2337864   0.2608729
6-24 months                   NIH-Crypto      BANGLADESH     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   SAS-FoodSuppl   INDIA          NA                   NA                0.3557214   0.3088651   0.4025777


### Parameter: RR


agecat                        studyid         country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             0%                1.2982403   0.8924686   1.888501
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   >5%                  0%                1.6835645   1.0247387   2.765963
0-24 months (no birth wast)   JiVitA-4        BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4        BANGLADESH     (0%, 5%]             0%                1.0065878   0.7660235   1.322700
0-24 months (no birth wast)   JiVitA-4        BANGLADESH     >5%                  0%                1.2124115   0.8992531   1.634625
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     (0%, 5%]             0%                1.0797678   0.6637714   1.756476
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     >5%                  0%                1.0089807   0.5807535   1.752968
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.6365263   0.3552538   1.140496
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          >5%                  0%                0.8804733   0.6433779   1.204942
6-24 months                   iLiNS-Zinc      BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             0%                0.9437885   0.7217710   1.234099
6-24 months                   iLiNS-Zinc      BURKINA FASO   >5%                  0%                0.9569984   0.6991894   1.309868
6-24 months                   JiVitA-4        BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4        BANGLADESH     (0%, 5%]             0%                0.9751597   0.7344128   1.294826
6-24 months                   JiVitA-4        BANGLADESH     >5%                  0%                1.1889136   0.8695910   1.625495
6-24 months                   NIH-Crypto      BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   NIH-Crypto      BANGLADESH     (0%, 5%]             0%                0.8567988   0.5400053   1.359439
6-24 months                   NIH-Crypto      BANGLADESH     >5%                  0%                0.7837214   0.4556150   1.348110
6-24 months                   SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.6236128   0.3461032   1.123633
6-24 months                   SAS-FoodSuppl   INDIA          >5%                  0%                0.8826464   0.6479171   1.202414


### Parameter: PAR


agecat                        studyid         country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   0%                   NA                 0.0253338   -0.0002771   0.0509447
0-24 months (no birth wast)   JiVitA-4        BANGLADESH     0%                   NA                 0.0076626   -0.0578122   0.0731374
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     0%                   NA                 0.0094538   -0.0411450   0.0600526
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          0%                   NA                -0.0561504   -0.1576391   0.0453384
6-24 months                   iLiNS-Zinc      BURKINA FASO   0%                   NA                -0.0086548   -0.0621536   0.0448440
6-24 months                   JiVitA-4        BANGLADESH     0%                   NA                 0.0000728   -0.0671932   0.0673388
6-24 months                   NIH-Crypto      BANGLADESH     0%                   NA                -0.0212359   -0.0742034   0.0317317
6-24 months                   SAS-FoodSuppl   INDIA          0%                   NA                -0.0533311   -0.1506430   0.0439808


### Parameter: PAF


agecat                        studyid         country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   0%                   NA                 0.2691572   -0.0155030   0.4740231
0-24 months (no birth wast)   JiVitA-4        BANGLADESH     0%                   NA                 0.0297249   -0.2606360   0.2532072
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     0%                   NA                 0.0660015   -0.3637071   0.3603075
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          0%                   NA                -0.1558860   -0.4754746   0.0944796
6-24 months                   iLiNS-Zinc      BURKINA FASO   0%                   NA                -0.0370704   -0.2941058   0.1689126
6-24 months                   JiVitA-4        BANGLADESH     0%                   NA                 0.0002944   -0.3122652   0.2384075
6-24 months                   NIH-Crypto      BANGLADESH     0%                   NA                -0.1614810   -0.6428870   0.1788613
6-24 months                   SAS-FoodSuppl   INDIA          0%                   NA                -0.1499238   -0.4592895   0.0938572
