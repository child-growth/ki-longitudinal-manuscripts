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

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
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
* delta_W_mhtcm
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

agecat                       studyid         country                        perdiar24    ever_stunted   n_cell      n
---------------------------  --------------  -----------------------------  ----------  -------------  -------  -----
0-24 months (no birth st.)   CMIN            BANGLADESH                     0%                      0        6    168
0-24 months (no birth st.)   CMIN            BANGLADESH                     0%                      1        3    168
0-24 months (no birth st.)   CMIN            BANGLADESH                     (0%, 5%]                0       14    168
0-24 months (no birth st.)   CMIN            BANGLADESH                     (0%, 5%]                1       63    168
0-24 months (no birth st.)   CMIN            BANGLADESH                     >5%                     0       21    168
0-24 months (no birth st.)   CMIN            BANGLADESH                     >5%                     1       61    168
0-24 months (no birth st.)   CONTENT         PERU                           0%                      0        4    195
0-24 months (no birth st.)   CONTENT         PERU                           0%                      1        0    195
0-24 months (no birth st.)   CONTENT         PERU                           (0%, 5%]                0      106    195
0-24 months (no birth st.)   CONTENT         PERU                           (0%, 5%]                1       20    195
0-24 months (no birth st.)   CONTENT         PERU                           >5%                     0       52    195
0-24 months (no birth st.)   CONTENT         PERU                           >5%                     1       13    195
0-24 months (no birth st.)   EE              PAKISTAN                       0%                      0       31    213
0-24 months (no birth st.)   EE              PAKISTAN                       0%                      1      111    213
0-24 months (no birth st.)   EE              PAKISTAN                       (0%, 5%]                0       10    213
0-24 months (no birth st.)   EE              PAKISTAN                       (0%, 5%]                1       61    213
0-24 months (no birth st.)   EE              PAKISTAN                       >5%                     0        0    213
0-24 months (no birth st.)   EE              PAKISTAN                       >5%                     1        0    213
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      0%                      0       20    236
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      0%                      1        5    236
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      (0%, 5%]                0       38    236
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      (0%, 5%]                1       23    236
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      >5%                     0       87    236
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      >5%                     1       63    236
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   0%                      0      233   1889
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   0%                      1       32   1889
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]                0      868   1889
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]                1      179   1889
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   >5%                     0      467   1889
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   >5%                     1      110   1889
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     0%                      0       98   3886
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     0%                      1       64   3886
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     (0%, 5%]                0     1965   3886
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     (0%, 5%]                1     1368   3886
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     >5%                     0      216   3886
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     >5%                     1      175   3886
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0%                      0        9    217
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0%                      1        7    217
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     (0%, 5%]                0       63    217
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     (0%, 5%]                1       65    217
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     >5%                     0       31    217
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     >5%                     1       42    217
0-24 months (no birth st.)   MAL-ED          BRAZIL                         0%                      0       99    202
0-24 months (no birth st.)   MAL-ED          BRAZIL                         0%                      1       14    202
0-24 months (no birth st.)   MAL-ED          BRAZIL                         (0%, 5%]                0       69    202
0-24 months (no birth st.)   MAL-ED          BRAZIL                         (0%, 5%]                1       18    202
0-24 months (no birth st.)   MAL-ED          BRAZIL                         >5%                     0        2    202
0-24 months (no birth st.)   MAL-ED          BRAZIL                         >5%                     1        0    202
0-24 months (no birth st.)   MAL-ED          INDIA                          0%                      0        9    210
0-24 months (no birth st.)   MAL-ED          INDIA                          0%                      1        3    210
0-24 months (no birth st.)   MAL-ED          INDIA                          (0%, 5%]                0       71    210
0-24 months (no birth st.)   MAL-ED          INDIA                          (0%, 5%]                1       91    210
0-24 months (no birth st.)   MAL-ED          INDIA                          >5%                     0       19    210
0-24 months (no birth st.)   MAL-ED          INDIA                          >5%                     1       17    210
0-24 months (no birth st.)   MAL-ED          NEPAL                          0%                      0       12    211
0-24 months (no birth st.)   MAL-ED          NEPAL                          0%                      1        2    211
0-24 months (no birth st.)   MAL-ED          NEPAL                          (0%, 5%]                0       94    211
0-24 months (no birth st.)   MAL-ED          NEPAL                          (0%, 5%]                1       36    211
0-24 months (no birth st.)   MAL-ED          NEPAL                          >5%                     0       50    211
0-24 months (no birth st.)   MAL-ED          NEPAL                          >5%                     1       17    211
0-24 months (no birth st.)   MAL-ED          PERU                           0%                      0       21    266
0-24 months (no birth st.)   MAL-ED          PERU                           0%                      1        6    266
0-24 months (no birth st.)   MAL-ED          PERU                           (0%, 5%]                0       34    266
0-24 months (no birth st.)   MAL-ED          PERU                           (0%, 5%]                1       65    266
0-24 months (no birth st.)   MAL-ED          PERU                           >5%                     0       60    266
0-24 months (no birth st.)   MAL-ED          PERU                           >5%                     1       80    266
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   0%                      0       57    265
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   0%                      1       45    265
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   (0%, 5%]                0       69    265
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   (0%, 5%]                1       91    265
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   >5%                     0        2    265
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   >5%                     1        1    265
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0        7    219
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        6    219
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0       28    219
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1      121    219
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0        5    219
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1       52    219
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     0%                      0       37    528
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     0%                      1        7    528
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     (0%, 5%]                0      113    528
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     (0%, 5%]                1      185    528
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     >5%                     0       59    528
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     >5%                     1      127    528
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     0%                      0       84    653
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     0%                      1       46    653
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     (0%, 5%]                0      209    653
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     (0%, 5%]                1      140    653
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     >5%                     0      103    653
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     >5%                     1       71    653
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     0%                      0       60    633
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     0%                      1        4    633
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     (0%, 5%]                0      231    633
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     (0%, 5%]                1      163    633
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     >5%                     0      104    633
0-24 months (no birth st.)   PROVIDE         BANGLADESH                     >5%                     1       71    633
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0%                      0       13    257
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0%                      1       36    257
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          (0%, 5%]                0       10    257
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          (0%, 5%]                1       21    257
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          >5%                     0       49    257
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          >5%                     1      128    257
0-6 months (no birth st.)    CMIN            BANGLADESH                     0%                      0        8    168
0-6 months (no birth st.)    CMIN            BANGLADESH                     0%                      1        1    168
0-6 months (no birth st.)    CMIN            BANGLADESH                     (0%, 5%]                0       51    168
0-6 months (no birth st.)    CMIN            BANGLADESH                     (0%, 5%]                1       26    168
0-6 months (no birth st.)    CMIN            BANGLADESH                     >5%                     0       61    168
0-6 months (no birth st.)    CMIN            BANGLADESH                     >5%                     1       21    168
0-6 months (no birth st.)    CONTENT         PERU                           0%                      0        4    195
0-6 months (no birth st.)    CONTENT         PERU                           0%                      1        0    195
0-6 months (no birth st.)    CONTENT         PERU                           (0%, 5%]                0      121    195
0-6 months (no birth st.)    CONTENT         PERU                           (0%, 5%]                1        5    195
0-6 months (no birth st.)    CONTENT         PERU                           >5%                     0       63    195
0-6 months (no birth st.)    CONTENT         PERU                           >5%                     1        2    195
0-6 months (no birth st.)    EE              PAKISTAN                       0%                      0       60    213
0-6 months (no birth st.)    EE              PAKISTAN                       0%                      1       82    213
0-6 months (no birth st.)    EE              PAKISTAN                       (0%, 5%]                0       35    213
0-6 months (no birth st.)    EE              PAKISTAN                       (0%, 5%]                1       36    213
0-6 months (no birth st.)    EE              PAKISTAN                       >5%                     0        0    213
0-6 months (no birth st.)    EE              PAKISTAN                       >5%                     1        0    213
0-6 months (no birth st.)    Guatemala BSC   GUATEMALA                      0%                      0       20    220
0-6 months (no birth st.)    Guatemala BSC   GUATEMALA                      0%                      1        2    220
0-6 months (no birth st.)    Guatemala BSC   GUATEMALA                      (0%, 5%]                0       48    220
0-6 months (no birth st.)    Guatemala BSC   GUATEMALA                      (0%, 5%]                1        9    220
0-6 months (no birth st.)    Guatemala BSC   GUATEMALA                      >5%                     0      131    220
0-6 months (no birth st.)    Guatemala BSC   GUATEMALA                      >5%                     1       10    220
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     0%                      0      119   3659
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     0%                      1       10   3659
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     (0%, 5%]                0     2894   3659
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     (0%, 5%]                1      266   3659
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     >5%                     0      333   3659
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     >5%                     1       37   3659
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     0%                      0       12    217
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     0%                      1        4    217
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     (0%, 5%]                0      100    217
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     (0%, 5%]                1       28    217
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     >5%                     0       58    217
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     >5%                     1       15    217
0-6 months (no birth st.)    MAL-ED          BRAZIL                         0%                      0      104    202
0-6 months (no birth st.)    MAL-ED          BRAZIL                         0%                      1        9    202
0-6 months (no birth st.)    MAL-ED          BRAZIL                         (0%, 5%]                0       75    202
0-6 months (no birth st.)    MAL-ED          BRAZIL                         (0%, 5%]                1       12    202
0-6 months (no birth st.)    MAL-ED          BRAZIL                         >5%                     0        2    202
0-6 months (no birth st.)    MAL-ED          BRAZIL                         >5%                     1        0    202
0-6 months (no birth st.)    MAL-ED          INDIA                          0%                      0       10    210
0-6 months (no birth st.)    MAL-ED          INDIA                          0%                      1        2    210
0-6 months (no birth st.)    MAL-ED          INDIA                          (0%, 5%]                0      125    210
0-6 months (no birth st.)    MAL-ED          INDIA                          (0%, 5%]                1       37    210
0-6 months (no birth st.)    MAL-ED          INDIA                          >5%                     0       29    210
0-6 months (no birth st.)    MAL-ED          INDIA                          >5%                     1        7    210
0-6 months (no birth st.)    MAL-ED          NEPAL                          0%                      0       13    211
0-6 months (no birth st.)    MAL-ED          NEPAL                          0%                      1        1    211
0-6 months (no birth st.)    MAL-ED          NEPAL                          (0%, 5%]                0      119    211
0-6 months (no birth st.)    MAL-ED          NEPAL                          (0%, 5%]                1       11    211
0-6 months (no birth st.)    MAL-ED          NEPAL                          >5%                     0       65    211
0-6 months (no birth st.)    MAL-ED          NEPAL                          >5%                     1        2    211
0-6 months (no birth st.)    MAL-ED          PERU                           0%                      0       22    266
0-6 months (no birth st.)    MAL-ED          PERU                           0%                      1        5    266
0-6 months (no birth st.)    MAL-ED          PERU                           (0%, 5%]                0       65    266
0-6 months (no birth st.)    MAL-ED          PERU                           (0%, 5%]                1       34    266
0-6 months (no birth st.)    MAL-ED          PERU                           >5%                     0       87    266
0-6 months (no birth st.)    MAL-ED          PERU                           >5%                     1       53    266
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   0%                      0       74    265
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   0%                      1       28    265
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   (0%, 5%]                0      111    265
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   (0%, 5%]                1       49    265
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   >5%                     0        3    265
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   >5%                     1        0    265
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0       10    219
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        3    219
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0      105    219
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1       44    219
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0       38    219
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1       19    219
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     0%                      0       41    528
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     0%                      1        3    528
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     (0%, 5%]                0      238    528
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     (0%, 5%]                1       60    528
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     >5%                     0      128    528
0-6 months (no birth st.)    NIH-Birth       BANGLADESH                     >5%                     1       58    528
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     0%                      0      110    653
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     0%                      1       20    653
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     (0%, 5%]                0      280    653
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     (0%, 5%]                1       69    653
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     >5%                     0      139    653
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     >5%                     1       35    653
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     0%                      0       62    633
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     0%                      1        2    633
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     (0%, 5%]                0      325    633
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     (0%, 5%]                1       69    633
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     >5%                     0      145    633
0-6 months (no birth st.)    PROVIDE         BANGLADESH                     >5%                     1       30    633
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          0%                      0       48    257
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          0%                      1        1    257
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          (0%, 5%]                0       31    257
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          (0%, 5%]                1        0    257
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          >5%                     0      175    257
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          >5%                     1        2    257
6-24 months                  CMIN            BANGLADESH                     0%                      0        0    111
6-24 months                  CMIN            BANGLADESH                     0%                      1        2    111
6-24 months                  CMIN            BANGLADESH                     (0%, 5%]                0       14    111
6-24 months                  CMIN            BANGLADESH                     (0%, 5%]                1       37    111
6-24 months                  CMIN            BANGLADESH                     >5%                     0       18    111
6-24 months                  CMIN            BANGLADESH                     >5%                     1       40    111
6-24 months                  CONTENT         PERU                           0%                      0        4    188
6-24 months                  CONTENT         PERU                           0%                      1        0    188
6-24 months                  CONTENT         PERU                           (0%, 5%]                0      106    188
6-24 months                  CONTENT         PERU                           (0%, 5%]                1       15    188
6-24 months                  CONTENT         PERU                           >5%                     0       52    188
6-24 months                  CONTENT         PERU                           >5%                     1       11    188
6-24 months                  EE              PAKISTAN                       0%                      0       29     93
6-24 months                  EE              PAKISTAN                       0%                      1       29     93
6-24 months                  EE              PAKISTAN                       (0%, 5%]                0       10     93
6-24 months                  EE              PAKISTAN                       (0%, 5%]                1       25     93
6-24 months                  EE              PAKISTAN                       >5%                     0        0     93
6-24 months                  EE              PAKISTAN                       >5%                     1        0     93
6-24 months                  Guatemala BSC   GUATEMALA                      0%                      0       12    195
6-24 months                  Guatemala BSC   GUATEMALA                      0%                      1        3    195
6-24 months                  Guatemala BSC   GUATEMALA                      (0%, 5%]                0       35    195
6-24 months                  Guatemala BSC   GUATEMALA                      (0%, 5%]                1       15    195
6-24 months                  Guatemala BSC   GUATEMALA                      >5%                     0       74    195
6-24 months                  Guatemala BSC   GUATEMALA                      >5%                     1       56    195
6-24 months                  iLiNS-Zinc      BURKINA FASO                   0%                      0      233   2449
6-24 months                  iLiNS-Zinc      BURKINA FASO                   0%                      1      124   2449
6-24 months                  iLiNS-Zinc      BURKINA FASO                   (0%, 5%]                0      868   2449
6-24 months                  iLiNS-Zinc      BURKINA FASO                   (0%, 5%]                1      456   2449
6-24 months                  iLiNS-Zinc      BURKINA FASO                   >5%                     0      467   2449
6-24 months                  iLiNS-Zinc      BURKINA FASO                   >5%                     1      301   2449
6-24 months                  JiVitA-4        BANGLADESH                     0%                      0       93   3649
6-24 months                  JiVitA-4        BANGLADESH                     0%                      1       61   3649
6-24 months                  JiVitA-4        BANGLADESH                     (0%, 5%]                0     1961   3649
6-24 months                  JiVitA-4        BANGLADESH                     (0%, 5%]                1     1163   3649
6-24 months                  JiVitA-4        BANGLADESH                     >5%                     0      216   3649
6-24 months                  JiVitA-4        BANGLADESH                     >5%                     1      155   3649
6-24 months                  MAL-ED          BANGLADESH                     0%                      0        1    158
6-24 months                  MAL-ED          BANGLADESH                     0%                      1        3    158
6-24 months                  MAL-ED          BANGLADESH                     (0%, 5%]                0       61    158
6-24 months                  MAL-ED          BANGLADESH                     (0%, 5%]                1       37    158
6-24 months                  MAL-ED          BANGLADESH                     >5%                     0       29    158
6-24 months                  MAL-ED          BANGLADESH                     >5%                     1       27    158
6-24 months                  MAL-ED          BRAZIL                         0%                      0       81    163
6-24 months                  MAL-ED          BRAZIL                         0%                      1        5    163
6-24 months                  MAL-ED          BRAZIL                         (0%, 5%]                0       69    163
6-24 months                  MAL-ED          BRAZIL                         (0%, 5%]                1        6    163
6-24 months                  MAL-ED          BRAZIL                         >5%                     0        2    163
6-24 months                  MAL-ED          BRAZIL                         >5%                     1        0    163
6-24 months                  MAL-ED          INDIA                          0%                      0        1    154
6-24 months                  MAL-ED          INDIA                          0%                      1        1    154
6-24 months                  MAL-ED          INDIA                          (0%, 5%]                0       70    154
6-24 months                  MAL-ED          INDIA                          (0%, 5%]                1       54    154
6-24 months                  MAL-ED          INDIA                          >5%                     0       18    154
6-24 months                  MAL-ED          INDIA                          >5%                     1       10    154
6-24 months                  MAL-ED          NEPAL                          0%                      0       11    194
6-24 months                  MAL-ED          NEPAL                          0%                      1        1    194
6-24 months                  MAL-ED          NEPAL                          (0%, 5%]                0       93    194
6-24 months                  MAL-ED          NEPAL                          (0%, 5%]                1       25    194
6-24 months                  MAL-ED          NEPAL                          >5%                     0       49    194
6-24 months                  MAL-ED          NEPAL                          >5%                     1       15    194
6-24 months                  MAL-ED          PERU                           0%                      0        3    149
6-24 months                  MAL-ED          PERU                           0%                      1        1    149
6-24 months                  MAL-ED          PERU                           (0%, 5%]                0       31    149
6-24 months                  MAL-ED          PERU                           (0%, 5%]                1       31    149
6-24 months                  MAL-ED          PERU                           >5%                     0       56    149
6-24 months                  MAL-ED          PERU                           >5%                     1       27    149
6-24 months                  MAL-ED          SOUTH AFRICA                   0%                      0       31    158
6-24 months                  MAL-ED          SOUTH AFRICA                   0%                      1       17    158
6-24 months                  MAL-ED          SOUTH AFRICA                   (0%, 5%]                0       66    158
6-24 months                  MAL-ED          SOUTH AFRICA                   (0%, 5%]                1       42    158
6-24 months                  MAL-ED          SOUTH AFRICA                   >5%                     0        1    158
6-24 months                  MAL-ED          SOUTH AFRICA                   >5%                     1        1    158
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0        1    144
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        3    144
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0       25    144
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1       77    144
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0        5    144
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1       33    144
6-24 months                  NIH-Birth       BANGLADESH                     0%                      0        6    345
6-24 months                  NIH-Birth       BANGLADESH                     0%                      1        4    345
6-24 months                  NIH-Birth       BANGLADESH                     (0%, 5%]                0      104    345
6-24 months                  NIH-Birth       BANGLADESH                     (0%, 5%]                1      125    345
6-24 months                  NIH-Birth       BANGLADESH                     >5%                     0       37    345
6-24 months                  NIH-Birth       BANGLADESH                     >5%                     1       69    345
6-24 months                  NIH-Crypto      BANGLADESH                     0%                      0       70    506
6-24 months                  NIH-Crypto      BANGLADESH                     0%                      1       26    506
6-24 months                  NIH-Crypto      BANGLADESH                     (0%, 5%]                0      205    506
6-24 months                  NIH-Crypto      BANGLADESH                     (0%, 5%]                1       71    506
6-24 months                  NIH-Crypto      BANGLADESH                     >5%                     0       98    506
6-24 months                  NIH-Crypto      BANGLADESH                     >5%                     1       36    506
6-24 months                  PROVIDE         BANGLADESH                     0%                      0        5    456
6-24 months                  PROVIDE         BANGLADESH                     0%                      1        2    456
6-24 months                  PROVIDE         BANGLADESH                     (0%, 5%]                0      219    456
6-24 months                  PROVIDE         BANGLADESH                     (0%, 5%]                1       94    456
6-24 months                  PROVIDE         BANGLADESH                     >5%                     0       95    456
6-24 months                  PROVIDE         BANGLADESH                     >5%                     1       41    456
6-24 months                  SAS-FoodSuppl   INDIA                          0%                      0       10    243
6-24 months                  SAS-FoodSuppl   INDIA                          0%                      1       36    243
6-24 months                  SAS-FoodSuppl   INDIA                          (0%, 5%]                0       10    243
6-24 months                  SAS-FoodSuppl   INDIA                          (0%, 5%]                1       21    243
6-24 months                  SAS-FoodSuppl   INDIA                          >5%                     0       39    243
6-24 months                  SAS-FoodSuppl   INDIA                          >5%                     1      127    243


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
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

* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
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
![](/tmp/baf2b8ec-64be-4fb6-a12b-13940e29a54f/8df9e1c1-8178-4694-923d-3c8d26f19d18/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/baf2b8ec-64be-4fb6-a12b-13940e29a54f/8df9e1c1-8178-4694-923d-3c8d26f19d18/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/baf2b8ec-64be-4fb6-a12b-13940e29a54f/8df9e1c1-8178-4694-923d-3c8d26f19d18/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/baf2b8ec-64be-4fb6-a12b-13940e29a54f/8df9e1c1-8178-4694-923d-3c8d26f19d18/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      0%                   NA                0.2000000   0.0428696   0.3571304
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      (0%, 5%]             NA                0.3770492   0.2551696   0.4989288
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      >5%                  NA                0.4200000   0.3408478   0.4991522
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   0%                   NA                0.1228243   0.0692441   0.1764045
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                0.1706846   0.1255129   0.2158563
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   >5%                  NA                0.1931043   0.1431511   0.2430575
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     0%                   NA                0.4288124   0.3406220   0.5170028
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.4106374   0.3909253   0.4303494
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     >5%                  NA                0.4329896   0.3817124   0.4842669
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0%                   NA                0.4375000   0.1938640   0.6811360
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.5078125   0.4210038   0.5946212
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     >5%                  NA                0.5753425   0.4616917   0.6889932
0-24 months (no birth st.)   MAL-ED          PERU                           0%                   NA                0.2222222   0.0651116   0.3793329
0-24 months (no birth st.)   MAL-ED          PERU                           (0%, 5%]             NA                0.6565657   0.5628506   0.7502807
0-24 months (no birth st.)   MAL-ED          PERU                           >5%                  NA                0.5714286   0.4892999   0.6535572
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.4615385   0.1899249   0.7331521
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8120805   0.7492119   0.8749492
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.9122807   0.8386742   0.9858872
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     0%                   NA                0.1590909   0.0509150   0.2672668
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     (0%, 5%]             NA                0.6208054   0.5656662   0.6759446
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     >5%                  NA                0.6827957   0.6158507   0.7497407
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     0%                   NA                0.3700982   0.2930684   0.4471280
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.4004138   0.3508987   0.4499290
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     >5%                  NA                0.3987164   0.3298293   0.4676034
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0%                   NA                0.7279121   0.6028594   0.8529649
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.6903730   0.5207710   0.8599751
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          >5%                  NA                0.7223652   0.6558974   0.7888330
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     0%                   NA                0.0731515   0.0303010   0.1160021
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.0840848   0.0716940   0.0964757
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     >5%                  NA                0.1015488   0.0642596   0.1388380
0-6 months (no birth st.)    MAL-ED          PERU                           0%                   NA                0.1851852   0.0383884   0.3319820
0-6 months (no birth st.)    MAL-ED          PERU                           (0%, 5%]             NA                0.3434343   0.2497193   0.4371494
0-6 months (no birth st.)    MAL-ED          PERU                           >5%                  NA                0.3785714   0.2980760   0.4590669
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     0%                   NA                0.1699565   0.1078759   0.2320371
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.1954566   0.1553800   0.2355332
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     >5%                  NA                0.1879690   0.1321616   0.2437763
6-24 months                  iLiNS-Zinc      BURKINA FASO                   0%                   NA                0.3313302   0.2733642   0.3892963
6-24 months                  iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             NA                0.3450443   0.2231575   0.4669312
6-24 months                  iLiNS-Zinc      BURKINA FASO                   >5%                  NA                0.3987793   0.3328958   0.4646628
6-24 months                  JiVitA-4        BANGLADESH                     0%                   NA                0.4080702   0.3189360   0.4972044
6-24 months                  JiVitA-4        BANGLADESH                     (0%, 5%]             NA                0.3744007   0.3538991   0.3949023
6-24 months                  JiVitA-4        BANGLADESH                     >5%                  NA                0.4004770   0.3503647   0.4505894
6-24 months                  NIH-Crypto      BANGLADESH                     0%                   NA                0.2996694   0.2130064   0.3863324
6-24 months                  NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.2599792   0.2088178   0.3111406
6-24 months                  NIH-Crypto      BANGLADESH                     >5%                  NA                0.2686397   0.1935021   0.3437774
6-24 months                  SAS-FoodSuppl   INDIA                          0%                   NA                0.7855695   0.6656571   0.9054818
6-24 months                  SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.6697117   0.4962776   0.8431457
6-24 months                  SAS-FoodSuppl   INDIA                          >5%                  NA                0.7651284   0.7002542   0.8300025


### Parameter: E(Y)


agecat                       studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      NA                   NA                0.3855932   0.3233622   0.4478242
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   NA                   NA                0.1699312   0.1379174   0.2019450
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     NA                   NA                0.4135358   0.3953404   0.4317312
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     NA                   NA                0.5253456   0.4587520   0.5919392
0-24 months (no birth st.)   MAL-ED          PERU                           NA                   NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8173516   0.7660617   0.8686415
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     NA                   NA                0.6041667   0.5624147   0.6459187
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          NA                   NA                0.7198444   0.6648337   0.7748550
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     NA                   NA                0.0855425   0.0741829   0.0969021
0-6 months (no birth st.)    MAL-ED          PERU                           NA                   NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
6-24 months                  iLiNS-Zinc      BURKINA FASO                   NA                   NA                0.3597387   0.2944602   0.4250171
6-24 months                  JiVitA-4        BANGLADESH                     NA                   NA                0.3779118   0.3593176   0.3965059
6-24 months                  NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234


### Parameter: RR


agecat                       studyid         country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      (0%, 5%]             0%                1.8852459   0.8061442   4.408829
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      >5%                  0%                2.1000000   0.9361295   4.710887
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                1.3896644   0.8412916   2.295479
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   >5%                  0%                1.5721992   1.0114032   2.443942
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     (0%, 5%]             0%                0.9576154   0.7737097   1.185234
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     >5%                  0%                1.0097414   0.7947138   1.282950
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     (0%, 5%]             0%                1.1607143   0.6482404   2.078330
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     >5%                  0%                1.3150685   0.7283377   2.374455
0-24 months (no birth st.)   MAL-ED          PERU                           0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED          PERU                           (0%, 5%]             0%                2.9545455   1.4363174   6.077583
0-24 months (no birth st.)   MAL-ED          PERU                           >5%                  0%                2.5714286   1.2498240   5.290541
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.7595078   0.9718709   3.185472
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.9766082   1.0913124   3.580075
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     (0%, 5%]             0%                3.9022052   1.9656098   7.746810
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     >5%                  0%                4.2918587   2.1591716   8.531073
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                1.0819124   0.8551158   1.368861
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     >5%                  0%                1.0773259   0.8278850   1.401923
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0%                   0%                1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                0.9484290   0.7028014   1.279903
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          >5%                  0%                0.9923796   0.8170805   1.205288
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     (0%, 5%]             0%                1.1494611   0.6308905   2.094279
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     >5%                  0%                1.3881978   0.6962899   2.767659
0-6 months (no birth st.)    MAL-ED          PERU                           0%                   0%                1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED          PERU                           (0%, 5%]             0%                1.8545455   0.8019448   4.288747
0-6 months (no birth st.)    MAL-ED          PERU                           >5%                  0%                2.0442857   0.8997158   4.644916
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                1.1500390   0.7624787   1.734592
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     >5%                  0%                1.1059828   0.6971672   1.754526
6-24 months                  iLiNS-Zinc      BURKINA FASO                   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                  iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0%                1.0413910   0.7229579   1.500081
6-24 months                  iLiNS-Zinc      BURKINA FASO                   >5%                  0%                1.2035706   0.9335120   1.551755
6-24 months                  JiVitA-4        BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-4        BANGLADESH                     (0%, 5%]             0%                0.9174910   0.7307721   1.151918
6-24 months                  JiVitA-4        BANGLADESH                     >5%                  0%                0.9813925   0.7589868   1.268970
6-24 months                  NIH-Crypto      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                  NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                0.8675533   0.6131494   1.227513
6-24 months                  NIH-Crypto      BANGLADESH                     >5%                  0%                0.8964537   0.6013481   1.336379
6-24 months                  SAS-FoodSuppl   INDIA                          0%                   0%                1.0000000   1.0000000   1.000000
6-24 months                  SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                0.8525174   0.6315054   1.150878
6-24 months                  SAS-FoodSuppl   INDIA                          >5%                  0%                0.9739792   0.8179345   1.159794


### Parameter: PAR


agecat                       studyid         country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      0%                   NA                 0.1855932    0.0328459   0.3383405
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   0%                   NA                 0.0471069   -0.0024257   0.0966394
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     0%                   NA                -0.0152766   -0.1027442   0.0721909
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0%                   NA                 0.0878456   -0.1467601   0.3224514
0-24 months (no birth st.)   MAL-ED          PERU                           0%                   NA                 0.3454470    0.1930317   0.4978622
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.3558131    0.0957246   0.6159017
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     0%                   NA                 0.4450758    0.3378614   0.5522901
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     0%                   NA                 0.0234699   -0.0444303   0.0913702
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0%                   NA                -0.0080678   -0.1211292   0.1049937
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     0%                   NA                 0.0123910   -0.0300725   0.0548544
0-6 months (no birth st.)    MAL-ED          PERU                           0%                   NA                 0.1606795    0.0176611   0.3036979
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     0%                   NA                 0.0199363   -0.0357929   0.0756655
6-24 months                  iLiNS-Zinc      BURKINA FASO                   0%                   NA                 0.0284084   -0.0454979   0.1023147
6-24 months                  JiVitA-4        BANGLADESH                     0%                   NA                -0.0301584   -0.1187921   0.0584753
6-24 months                  NIH-Crypto      BANGLADESH                     0%                   NA                -0.0368236   -0.1145583   0.0409112
6-24 months                  SAS-FoodSuppl   INDIA                          0%                   NA                -0.0283678   -0.1373191   0.0805834


### Parameter: PAF


agecat                       studyid         country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   Guatemala BSC   GUATEMALA                      0%                   NA                 0.4813187   -0.1075266   0.7570891
0-24 months (no birth st.)   iLiNS-Zinc      BURKINA FASO                   0%                   NA                 0.2772114   -0.0738009   0.5134821
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     0%                   NA                -0.0369415   -0.2717047   0.1544832
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0%                   NA                 0.1672149   -0.4244294   0.5131166
0-24 months (no birth st.)   MAL-ED          PERU                           0%                   NA                 0.6085357    0.2223258   0.8029454
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.4353245   -0.0003772   0.6812617
0-24 months (no birth st.)   NIH-Birth       BANGLADESH                     0%                   NA                 0.7366771    0.4861982   0.8650473
0-24 months (no birth st.)   NIH-Crypto      BANGLADESH                     0%                   NA                 0.0596338   -0.1297321   0.2172581
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0%                   NA                -0.0112077   -0.1811425   0.1342781
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     0%                   NA                 0.1448516   -0.5253143   0.5205718
0-6 months (no birth st.)    MAL-ED          PERU                           0%                   NA                 0.4645733   -0.1523338   0.7512164
0-6 months (no birth st.)    NIH-Crypto      BANGLADESH                     0%                   NA                 0.1049871   -0.2418925   0.3549780
6-24 months                  iLiNS-Zinc      BURKINA FASO                   0%                   NA                 0.0789697   -0.1398054   0.2557529
6-24 months                  JiVitA-4        BANGLADESH                     0%                   NA                -0.0798028   -0.3421786   0.1312824
6-24 months                  NIH-Crypto      BANGLADESH                     0%                   NA                -0.1400956   -0.4786836   0.1209627
6-24 months                  SAS-FoodSuppl   INDIA                          0%                   NA                -0.0374641   -0.1919417   0.0969931
