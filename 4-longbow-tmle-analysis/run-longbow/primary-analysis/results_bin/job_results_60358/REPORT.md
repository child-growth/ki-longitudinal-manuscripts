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

**Outcome Variable:** swasted

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

agecat      studyid         country                        perdiar24    swasted   n_cell      n
----------  --------------  -----------------------------  ----------  --------  -------  -----
Birth       CMIN            BANGLADESH                     0%                 0        5     19
Birth       CMIN            BANGLADESH                     0%                 1        1     19
Birth       CMIN            BANGLADESH                     (0%, 5%]           0        3     19
Birth       CMIN            BANGLADESH                     (0%, 5%]           1        0     19
Birth       CMIN            BANGLADESH                     >5%                0       10     19
Birth       CMIN            BANGLADESH                     >5%                1        0     19
Birth       CONTENT         PERU                           0%                 0        0      2
Birth       CONTENT         PERU                           0%                 1        0      2
Birth       CONTENT         PERU                           (0%, 5%]           0        1      2
Birth       CONTENT         PERU                           (0%, 5%]           1        0      2
Birth       CONTENT         PERU                           >5%                0        1      2
Birth       CONTENT         PERU                           >5%                1        0      2
Birth       EE              PAKISTAN                       0%                 0      111    177
Birth       EE              PAKISTAN                       0%                 1        4    177
Birth       EE              PAKISTAN                       (0%, 5%]           0       60    177
Birth       EE              PAKISTAN                       (0%, 5%]           1        2    177
Birth       EE              PAKISTAN                       >5%                0        0    177
Birth       EE              PAKISTAN                       >5%                1        0    177
Birth       JiVitA-4        BANGLADESH                     0%                 0       59   2396
Birth       JiVitA-4        BANGLADESH                     0%                 1        2   2396
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]           0     2065   2396
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]           1       26   2396
Birth       JiVitA-4        BANGLADESH                     >5%                0      241   2396
Birth       JiVitA-4        BANGLADESH                     >5%                1        3   2396
Birth       MAL-ED          BANGLADESH                     0%                 0       14    215
Birth       MAL-ED          BANGLADESH                     0%                 1        0    215
Birth       MAL-ED          BANGLADESH                     (0%, 5%]           0      123    215
Birth       MAL-ED          BANGLADESH                     (0%, 5%]           1        4    215
Birth       MAL-ED          BANGLADESH                     >5%                0       70    215
Birth       MAL-ED          BANGLADESH                     >5%                1        4    215
Birth       MAL-ED          BRAZIL                         0%                 0       34     62
Birth       MAL-ED          BRAZIL                         0%                 1        0     62
Birth       MAL-ED          BRAZIL                         (0%, 5%]           0       26     62
Birth       MAL-ED          BRAZIL                         (0%, 5%]           1        0     62
Birth       MAL-ED          BRAZIL                         >5%                0        2     62
Birth       MAL-ED          BRAZIL                         >5%                1        0     62
Birth       MAL-ED          INDIA                          0%                 0        5     45
Birth       MAL-ED          INDIA                          0%                 1        0     45
Birth       MAL-ED          INDIA                          (0%, 5%]           0       31     45
Birth       MAL-ED          INDIA                          (0%, 5%]           1        0     45
Birth       MAL-ED          INDIA                          >5%                0        9     45
Birth       MAL-ED          INDIA                          >5%                1        0     45
Birth       MAL-ED          NEPAL                          0%                 0        2     26
Birth       MAL-ED          NEPAL                          0%                 1        0     26
Birth       MAL-ED          NEPAL                          (0%, 5%]           0       18     26
Birth       MAL-ED          NEPAL                          (0%, 5%]           1        1     26
Birth       MAL-ED          NEPAL                          >5%                0        5     26
Birth       MAL-ED          NEPAL                          >5%                1        0     26
Birth       MAL-ED          PERU                           0%                 0       21    228
Birth       MAL-ED          PERU                           0%                 1        0    228
Birth       MAL-ED          PERU                           (0%, 5%]           0       87    228
Birth       MAL-ED          PERU                           (0%, 5%]           1        0    228
Birth       MAL-ED          PERU                           >5%                0      120    228
Birth       MAL-ED          PERU                           >5%                1        0    228
Birth       MAL-ED          SOUTH AFRICA                   0%                 0       42    112
Birth       MAL-ED          SOUTH AFRICA                   0%                 1        0    112
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]           0       69    112
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        0    112
Birth       MAL-ED          SOUTH AFRICA                   >5%                0        1    112
Birth       MAL-ED          SOUTH AFRICA                   >5%                1        0    112
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        7    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        0    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       77    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        0    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       31    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        0    115
Birth       NIH-Birth       BANGLADESH                     0%                 0       45    572
Birth       NIH-Birth       BANGLADESH                     0%                 1        1    572
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]           0      304    572
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]           1       23    572
Birth       NIH-Birth       BANGLADESH                     >5%                0      185    572
Birth       NIH-Birth       BANGLADESH                     >5%                1       14    572
Birth       NIH-Crypto      BANGLADESH                     0%                 0      132    707
Birth       NIH-Crypto      BANGLADESH                     0%                 1       12    707
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]           0      352    707
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]           1       23    707
Birth       NIH-Crypto      BANGLADESH                     >5%                0      176    707
Birth       NIH-Crypto      BANGLADESH                     >5%                1       12    707
Birth       PROVIDE         BANGLADESH                     0%                 0       54    532
Birth       PROVIDE         BANGLADESH                     0%                 1        1    532
Birth       PROVIDE         BANGLADESH                     (0%, 5%]           0      314    532
Birth       PROVIDE         BANGLADESH                     (0%, 5%]           1        8    532
Birth       PROVIDE         BANGLADESH                     >5%                0      151    532
Birth       PROVIDE         BANGLADESH                     >5%                1        4    532
6 months    CMIN            BANGLADESH                     0%                 0        2    243
6 months    CMIN            BANGLADESH                     0%                 1        0    243
6 months    CMIN            BANGLADESH                     (0%, 5%]           0      109    243
6 months    CMIN            BANGLADESH                     (0%, 5%]           1        2    243
6 months    CMIN            BANGLADESH                     >5%                0      127    243
6 months    CMIN            BANGLADESH                     >5%                1        3    243
6 months    CONTENT         PERU                           0%                 0        6    215
6 months    CONTENT         PERU                           0%                 1        0    215
6 months    CONTENT         PERU                           (0%, 5%]           0      142    215
6 months    CONTENT         PERU                           (0%, 5%]           1        0    215
6 months    CONTENT         PERU                           >5%                0       67    215
6 months    CONTENT         PERU                           >5%                1        0    215
6 months    EE              PAKISTAN                       0%                 0      249    375
6 months    EE              PAKISTAN                       0%                 1        9    375
6 months    EE              PAKISTAN                       (0%, 5%]           0      113    375
6 months    EE              PAKISTAN                       (0%, 5%]           1        4    375
6 months    EE              PAKISTAN                       >5%                0        0    375
6 months    EE              PAKISTAN                       >5%                1        0    375
6 months    Guatemala BSC   GUATEMALA                      0%                 0       29    299
6 months    Guatemala BSC   GUATEMALA                      0%                 1        0    299
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]           0       70    299
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]           1        0    299
6 months    Guatemala BSC   GUATEMALA                      >5%                0      200    299
6 months    Guatemala BSC   GUATEMALA                      >5%                1        0    299
6 months    JiVitA-4        BANGLADESH                     0%                 0      156   4833
6 months    JiVitA-4        BANGLADESH                     0%                 1        0   4833
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]           0     4127   4833
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]           1       26   4833
6 months    JiVitA-4        BANGLADESH                     >5%                0      517   4833
6 months    JiVitA-4        BANGLADESH                     >5%                1        7   4833
6 months    MAL-ED          BANGLADESH                     0%                 0        6    241
6 months    MAL-ED          BANGLADESH                     0%                 1        0    241
6 months    MAL-ED          BANGLADESH                     (0%, 5%]           0      140    241
6 months    MAL-ED          BANGLADESH                     (0%, 5%]           1        2    241
6 months    MAL-ED          BANGLADESH                     >5%                0       93    241
6 months    MAL-ED          BANGLADESH                     >5%                1        0    241
6 months    MAL-ED          BRAZIL                         0%                 0      106    209
6 months    MAL-ED          BRAZIL                         0%                 1        0    209
6 months    MAL-ED          BRAZIL                         (0%, 5%]           0      101    209
6 months    MAL-ED          BRAZIL                         (0%, 5%]           1        0    209
6 months    MAL-ED          BRAZIL                         >5%                0        2    209
6 months    MAL-ED          BRAZIL                         >5%                1        0    209
6 months    MAL-ED          INDIA                          0%                 0        3    236
6 months    MAL-ED          INDIA                          0%                 1        0    236
6 months    MAL-ED          INDIA                          (0%, 5%]           0      186    236
6 months    MAL-ED          INDIA                          (0%, 5%]           1        5    236
6 months    MAL-ED          INDIA                          >5%                0       41    236
6 months    MAL-ED          INDIA                          >5%                1        1    236
6 months    MAL-ED          NEPAL                          0%                 0       14    236
6 months    MAL-ED          NEPAL                          0%                 1        0    236
6 months    MAL-ED          NEPAL                          (0%, 5%]           0      143    236
6 months    MAL-ED          NEPAL                          (0%, 5%]           1        0    236
6 months    MAL-ED          NEPAL                          >5%                0       79    236
6 months    MAL-ED          NEPAL                          >5%                1        0    236
6 months    MAL-ED          PERU                           0%                 0        7    273
6 months    MAL-ED          PERU                           0%                 1        0    273
6 months    MAL-ED          PERU                           (0%, 5%]           0      109    273
6 months    MAL-ED          PERU                           (0%, 5%]           1        0    273
6 months    MAL-ED          PERU                           >5%                0      157    273
6 months    MAL-ED          PERU                           >5%                1        0    273
6 months    MAL-ED          SOUTH AFRICA                   0%                 0       77    254
6 months    MAL-ED          SOUTH AFRICA                   0%                 1        1    254
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      172    254
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        2    254
6 months    MAL-ED          SOUTH AFRICA                   >5%                0        2    254
6 months    MAL-ED          SOUTH AFRICA                   >5%                1        0    254
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        9    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        0    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      177    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        0    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       61    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        0    247
6 months    NIH-Birth       BANGLADESH                     0%                 0       15    537
6 months    NIH-Birth       BANGLADESH                     0%                 1        0    537
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]           0      335    537
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]           1        4    537
6 months    NIH-Birth       BANGLADESH                     >5%                0      181    537
6 months    NIH-Birth       BANGLADESH                     >5%                1        2    537
6 months    NIH-Crypto      BANGLADESH                     0%                 0      134    715
6 months    NIH-Crypto      BANGLADESH                     0%                 1        0    715
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]           0      386    715
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]           1        0    715
6 months    NIH-Crypto      BANGLADESH                     >5%                0      195    715
6 months    NIH-Crypto      BANGLADESH                     >5%                1        0    715
6 months    PROVIDE         BANGLADESH                     0%                 0       12    603
6 months    PROVIDE         BANGLADESH                     0%                 1        0    603
6 months    PROVIDE         BANGLADESH                     (0%, 5%]           0      403    603
6 months    PROVIDE         BANGLADESH                     (0%, 5%]           1        5    603
6 months    PROVIDE         BANGLADESH                     >5%                0      183    603
6 months    PROVIDE         BANGLADESH                     >5%                1        0    603
6 months    SAS-FoodSuppl   INDIA                          0%                 0       69    380
6 months    SAS-FoodSuppl   INDIA                          0%                 1        5    380
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]           0       44    380
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]           1        2    380
6 months    SAS-FoodSuppl   INDIA                          >5%                0      248    380
6 months    SAS-FoodSuppl   INDIA                          >5%                1       12    380
24 months   CMIN            BANGLADESH                     0%                 0        3    243
24 months   CMIN            BANGLADESH                     0%                 1        0    243
24 months   CMIN            BANGLADESH                     (0%, 5%]           0      113    243
24 months   CMIN            BANGLADESH                     (0%, 5%]           1        1    243
24 months   CMIN            BANGLADESH                     >5%                0      125    243
24 months   CMIN            BANGLADESH                     >5%                1        1    243
24 months   CONTENT         PERU                           0%                 0        4    164
24 months   CONTENT         PERU                           0%                 1        0    164
24 months   CONTENT         PERU                           (0%, 5%]           0      108    164
24 months   CONTENT         PERU                           (0%, 5%]           1        0    164
24 months   CONTENT         PERU                           >5%                0       52    164
24 months   CONTENT         PERU                           >5%                1        0    164
24 months   EE              PAKISTAN                       0%                 0      112    168
24 months   EE              PAKISTAN                       0%                 1        4    168
24 months   EE              PAKISTAN                       (0%, 5%]           0       52    168
24 months   EE              PAKISTAN                       (0%, 5%]           1        0    168
24 months   EE              PAKISTAN                       >5%                0        0    168
24 months   EE              PAKISTAN                       >5%                1        0    168
24 months   JiVitA-4        BANGLADESH                     0%                 0      158   4735
24 months   JiVitA-4        BANGLADESH                     0%                 1        6   4735
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]           0     3973   4735
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]           1      109   4735
24 months   JiVitA-4        BANGLADESH                     >5%                0      475   4735
24 months   JiVitA-4        BANGLADESH                     >5%                1       14   4735
24 months   MAL-ED          BANGLADESH                     0%                 0        6    212
24 months   MAL-ED          BANGLADESH                     0%                 1        0    212
24 months   MAL-ED          BANGLADESH                     (0%, 5%]           0      130    212
24 months   MAL-ED          BANGLADESH                     (0%, 5%]           1        0    212
24 months   MAL-ED          BANGLADESH                     >5%                0       76    212
24 months   MAL-ED          BANGLADESH                     >5%                1        0    212
24 months   MAL-ED          BRAZIL                         0%                 0       76    169
24 months   MAL-ED          BRAZIL                         0%                 1        0    169
24 months   MAL-ED          BRAZIL                         (0%, 5%]           0       90    169
24 months   MAL-ED          BRAZIL                         (0%, 5%]           1        1    169
24 months   MAL-ED          BRAZIL                         >5%                0        2    169
24 months   MAL-ED          BRAZIL                         >5%                1        0    169
24 months   MAL-ED          INDIA                          0%                 0        3    227
24 months   MAL-ED          INDIA                          0%                 1        0    227
24 months   MAL-ED          INDIA                          (0%, 5%]           0      182    227
24 months   MAL-ED          INDIA                          (0%, 5%]           1        1    227
24 months   MAL-ED          INDIA                          >5%                0       40    227
24 months   MAL-ED          INDIA                          >5%                1        1    227
24 months   MAL-ED          NEPAL                          0%                 0       12    228
24 months   MAL-ED          NEPAL                          0%                 1        0    228
24 months   MAL-ED          NEPAL                          (0%, 5%]           0      140    228
24 months   MAL-ED          NEPAL                          (0%, 5%]           1        0    228
24 months   MAL-ED          NEPAL                          >5%                0       76    228
24 months   MAL-ED          NEPAL                          >5%                1        0    228
24 months   MAL-ED          PERU                           0%                 0        1    201
24 months   MAL-ED          PERU                           0%                 1        0    201
24 months   MAL-ED          PERU                           (0%, 5%]           0       83    201
24 months   MAL-ED          PERU                           (0%, 5%]           1        1    201
24 months   MAL-ED          PERU                           >5%                0      115    201
24 months   MAL-ED          PERU                           >5%                1        1    201
24 months   MAL-ED          SOUTH AFRICA                   0%                 0       71    238
24 months   MAL-ED          SOUTH AFRICA                   0%                 1        0    238
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      166    238
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        0    238
24 months   MAL-ED          SOUTH AFRICA                   >5%                0        1    238
24 months   MAL-ED          SOUTH AFRICA                   >5%                1        0    238
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        6    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        0    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      156    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        0    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       52    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        0    214
24 months   NIH-Birth       BANGLADESH                     0%                 0        5    428
24 months   NIH-Birth       BANGLADESH                     0%                 1        0    428
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]           0      271    428
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]           1        7    428
24 months   NIH-Birth       BANGLADESH                     >5%                0      142    428
24 months   NIH-Birth       BANGLADESH                     >5%                1        3    428
24 months   NIH-Crypto      BANGLADESH                     0%                 0      121    514
24 months   NIH-Crypto      BANGLADESH                     0%                 1        2    514
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]           0      274    514
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]           1        2    514
24 months   NIH-Crypto      BANGLADESH                     >5%                0      115    514
24 months   NIH-Crypto      BANGLADESH                     >5%                1        0    514
24 months   PROVIDE         BANGLADESH                     0%                 0        9    579
24 months   PROVIDE         BANGLADESH                     0%                 1        0    579
24 months   PROVIDE         BANGLADESH                     (0%, 5%]           0      390    579
24 months   PROVIDE         BANGLADESH                     (0%, 5%]           1        6    579
24 months   PROVIDE         BANGLADESH                     >5%                0      171    579
24 months   PROVIDE         BANGLADESH                     >5%                1        3    579


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
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/eea7c663-b9db-4e32-a164-1daba34b5bd2/c6a1e3ea-07a7-4204-9a25-a28516b6a5c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eea7c663-b9db-4e32-a164-1daba34b5bd2/c6a1e3ea-07a7-4204-9a25-a28516b6a5c5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eea7c663-b9db-4e32-a164-1daba34b5bd2/c6a1e3ea-07a7-4204-9a25-a28516b6a5c5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eea7c663-b9db-4e32-a164-1daba34b5bd2/c6a1e3ea-07a7-4204-9a25-a28516b6a5c5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       NIH-Crypto   BANGLADESH   0%                   NA                0.0677969    0.0310712   0.1045225
Birth       NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0617766    0.0371896   0.0863635
Birth       NIH-Crypto   BANGLADESH   >5%                  NA                0.0716068    0.0319057   0.1113078
24 months   JiVitA-4     BANGLADESH   0%                   NA                0.0365854   -0.0066155   0.0797863
24 months   JiVitA-4     BANGLADESH   (0%, 5%]             NA                0.0267026    0.0210680   0.0323372
24 months   JiVitA-4     BANGLADESH   >5%                  NA                0.0286299    0.0162138   0.0410459


### Parameter: E(Y)


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539
24 months   JiVitA-4     BANGLADESH   NA                   NA                0.0272439   0.0220352   0.0324527


### Parameter: RR


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.9112009   0.4657793   1.782576
Birth       NIH-Crypto   BANGLADESH   >5%                  0%                1.0561962   0.4870289   2.290522
24 months   JiVitA-4     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   JiVitA-4     BANGLADESH   (0%, 5%]             0%                0.7298710   0.2185755   2.437197
24 months   JiVitA-4     BANGLADESH   >5%                  0%                0.7825494   0.2212828   2.767425


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level      estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  ----------  ----------
Birth       NIH-Crypto   BANGLADESH   0%                   NA                -0.0013188   -0.033041   0.0304034
24 months   JiVitA-4     BANGLADESH   0%                   NA                -0.0093414   -0.051499   0.0328162


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       NIH-Crypto   BANGLADESH   0%                   NA                -0.0198378   -0.6283265   0.3612650
24 months   JiVitA-4     BANGLADESH   0%                   NA                -0.3428815   -3.2260243   0.5732796
