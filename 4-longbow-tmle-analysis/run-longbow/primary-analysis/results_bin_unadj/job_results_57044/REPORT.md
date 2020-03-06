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

unadjusted

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



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/271e2494-0153-4e48-9b92-3f46f2aa2cf6/ba48cd05-902f-48b2-bb2d-5da4365afafa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/271e2494-0153-4e48-9b92-3f46f2aa2cf6/ba48cd05-902f-48b2-bb2d-5da4365afafa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/271e2494-0153-4e48-9b92-3f46f2aa2cf6/ba48cd05-902f-48b2-bb2d-5da4365afafa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/271e2494-0153-4e48-9b92-3f46f2aa2cf6/ba48cd05-902f-48b2-bb2d-5da4365afafa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid         country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   0%                   NA                0.0668693   0.0455261   0.0882125
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             NA                0.0888542   0.0647249   0.1129836
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   >5%                  NA                0.1154891   0.0705658   0.1604124
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     0%                   NA                0.1437908   0.0881561   0.1994256
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     (0%, 5%]             NA                0.1457286   0.1110418   0.1804155
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     >5%                  NA                0.1379310   0.0904642   0.1853979
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          0%                   NA                0.3924051   0.2845957   0.5002145
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.2666667   0.1372993   0.3960340
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          >5%                  NA                0.3663004   0.3090768   0.4235239
6-24 months                   iLiNS-Zinc      BURKINA FASO   0%                   NA                0.2436975   0.1842243   0.3031707
6-24 months                   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             NA                0.2280967   0.1831233   0.2730701
6-24 months                   iLiNS-Zinc      BURKINA FASO   >5%                  NA                0.2379714   0.1890893   0.2868535
6-24 months                   NIH-Crypto      BANGLADESH     0%                   NA                0.1492537   0.0888789   0.2096286
6-24 months                   NIH-Crypto      BANGLADESH     (0%, 5%]             NA                0.1294416   0.0962725   0.1626107
6-24 months                   NIH-Crypto      BANGLADESH     >5%                  NA                0.1237624   0.0783185   0.1692062
6-24 months                   SAS-FoodSuppl   INDIA          0%                   NA                0.3924051   0.2845974   0.5002128
6-24 months                   SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.2553191   0.1305041   0.3801342
6-24 months                   SAS-FoodSuppl   INDIA          >5%                  NA                0.3623188   0.3055406   0.4190970


### Parameter: E(Y)


agecat                        studyid         country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   NA                   NA                0.0941227   0.0721577   0.1160876
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          NA                   NA                0.3602015   0.3129196   0.4074834
6-24 months                   iLiNS-Zinc      BURKINA FASO   NA                   NA                0.2334694   0.1980609   0.2688779
6-24 months                   NIH-Crypto      BANGLADESH     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   SAS-FoodSuppl   INDIA          NA                   NA                0.3557214   0.3088651   0.4025777


### Parameter: RR


agecat                        studyid         country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             0%                1.3287749   0.9110358   1.938061
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   >5%                  0%                1.7270875   1.0715470   2.783668
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     (0%, 5%]             0%                1.0134765   0.6434699   1.596243
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     >5%                  0%                0.9592476   0.5715405   1.609958
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.6795699   0.3891396   1.186760
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          >5%                  0%                0.9334751   0.6805256   1.280445
6-24 months                   iLiNS-Zinc      BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             0%                0.9359829   0.7157227   1.224027
6-24 months                   iLiNS-Zinc      BURKINA FASO   >5%                  0%                0.9765033   0.7258754   1.313667
6-24 months                   NIH-Crypto      BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   NIH-Crypto      BANGLADESH     (0%, 5%]             0%                0.8672589   0.5372657   1.399937
6-24 months                   NIH-Crypto      BANGLADESH     >5%                  0%                0.8292079   0.4801796   1.431935
6-24 months                   SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                   SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.6506520   0.3713724   1.139956
6-24 months                   SAS-FoodSuppl   INDIA          >5%                  0%                0.9233287   0.6729687   1.266828


### Parameter: PAR


agecat                        studyid         country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   0%                   NA                 0.0272534    0.0021555   0.0523512
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     0%                   NA                -0.0005548   -0.0502049   0.0490953
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          0%                   NA                -0.0322036   -0.1282906   0.0638835
6-24 months                   iLiNS-Zinc      BURKINA FASO   0%                   NA                -0.0102281   -0.0622010   0.0417448
6-24 months                   NIH-Crypto      BANGLADESH     0%                   NA                -0.0177469   -0.0716798   0.0361860
6-24 months                   SAS-FoodSuppl   INDIA          0%                   NA                -0.0366837   -0.1328604   0.0594931


### Parameter: PAF


agecat                        studyid         country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   iLiNS-Zinc      BURKINA FASO   0%                   NA                 0.2895515    0.0140645   0.4880628
0-24 months (no birth wast)   NIH-Crypto      BANGLADESH     0%                   NA                -0.0038732   -0.4178746   0.2892451
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA          0%                   NA                -0.0894043   -0.3917357   0.1472507
6-24 months                   iLiNS-Zinc      BURKINA FASO   0%                   NA                -0.0438091   -0.2929947   0.1573535
6-24 months                   NIH-Crypto      BANGLADESH     0%                   NA                -0.1349502   -0.6282276   0.2088869
6-24 months                   SAS-FoodSuppl   INDIA          0%                   NA                -0.1031247   -0.4096054   0.1367200
