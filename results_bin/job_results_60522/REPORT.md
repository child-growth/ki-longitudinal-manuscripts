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

**Outcome Variable:** pers_wast

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

agecat        studyid         country                        perdiar24    pers_wast   n_cell      n
------------  --------------  -----------------------------  ----------  ----------  -------  -----
0-24 months   CMIN            BANGLADESH                     0%                   0        3    257
0-24 months   CMIN            BANGLADESH                     0%                   1        0    257
0-24 months   CMIN            BANGLADESH                     (0%, 5%]             0      106    257
0-24 months   CMIN            BANGLADESH                     (0%, 5%]             1       12    257
0-24 months   CMIN            BANGLADESH                     >5%                  0      128    257
0-24 months   CMIN            BANGLADESH                     >5%                  1        8    257
0-24 months   CONTENT         PERU                           0%                   0        6    215
0-24 months   CONTENT         PERU                           0%                   1        0    215
0-24 months   CONTENT         PERU                           (0%, 5%]             0      142    215
0-24 months   CONTENT         PERU                           (0%, 5%]             1        0    215
0-24 months   CONTENT         PERU                           >5%                  0       67    215
0-24 months   CONTENT         PERU                           >5%                  1        0    215
0-24 months   EE              PAKISTAN                       0%                   0      232    377
0-24 months   EE              PAKISTAN                       0%                   1       27    377
0-24 months   EE              PAKISTAN                       (0%, 5%]             0      112    377
0-24 months   EE              PAKISTAN                       (0%, 5%]             1        6    377
0-24 months   EE              PAKISTAN                       >5%                  0        0    377
0-24 months   EE              PAKISTAN                       >5%                  1        0    377
0-24 months   Guatemala BSC   GUATEMALA                      0%                   0       12    256
0-24 months   Guatemala BSC   GUATEMALA                      0%                   1        0    256
0-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]             0       63    256
0-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]             1        1    256
0-24 months   Guatemala BSC   GUATEMALA                      >5%                  0      177    256
0-24 months   Guatemala BSC   GUATEMALA                      >5%                  1        3    256
0-24 months   iLiNS-Zinc      BURKINA FASO                   0%                   0      133   1669
0-24 months   iLiNS-Zinc      BURKINA FASO                   0%                   1       23   1669
0-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0      873   1669
0-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             1      105   1669
0-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                  0      463   1669
0-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                  1       72   1669
0-24 months   JiVitA-4        BANGLADESH                     0%                   0      178   5281
0-24 months   JiVitA-4        BANGLADESH                     0%                   1       13   5281
0-24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0     4174   5281
0-24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             1      353   5281
0-24 months   JiVitA-4        BANGLADESH                     >5%                  0      503   5281
0-24 months   JiVitA-4        BANGLADESH                     >5%                  1       60   5281
0-24 months   MAL-ED          BANGLADESH                     0%                   0        8    248
0-24 months   MAL-ED          BANGLADESH                     0%                   1        0    248
0-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0      136    248
0-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             1       10    248
0-24 months   MAL-ED          BANGLADESH                     >5%                  0       91    248
0-24 months   MAL-ED          BANGLADESH                     >5%                  1        3    248
0-24 months   MAL-ED          BRAZIL                         0%                   0      114    218
0-24 months   MAL-ED          BRAZIL                         0%                   1        1    218
0-24 months   MAL-ED          BRAZIL                         (0%, 5%]             0      100    218
0-24 months   MAL-ED          BRAZIL                         (0%, 5%]             1        1    218
0-24 months   MAL-ED          BRAZIL                         >5%                  0        2    218
0-24 months   MAL-ED          BRAZIL                         >5%                  1        0    218
0-24 months   MAL-ED          INDIA                          0%                   0        4    241
0-24 months   MAL-ED          INDIA                          0%                   1        1    241
0-24 months   MAL-ED          INDIA                          (0%, 5%]             0      178    241
0-24 months   MAL-ED          INDIA                          (0%, 5%]             1       15    241
0-24 months   MAL-ED          INDIA                          >5%                  0       38    241
0-24 months   MAL-ED          INDIA                          >5%                  1        5    241
0-24 months   MAL-ED          NEPAL                          0%                   0       15    238
0-24 months   MAL-ED          NEPAL                          0%                   1        0    238
0-24 months   MAL-ED          NEPAL                          (0%, 5%]             0      140    238
0-24 months   MAL-ED          NEPAL                          (0%, 5%]             1        4    238
0-24 months   MAL-ED          NEPAL                          >5%                  0       79    238
0-24 months   MAL-ED          NEPAL                          >5%                  1        0    238
0-24 months   MAL-ED          PERU                           0%                   0       11    284
0-24 months   MAL-ED          PERU                           0%                   1        0    284
0-24 months   MAL-ED          PERU                           (0%, 5%]             0      112    284
0-24 months   MAL-ED          PERU                           (0%, 5%]             1        1    284
0-24 months   MAL-ED          PERU                           >5%                  0      160    284
0-24 months   MAL-ED          PERU                           >5%                  1        0    284
0-24 months   MAL-ED          SOUTH AFRICA                   0%                   0       90    275
0-24 months   MAL-ED          SOUTH AFRICA                   0%                   1        1    275
0-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]             0      180    275
0-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]             1        1    275
0-24 months   MAL-ED          SOUTH AFRICA                   >5%                  0        3    275
0-24 months   MAL-ED          SOUTH AFRICA                   >5%                  1        0    275
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0        9    253
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   1        0    253
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0      182    253
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             1        0    253
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0       62    253
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  1        0    253
0-24 months   NIH-Birth       BANGLADESH                     0%                   0       10    534
0-24 months   NIH-Birth       BANGLADESH                     0%                   1        0    534
0-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0      302    534
0-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             1       36    534
0-24 months   NIH-Birth       BANGLADESH                     >5%                  0      175    534
0-24 months   NIH-Birth       BANGLADESH                     >5%                  1       11    534
0-24 months   NIH-Crypto      BANGLADESH                     0%                   0      130    730
0-24 months   NIH-Crypto      BANGLADESH                     0%                   1        4    730
0-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0      382    730
0-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             1       12    730
0-24 months   NIH-Crypto      BANGLADESH                     >5%                  0      192    730
0-24 months   NIH-Crypto      BANGLADESH                     >5%                  1       10    730
0-24 months   PROVIDE         BANGLADESH                     0%                   0       19    641
0-24 months   PROVIDE         BANGLADESH                     0%                   1        0    641
0-24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0      414    641
0-24 months   PROVIDE         BANGLADESH                     (0%, 5%]             1       12    641
0-24 months   PROVIDE         BANGLADESH                     >5%                  0      193    641
0-24 months   PROVIDE         BANGLADESH                     >5%                  1        3    641
0-24 months   SAS-FoodSuppl   INDIA                          0%                   0       56    375
0-24 months   SAS-FoodSuppl   INDIA                          0%                   1       15    375
0-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             0       37    375
0-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             1        9    375
0-24 months   SAS-FoodSuppl   INDIA                          >5%                  0      217    375
0-24 months   SAS-FoodSuppl   INDIA                          >5%                  1       41    375
0-6 months    CMIN            BANGLADESH                     0%                   0        3    234
0-6 months    CMIN            BANGLADESH                     0%                   1        0    234
0-6 months    CMIN            BANGLADESH                     (0%, 5%]             0      101    234
0-6 months    CMIN            BANGLADESH                     (0%, 5%]             1        4    234
0-6 months    CMIN            BANGLADESH                     >5%                  0      121    234
0-6 months    CMIN            BANGLADESH                     >5%                  1        5    234
0-6 months    CONTENT         PERU                           0%                   0        6    215
0-6 months    CONTENT         PERU                           0%                   1        0    215
0-6 months    CONTENT         PERU                           (0%, 5%]             0      142    215
0-6 months    CONTENT         PERU                           (0%, 5%]             1        0    215
0-6 months    CONTENT         PERU                           >5%                  0       67    215
0-6 months    CONTENT         PERU                           >5%                  1        0    215
0-6 months    EE              PAKISTAN                       0%                   0      234    371
0-6 months    EE              PAKISTAN                       0%                   1       19    371
0-6 months    EE              PAKISTAN                       (0%, 5%]             0      112    371
0-6 months    EE              PAKISTAN                       (0%, 5%]             1        6    371
0-6 months    EE              PAKISTAN                       >5%                  0        0    371
0-6 months    EE              PAKISTAN                       >5%                  1        0    371
0-6 months    MAL-ED          BANGLADESH                     0%                   0        8    248
0-6 months    MAL-ED          BANGLADESH                     0%                   1        0    248
0-6 months    MAL-ED          BANGLADESH                     (0%, 5%]             0      140    248
0-6 months    MAL-ED          BANGLADESH                     (0%, 5%]             1        6    248
0-6 months    MAL-ED          BANGLADESH                     >5%                  0       93    248
0-6 months    MAL-ED          BANGLADESH                     >5%                  1        1    248
0-6 months    MAL-ED          BRAZIL                         0%                   0      115    218
0-6 months    MAL-ED          BRAZIL                         0%                   1        0    218
0-6 months    MAL-ED          BRAZIL                         (0%, 5%]             0      100    218
0-6 months    MAL-ED          BRAZIL                         (0%, 5%]             1        1    218
0-6 months    MAL-ED          BRAZIL                         >5%                  0        2    218
0-6 months    MAL-ED          BRAZIL                         >5%                  1        0    218
0-6 months    MAL-ED          INDIA                          0%                   0        4    240
0-6 months    MAL-ED          INDIA                          0%                   1        1    240
0-6 months    MAL-ED          INDIA                          (0%, 5%]             0      179    240
0-6 months    MAL-ED          INDIA                          (0%, 5%]             1       13    240
0-6 months    MAL-ED          INDIA                          >5%                  0       38    240
0-6 months    MAL-ED          INDIA                          >5%                  1        5    240
0-6 months    MAL-ED          NEPAL                          0%                   0       13    238
0-6 months    MAL-ED          NEPAL                          0%                   1        2    238
0-6 months    MAL-ED          NEPAL                          (0%, 5%]             0      139    238
0-6 months    MAL-ED          NEPAL                          (0%, 5%]             1        5    238
0-6 months    MAL-ED          NEPAL                          >5%                  0       79    238
0-6 months    MAL-ED          NEPAL                          >5%                  1        0    238
0-6 months    MAL-ED          PERU                           0%                   0       11    284
0-6 months    MAL-ED          PERU                           0%                   1        0    284
0-6 months    MAL-ED          PERU                           (0%, 5%]             0      113    284
0-6 months    MAL-ED          PERU                           (0%, 5%]             1        0    284
0-6 months    MAL-ED          PERU                           >5%                  0      160    284
0-6 months    MAL-ED          PERU                           >5%                  1        0    284
0-6 months    MAL-ED          SOUTH AFRICA                   0%                   0       91    274
0-6 months    MAL-ED          SOUTH AFRICA                   0%                   1        0    274
0-6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]             0      178    274
0-6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]             1        2    274
0-6 months    MAL-ED          SOUTH AFRICA                   >5%                  0        3    274
0-6 months    MAL-ED          SOUTH AFRICA                   >5%                  1        0    274
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0        9    253
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   1        0    253
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0      182    253
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             1        0    253
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0       62    253
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  1        0    253
0-6 months    NIH-Birth       BANGLADESH                     0%                   0        0    169
0-6 months    NIH-Birth       BANGLADESH                     0%                   1        0    169
0-6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             0       45    169
0-6 months    NIH-Birth       BANGLADESH                     (0%, 5%]             1        5    169
0-6 months    NIH-Birth       BANGLADESH                     >5%                  0      113    169
0-6 months    NIH-Birth       BANGLADESH                     >5%                  1        6    169
0-6 months    NIH-Crypto      BANGLADESH                     0%                   0       12    250
0-6 months    NIH-Crypto      BANGLADESH                     0%                   1        0    250
0-6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             0      125    250
0-6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]             1        0    250
0-6 months    NIH-Crypto      BANGLADESH                     >5%                  0      108    250
0-6 months    NIH-Crypto      BANGLADESH                     >5%                  1        5    250
0-6 months    PROVIDE         BANGLADESH                     0%                   0       19    638
0-6 months    PROVIDE         BANGLADESH                     0%                   1        0    638
0-6 months    PROVIDE         BANGLADESH                     (0%, 5%]             0      416    638
0-6 months    PROVIDE         BANGLADESH                     (0%, 5%]             1        8    638
0-6 months    PROVIDE         BANGLADESH                     >5%                  0      189    638
0-6 months    PROVIDE         BANGLADESH                     >5%                  1        6    638
6-24 months   CMIN            BANGLADESH                     0%                   0        3    257
6-24 months   CMIN            BANGLADESH                     0%                   1        0    257
6-24 months   CMIN            BANGLADESH                     (0%, 5%]             0      106    257
6-24 months   CMIN            BANGLADESH                     (0%, 5%]             1       12    257
6-24 months   CMIN            BANGLADESH                     >5%                  0      128    257
6-24 months   CMIN            BANGLADESH                     >5%                  1        8    257
6-24 months   CONTENT         PERU                           0%                   0        6    215
6-24 months   CONTENT         PERU                           0%                   1        0    215
6-24 months   CONTENT         PERU                           (0%, 5%]             0      142    215
6-24 months   CONTENT         PERU                           (0%, 5%]             1        0    215
6-24 months   CONTENT         PERU                           >5%                  0       67    215
6-24 months   CONTENT         PERU                           >5%                  1        0    215
6-24 months   EE              PAKISTAN                       0%                   0      232    377
6-24 months   EE              PAKISTAN                       0%                   1       27    377
6-24 months   EE              PAKISTAN                       (0%, 5%]             0      112    377
6-24 months   EE              PAKISTAN                       (0%, 5%]             1        6    377
6-24 months   EE              PAKISTAN                       >5%                  0        0    377
6-24 months   EE              PAKISTAN                       >5%                  1        0    377
6-24 months   Guatemala BSC   GUATEMALA                      0%                   0       12    256
6-24 months   Guatemala BSC   GUATEMALA                      0%                   1        0    256
6-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]             0       63    256
6-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]             1        1    256
6-24 months   Guatemala BSC   GUATEMALA                      >5%                  0      177    256
6-24 months   Guatemala BSC   GUATEMALA                      >5%                  1        3    256
6-24 months   iLiNS-Zinc      BURKINA FASO                   0%                   0      133   1669
6-24 months   iLiNS-Zinc      BURKINA FASO                   0%                   1       23   1669
6-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             0      873   1669
6-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]             1      105   1669
6-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                  0      463   1669
6-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                  1       72   1669
6-24 months   JiVitA-4        BANGLADESH                     0%                   0      178   5281
6-24 months   JiVitA-4        BANGLADESH                     0%                   1       13   5281
6-24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             0     4174   5281
6-24 months   JiVitA-4        BANGLADESH                     (0%, 5%]             1      353   5281
6-24 months   JiVitA-4        BANGLADESH                     >5%                  0      503   5281
6-24 months   JiVitA-4        BANGLADESH                     >5%                  1       60   5281
6-24 months   MAL-ED          BANGLADESH                     0%                   0        8    248
6-24 months   MAL-ED          BANGLADESH                     0%                   1        0    248
6-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             0      136    248
6-24 months   MAL-ED          BANGLADESH                     (0%, 5%]             1       10    248
6-24 months   MAL-ED          BANGLADESH                     >5%                  0       91    248
6-24 months   MAL-ED          BANGLADESH                     >5%                  1        3    248
6-24 months   MAL-ED          BRAZIL                         0%                   0      114    218
6-24 months   MAL-ED          BRAZIL                         0%                   1        1    218
6-24 months   MAL-ED          BRAZIL                         (0%, 5%]             0      100    218
6-24 months   MAL-ED          BRAZIL                         (0%, 5%]             1        1    218
6-24 months   MAL-ED          BRAZIL                         >5%                  0        2    218
6-24 months   MAL-ED          BRAZIL                         >5%                  1        0    218
6-24 months   MAL-ED          INDIA                          0%                   0        4    241
6-24 months   MAL-ED          INDIA                          0%                   1        1    241
6-24 months   MAL-ED          INDIA                          (0%, 5%]             0      178    241
6-24 months   MAL-ED          INDIA                          (0%, 5%]             1       15    241
6-24 months   MAL-ED          INDIA                          >5%                  0       38    241
6-24 months   MAL-ED          INDIA                          >5%                  1        5    241
6-24 months   MAL-ED          NEPAL                          0%                   0       15    238
6-24 months   MAL-ED          NEPAL                          0%                   1        0    238
6-24 months   MAL-ED          NEPAL                          (0%, 5%]             0      140    238
6-24 months   MAL-ED          NEPAL                          (0%, 5%]             1        4    238
6-24 months   MAL-ED          NEPAL                          >5%                  0       79    238
6-24 months   MAL-ED          NEPAL                          >5%                  1        0    238
6-24 months   MAL-ED          PERU                           0%                   0       11    284
6-24 months   MAL-ED          PERU                           0%                   1        0    284
6-24 months   MAL-ED          PERU                           (0%, 5%]             0      112    284
6-24 months   MAL-ED          PERU                           (0%, 5%]             1        1    284
6-24 months   MAL-ED          PERU                           >5%                  0      160    284
6-24 months   MAL-ED          PERU                           >5%                  1        0    284
6-24 months   MAL-ED          SOUTH AFRICA                   0%                   0       90    275
6-24 months   MAL-ED          SOUTH AFRICA                   0%                   1        1    275
6-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]             0      180    275
6-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]             1        1    275
6-24 months   MAL-ED          SOUTH AFRICA                   >5%                  0        3    275
6-24 months   MAL-ED          SOUTH AFRICA                   >5%                  1        0    275
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0        9    253
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   1        0    253
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0      182    253
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             1        0    253
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0       62    253
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  1        0    253
6-24 months   NIH-Birth       BANGLADESH                     0%                   0       10    534
6-24 months   NIH-Birth       BANGLADESH                     0%                   1        0    534
6-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             0      302    534
6-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]             1       36    534
6-24 months   NIH-Birth       BANGLADESH                     >5%                  0      175    534
6-24 months   NIH-Birth       BANGLADESH                     >5%                  1       11    534
6-24 months   NIH-Crypto      BANGLADESH                     0%                   0      130    730
6-24 months   NIH-Crypto      BANGLADESH                     0%                   1        4    730
6-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             0      382    730
6-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]             1       12    730
6-24 months   NIH-Crypto      BANGLADESH                     >5%                  0      192    730
6-24 months   NIH-Crypto      BANGLADESH                     >5%                  1       10    730
6-24 months   PROVIDE         BANGLADESH                     0%                   0       19    641
6-24 months   PROVIDE         BANGLADESH                     0%                   1        0    641
6-24 months   PROVIDE         BANGLADESH                     (0%, 5%]             0      414    641
6-24 months   PROVIDE         BANGLADESH                     (0%, 5%]             1       12    641
6-24 months   PROVIDE         BANGLADESH                     >5%                  0      193    641
6-24 months   PROVIDE         BANGLADESH                     >5%                  1        3    641
6-24 months   SAS-FoodSuppl   INDIA                          0%                   0       56    375
6-24 months   SAS-FoodSuppl   INDIA                          0%                   1       15    375
6-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             0       37    375
6-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]             1        9    375
6-24 months   SAS-FoodSuppl   INDIA                          >5%                  0      217    375
6-24 months   SAS-FoodSuppl   INDIA                          >5%                  1       41    375


The following strata were considered:

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
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

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/93a2b24b-722c-4a70-81ba-49f52704b0fb/9a1a1b3d-690b-4d96-b97d-ff7f126d1ee7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/93a2b24b-722c-4a70-81ba-49f52704b0fb/9a1a1b3d-690b-4d96-b97d-ff7f126d1ee7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/93a2b24b-722c-4a70-81ba-49f52704b0fb/9a1a1b3d-690b-4d96-b97d-ff7f126d1ee7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/93a2b24b-722c-4a70-81ba-49f52704b0fb/9a1a1b3d-690b-4d96-b97d-ff7f126d1ee7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc      BURKINA FASO   0%                   NA                0.1462276   0.0687854   0.2236697
0-24 months   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             NA                0.1070143   0.0791079   0.1349207
0-24 months   iLiNS-Zinc      BURKINA FASO   >5%                  NA                0.1305615   0.0794660   0.1816570
0-24 months   JiVitA-4        BANGLADESH     0%                   NA                0.0747147   0.0325133   0.1169161
0-24 months   JiVitA-4        BANGLADESH     (0%, 5%]             NA                0.0779295   0.0688427   0.0870163
0-24 months   JiVitA-4        BANGLADESH     >5%                  NA                0.1031799   0.0765848   0.1297751
0-24 months   SAS-FoodSuppl   INDIA          0%                   NA                0.2112676   0.1161896   0.3063456
0-24 months   SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.1956522   0.0808597   0.3104446
0-24 months   SAS-FoodSuppl   INDIA          >5%                  NA                0.1589147   0.1142443   0.2035852
6-24 months   iLiNS-Zinc      BURKINA FASO   0%                   NA                0.1439355   0.0683309   0.2195401
6-24 months   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             NA                0.1063257   0.0782301   0.1344213
6-24 months   iLiNS-Zinc      BURKINA FASO   >5%                  NA                0.1320193   0.0813801   0.1826584
6-24 months   JiVitA-4        BANGLADESH     0%                   NA                0.0735926   0.0329540   0.1142313
6-24 months   JiVitA-4        BANGLADESH     (0%, 5%]             NA                0.0779698   0.0688772   0.0870623
6-24 months   JiVitA-4        BANGLADESH     >5%                  NA                0.1048483   0.0778196   0.1318770
6-24 months   SAS-FoodSuppl   INDIA          0%                   NA                0.2112676   0.1161896   0.3063456
6-24 months   SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.1956522   0.0808597   0.3104446
6-24 months   SAS-FoodSuppl   INDIA          >5%                  NA                0.1589147   0.1142443   0.2035852


### Parameter: E(Y)


agecat        studyid         country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   JiVitA-4        BANGLADESH     NA                   NA                0.0806665   0.0720540   0.0892791
0-24 months   SAS-FoodSuppl   INDIA          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   JiVitA-4        BANGLADESH     NA                   NA                0.0806665   0.0720540   0.0892791
6-24 months   SAS-FoodSuppl   INDIA          NA                   NA                0.1733333   0.1349698   0.2116969


### Parameter: RR


agecat        studyid         country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc      BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             0%                0.7318341   0.4224226   1.267880
0-24 months   iLiNS-Zinc      BURKINA FASO   >5%                  0%                0.8928654   0.4383910   1.818488
0-24 months   JiVitA-4        BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4        BANGLADESH     (0%, 5%]             0%                1.0430277   0.5883432   1.849102
0-24 months   JiVitA-4        BANGLADESH     >5%                  0%                1.3809859   0.7362739   2.590235
0-24 months   SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.9260870   0.4420972   1.939929
0-24 months   SAS-FoodSuppl   INDIA          >5%                  0%                0.7521964   0.4424762   1.278711
6-24 months   iLiNS-Zinc      BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             0%                0.7387037   0.4299344   1.269224
6-24 months   iLiNS-Zinc      BURKINA FASO   >5%                  0%                0.9172111   0.4546749   1.850281
6-24 months   JiVitA-4        BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4        BANGLADESH     (0%, 5%]             0%                1.0594780   0.6045979   1.856595
6-24 months   JiVitA-4        BANGLADESH     >5%                  0%                1.4247118   0.7682239   2.642203
6-24 months   SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.9260870   0.4420972   1.939929
6-24 months   SAS-FoodSuppl   INDIA          >5%                  0%                0.7521964   0.4424762   1.278711


### Parameter: PAR


agecat        studyid         country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc      BURKINA FASO   0%                   NA                -0.0263953   -0.1011316   0.0483410
0-24 months   JiVitA-4        BANGLADESH     0%                   NA                 0.0059518   -0.0354306   0.0473343
0-24 months   SAS-FoodSuppl   INDIA          0%                   NA                -0.0379343   -0.1221275   0.0462590
6-24 months   iLiNS-Zinc      BURKINA FASO   0%                   NA                -0.0241033   -0.0967494   0.0485429
6-24 months   JiVitA-4        BANGLADESH     0%                   NA                 0.0070739   -0.0328402   0.0469881
6-24 months   SAS-FoodSuppl   INDIA          0%                   NA                -0.0379343   -0.1221275   0.0462590


### Parameter: PAF


agecat        studyid         country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc      BURKINA FASO   0%                   NA                -0.2202690   -1.0420888   0.2708170
0-24 months   JiVitA-4        BANGLADESH     0%                   NA                 0.0737833   -0.6115917   0.4676832
0-24 months   SAS-FoodSuppl   INDIA          0%                   NA                -0.2188516   -0.8138542   0.1809710
6-24 months   iLiNS-Zinc      BURKINA FASO   0%                   NA                -0.2011418   -0.9961976   0.2772551
6-24 months   JiVitA-4        BANGLADESH     0%                   NA                 0.0876934   -0.5690151   0.4695377
6-24 months   SAS-FoodSuppl   INDIA          0%                   NA                -0.2188516   -0.8138542   0.1809710
