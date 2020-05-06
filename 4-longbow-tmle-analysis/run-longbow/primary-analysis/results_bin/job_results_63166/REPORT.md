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

**Outcome Variable:** sstunted

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

agecat      studyid         country                        perdiar24    sstunted   n_cell      n  outcome_variable 
----------  --------------  -----------------------------  ----------  ---------  -------  -----  -----------------
Birth       CMIN            BANGLADESH                     0%                  0        6     26  sstunted         
Birth       CMIN            BANGLADESH                     0%                  1        6     26  sstunted         
Birth       CMIN            BANGLADESH                     (0%, 5%]            0        4     26  sstunted         
Birth       CMIN            BANGLADESH                     (0%, 5%]            1        0     26  sstunted         
Birth       CMIN            BANGLADESH                     >5%                 0       10     26  sstunted         
Birth       CMIN            BANGLADESH                     >5%                 1        0     26  sstunted         
Birth       CONTENT         PERU                           0%                  0        0      2  sstunted         
Birth       CONTENT         PERU                           0%                  1        0      2  sstunted         
Birth       CONTENT         PERU                           (0%, 5%]            0        1      2  sstunted         
Birth       CONTENT         PERU                           (0%, 5%]            1        0      2  sstunted         
Birth       CONTENT         PERU                           >5%                 0        1      2  sstunted         
Birth       CONTENT         PERU                           >5%                 1        0      2  sstunted         
Birth       EE              PAKISTAN                       0%                  0      123    240  sstunted         
Birth       EE              PAKISTAN                       0%                  1       38    240  sstunted         
Birth       EE              PAKISTAN                       (0%, 5%]            0       69    240  sstunted         
Birth       EE              PAKISTAN                       (0%, 5%]            1       10    240  sstunted         
Birth       EE              PAKISTAN                       >5%                 0        0    240  sstunted         
Birth       EE              PAKISTAN                       >5%                 1        0    240  sstunted         
Birth       JiVitA-4        BANGLADESH                     0%                  0       67   2823  sstunted         
Birth       JiVitA-4        BANGLADESH                     0%                  1        9   2823  sstunted         
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]            0     2253   2823  sstunted         
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]            1      196   2823  sstunted         
Birth       JiVitA-4        BANGLADESH                     >5%                 0      270   2823  sstunted         
Birth       JiVitA-4        BANGLADESH                     >5%                 1       28   2823  sstunted         
Birth       MAL-ED          BANGLADESH                     0%                  0       16    231  sstunted         
Birth       MAL-ED          BANGLADESH                     0%                  1        2    231  sstunted         
Birth       MAL-ED          BANGLADESH                     (0%, 5%]            0      128    231  sstunted         
Birth       MAL-ED          BANGLADESH                     (0%, 5%]            1        3    231  sstunted         
Birth       MAL-ED          BANGLADESH                     >5%                 0       78    231  sstunted         
Birth       MAL-ED          BANGLADESH                     >5%                 1        4    231  sstunted         
Birth       MAL-ED          BRAZIL                         0%                  0       33     65  sstunted         
Birth       MAL-ED          BRAZIL                         0%                  1        1     65  sstunted         
Birth       MAL-ED          BRAZIL                         (0%, 5%]            0       27     65  sstunted         
Birth       MAL-ED          BRAZIL                         (0%, 5%]            1        2     65  sstunted         
Birth       MAL-ED          BRAZIL                         >5%                 0        2     65  sstunted         
Birth       MAL-ED          BRAZIL                         >5%                 1        0     65  sstunted         
Birth       MAL-ED          INDIA                          0%                  0        5     47  sstunted         
Birth       MAL-ED          INDIA                          0%                  1        0     47  sstunted         
Birth       MAL-ED          INDIA                          (0%, 5%]            0       31     47  sstunted         
Birth       MAL-ED          INDIA                          (0%, 5%]            1        2     47  sstunted         
Birth       MAL-ED          INDIA                          >5%                 0        9     47  sstunted         
Birth       MAL-ED          INDIA                          >5%                 1        0     47  sstunted         
Birth       MAL-ED          NEPAL                          0%                  0        2     27  sstunted         
Birth       MAL-ED          NEPAL                          0%                  1        0     27  sstunted         
Birth       MAL-ED          NEPAL                          (0%, 5%]            0       19     27  sstunted         
Birth       MAL-ED          NEPAL                          (0%, 5%]            1        0     27  sstunted         
Birth       MAL-ED          NEPAL                          >5%                 0        5     27  sstunted         
Birth       MAL-ED          NEPAL                          >5%                 1        1     27  sstunted         
Birth       MAL-ED          PERU                           0%                  0       21    233  sstunted         
Birth       MAL-ED          PERU                           0%                  1        0    233  sstunted         
Birth       MAL-ED          PERU                           (0%, 5%]            0       87    233  sstunted         
Birth       MAL-ED          PERU                           (0%, 5%]            1        2    233  sstunted         
Birth       MAL-ED          PERU                           >5%                 0      121    233  sstunted         
Birth       MAL-ED          PERU                           >5%                 1        2    233  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   0%                  0       42    113  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   0%                  1        0    113  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]            0       69    113  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]            1        1    113  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   >5%                 0        1    113  sstunted         
Birth       MAL-ED          SOUTH AFRICA                   >5%                 1        0    113  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  0        7    125  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  1        2    125  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0       77    125  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        8    125  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 0       31    125  sstunted         
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 1        0    125  sstunted         
Birth       NIH-Birth       BANGLADESH                     0%                  0       49    605  sstunted         
Birth       NIH-Birth       BANGLADESH                     0%                  1        2    605  sstunted         
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]            0      336    605  sstunted         
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]            1        9    605  sstunted         
Birth       NIH-Birth       BANGLADESH                     >5%                 0      201    605  sstunted         
Birth       NIH-Birth       BANGLADESH                     >5%                 1        8    605  sstunted         
Birth       NIH-Crypto      BANGLADESH                     0%                  0      146    732  sstunted         
Birth       NIH-Crypto      BANGLADESH                     0%                  1        5    732  sstunted         
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]            0      382    732  sstunted         
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]            1        4    732  sstunted         
Birth       NIH-Crypto      BANGLADESH                     >5%                 0      194    732  sstunted         
Birth       NIH-Crypto      BANGLADESH                     >5%                 1        1    732  sstunted         
Birth       PROVIDE         BANGLADESH                     0%                  0       55    539  sstunted         
Birth       PROVIDE         BANGLADESH                     0%                  1        0    539  sstunted         
Birth       PROVIDE         BANGLADESH                     (0%, 5%]            0      324    539  sstunted         
Birth       PROVIDE         BANGLADESH                     (0%, 5%]            1        3    539  sstunted         
Birth       PROVIDE         BANGLADESH                     >5%                 0      156    539  sstunted         
Birth       PROVIDE         BANGLADESH                     >5%                 1        1    539  sstunted         
6 months    CMIN            BANGLADESH                     0%                  0        2    243  sstunted         
6 months    CMIN            BANGLADESH                     0%                  1        0    243  sstunted         
6 months    CMIN            BANGLADESH                     (0%, 5%]            0       97    243  sstunted         
6 months    CMIN            BANGLADESH                     (0%, 5%]            1       15    243  sstunted         
6 months    CMIN            BANGLADESH                     >5%                 0      116    243  sstunted         
6 months    CMIN            BANGLADESH                     >5%                 1       13    243  sstunted         
6 months    CONTENT         PERU                           0%                  0        6    215  sstunted         
6 months    CONTENT         PERU                           0%                  1        0    215  sstunted         
6 months    CONTENT         PERU                           (0%, 5%]            0      141    215  sstunted         
6 months    CONTENT         PERU                           (0%, 5%]            1        1    215  sstunted         
6 months    CONTENT         PERU                           >5%                 0       67    215  sstunted         
6 months    CONTENT         PERU                           >5%                 1        0    215  sstunted         
6 months    EE              PAKISTAN                       0%                  0      199    373  sstunted         
6 months    EE              PAKISTAN                       0%                  1       57    373  sstunted         
6 months    EE              PAKISTAN                       (0%, 5%]            0       93    373  sstunted         
6 months    EE              PAKISTAN                       (0%, 5%]            1       24    373  sstunted         
6 months    EE              PAKISTAN                       >5%                 0        0    373  sstunted         
6 months    EE              PAKISTAN                       >5%                 1        0    373  sstunted         
6 months    Guatemala BSC   GUATEMALA                      0%                  0       24    299  sstunted         
6 months    Guatemala BSC   GUATEMALA                      0%                  1        5    299  sstunted         
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]            0       66    299  sstunted         
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]            1        4    299  sstunted         
6 months    Guatemala BSC   GUATEMALA                      >5%                 0      182    299  sstunted         
6 months    Guatemala BSC   GUATEMALA                      >5%                 1       18    299  sstunted         
6 months    JiVitA-4        BANGLADESH                     0%                  0      144   4831  sstunted         
6 months    JiVitA-4        BANGLADESH                     0%                  1       12   4831  sstunted         
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]            0     3931   4831  sstunted         
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]            1      222   4831  sstunted         
6 months    JiVitA-4        BANGLADESH                     >5%                 0      485   4831  sstunted         
6 months    JiVitA-4        BANGLADESH                     >5%                 1       37   4831  sstunted         
6 months    MAL-ED          BANGLADESH                     0%                  0        6    241  sstunted         
6 months    MAL-ED          BANGLADESH                     0%                  1        0    241  sstunted         
6 months    MAL-ED          BANGLADESH                     (0%, 5%]            0      138    241  sstunted         
6 months    MAL-ED          BANGLADESH                     (0%, 5%]            1        4    241  sstunted         
6 months    MAL-ED          BANGLADESH                     >5%                 0       89    241  sstunted         
6 months    MAL-ED          BANGLADESH                     >5%                 1        4    241  sstunted         
6 months    MAL-ED          BRAZIL                         0%                  0      106    209  sstunted         
6 months    MAL-ED          BRAZIL                         0%                  1        0    209  sstunted         
6 months    MAL-ED          BRAZIL                         (0%, 5%]            0      101    209  sstunted         
6 months    MAL-ED          BRAZIL                         (0%, 5%]            1        0    209  sstunted         
6 months    MAL-ED          BRAZIL                         >5%                 0        2    209  sstunted         
6 months    MAL-ED          BRAZIL                         >5%                 1        0    209  sstunted         
6 months    MAL-ED          INDIA                          0%                  0        3    236  sstunted         
6 months    MAL-ED          INDIA                          0%                  1        0    236  sstunted         
6 months    MAL-ED          INDIA                          (0%, 5%]            0      184    236  sstunted         
6 months    MAL-ED          INDIA                          (0%, 5%]            1        7    236  sstunted         
6 months    MAL-ED          INDIA                          >5%                 0       40    236  sstunted         
6 months    MAL-ED          INDIA                          >5%                 1        2    236  sstunted         
6 months    MAL-ED          NEPAL                          0%                  0       13    236  sstunted         
6 months    MAL-ED          NEPAL                          0%                  1        1    236  sstunted         
6 months    MAL-ED          NEPAL                          (0%, 5%]            0      143    236  sstunted         
6 months    MAL-ED          NEPAL                          (0%, 5%]            1        0    236  sstunted         
6 months    MAL-ED          NEPAL                          >5%                 0       79    236  sstunted         
6 months    MAL-ED          NEPAL                          >5%                 1        0    236  sstunted         
6 months    MAL-ED          PERU                           0%                  0        7    273  sstunted         
6 months    MAL-ED          PERU                           0%                  1        0    273  sstunted         
6 months    MAL-ED          PERU                           (0%, 5%]            0      106    273  sstunted         
6 months    MAL-ED          PERU                           (0%, 5%]            1        3    273  sstunted         
6 months    MAL-ED          PERU                           >5%                 0      150    273  sstunted         
6 months    MAL-ED          PERU                           >5%                 1        7    273  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   0%                  0       74    254  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   0%                  1        4    254  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]            0      172    254  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]            1        2    254  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   >5%                 0        2    254  sstunted         
6 months    MAL-ED          SOUTH AFRICA                   >5%                 1        0    254  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  0        8    247  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  1        1    247  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      166    247  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1       11    247  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 0       59    247  sstunted         
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 1        2    247  sstunted         
6 months    NIH-Birth       BANGLADESH                     0%                  0       14    537  sstunted         
6 months    NIH-Birth       BANGLADESH                     0%                  1        1    537  sstunted         
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]            0      315    537  sstunted         
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]            1       24    537  sstunted         
6 months    NIH-Birth       BANGLADESH                     >5%                 0      173    537  sstunted         
6 months    NIH-Birth       BANGLADESH                     >5%                 1       10    537  sstunted         
6 months    NIH-Crypto      BANGLADESH                     0%                  0      131    715  sstunted         
6 months    NIH-Crypto      BANGLADESH                     0%                  1        3    715  sstunted         
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]            0      370    715  sstunted         
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]            1       16    715  sstunted         
6 months    NIH-Crypto      BANGLADESH                     >5%                 0      191    715  sstunted         
6 months    NIH-Crypto      BANGLADESH                     >5%                 1        4    715  sstunted         
6 months    PROVIDE         BANGLADESH                     0%                  0       11    604  sstunted         
6 months    PROVIDE         BANGLADESH                     0%                  1        1    604  sstunted         
6 months    PROVIDE         BANGLADESH                     (0%, 5%]            0      399    604  sstunted         
6 months    PROVIDE         BANGLADESH                     (0%, 5%]            1       10    604  sstunted         
6 months    PROVIDE         BANGLADESH                     >5%                 0      180    604  sstunted         
6 months    PROVIDE         BANGLADESH                     >5%                 1        3    604  sstunted         
6 months    SAS-FoodSuppl   INDIA                          0%                  0       60    380  sstunted         
6 months    SAS-FoodSuppl   INDIA                          0%                  1       13    380  sstunted         
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]            0       41    380  sstunted         
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]            1        5    380  sstunted         
6 months    SAS-FoodSuppl   INDIA                          >5%                 0      225    380  sstunted         
6 months    SAS-FoodSuppl   INDIA                          >5%                 1       36    380  sstunted         
24 months   CMIN            BANGLADESH                     0%                  0        3    242  sstunted         
24 months   CMIN            BANGLADESH                     0%                  1        0    242  sstunted         
24 months   CMIN            BANGLADESH                     (0%, 5%]            0       77    242  sstunted         
24 months   CMIN            BANGLADESH                     (0%, 5%]            1       37    242  sstunted         
24 months   CMIN            BANGLADESH                     >5%                 0       94    242  sstunted         
24 months   CMIN            BANGLADESH                     >5%                 1       31    242  sstunted         
24 months   CONTENT         PERU                           0%                  0        4    164  sstunted         
24 months   CONTENT         PERU                           0%                  1        0    164  sstunted         
24 months   CONTENT         PERU                           (0%, 5%]            0      107    164  sstunted         
24 months   CONTENT         PERU                           (0%, 5%]            1        1    164  sstunted         
24 months   CONTENT         PERU                           >5%                 0       52    164  sstunted         
24 months   CONTENT         PERU                           >5%                 1        0    164  sstunted         
24 months   EE              PAKISTAN                       0%                  0       74    167  sstunted         
24 months   EE              PAKISTAN                       0%                  1       41    167  sstunted         
24 months   EE              PAKISTAN                       (0%, 5%]            0       34    167  sstunted         
24 months   EE              PAKISTAN                       (0%, 5%]            1       18    167  sstunted         
24 months   EE              PAKISTAN                       >5%                 0        0    167  sstunted         
24 months   EE              PAKISTAN                       >5%                 1        0    167  sstunted         
24 months   JiVitA-4        BANGLADESH                     0%                  0      152   4752  sstunted         
24 months   JiVitA-4        BANGLADESH                     0%                  1       13   4752  sstunted         
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]            0     3715   4752  sstunted         
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]            1      379   4752  sstunted         
24 months   JiVitA-4        BANGLADESH                     >5%                 0      432   4752  sstunted         
24 months   JiVitA-4        BANGLADESH                     >5%                 1       61   4752  sstunted         
24 months   MAL-ED          BANGLADESH                     0%                  0        6    212  sstunted         
24 months   MAL-ED          BANGLADESH                     0%                  1        0    212  sstunted         
24 months   MAL-ED          BANGLADESH                     (0%, 5%]            0      112    212  sstunted         
24 months   MAL-ED          BANGLADESH                     (0%, 5%]            1       18    212  sstunted         
24 months   MAL-ED          BANGLADESH                     >5%                 0       66    212  sstunted         
24 months   MAL-ED          BANGLADESH                     >5%                 1       10    212  sstunted         
24 months   MAL-ED          BRAZIL                         0%                  0       75    169  sstunted         
24 months   MAL-ED          BRAZIL                         0%                  1        1    169  sstunted         
24 months   MAL-ED          BRAZIL                         (0%, 5%]            0       91    169  sstunted         
24 months   MAL-ED          BRAZIL                         (0%, 5%]            1        0    169  sstunted         
24 months   MAL-ED          BRAZIL                         >5%                 0        2    169  sstunted         
24 months   MAL-ED          BRAZIL                         >5%                 1        0    169  sstunted         
24 months   MAL-ED          INDIA                          0%                  0        3    227  sstunted         
24 months   MAL-ED          INDIA                          0%                  1        0    227  sstunted         
24 months   MAL-ED          INDIA                          (0%, 5%]            0      157    227  sstunted         
24 months   MAL-ED          INDIA                          (0%, 5%]            1       26    227  sstunted         
24 months   MAL-ED          INDIA                          >5%                 0       37    227  sstunted         
24 months   MAL-ED          INDIA                          >5%                 1        4    227  sstunted         
24 months   MAL-ED          NEPAL                          0%                  0       12    228  sstunted         
24 months   MAL-ED          NEPAL                          0%                  1        0    228  sstunted         
24 months   MAL-ED          NEPAL                          (0%, 5%]            0      136    228  sstunted         
24 months   MAL-ED          NEPAL                          (0%, 5%]            1        4    228  sstunted         
24 months   MAL-ED          NEPAL                          >5%                 0       73    228  sstunted         
24 months   MAL-ED          NEPAL                          >5%                 1        3    228  sstunted         
24 months   MAL-ED          PERU                           0%                  0        1    201  sstunted         
24 months   MAL-ED          PERU                           0%                  1        0    201  sstunted         
24 months   MAL-ED          PERU                           (0%, 5%]            0       78    201  sstunted         
24 months   MAL-ED          PERU                           (0%, 5%]            1        6    201  sstunted         
24 months   MAL-ED          PERU                           >5%                 0      107    201  sstunted         
24 months   MAL-ED          PERU                           >5%                 1        9    201  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   0%                  0       64    238  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   0%                  1        7    238  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]            0      146    238  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]            1       20    238  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   >5%                 0        1    238  sstunted         
24 months   MAL-ED          SOUTH AFRICA                   >5%                 1        0    238  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  0        3    214  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  1        3    214  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      107    214  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1       49    214  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 0       34    214  sstunted         
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 1       18    214  sstunted         
24 months   NIH-Birth       BANGLADESH                     0%                  0        5    429  sstunted         
24 months   NIH-Birth       BANGLADESH                     0%                  1        0    429  sstunted         
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]            0      216    429  sstunted         
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]            1       63    429  sstunted         
24 months   NIH-Birth       BANGLADESH                     >5%                 0      113    429  sstunted         
24 months   NIH-Birth       BANGLADESH                     >5%                 1       32    429  sstunted         
24 months   NIH-Crypto      BANGLADESH                     0%                  0      116    514  sstunted         
24 months   NIH-Crypto      BANGLADESH                     0%                  1        7    514  sstunted         
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]            0      257    514  sstunted         
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]            1       19    514  sstunted         
24 months   NIH-Crypto      BANGLADESH                     >5%                 0      105    514  sstunted         
24 months   NIH-Crypto      BANGLADESH                     >5%                 1       10    514  sstunted         
24 months   PROVIDE         BANGLADESH                     0%                  0        8    578  sstunted         
24 months   PROVIDE         BANGLADESH                     0%                  1        1    578  sstunted         
24 months   PROVIDE         BANGLADESH                     (0%, 5%]            0      359    578  sstunted         
24 months   PROVIDE         BANGLADESH                     (0%, 5%]            1       36    578  sstunted         
24 months   PROVIDE         BANGLADESH                     >5%                 0      159    578  sstunted         
24 months   PROVIDE         BANGLADESH                     >5%                 1       15    578  sstunted         


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
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
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
