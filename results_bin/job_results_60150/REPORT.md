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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* vagbrth
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
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_vagbrth
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

agecat      studyid         country                        perdiar24    stunted   n_cell      n
----------  --------------  -----------------------------  ----------  --------  -------  -----
Birth       CMIN            BANGLADESH                     0%                 0        6     26
Birth       CMIN            BANGLADESH                     0%                 1        6     26
Birth       CMIN            BANGLADESH                     (0%, 5%]           0        3     26
Birth       CMIN            BANGLADESH                     (0%, 5%]           1        1     26
Birth       CMIN            BANGLADESH                     >5%                0        8     26
Birth       CMIN            BANGLADESH                     >5%                1        2     26
Birth       CONTENT         PERU                           0%                 0        0      2
Birth       CONTENT         PERU                           0%                 1        0      2
Birth       CONTENT         PERU                           (0%, 5%]           0        1      2
Birth       CONTENT         PERU                           (0%, 5%]           1        0      2
Birth       CONTENT         PERU                           >5%                0        1      2
Birth       CONTENT         PERU                           >5%                1        0      2
Birth       EE              PAKISTAN                       0%                 0       88    240
Birth       EE              PAKISTAN                       0%                 1       73    240
Birth       EE              PAKISTAN                       (0%, 5%]           0       52    240
Birth       EE              PAKISTAN                       (0%, 5%]           1       27    240
Birth       EE              PAKISTAN                       >5%                0        0    240
Birth       EE              PAKISTAN                       >5%                1        0    240
Birth       JiVitA-4        BANGLADESH                     0%                 0       50   2823
Birth       JiVitA-4        BANGLADESH                     0%                 1       26   2823
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]           0     1720   2823
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]           1      729   2823
Birth       JiVitA-4        BANGLADESH                     >5%                0      196   2823
Birth       JiVitA-4        BANGLADESH                     >5%                1      102   2823
Birth       MAL-ED          BANGLADESH                     0%                 0       13    231
Birth       MAL-ED          BANGLADESH                     0%                 1        5    231
Birth       MAL-ED          BANGLADESH                     (0%, 5%]           0      112    231
Birth       MAL-ED          BANGLADESH                     (0%, 5%]           1       19    231
Birth       MAL-ED          BANGLADESH                     >5%                0       62    231
Birth       MAL-ED          BANGLADESH                     >5%                1       20    231
Birth       MAL-ED          BRAZIL                         0%                 0       31     65
Birth       MAL-ED          BRAZIL                         0%                 1        3     65
Birth       MAL-ED          BRAZIL                         (0%, 5%]           0       23     65
Birth       MAL-ED          BRAZIL                         (0%, 5%]           1        6     65
Birth       MAL-ED          BRAZIL                         >5%                0        2     65
Birth       MAL-ED          BRAZIL                         >5%                1        0     65
Birth       MAL-ED          INDIA                          0%                 0        4     47
Birth       MAL-ED          INDIA                          0%                 1        1     47
Birth       MAL-ED          INDIA                          (0%, 5%]           0       27     47
Birth       MAL-ED          INDIA                          (0%, 5%]           1        6     47
Birth       MAL-ED          INDIA                          >5%                0        6     47
Birth       MAL-ED          INDIA                          >5%                1        3     47
Birth       MAL-ED          NEPAL                          0%                 0        2     27
Birth       MAL-ED          NEPAL                          0%                 1        0     27
Birth       MAL-ED          NEPAL                          (0%, 5%]           0       19     27
Birth       MAL-ED          NEPAL                          (0%, 5%]           1        0     27
Birth       MAL-ED          NEPAL                          >5%                0        4     27
Birth       MAL-ED          NEPAL                          >5%                1        2     27
Birth       MAL-ED          PERU                           0%                 0       21    233
Birth       MAL-ED          PERU                           0%                 1        0    233
Birth       MAL-ED          PERU                           (0%, 5%]           0       78    233
Birth       MAL-ED          PERU                           (0%, 5%]           1       11    233
Birth       MAL-ED          PERU                           >5%                0      108    233
Birth       MAL-ED          PERU                           >5%                1       15    233
Birth       MAL-ED          SOUTH AFRICA                   0%                 0       39    113
Birth       MAL-ED          SOUTH AFRICA                   0%                 1        3    113
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]           0       64    113
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        6    113
Birth       MAL-ED          SOUTH AFRICA                   >5%                0        1    113
Birth       MAL-ED          SOUTH AFRICA                   >5%                1        0    113
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        7    125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        2    125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       66    125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       19    125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       29    125
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        2    125
Birth       NIH-Birth       BANGLADESH                     0%                 0       41    605
Birth       NIH-Birth       BANGLADESH                     0%                 1       10    605
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]           0      286    605
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]           1       59    605
Birth       NIH-Birth       BANGLADESH                     >5%                0      182    605
Birth       NIH-Birth       BANGLADESH                     >5%                1       27    605
Birth       NIH-Crypto      BANGLADESH                     0%                 0      129    732
Birth       NIH-Crypto      BANGLADESH                     0%                 1       22    732
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]           0      338    732
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]           1       48    732
Birth       NIH-Crypto      BANGLADESH                     >5%                0      164    732
Birth       NIH-Crypto      BANGLADESH                     >5%                1       31    732
Birth       PROVIDE         BANGLADESH                     0%                 0       51    539
Birth       PROVIDE         BANGLADESH                     0%                 1        4    539
Birth       PROVIDE         BANGLADESH                     (0%, 5%]           0      302    539
Birth       PROVIDE         BANGLADESH                     (0%, 5%]           1       25    539
Birth       PROVIDE         BANGLADESH                     >5%                0      138    539
Birth       PROVIDE         BANGLADESH                     >5%                1       19    539
6 months    CMIN            BANGLADESH                     0%                 0        2    243
6 months    CMIN            BANGLADESH                     0%                 1        0    243
6 months    CMIN            BANGLADESH                     (0%, 5%]           0       66    243
6 months    CMIN            BANGLADESH                     (0%, 5%]           1       46    243
6 months    CMIN            BANGLADESH                     >5%                0       82    243
6 months    CMIN            BANGLADESH                     >5%                1       47    243
6 months    CONTENT         PERU                           0%                 0        5    215
6 months    CONTENT         PERU                           0%                 1        1    215
6 months    CONTENT         PERU                           (0%, 5%]           0      135    215
6 months    CONTENT         PERU                           (0%, 5%]           1        7    215
6 months    CONTENT         PERU                           >5%                0       66    215
6 months    CONTENT         PERU                           >5%                1        1    215
6 months    EE              PAKISTAN                       0%                 0      130    373
6 months    EE              PAKISTAN                       0%                 1      126    373
6 months    EE              PAKISTAN                       (0%, 5%]           0       60    373
6 months    EE              PAKISTAN                       (0%, 5%]           1       57    373
6 months    EE              PAKISTAN                       >5%                0        0    373
6 months    EE              PAKISTAN                       >5%                1        0    373
6 months    Guatemala BSC   GUATEMALA                      0%                 0       21    299
6 months    Guatemala BSC   GUATEMALA                      0%                 1        8    299
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]           0       51    299
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]           1       19    299
6 months    Guatemala BSC   GUATEMALA                      >5%                0      137    299
6 months    Guatemala BSC   GUATEMALA                      >5%                1       63    299
6 months    JiVitA-4        BANGLADESH                     0%                 0      120   4831
6 months    JiVitA-4        BANGLADESH                     0%                 1       36   4831
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]           0     3120   4831
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]           1     1033   4831
6 months    JiVitA-4        BANGLADESH                     >5%                0      370   4831
6 months    JiVitA-4        BANGLADESH                     >5%                1      152   4831
6 months    MAL-ED          BANGLADESH                     0%                 0        5    241
6 months    MAL-ED          BANGLADESH                     0%                 1        1    241
6 months    MAL-ED          BANGLADESH                     (0%, 5%]           0      119    241
6 months    MAL-ED          BANGLADESH                     (0%, 5%]           1       23    241
6 months    MAL-ED          BANGLADESH                     >5%                0       73    241
6 months    MAL-ED          BANGLADESH                     >5%                1       20    241
6 months    MAL-ED          BRAZIL                         0%                 0      103    209
6 months    MAL-ED          BRAZIL                         0%                 1        3    209
6 months    MAL-ED          BRAZIL                         (0%, 5%]           0       98    209
6 months    MAL-ED          BRAZIL                         (0%, 5%]           1        3    209
6 months    MAL-ED          BRAZIL                         >5%                0        2    209
6 months    MAL-ED          BRAZIL                         >5%                1        0    209
6 months    MAL-ED          INDIA                          0%                 0        3    236
6 months    MAL-ED          INDIA                          0%                 1        0    236
6 months    MAL-ED          INDIA                          (0%, 5%]           0      156    236
6 months    MAL-ED          INDIA                          (0%, 5%]           1       35    236
6 months    MAL-ED          INDIA                          >5%                0       32    236
6 months    MAL-ED          INDIA                          >5%                1       10    236
6 months    MAL-ED          NEPAL                          0%                 0       13    236
6 months    MAL-ED          NEPAL                          0%                 1        1    236
6 months    MAL-ED          NEPAL                          (0%, 5%]           0      137    236
6 months    MAL-ED          NEPAL                          (0%, 5%]           1        6    236
6 months    MAL-ED          NEPAL                          >5%                0       74    236
6 months    MAL-ED          NEPAL                          >5%                1        5    236
6 months    MAL-ED          PERU                           0%                 0        5    273
6 months    MAL-ED          PERU                           0%                 1        2    273
6 months    MAL-ED          PERU                           (0%, 5%]           0       88    273
6 months    MAL-ED          PERU                           (0%, 5%]           1       21    273
6 months    MAL-ED          PERU                           >5%                0      120    273
6 months    MAL-ED          PERU                           >5%                1       37    273
6 months    MAL-ED          SOUTH AFRICA                   0%                 0       60    254
6 months    MAL-ED          SOUTH AFRICA                   0%                 1       18    254
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      142    254
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       32    254
6 months    MAL-ED          SOUTH AFRICA                   >5%                0        2    254
6 months    MAL-ED          SOUTH AFRICA                   >5%                1        0    254
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        5    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        4    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      131    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       46    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       52    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        9    247
6 months    NIH-Birth       BANGLADESH                     0%                 0       10    537
6 months    NIH-Birth       BANGLADESH                     0%                 1        5    537
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]           0      247    537
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]           1       92    537
6 months    NIH-Birth       BANGLADESH                     >5%                0      136    537
6 months    NIH-Birth       BANGLADESH                     >5%                1       47    537
6 months    NIH-Crypto      BANGLADESH                     0%                 0      108    715
6 months    NIH-Crypto      BANGLADESH                     0%                 1       26    715
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]           0      306    715
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]           1       80    715
6 months    NIH-Crypto      BANGLADESH                     >5%                0      151    715
6 months    NIH-Crypto      BANGLADESH                     >5%                1       44    715
6 months    PROVIDE         BANGLADESH                     0%                 0        9    604
6 months    PROVIDE         BANGLADESH                     0%                 1        3    604
6 months    PROVIDE         BANGLADESH                     (0%, 5%]           0      348    604
6 months    PROVIDE         BANGLADESH                     (0%, 5%]           1       61    604
6 months    PROVIDE         BANGLADESH                     >5%                0      151    604
6 months    PROVIDE         BANGLADESH                     >5%                1       32    604
6 months    SAS-FoodSuppl   INDIA                          0%                 0       38    380
6 months    SAS-FoodSuppl   INDIA                          0%                 1       35    380
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]           0       28    380
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]           1       18    380
6 months    SAS-FoodSuppl   INDIA                          >5%                0      151    380
6 months    SAS-FoodSuppl   INDIA                          >5%                1      110    380
24 months   CMIN            BANGLADESH                     0%                 0        2    242
24 months   CMIN            BANGLADESH                     0%                 1        1    242
24 months   CMIN            BANGLADESH                     (0%, 5%]           0       38    242
24 months   CMIN            BANGLADESH                     (0%, 5%]           1       76    242
24 months   CMIN            BANGLADESH                     >5%                0       37    242
24 months   CMIN            BANGLADESH                     >5%                1       88    242
24 months   CONTENT         PERU                           0%                 0        3    164
24 months   CONTENT         PERU                           0%                 1        1    164
24 months   CONTENT         PERU                           (0%, 5%]           0      100    164
24 months   CONTENT         PERU                           (0%, 5%]           1        8    164
24 months   CONTENT         PERU                           >5%                0       48    164
24 months   CONTENT         PERU                           >5%                1        4    164
24 months   EE              PAKISTAN                       0%                 0       36    167
24 months   EE              PAKISTAN                       0%                 1       79    167
24 months   EE              PAKISTAN                       (0%, 5%]           0       13    167
24 months   EE              PAKISTAN                       (0%, 5%]           1       39    167
24 months   EE              PAKISTAN                       >5%                0        0    167
24 months   EE              PAKISTAN                       >5%                1        0    167
24 months   JiVitA-4        BANGLADESH                     0%                 0       97   4752
24 months   JiVitA-4        BANGLADESH                     0%                 1       68   4752
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]           0     2492   4752
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]           1     1602   4752
24 months   JiVitA-4        BANGLADESH                     >5%                0      258   4752
24 months   JiVitA-4        BANGLADESH                     >5%                1      235   4752
24 months   MAL-ED          BANGLADESH                     0%                 0        3    212
24 months   MAL-ED          BANGLADESH                     0%                 1        3    212
24 months   MAL-ED          BANGLADESH                     (0%, 5%]           0       74    212
24 months   MAL-ED          BANGLADESH                     (0%, 5%]           1       56    212
24 months   MAL-ED          BANGLADESH                     >5%                0       34    212
24 months   MAL-ED          BANGLADESH                     >5%                1       42    212
24 months   MAL-ED          BRAZIL                         0%                 0       74    169
24 months   MAL-ED          BRAZIL                         0%                 1        2    169
24 months   MAL-ED          BRAZIL                         (0%, 5%]           0       86    169
24 months   MAL-ED          BRAZIL                         (0%, 5%]           1        5    169
24 months   MAL-ED          BRAZIL                         >5%                0        2    169
24 months   MAL-ED          BRAZIL                         >5%                1        0    169
24 months   MAL-ED          INDIA                          0%                 0        2    227
24 months   MAL-ED          INDIA                          0%                 1        1    227
24 months   MAL-ED          INDIA                          (0%, 5%]           0      103    227
24 months   MAL-ED          INDIA                          (0%, 5%]           1       80    227
24 months   MAL-ED          INDIA                          >5%                0       25    227
24 months   MAL-ED          INDIA                          >5%                1       16    227
24 months   MAL-ED          NEPAL                          0%                 0       10    228
24 months   MAL-ED          NEPAL                          0%                 1        2    228
24 months   MAL-ED          NEPAL                          (0%, 5%]           0      111    228
24 months   MAL-ED          NEPAL                          (0%, 5%]           1       29    228
24 months   MAL-ED          NEPAL                          >5%                0       57    228
24 months   MAL-ED          NEPAL                          >5%                1       19    228
24 months   MAL-ED          PERU                           0%                 0        1    201
24 months   MAL-ED          PERU                           0%                 1        0    201
24 months   MAL-ED          PERU                           (0%, 5%]           0       49    201
24 months   MAL-ED          PERU                           (0%, 5%]           1       35    201
24 months   MAL-ED          PERU                           >5%                0       77    201
24 months   MAL-ED          PERU                           >5%                1       39    201
24 months   MAL-ED          SOUTH AFRICA                   0%                 0       48    238
24 months   MAL-ED          SOUTH AFRICA                   0%                 1       23    238
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      105    238
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       61    238
24 months   MAL-ED          SOUTH AFRICA                   >5%                0        1    238
24 months   MAL-ED          SOUTH AFRICA                   >5%                1        0    238
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        1    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        5    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       43    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1      113    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       15    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1       37    214
24 months   NIH-Birth       BANGLADESH                     0%                 0        4    429
24 months   NIH-Birth       BANGLADESH                     0%                 1        1    429
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]           0      123    429
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]           1      156    429
24 months   NIH-Birth       BANGLADESH                     >5%                0       58    429
24 months   NIH-Birth       BANGLADESH                     >5%                1       87    429
24 months   NIH-Crypto      BANGLADESH                     0%                 0       95    514
24 months   NIH-Crypto      BANGLADESH                     0%                 1       28    514
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]           0      206    514
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]           1       70    514
24 months   NIH-Crypto      BANGLADESH                     >5%                0       81    514
24 months   NIH-Crypto      BANGLADESH                     >5%                1       34    514
24 months   PROVIDE         BANGLADESH                     0%                 0        5    578
24 months   PROVIDE         BANGLADESH                     0%                 1        4    578
24 months   PROVIDE         BANGLADESH                     (0%, 5%]           0      269    578
24 months   PROVIDE         BANGLADESH                     (0%, 5%]           1      126    578
24 months   PROVIDE         BANGLADESH                     >5%                0      114    578
24 months   PROVIDE         BANGLADESH                     >5%                1       60    578


The following strata were considered:

* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/932cf05c-d4ef-4a67-9c0f-320bec76979e/beca9d1c-2702-4c70-b7d9-65de50f7a16b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/932cf05c-d4ef-4a67-9c0f-320bec76979e/beca9d1c-2702-4c70-b7d9-65de50f7a16b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/932cf05c-d4ef-4a67-9c0f-320bec76979e/beca9d1c-2702-4c70-b7d9-65de50f7a16b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/932cf05c-d4ef-4a67-9c0f-320bec76979e/beca9d1c-2702-4c70-b7d9-65de50f7a16b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-4        BANGLADESH   0%                   NA                0.3356894   0.1830861   0.4882926
Birth       JiVitA-4        BANGLADESH   (0%, 5%]             NA                0.2979961   0.2768430   0.3191492
Birth       JiVitA-4        BANGLADESH   >5%                  NA                0.3409862   0.2809878   0.4009846
Birth       MAL-ED          BANGLADESH   0%                   NA                0.2777778   0.0704115   0.4851440
Birth       MAL-ED          BANGLADESH   (0%, 5%]             NA                0.1450382   0.0846059   0.2054705
Birth       MAL-ED          BANGLADESH   >5%                  NA                0.2439024   0.1507530   0.3370519
Birth       NIH-Birth       BANGLADESH   0%                   NA                0.1832398   0.0825059   0.2839738
Birth       NIH-Birth       BANGLADESH   (0%, 5%]             NA                0.1701296   0.1302095   0.2100497
Birth       NIH-Birth       BANGLADESH   >5%                  NA                0.1248726   0.0796937   0.1700516
Birth       NIH-Crypto      BANGLADESH   0%                   NA                0.1405845   0.1061005   0.1750686
Birth       NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.1339179   0.1057846   0.1620512
Birth       NIH-Crypto      BANGLADESH   >5%                  NA                0.1427842   0.1099266   0.1756418
6 months    Guatemala BSC   GUATEMALA    0%                   NA                0.2758621   0.1129200   0.4388041
6 months    Guatemala BSC   GUATEMALA    (0%, 5%]             NA                0.2714286   0.1670791   0.3757781
6 months    Guatemala BSC   GUATEMALA    >5%                  NA                0.3150000   0.2505146   0.3794854
6 months    JiVitA-4        BANGLADESH   0%                   NA                0.2361825   0.1637280   0.3086370
6 months    JiVitA-4        BANGLADESH   (0%, 5%]             NA                0.2496617   0.2343422   0.2649811
6 months    JiVitA-4        BANGLADESH   >5%                  NA                0.2789925   0.2350813   0.3229037
6 months    NIH-Birth       BANGLADESH   0%                   NA                0.3333333   0.0945517   0.5721150
6 months    NIH-Birth       BANGLADESH   (0%, 5%]             NA                0.2713864   0.2240064   0.3187665
6 months    NIH-Birth       BANGLADESH   >5%                  NA                0.2568306   0.1934736   0.3201876
6 months    NIH-Crypto      BANGLADESH   0%                   NA                0.1930868   0.1355149   0.2506587
6 months    NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.2162740   0.1768189   0.2557291
6 months    NIH-Crypto      BANGLADESH   >5%                  NA                0.2086124   0.1541782   0.2630465
6 months    SAS-FoodSuppl   INDIA        0%                   NA                0.4876579   0.3693785   0.6059372
6 months    SAS-FoodSuppl   INDIA        (0%, 5%]             NA                0.4011701   0.2556858   0.5466544
6 months    SAS-FoodSuppl   INDIA        >5%                  NA                0.4215290   0.3614721   0.4815859
24 months   JiVitA-4        BANGLADESH   0%                   NA                0.4509841   0.3633651   0.5386031
24 months   JiVitA-4        BANGLADESH   (0%, 5%]             NA                0.3928430   0.3748166   0.4108694
24 months   JiVitA-4        BANGLADESH   >5%                  NA                0.4592219   0.4098119   0.5086320
24 months   NIH-Crypto      BANGLADESH   0%                   NA                0.2410700   0.1661311   0.3160089
24 months   NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.2524451   0.2013564   0.3035338
24 months   NIH-Crypto      BANGLADESH   >5%                  NA                0.2823217   0.1997950   0.3648485


### Parameter: E(Y)


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-4        BANGLADESH   NA                   NA                0.3035778   0.2836422   0.3235133
Birth       MAL-ED          BANGLADESH   NA                   NA                0.1904762   0.1397281   0.2412242
Birth       NIH-Birth       BANGLADESH   NA                   NA                0.1586777   0.1295391   0.1878163
Birth       NIH-Crypto      BANGLADESH   NA                   NA                0.1379781   0.1129774   0.1629789
6 months    Guatemala BSC   GUATEMALA    NA                   NA                0.3010033   0.2489243   0.3530824
6 months    JiVitA-4        BANGLADESH   NA                   NA                0.2527427   0.2386864   0.2667990
6 months    NIH-Birth       BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto      BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    SAS-FoodSuppl   INDIA        NA                   NA                0.4289474   0.3791199   0.4787748
24 months   JiVitA-4        BANGLADESH   NA                   NA                0.4008838   0.3839145   0.4178532
24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140


### Parameter: RR


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-4        BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       JiVitA-4        BANGLADESH   (0%, 5%]             0%                0.8877138   0.5591162   1.409431
Birth       JiVitA-4        BANGLADESH   >5%                  0%                1.0157789   0.6248236   1.651357
Birth       MAL-ED          BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       MAL-ED          BANGLADESH   (0%, 5%]             0%                0.5221374   0.2220726   1.227650
Birth       MAL-ED          BANGLADESH   >5%                  0%                0.8780488   0.3796172   2.030913
Birth       NIH-Birth       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       NIH-Birth       BANGLADESH   (0%, 5%]             0%                0.9284533   0.5103323   1.689145
Birth       NIH-Birth       BANGLADESH   >5%                  0%                0.6814710   0.3527108   1.316667
Birth       NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       NIH-Crypto      BANGLADESH   (0%, 5%]             0%                0.9525795   0.7509611   1.208328
Birth       NIH-Crypto      BANGLADESH   >5%                  0%                1.0156466   0.7908324   1.304370
6 months    Guatemala BSC   GUATEMALA    0%                   0%                1.0000000   1.0000000   1.000000
6 months    Guatemala BSC   GUATEMALA    (0%, 5%]             0%                0.9839286   0.4862853   1.990838
6 months    Guatemala BSC   GUATEMALA    >5%                  0%                1.1418750   0.6111193   2.133591
6 months    JiVitA-4        BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    JiVitA-4        BANGLADESH   (0%, 5%]             0%                1.0570711   0.7736374   1.444345
6 months    JiVitA-4        BANGLADESH   >5%                  0%                1.1812582   0.8338741   1.673359
6 months    NIH-Birth       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    NIH-Birth       BANGLADESH   (0%, 5%]             0%                0.8141593   0.3894920   1.701846
6 months    NIH-Birth       BANGLADESH   >5%                  0%                0.7704918   0.3611877   1.643626
6 months    NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    NIH-Crypto      BANGLADESH   (0%, 5%]             0%                1.1200871   0.8013689   1.565565
6 months    NIH-Crypto      BANGLADESH   >5%                  0%                1.0804073   0.7366966   1.584478
6 months    SAS-FoodSuppl   INDIA        0%                   0%                1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl   INDIA        (0%, 5%]             0%                0.8226466   0.5318223   1.272507
6 months    SAS-FoodSuppl   INDIA        >5%                  0%                0.8643950   0.6523688   1.145332
24 months   JiVitA-4        BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   JiVitA-4        BANGLADESH   (0%, 5%]             0%                0.8710795   0.7119142   1.065830
24 months   JiVitA-4        BANGLADESH   >5%                  0%                1.0182663   0.8177014   1.268026
24 months   NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   NIH-Crypto      BANGLADESH   (0%, 5%]             0%                1.0471861   0.7236102   1.515455
24 months   NIH-Crypto      BANGLADESH   >5%                  0%                1.1711194   0.7654298   1.791831


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-4        BANGLADESH   0%                   NA                -0.0321116   -0.1820126   0.1177894
Birth       MAL-ED          BANGLADESH   0%                   NA                -0.0873016   -0.2844683   0.1098651
Birth       NIH-Birth       BANGLADESH   0%                   NA                -0.0245621   -0.1204342   0.0713099
Birth       NIH-Crypto      BANGLADESH   0%                   NA                -0.0026064   -0.0272208   0.0220080
6 months    Guatemala BSC   GUATEMALA    0%                   NA                 0.0251413   -0.1301396   0.1804222
6 months    JiVitA-4        BANGLADESH   0%                   NA                 0.0165602   -0.0548270   0.0879475
6 months    NIH-Birth       BANGLADESH   0%                   NA                -0.0651769   -0.3002043   0.1698505
6 months    NIH-Crypto      BANGLADESH   0%                   NA                 0.0167034   -0.0348596   0.0682664
6 months    SAS-FoodSuppl   INDIA        0%                   NA                -0.0587105   -0.1648548   0.0474338
24 months   JiVitA-4        BANGLADESH   0%                   NA                -0.0501003   -0.1369829   0.0367824
24 months   NIH-Crypto      BANGLADESH   0%                   NA                 0.0157394   -0.0501385   0.0816172


### Parameter: PAF


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-4        BANGLADESH   0%                   NA                -0.1057773   -0.7275389   0.2922050
Birth       MAL-ED          BANGLADESH   0%                   NA                -0.4583333   -1.9610478   0.2817623
Birth       NIH-Birth       BANGLADESH   0%                   NA                -0.1547926   -0.9488402   0.3157232
Birth       NIH-Crypto      BANGLADESH   0%                   NA                -0.0188899   -0.2140311   0.1448846
6 months    Guatemala BSC   GUATEMALA    0%                   NA                 0.0835249   -0.6090216   0.4779892
6 months    JiVitA-4        BANGLADESH   0%                   NA                 0.0655220   -0.2641841   0.3092390
6 months    NIH-Birth       BANGLADESH   0%                   NA                -0.2430556   -1.5158419   0.3858171
6 months    NIH-Crypto      BANGLADESH   0%                   NA                 0.0796197   -0.2013144   0.2948558
6 months    SAS-FoodSuppl   INDIA        0%                   NA                -0.1368711   -0.4135049   0.0856234
24 months   JiVitA-4        BANGLADESH   0%                   NA                -0.1249745   -0.3644113   0.0724441
24 months   NIH-Crypto      BANGLADESH   0%                   NA                 0.0612881   -0.2335539   0.2856574
