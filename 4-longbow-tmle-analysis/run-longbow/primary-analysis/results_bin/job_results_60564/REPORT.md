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

agecat        studyid         country                        perdiar24    ever_co   n_cell      n
------------  --------------  -----------------------------  ----------  --------  -------  -----
0-24 months   CMIN            BANGLADESH                     0%                 0       10    271
0-24 months   CMIN            BANGLADESH                     0%                 1        0    271
0-24 months   CMIN            BANGLADESH                     (0%, 5%]           0       75    271
0-24 months   CMIN            BANGLADESH                     (0%, 5%]           1       46    271
0-24 months   CMIN            BANGLADESH                     >5%                0       94    271
0-24 months   CMIN            BANGLADESH                     >5%                1       46    271
0-24 months   CONTENT         PERU                           0%                 0        6    215
0-24 months   CONTENT         PERU                           0%                 1        0    215
0-24 months   CONTENT         PERU                           (0%, 5%]           0      142    215
0-24 months   CONTENT         PERU                           (0%, 5%]           1        0    215
0-24 months   CONTENT         PERU                           >5%                0       67    215
0-24 months   CONTENT         PERU                           >5%                1        0    215
0-24 months   EE              PAKISTAN                       0%                 0      141    379
0-24 months   EE              PAKISTAN                       0%                 1      120    379
0-24 months   EE              PAKISTAN                       (0%, 5%]           0       68    379
0-24 months   EE              PAKISTAN                       (0%, 5%]           1       50    379
0-24 months   EE              PAKISTAN                       >5%                0        0    379
0-24 months   EE              PAKISTAN                       >5%                1        0    379
0-24 months   Guatemala BSC   GUATEMALA                      0%                 0       31    309
0-24 months   Guatemala BSC   GUATEMALA                      0%                 1        2    309
0-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]           0       64    309
0-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]           1        7    309
0-24 months   Guatemala BSC   GUATEMALA                      >5%                0      191    309
0-24 months   Guatemala BSC   GUATEMALA                      >5%                1       14    309
0-24 months   iLiNS-Zinc      BURKINA FASO                   0%                 0      309   2449
0-24 months   iLiNS-Zinc      BURKINA FASO                   0%                 1       48   2449
0-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]           0     1170   2449
0-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]           1      154   2449
0-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                0      671   2449
0-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                1       97   2449
0-24 months   JiVitA-4        BANGLADESH                     0%                 0      185   5442
0-24 months   JiVitA-4        BANGLADESH                     0%                 1       35   5442
0-24 months   JiVitA-4        BANGLADESH                     (0%, 5%]           0     3921   5442
0-24 months   JiVitA-4        BANGLADESH                     (0%, 5%]           1      711   5442
0-24 months   JiVitA-4        BANGLADESH                     >5%                0      458   5442
0-24 months   JiVitA-4        BANGLADESH                     >5%                1      132   5442
0-24 months   MAL-ED          BANGLADESH                     0%                 0       18    263
0-24 months   MAL-ED          BANGLADESH                     0%                 1        2    263
0-24 months   MAL-ED          BANGLADESH                     (0%, 5%]           0      125    263
0-24 months   MAL-ED          BANGLADESH                     (0%, 5%]           1       23    263
0-24 months   MAL-ED          BANGLADESH                     >5%                0       81    263
0-24 months   MAL-ED          BANGLADESH                     >5%                1       14    263
0-24 months   MAL-ED          BRAZIL                         0%                 0      130    233
0-24 months   MAL-ED          BRAZIL                         0%                 1        0    233
0-24 months   MAL-ED          BRAZIL                         (0%, 5%]           0       98    233
0-24 months   MAL-ED          BRAZIL                         (0%, 5%]           1        3    233
0-24 months   MAL-ED          BRAZIL                         >5%                0        2    233
0-24 months   MAL-ED          BRAZIL                         >5%                1        0    233
0-24 months   MAL-ED          INDIA                          0%                 0       13    251
0-24 months   MAL-ED          INDIA                          0%                 1        1    251
0-24 months   MAL-ED          INDIA                          (0%, 5%]           0      149    251
0-24 months   MAL-ED          INDIA                          (0%, 5%]           1       44    251
0-24 months   MAL-ED          INDIA                          >5%                0       35    251
0-24 months   MAL-ED          INDIA                          >5%                1        9    251
0-24 months   MAL-ED          NEPAL                          0%                 0       16    240
0-24 months   MAL-ED          NEPAL                          0%                 1        1    240
0-24 months   MAL-ED          NEPAL                          (0%, 5%]           0      129    240
0-24 months   MAL-ED          NEPAL                          (0%, 5%]           1       15    240
0-24 months   MAL-ED          NEPAL                          >5%                0       73    240
0-24 months   MAL-ED          NEPAL                          >5%                1        6    240
0-24 months   MAL-ED          PERU                           0%                 0       28    302
0-24 months   MAL-ED          PERU                           0%                 1        0    302
0-24 months   MAL-ED          PERU                           (0%, 5%]           0      108    302
0-24 months   MAL-ED          PERU                           (0%, 5%]           1        5    302
0-24 months   MAL-ED          PERU                           >5%                0      154    302
0-24 months   MAL-ED          PERU                           >5%                1        7    302
0-24 months   MAL-ED          SOUTH AFRICA                   0%                 0      110    303
0-24 months   MAL-ED          SOUTH AFRICA                   0%                 1        8    303
0-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      167    303
0-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       15    303
0-24 months   MAL-ED          SOUTH AFRICA                   >5%                0        3    303
0-24 months   MAL-ED          SOUTH AFRICA                   >5%                1        0    303
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0       13    261
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        3    261
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      169    261
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       14    261
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       56    261
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        6    261
0-24 months   NIH-Birth       BANGLADESH                     0%                 0       49    621
0-24 months   NIH-Birth       BANGLADESH                     0%                 1        1    621
0-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]           0      271    621
0-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]           1       87    621
0-24 months   NIH-Birth       BANGLADESH                     >5%                0      164    621
0-24 months   NIH-Birth       BANGLADESH                     >5%                1       49    621
0-24 months   NIH-Crypto      BANGLADESH                     0%                 0      140    758
0-24 months   NIH-Crypto      BANGLADESH                     0%                 1       13    758
0-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]           0      362    758
0-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]           1       36    758
0-24 months   NIH-Crypto      BANGLADESH                     >5%                0      185    758
0-24 months   NIH-Crypto      BANGLADESH                     >5%                1       22    758
0-24 months   PROVIDE         BANGLADESH                     0%                 0       66    700
0-24 months   PROVIDE         BANGLADESH                     0%                 1        3    700
0-24 months   PROVIDE         BANGLADESH                     (0%, 5%]           0      371    700
0-24 months   PROVIDE         BANGLADESH                     (0%, 5%]           1       59    700
0-24 months   PROVIDE         BANGLADESH                     >5%                0      173    700
0-24 months   PROVIDE         BANGLADESH                     >5%                1       28    700
0-24 months   SAS-FoodSuppl   INDIA                          0%                 0       48    418
0-24 months   SAS-FoodSuppl   INDIA                          0%                 1       36    418
0-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]           0       33    418
0-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]           1       14    418
0-24 months   SAS-FoodSuppl   INDIA                          >5%                0      182    418
0-24 months   SAS-FoodSuppl   INDIA                          >5%                1      105    418
0-6 months    CMIN            BANGLADESH                     0%                 0       10    271
0-6 months    CMIN            BANGLADESH                     0%                 1        0    271
0-6 months    CMIN            BANGLADESH                     (0%, 5%]           0      112    271
0-6 months    CMIN            BANGLADESH                     (0%, 5%]           1        9    271
0-6 months    CMIN            BANGLADESH                     >5%                0      134    271
0-6 months    CMIN            BANGLADESH                     >5%                1        6    271
0-6 months    CONTENT         PERU                           0%                 0        6    215
0-6 months    CONTENT         PERU                           0%                 1        0    215
0-6 months    CONTENT         PERU                           (0%, 5%]           0      142    215
0-6 months    CONTENT         PERU                           (0%, 5%]           1        0    215
0-6 months    CONTENT         PERU                           >5%                0       67    215
0-6 months    CONTENT         PERU                           >5%                1        0    215
0-6 months    EE              PAKISTAN                       0%                 0      219    379
0-6 months    EE              PAKISTAN                       0%                 1       42    379
0-6 months    EE              PAKISTAN                       (0%, 5%]           0      103    379
0-6 months    EE              PAKISTAN                       (0%, 5%]           1       15    379
0-6 months    EE              PAKISTAN                       >5%                0        0    379
0-6 months    EE              PAKISTAN                       >5%                1        0    379
0-6 months    Guatemala BSC   GUATEMALA                      0%                 0       29    289
0-6 months    Guatemala BSC   GUATEMALA                      0%                 1        1    289
0-6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]           0       63    289
0-6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]           1        3    289
0-6 months    Guatemala BSC   GUATEMALA                      >5%                0      189    289
0-6 months    Guatemala BSC   GUATEMALA                      >5%                1        4    289
0-6 months    JiVitA-4        BANGLADESH                     0%                 0      168   5092
0-6 months    JiVitA-4        BANGLADESH                     0%                 1        7   5092
0-6 months    JiVitA-4        BANGLADESH                     (0%, 5%]           0     4259   5092
0-6 months    JiVitA-4        BANGLADESH                     (0%, 5%]           1      108   5092
0-6 months    JiVitA-4        BANGLADESH                     >5%                0      530   5092
0-6 months    JiVitA-4        BANGLADESH                     >5%                1       20   5092
0-6 months    MAL-ED          BANGLADESH                     0%                 0       20    263
0-6 months    MAL-ED          BANGLADESH                     0%                 1        0    263
0-6 months    MAL-ED          BANGLADESH                     (0%, 5%]           0      145    263
0-6 months    MAL-ED          BANGLADESH                     (0%, 5%]           1        3    263
0-6 months    MAL-ED          BANGLADESH                     >5%                0       89    263
0-6 months    MAL-ED          BANGLADESH                     >5%                1        6    263
0-6 months    MAL-ED          BRAZIL                         0%                 0      130    233
0-6 months    MAL-ED          BRAZIL                         0%                 1        0    233
0-6 months    MAL-ED          BRAZIL                         (0%, 5%]           0      100    233
0-6 months    MAL-ED          BRAZIL                         (0%, 5%]           1        1    233
0-6 months    MAL-ED          BRAZIL                         >5%                0        2    233
0-6 months    MAL-ED          BRAZIL                         >5%                1        0    233
0-6 months    MAL-ED          INDIA                          0%                 0       13    251
0-6 months    MAL-ED          INDIA                          0%                 1        1    251
0-6 months    MAL-ED          INDIA                          (0%, 5%]           0      180    251
0-6 months    MAL-ED          INDIA                          (0%, 5%]           1       13    251
0-6 months    MAL-ED          INDIA                          >5%                0       39    251
0-6 months    MAL-ED          INDIA                          >5%                1        5    251
0-6 months    MAL-ED          NEPAL                          0%                 0       16    240
0-6 months    MAL-ED          NEPAL                          0%                 1        1    240
0-6 months    MAL-ED          NEPAL                          (0%, 5%]           0      138    240
0-6 months    MAL-ED          NEPAL                          (0%, 5%]           1        6    240
0-6 months    MAL-ED          NEPAL                          >5%                0       78    240
0-6 months    MAL-ED          NEPAL                          >5%                1        1    240
0-6 months    MAL-ED          PERU                           0%                 0       28    302
0-6 months    MAL-ED          PERU                           0%                 1        0    302
0-6 months    MAL-ED          PERU                           (0%, 5%]           0      112    302
0-6 months    MAL-ED          PERU                           (0%, 5%]           1        1    302
0-6 months    MAL-ED          PERU                           >5%                0      160    302
0-6 months    MAL-ED          PERU                           >5%                1        1    302
0-6 months    MAL-ED          SOUTH AFRICA                   0%                 0      116    303
0-6 months    MAL-ED          SOUTH AFRICA                   0%                 1        2    303
0-6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      179    303
0-6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        3    303
0-6 months    MAL-ED          SOUTH AFRICA                   >5%                0        3    303
0-6 months    MAL-ED          SOUTH AFRICA                   >5%                1        0    303
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0       15    261
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        1    261
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      180    261
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        3    261
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       62    261
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        0    261
0-6 months    NIH-Birth       BANGLADESH                     0%                 0       49    619
0-6 months    NIH-Birth       BANGLADESH                     0%                 1        1    619
0-6 months    NIH-Birth       BANGLADESH                     (0%, 5%]           0      330    619
0-6 months    NIH-Birth       BANGLADESH                     (0%, 5%]           1       27    619
0-6 months    NIH-Birth       BANGLADESH                     >5%                0      195    619
0-6 months    NIH-Birth       BANGLADESH                     >5%                1       17    619
0-6 months    NIH-Crypto      BANGLADESH                     0%                 0      150    758
0-6 months    NIH-Crypto      BANGLADESH                     0%                 1        3    758
0-6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]           0      389    758
0-6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]           1        9    758
0-6 months    NIH-Crypto      BANGLADESH                     >5%                0      202    758
0-6 months    NIH-Crypto      BANGLADESH                     >5%                1        5    758
0-6 months    PROVIDE         BANGLADESH                     0%                 0       68    700
0-6 months    PROVIDE         BANGLADESH                     0%                 1        1    700
0-6 months    PROVIDE         BANGLADESH                     (0%, 5%]           0      414    700
0-6 months    PROVIDE         BANGLADESH                     (0%, 5%]           1       16    700
0-6 months    PROVIDE         BANGLADESH                     >5%                0      188    700
0-6 months    PROVIDE         BANGLADESH                     >5%                1       13    700
0-6 months    SAS-FoodSuppl   INDIA                          0%                 0       77    416
0-6 months    SAS-FoodSuppl   INDIA                          0%                 1        6    416
0-6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]           0       42    416
0-6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]           1        5    416
0-6 months    SAS-FoodSuppl   INDIA                          >5%                0      265    416
0-6 months    SAS-FoodSuppl   INDIA                          >5%                1       21    416
6-24 months   CMIN            BANGLADESH                     0%                 0        3    251
6-24 months   CMIN            BANGLADESH                     0%                 1        0    251
6-24 months   CMIN            BANGLADESH                     (0%, 5%]           0       74    251
6-24 months   CMIN            BANGLADESH                     (0%, 5%]           1       42    251
6-24 months   CMIN            BANGLADESH                     >5%                0       88    251
6-24 months   CMIN            BANGLADESH                     >5%                1       44    251
6-24 months   CONTENT         PERU                           0%                 0        6    215
6-24 months   CONTENT         PERU                           0%                 1        0    215
6-24 months   CONTENT         PERU                           (0%, 5%]           0      142    215
6-24 months   CONTENT         PERU                           (0%, 5%]           1        0    215
6-24 months   CONTENT         PERU                           >5%                0       67    215
6-24 months   CONTENT         PERU                           >5%                1        0    215
6-24 months   EE              PAKISTAN                       0%                 0      144    372
6-24 months   EE              PAKISTAN                       0%                 1      110    372
6-24 months   EE              PAKISTAN                       (0%, 5%]           0       72    372
6-24 months   EE              PAKISTAN                       (0%, 5%]           1       46    372
6-24 months   EE              PAKISTAN                       >5%                0        0    372
6-24 months   EE              PAKISTAN                       >5%                1        0    372
6-24 months   Guatemala BSC   GUATEMALA                      0%                 0       21    277
6-24 months   Guatemala BSC   GUATEMALA                      0%                 1        1    277
6-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]           0       62    277
6-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]           1        6    277
6-24 months   Guatemala BSC   GUATEMALA                      >5%                0      176    277
6-24 months   Guatemala BSC   GUATEMALA                      >5%                1       11    277
6-24 months   iLiNS-Zinc      BURKINA FASO                   0%                 0      309   2449
6-24 months   iLiNS-Zinc      BURKINA FASO                   0%                 1       48   2449
6-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]           0     1170   2449
6-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]           1      154   2449
6-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                0      671   2449
6-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                1       97   2449
6-24 months   JiVitA-4        BANGLADESH                     0%                 0      182   5429
6-24 months   JiVitA-4        BANGLADESH                     0%                 1       29   5429
6-24 months   JiVitA-4        BANGLADESH                     (0%, 5%]           0     3980   5429
6-24 months   JiVitA-4        BANGLADESH                     (0%, 5%]           1      648   5429
6-24 months   JiVitA-4        BANGLADESH                     >5%                0      465   5429
6-24 months   JiVitA-4        BANGLADESH                     >5%                1      125   5429
6-24 months   MAL-ED          BANGLADESH                     0%                 0        4    239
6-24 months   MAL-ED          BANGLADESH                     0%                 1        2    239
6-24 months   MAL-ED          BANGLADESH                     (0%, 5%]           0      119    239
6-24 months   MAL-ED          BANGLADESH                     (0%, 5%]           1       23    239
6-24 months   MAL-ED          BANGLADESH                     >5%                0       81    239
6-24 months   MAL-ED          BANGLADESH                     >5%                1       10    239
6-24 months   MAL-ED          BRAZIL                         0%                 0      104    207
6-24 months   MAL-ED          BRAZIL                         0%                 1        0    207
6-24 months   MAL-ED          BRAZIL                         (0%, 5%]           0       99    207
6-24 months   MAL-ED          BRAZIL                         (0%, 5%]           1        2    207
6-24 months   MAL-ED          BRAZIL                         >5%                0        2    207
6-24 months   MAL-ED          BRAZIL                         >5%                1        0    207
6-24 months   MAL-ED          INDIA                          0%                 0        3    235
6-24 months   MAL-ED          INDIA                          0%                 1        0    235
6-24 months   MAL-ED          INDIA                          (0%, 5%]           0      151    235
6-24 months   MAL-ED          INDIA                          (0%, 5%]           1       39    235
6-24 months   MAL-ED          INDIA                          >5%                0       34    235
6-24 months   MAL-ED          INDIA                          >5%                1        8    235
6-24 months   MAL-ED          NEPAL                          0%                 0       14    235
6-24 months   MAL-ED          NEPAL                          0%                 1        0    235
6-24 months   MAL-ED          NEPAL                          (0%, 5%]           0      132    235
6-24 months   MAL-ED          NEPAL                          (0%, 5%]           1       11    235
6-24 months   MAL-ED          NEPAL                          >5%                0       73    235
6-24 months   MAL-ED          NEPAL                          >5%                1        5    235
6-24 months   MAL-ED          PERU                           0%                 0        6    270
6-24 months   MAL-ED          PERU                           0%                 1        0    270
6-24 months   MAL-ED          PERU                           (0%, 5%]           0      103    270
6-24 months   MAL-ED          PERU                           (0%, 5%]           1        4    270
6-24 months   MAL-ED          PERU                           >5%                0      150    270
6-24 months   MAL-ED          PERU                           >5%                1        7    270
6-24 months   MAL-ED          SOUTH AFRICA                   0%                 0       73    259
6-24 months   MAL-ED          SOUTH AFRICA                   0%                 1        6    259
6-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      164    259
6-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       14    259
6-24 months   MAL-ED          SOUTH AFRICA                   >5%                0        2    259
6-24 months   MAL-ED          SOUTH AFRICA                   >5%                1        0    259
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        5    245
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        3    245
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      164    245
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       12    245
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       55    245
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        6    245
6-24 months   NIH-Birth       BANGLADESH                     0%                 0       15    542
6-24 months   NIH-Birth       BANGLADESH                     0%                 1        0    542
6-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]           0      266    542
6-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]           1       77    542
6-24 months   NIH-Birth       BANGLADESH                     >5%                0      147    542
6-24 months   NIH-Birth       BANGLADESH                     >5%                1       37    542
6-24 months   NIH-Crypto      BANGLADESH                     0%                 0      121    730
6-24 months   NIH-Crypto      BANGLADESH                     0%                 1       13    730
6-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]           0      362    730
6-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]           1       32    730
6-24 months   NIH-Crypto      BANGLADESH                     >5%                0      184    730
6-24 months   NIH-Crypto      BANGLADESH                     >5%                1       18    730
6-24 months   PROVIDE         BANGLADESH                     0%                 0        8    614
6-24 months   PROVIDE         BANGLADESH                     0%                 1        2    614
6-24 months   PROVIDE         BANGLADESH                     (0%, 5%]           0      366    614
6-24 months   PROVIDE         BANGLADESH                     (0%, 5%]           1       50    614
6-24 months   PROVIDE         BANGLADESH                     >5%                0      165    614
6-24 months   PROVIDE         BANGLADESH                     >5%                1       23    614
6-24 months   SAS-FoodSuppl   INDIA                          0%                 0       44    401
6-24 months   SAS-FoodSuppl   INDIA                          0%                 1       34    401
6-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]           0       34    401
6-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]           1       13    401
6-24 months   SAS-FoodSuppl   INDIA                          >5%                0      178    401
6-24 months   SAS-FoodSuppl   INDIA                          >5%                1       98    401


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
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
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
![](/tmp/51f7d280-3212-4b60-8d8f-72564443f50e/267f1430-782a-4f2b-9b31-8c023b6cca34/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/51f7d280-3212-4b60-8d8f-72564443f50e/267f1430-782a-4f2b-9b31-8c023b6cca34/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/51f7d280-3212-4b60-8d8f-72564443f50e/267f1430-782a-4f2b-9b31-8c023b6cca34/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/51f7d280-3212-4b60-8d8f-72564443f50e/267f1430-782a-4f2b-9b31-8c023b6cca34/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   iLiNS-Zinc      BURKINA FASO   0%                   NA                0.1340692    0.0784688   0.1896697
0-24 months   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             NA                0.1163300    0.0871826   0.1454775
0-24 months   iLiNS-Zinc      BURKINA FASO   >5%                  NA                0.1246164    0.0857981   0.1634347
0-24 months   JiVitA-4        BANGLADESH     0%                   NA                0.1650274    0.1037492   0.2263055
0-24 months   JiVitA-4        BANGLADESH     (0%, 5%]             NA                0.1545026    0.1426353   0.1663699
0-24 months   JiVitA-4        BANGLADESH     >5%                  NA                0.2081814    0.1727272   0.2436355
0-24 months   NIH-Crypto      BANGLADESH     0%                   NA                0.0842757    0.0404340   0.1281173
0-24 months   NIH-Crypto      BANGLADESH     (0%, 5%]             NA                0.0907316    0.0624604   0.1190027
0-24 months   NIH-Crypto      BANGLADESH     >5%                  NA                0.1051262    0.0633646   0.1468878
0-24 months   SAS-FoodSuppl   INDIA          0%                   NA                0.4255047    0.3186430   0.5323664
0-24 months   SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.3041789    0.1732738   0.4350840
0-24 months   SAS-FoodSuppl   INDIA          >5%                  NA                0.3685892    0.3125428   0.4246356
0-6 months    JiVitA-4        BANGLADESH     0%                   NA                0.0400000   -0.0045040   0.0845040
0-6 months    JiVitA-4        BANGLADESH     (0%, 5%]             NA                0.0247309    0.0192267   0.0302352
0-6 months    JiVitA-4        BANGLADESH     >5%                  NA                0.0363636    0.0188137   0.0539135
0-6 months    SAS-FoodSuppl   INDIA          0%                   NA                0.0722892    0.0165097   0.1280686
0-6 months    SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.1063830    0.0181291   0.1946368
0-6 months    SAS-FoodSuppl   INDIA          >5%                  NA                0.0734266    0.0431606   0.1036925
6-24 months   iLiNS-Zinc      BURKINA FASO   0%                   NA                0.1348622    0.0782438   0.1914806
6-24 months   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             NA                0.1168067    0.0877664   0.1458469
6-24 months   iLiNS-Zinc      BURKINA FASO   >5%                  NA                0.1243538    0.0844907   0.1642169
6-24 months   JiVitA-4        BANGLADESH     0%                   NA                0.1398132    0.0827579   0.1968686
6-24 months   JiVitA-4        BANGLADESH     (0%, 5%]             NA                0.1403968    0.1293580   0.1514356
6-24 months   JiVitA-4        BANGLADESH     >5%                  NA                0.2017526    0.1657004   0.2378048
6-24 months   NIH-Crypto      BANGLADESH     0%                   NA                0.0977191    0.0476376   0.1478006
6-24 months   NIH-Crypto      BANGLADESH     (0%, 5%]             NA                0.0814244    0.0544725   0.1083763
6-24 months   NIH-Crypto      BANGLADESH     >5%                  NA                0.0871174    0.0480686   0.1261661
6-24 months   SAS-FoodSuppl   INDIA          0%                   NA                0.4303030    0.3187255   0.5418806
6-24 months   SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.2683098    0.1362064   0.4004133
6-24 months   SAS-FoodSuppl   INDIA          >5%                  NA                0.3573821    0.3008042   0.4139601


### Parameter: E(Y)


agecat        studyid         country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1220906   0.0961547   0.1480266
0-24 months   JiVitA-4        BANGLADESH     NA                   NA                0.1613377   0.1500062   0.1726692
0-24 months   NIH-Crypto      BANGLADESH     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   SAS-FoodSuppl   INDIA          NA                   NA                0.3708134   0.3244530   0.4171738
0-6 months    JiVitA-4        BANGLADESH     NA                   NA                0.0265122   0.0211694   0.0318550
0-6 months    SAS-FoodSuppl   INDIA          NA                   NA                0.0769231   0.0512858   0.1025603
6-24 months   iLiNS-Zinc      BURKINA FASO   NA                   NA                0.1220906   0.0961547   0.1480266
6-24 months   JiVitA-4        BANGLADESH     NA                   NA                0.1477252   0.1371297   0.1583206
6-24 months   NIH-Crypto      BANGLADESH     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   SAS-FoodSuppl   INDIA          NA                   NA                0.3615960   0.3145115   0.4086805


### Parameter: RR


agecat        studyid         country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc      BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             0%                0.8676861   0.5936005   1.268326
0-24 months   iLiNS-Zinc      BURKINA FASO   >5%                  0%                0.9294925   0.5792135   1.491602
0-24 months   JiVitA-4        BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4        BANGLADESH     (0%, 5%]             0%                0.9362243   0.6402219   1.369081
0-24 months   JiVitA-4        BANGLADESH     >5%                  0%                1.2614961   0.8390025   1.896743
0-24 months   NIH-Crypto      BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto      BANGLADESH     (0%, 5%]             0%                1.0766044   0.5869531   1.974735
0-24 months   NIH-Crypto      BANGLADESH     >5%                  0%                1.2474085   0.6485202   2.399352
0-24 months   SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.7148661   0.4343659   1.176505
0-24 months   SAS-FoodSuppl   INDIA          >5%                  0%                0.8662401   0.6461929   1.161220
0-6 months    JiVitA-4        BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4        BANGLADESH     (0%, 5%]             0%                0.6182734   0.1981035   1.929607
0-6 months    JiVitA-4        BANGLADESH     >5%                  0%                0.9090909   0.2868837   2.880771
0-6 months    SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl   INDIA          (0%, 5%]             0%                1.4716312   0.4739794   4.569182
0-6 months    SAS-FoodSuppl   INDIA          >5%                  0%                1.0157343   0.4235009   2.436161
6-24 months   iLiNS-Zinc      BURKINA FASO   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc      BURKINA FASO   (0%, 5%]             0%                0.8661187   0.5932623   1.264469
6-24 months   iLiNS-Zinc      BURKINA FASO   >5%                  0%                0.9220804   0.5660203   1.502123
6-24 months   JiVitA-4        BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4        BANGLADESH     (0%, 5%]             0%                1.0041739   0.6606931   1.526223
6-24 months   JiVitA-4        BANGLADESH     >5%                  0%                1.4430148   0.9246162   2.252061
6-24 months   NIH-Crypto      BANGLADESH     0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto      BANGLADESH     (0%, 5%]             0%                0.8332498   0.4528059   1.533340
6-24 months   NIH-Crypto      BANGLADESH     >5%                  0%                0.8915082   0.4515692   1.760056
6-24 months   SAS-FoodSuppl   INDIA          0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA          (0%, 5%]             0%                0.6235369   0.3575184   1.087492
6-24 months   SAS-FoodSuppl   INDIA          >5%                  0%                0.8305359   0.6130404   1.125195


### Parameter: PAR


agecat        studyid         country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc      BURKINA FASO   0%                   NA                -0.0119786   -0.0552250   0.0312678
0-24 months   JiVitA-4        BANGLADESH     0%                   NA                -0.0036896   -0.0636937   0.0563145
0-24 months   NIH-Crypto      BANGLADESH     0%                   NA                 0.0093919   -0.0302996   0.0490834
0-24 months   SAS-FoodSuppl   INDIA          0%                   NA                -0.0546913   -0.1496368   0.0402542
0-6 months    JiVitA-4        BANGLADESH     0%                   NA                -0.0134878   -0.0565735   0.0295979
0-6 months    SAS-FoodSuppl   INDIA          0%                   NA                 0.0046339   -0.0456361   0.0549039
6-24 months   iLiNS-Zinc      BURKINA FASO   0%                   NA                -0.0127716   -0.0568187   0.0312756
6-24 months   JiVitA-4        BANGLADESH     0%                   NA                 0.0079119   -0.0483866   0.0642105
6-24 months   NIH-Crypto      BANGLADESH     0%                   NA                -0.0114177   -0.0561952   0.0333598
6-24 months   SAS-FoodSuppl   INDIA          0%                   NA                -0.0687070   -0.1680451   0.0306310


### Parameter: PAF


agecat        studyid         country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc      BURKINA FASO   0%                   NA                -0.0981124   -0.5099122   0.2013769
0-24 months   JiVitA-4        BANGLADESH     0%                   NA                -0.0228689   -0.4713578   0.2889148
0-24 months   NIH-Crypto      BANGLADESH     0%                   NA                 0.1002681   -0.4400816   0.4378669
0-24 months   SAS-FoodSuppl   INDIA          0%                   NA                -0.1474901   -0.4345130   0.0821041
0-6 months    JiVitA-4        BANGLADESH     0%                   NA                -0.5087407   -3.3770372   0.4799453
0-6 months    SAS-FoodSuppl   INDIA          0%                   NA                 0.0602410   -0.8832383   0.5310487
6-24 months   iLiNS-Zinc      BURKINA FASO   0%                   NA                -0.1046071   -0.5241935   0.1994738
6-24 months   JiVitA-4        BANGLADESH     0%                   NA                 0.0535585   -0.4156006   0.3672287
6-24 months   NIH-Crypto      BANGLADESH     0%                   NA                -0.1323005   -0.7895858   0.2835748
6-24 months   SAS-FoodSuppl   INDIA          0%                   NA                -0.1900105   -0.4992187   0.0554247
