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

agecat      studyid         country                        perdiar24    stunted   n_cell      n  outcome_variable 
----------  --------------  -----------------------------  ----------  --------  -------  -----  -----------------
Birth       CMIN            BANGLADESH                     0%                 0        6     26  stunted          
Birth       CMIN            BANGLADESH                     0%                 1        6     26  stunted          
Birth       CMIN            BANGLADESH                     (0%, 5%]           0        3     26  stunted          
Birth       CMIN            BANGLADESH                     (0%, 5%]           1        1     26  stunted          
Birth       CMIN            BANGLADESH                     >5%                0        8     26  stunted          
Birth       CMIN            BANGLADESH                     >5%                1        2     26  stunted          
Birth       CONTENT         PERU                           0%                 0        0      2  stunted          
Birth       CONTENT         PERU                           0%                 1        0      2  stunted          
Birth       CONTENT         PERU                           (0%, 5%]           0        1      2  stunted          
Birth       CONTENT         PERU                           (0%, 5%]           1        0      2  stunted          
Birth       CONTENT         PERU                           >5%                0        1      2  stunted          
Birth       CONTENT         PERU                           >5%                1        0      2  stunted          
Birth       EE              PAKISTAN                       0%                 0       88    240  stunted          
Birth       EE              PAKISTAN                       0%                 1       73    240  stunted          
Birth       EE              PAKISTAN                       (0%, 5%]           0       52    240  stunted          
Birth       EE              PAKISTAN                       (0%, 5%]           1       27    240  stunted          
Birth       EE              PAKISTAN                       >5%                0        0    240  stunted          
Birth       EE              PAKISTAN                       >5%                1        0    240  stunted          
Birth       JiVitA-4        BANGLADESH                     0%                 0       50   2823  stunted          
Birth       JiVitA-4        BANGLADESH                     0%                 1       26   2823  stunted          
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]           0     1720   2823  stunted          
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]           1      729   2823  stunted          
Birth       JiVitA-4        BANGLADESH                     >5%                0      196   2823  stunted          
Birth       JiVitA-4        BANGLADESH                     >5%                1      102   2823  stunted          
Birth       MAL-ED          BANGLADESH                     0%                 0       13    231  stunted          
Birth       MAL-ED          BANGLADESH                     0%                 1        5    231  stunted          
Birth       MAL-ED          BANGLADESH                     (0%, 5%]           0      112    231  stunted          
Birth       MAL-ED          BANGLADESH                     (0%, 5%]           1       19    231  stunted          
Birth       MAL-ED          BANGLADESH                     >5%                0       62    231  stunted          
Birth       MAL-ED          BANGLADESH                     >5%                1       20    231  stunted          
Birth       MAL-ED          BRAZIL                         0%                 0       31     65  stunted          
Birth       MAL-ED          BRAZIL                         0%                 1        3     65  stunted          
Birth       MAL-ED          BRAZIL                         (0%, 5%]           0       23     65  stunted          
Birth       MAL-ED          BRAZIL                         (0%, 5%]           1        6     65  stunted          
Birth       MAL-ED          BRAZIL                         >5%                0        2     65  stunted          
Birth       MAL-ED          BRAZIL                         >5%                1        0     65  stunted          
Birth       MAL-ED          INDIA                          0%                 0        4     47  stunted          
Birth       MAL-ED          INDIA                          0%                 1        1     47  stunted          
Birth       MAL-ED          INDIA                          (0%, 5%]           0       27     47  stunted          
Birth       MAL-ED          INDIA                          (0%, 5%]           1        6     47  stunted          
Birth       MAL-ED          INDIA                          >5%                0        6     47  stunted          
Birth       MAL-ED          INDIA                          >5%                1        3     47  stunted          
Birth       MAL-ED          NEPAL                          0%                 0        2     27  stunted          
Birth       MAL-ED          NEPAL                          0%                 1        0     27  stunted          
Birth       MAL-ED          NEPAL                          (0%, 5%]           0       19     27  stunted          
Birth       MAL-ED          NEPAL                          (0%, 5%]           1        0     27  stunted          
Birth       MAL-ED          NEPAL                          >5%                0        4     27  stunted          
Birth       MAL-ED          NEPAL                          >5%                1        2     27  stunted          
Birth       MAL-ED          PERU                           0%                 0       21    233  stunted          
Birth       MAL-ED          PERU                           0%                 1        0    233  stunted          
Birth       MAL-ED          PERU                           (0%, 5%]           0       78    233  stunted          
Birth       MAL-ED          PERU                           (0%, 5%]           1       11    233  stunted          
Birth       MAL-ED          PERU                           >5%                0      108    233  stunted          
Birth       MAL-ED          PERU                           >5%                1       15    233  stunted          
Birth       MAL-ED          SOUTH AFRICA                   0%                 0       39    113  stunted          
Birth       MAL-ED          SOUTH AFRICA                   0%                 1        3    113  stunted          
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]           0       64    113  stunted          
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        6    113  stunted          
Birth       MAL-ED          SOUTH AFRICA                   >5%                0        1    113  stunted          
Birth       MAL-ED          SOUTH AFRICA                   >5%                1        0    113  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        7    125  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        2    125  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       66    125  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       19    125  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       29    125  stunted          
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        2    125  stunted          
Birth       NIH-Birth       BANGLADESH                     0%                 0       41    605  stunted          
Birth       NIH-Birth       BANGLADESH                     0%                 1       10    605  stunted          
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]           0      286    605  stunted          
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]           1       59    605  stunted          
Birth       NIH-Birth       BANGLADESH                     >5%                0      182    605  stunted          
Birth       NIH-Birth       BANGLADESH                     >5%                1       27    605  stunted          
Birth       NIH-Crypto      BANGLADESH                     0%                 0      129    732  stunted          
Birth       NIH-Crypto      BANGLADESH                     0%                 1       22    732  stunted          
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]           0      338    732  stunted          
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]           1       48    732  stunted          
Birth       NIH-Crypto      BANGLADESH                     >5%                0      164    732  stunted          
Birth       NIH-Crypto      BANGLADESH                     >5%                1       31    732  stunted          
Birth       PROVIDE         BANGLADESH                     0%                 0       51    539  stunted          
Birth       PROVIDE         BANGLADESH                     0%                 1        4    539  stunted          
Birth       PROVIDE         BANGLADESH                     (0%, 5%]           0      302    539  stunted          
Birth       PROVIDE         BANGLADESH                     (0%, 5%]           1       25    539  stunted          
Birth       PROVIDE         BANGLADESH                     >5%                0      138    539  stunted          
Birth       PROVIDE         BANGLADESH                     >5%                1       19    539  stunted          
6 months    CMIN            BANGLADESH                     0%                 0        2    243  stunted          
6 months    CMIN            BANGLADESH                     0%                 1        0    243  stunted          
6 months    CMIN            BANGLADESH                     (0%, 5%]           0       66    243  stunted          
6 months    CMIN            BANGLADESH                     (0%, 5%]           1       46    243  stunted          
6 months    CMIN            BANGLADESH                     >5%                0       82    243  stunted          
6 months    CMIN            BANGLADESH                     >5%                1       47    243  stunted          
6 months    CONTENT         PERU                           0%                 0        5    215  stunted          
6 months    CONTENT         PERU                           0%                 1        1    215  stunted          
6 months    CONTENT         PERU                           (0%, 5%]           0      135    215  stunted          
6 months    CONTENT         PERU                           (0%, 5%]           1        7    215  stunted          
6 months    CONTENT         PERU                           >5%                0       66    215  stunted          
6 months    CONTENT         PERU                           >5%                1        1    215  stunted          
6 months    EE              PAKISTAN                       0%                 0      130    373  stunted          
6 months    EE              PAKISTAN                       0%                 1      126    373  stunted          
6 months    EE              PAKISTAN                       (0%, 5%]           0       60    373  stunted          
6 months    EE              PAKISTAN                       (0%, 5%]           1       57    373  stunted          
6 months    EE              PAKISTAN                       >5%                0        0    373  stunted          
6 months    EE              PAKISTAN                       >5%                1        0    373  stunted          
6 months    Guatemala BSC   GUATEMALA                      0%                 0       21    299  stunted          
6 months    Guatemala BSC   GUATEMALA                      0%                 1        8    299  stunted          
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]           0       51    299  stunted          
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]           1       19    299  stunted          
6 months    Guatemala BSC   GUATEMALA                      >5%                0      137    299  stunted          
6 months    Guatemala BSC   GUATEMALA                      >5%                1       63    299  stunted          
6 months    JiVitA-4        BANGLADESH                     0%                 0      120   4831  stunted          
6 months    JiVitA-4        BANGLADESH                     0%                 1       36   4831  stunted          
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]           0     3120   4831  stunted          
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]           1     1033   4831  stunted          
6 months    JiVitA-4        BANGLADESH                     >5%                0      370   4831  stunted          
6 months    JiVitA-4        BANGLADESH                     >5%                1      152   4831  stunted          
6 months    MAL-ED          BANGLADESH                     0%                 0        5    241  stunted          
6 months    MAL-ED          BANGLADESH                     0%                 1        1    241  stunted          
6 months    MAL-ED          BANGLADESH                     (0%, 5%]           0      119    241  stunted          
6 months    MAL-ED          BANGLADESH                     (0%, 5%]           1       23    241  stunted          
6 months    MAL-ED          BANGLADESH                     >5%                0       73    241  stunted          
6 months    MAL-ED          BANGLADESH                     >5%                1       20    241  stunted          
6 months    MAL-ED          BRAZIL                         0%                 0      103    209  stunted          
6 months    MAL-ED          BRAZIL                         0%                 1        3    209  stunted          
6 months    MAL-ED          BRAZIL                         (0%, 5%]           0       98    209  stunted          
6 months    MAL-ED          BRAZIL                         (0%, 5%]           1        3    209  stunted          
6 months    MAL-ED          BRAZIL                         >5%                0        2    209  stunted          
6 months    MAL-ED          BRAZIL                         >5%                1        0    209  stunted          
6 months    MAL-ED          INDIA                          0%                 0        3    236  stunted          
6 months    MAL-ED          INDIA                          0%                 1        0    236  stunted          
6 months    MAL-ED          INDIA                          (0%, 5%]           0      156    236  stunted          
6 months    MAL-ED          INDIA                          (0%, 5%]           1       35    236  stunted          
6 months    MAL-ED          INDIA                          >5%                0       32    236  stunted          
6 months    MAL-ED          INDIA                          >5%                1       10    236  stunted          
6 months    MAL-ED          NEPAL                          0%                 0       13    236  stunted          
6 months    MAL-ED          NEPAL                          0%                 1        1    236  stunted          
6 months    MAL-ED          NEPAL                          (0%, 5%]           0      137    236  stunted          
6 months    MAL-ED          NEPAL                          (0%, 5%]           1        6    236  stunted          
6 months    MAL-ED          NEPAL                          >5%                0       74    236  stunted          
6 months    MAL-ED          NEPAL                          >5%                1        5    236  stunted          
6 months    MAL-ED          PERU                           0%                 0        5    273  stunted          
6 months    MAL-ED          PERU                           0%                 1        2    273  stunted          
6 months    MAL-ED          PERU                           (0%, 5%]           0       88    273  stunted          
6 months    MAL-ED          PERU                           (0%, 5%]           1       21    273  stunted          
6 months    MAL-ED          PERU                           >5%                0      120    273  stunted          
6 months    MAL-ED          PERU                           >5%                1       37    273  stunted          
6 months    MAL-ED          SOUTH AFRICA                   0%                 0       60    254  stunted          
6 months    MAL-ED          SOUTH AFRICA                   0%                 1       18    254  stunted          
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      142    254  stunted          
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       32    254  stunted          
6 months    MAL-ED          SOUTH AFRICA                   >5%                0        2    254  stunted          
6 months    MAL-ED          SOUTH AFRICA                   >5%                1        0    254  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        5    247  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        4    247  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      131    247  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       46    247  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       52    247  stunted          
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        9    247  stunted          
6 months    NIH-Birth       BANGLADESH                     0%                 0       10    537  stunted          
6 months    NIH-Birth       BANGLADESH                     0%                 1        5    537  stunted          
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]           0      247    537  stunted          
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]           1       92    537  stunted          
6 months    NIH-Birth       BANGLADESH                     >5%                0      136    537  stunted          
6 months    NIH-Birth       BANGLADESH                     >5%                1       47    537  stunted          
6 months    NIH-Crypto      BANGLADESH                     0%                 0      108    715  stunted          
6 months    NIH-Crypto      BANGLADESH                     0%                 1       26    715  stunted          
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]           0      306    715  stunted          
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]           1       80    715  stunted          
6 months    NIH-Crypto      BANGLADESH                     >5%                0      151    715  stunted          
6 months    NIH-Crypto      BANGLADESH                     >5%                1       44    715  stunted          
6 months    PROVIDE         BANGLADESH                     0%                 0        9    604  stunted          
6 months    PROVIDE         BANGLADESH                     0%                 1        3    604  stunted          
6 months    PROVIDE         BANGLADESH                     (0%, 5%]           0      348    604  stunted          
6 months    PROVIDE         BANGLADESH                     (0%, 5%]           1       61    604  stunted          
6 months    PROVIDE         BANGLADESH                     >5%                0      151    604  stunted          
6 months    PROVIDE         BANGLADESH                     >5%                1       32    604  stunted          
6 months    SAS-FoodSuppl   INDIA                          0%                 0       38    380  stunted          
6 months    SAS-FoodSuppl   INDIA                          0%                 1       35    380  stunted          
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]           0       28    380  stunted          
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]           1       18    380  stunted          
6 months    SAS-FoodSuppl   INDIA                          >5%                0      151    380  stunted          
6 months    SAS-FoodSuppl   INDIA                          >5%                1      110    380  stunted          
24 months   CMIN            BANGLADESH                     0%                 0        2    242  stunted          
24 months   CMIN            BANGLADESH                     0%                 1        1    242  stunted          
24 months   CMIN            BANGLADESH                     (0%, 5%]           0       38    242  stunted          
24 months   CMIN            BANGLADESH                     (0%, 5%]           1       76    242  stunted          
24 months   CMIN            BANGLADESH                     >5%                0       37    242  stunted          
24 months   CMIN            BANGLADESH                     >5%                1       88    242  stunted          
24 months   CONTENT         PERU                           0%                 0        3    164  stunted          
24 months   CONTENT         PERU                           0%                 1        1    164  stunted          
24 months   CONTENT         PERU                           (0%, 5%]           0      100    164  stunted          
24 months   CONTENT         PERU                           (0%, 5%]           1        8    164  stunted          
24 months   CONTENT         PERU                           >5%                0       48    164  stunted          
24 months   CONTENT         PERU                           >5%                1        4    164  stunted          
24 months   EE              PAKISTAN                       0%                 0       36    167  stunted          
24 months   EE              PAKISTAN                       0%                 1       79    167  stunted          
24 months   EE              PAKISTAN                       (0%, 5%]           0       13    167  stunted          
24 months   EE              PAKISTAN                       (0%, 5%]           1       39    167  stunted          
24 months   EE              PAKISTAN                       >5%                0        0    167  stunted          
24 months   EE              PAKISTAN                       >5%                1        0    167  stunted          
24 months   JiVitA-4        BANGLADESH                     0%                 0       97   4752  stunted          
24 months   JiVitA-4        BANGLADESH                     0%                 1       68   4752  stunted          
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]           0     2492   4752  stunted          
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]           1     1602   4752  stunted          
24 months   JiVitA-4        BANGLADESH                     >5%                0      258   4752  stunted          
24 months   JiVitA-4        BANGLADESH                     >5%                1      235   4752  stunted          
24 months   MAL-ED          BANGLADESH                     0%                 0        3    212  stunted          
24 months   MAL-ED          BANGLADESH                     0%                 1        3    212  stunted          
24 months   MAL-ED          BANGLADESH                     (0%, 5%]           0       74    212  stunted          
24 months   MAL-ED          BANGLADESH                     (0%, 5%]           1       56    212  stunted          
24 months   MAL-ED          BANGLADESH                     >5%                0       34    212  stunted          
24 months   MAL-ED          BANGLADESH                     >5%                1       42    212  stunted          
24 months   MAL-ED          BRAZIL                         0%                 0       74    169  stunted          
24 months   MAL-ED          BRAZIL                         0%                 1        2    169  stunted          
24 months   MAL-ED          BRAZIL                         (0%, 5%]           0       86    169  stunted          
24 months   MAL-ED          BRAZIL                         (0%, 5%]           1        5    169  stunted          
24 months   MAL-ED          BRAZIL                         >5%                0        2    169  stunted          
24 months   MAL-ED          BRAZIL                         >5%                1        0    169  stunted          
24 months   MAL-ED          INDIA                          0%                 0        2    227  stunted          
24 months   MAL-ED          INDIA                          0%                 1        1    227  stunted          
24 months   MAL-ED          INDIA                          (0%, 5%]           0      103    227  stunted          
24 months   MAL-ED          INDIA                          (0%, 5%]           1       80    227  stunted          
24 months   MAL-ED          INDIA                          >5%                0       25    227  stunted          
24 months   MAL-ED          INDIA                          >5%                1       16    227  stunted          
24 months   MAL-ED          NEPAL                          0%                 0       10    228  stunted          
24 months   MAL-ED          NEPAL                          0%                 1        2    228  stunted          
24 months   MAL-ED          NEPAL                          (0%, 5%]           0      111    228  stunted          
24 months   MAL-ED          NEPAL                          (0%, 5%]           1       29    228  stunted          
24 months   MAL-ED          NEPAL                          >5%                0       57    228  stunted          
24 months   MAL-ED          NEPAL                          >5%                1       19    228  stunted          
24 months   MAL-ED          PERU                           0%                 0        1    201  stunted          
24 months   MAL-ED          PERU                           0%                 1        0    201  stunted          
24 months   MAL-ED          PERU                           (0%, 5%]           0       49    201  stunted          
24 months   MAL-ED          PERU                           (0%, 5%]           1       35    201  stunted          
24 months   MAL-ED          PERU                           >5%                0       77    201  stunted          
24 months   MAL-ED          PERU                           >5%                1       39    201  stunted          
24 months   MAL-ED          SOUTH AFRICA                   0%                 0       48    238  stunted          
24 months   MAL-ED          SOUTH AFRICA                   0%                 1       23    238  stunted          
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      105    238  stunted          
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       61    238  stunted          
24 months   MAL-ED          SOUTH AFRICA                   >5%                0        1    238  stunted          
24 months   MAL-ED          SOUTH AFRICA                   >5%                1        0    238  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        1    214  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        5    214  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       43    214  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1      113    214  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       15    214  stunted          
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1       37    214  stunted          
24 months   NIH-Birth       BANGLADESH                     0%                 0        4    429  stunted          
24 months   NIH-Birth       BANGLADESH                     0%                 1        1    429  stunted          
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]           0      123    429  stunted          
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]           1      156    429  stunted          
24 months   NIH-Birth       BANGLADESH                     >5%                0       58    429  stunted          
24 months   NIH-Birth       BANGLADESH                     >5%                1       87    429  stunted          
24 months   NIH-Crypto      BANGLADESH                     0%                 0       95    514  stunted          
24 months   NIH-Crypto      BANGLADESH                     0%                 1       28    514  stunted          
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]           0      206    514  stunted          
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]           1       70    514  stunted          
24 months   NIH-Crypto      BANGLADESH                     >5%                0       81    514  stunted          
24 months   NIH-Crypto      BANGLADESH                     >5%                1       34    514  stunted          
24 months   PROVIDE         BANGLADESH                     0%                 0        5    578  stunted          
24 months   PROVIDE         BANGLADESH                     0%                 1        4    578  stunted          
24 months   PROVIDE         BANGLADESH                     (0%, 5%]           0      269    578  stunted          
24 months   PROVIDE         BANGLADESH                     (0%, 5%]           1      126    578  stunted          
24 months   PROVIDE         BANGLADESH                     >5%                0      114    578  stunted          
24 months   PROVIDE         BANGLADESH                     >5%                1       60    578  stunted          


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
