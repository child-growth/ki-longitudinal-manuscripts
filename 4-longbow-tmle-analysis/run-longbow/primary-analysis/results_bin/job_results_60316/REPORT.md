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

**Outcome Variable:** wasted

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

agecat      studyid         country                        perdiar24    wasted   n_cell      n
----------  --------------  -----------------------------  ----------  -------  -------  -----
Birth       CMIN            BANGLADESH                     0%                0        4     19
Birth       CMIN            BANGLADESH                     0%                1        2     19
Birth       CMIN            BANGLADESH                     (0%, 5%]          0        3     19
Birth       CMIN            BANGLADESH                     (0%, 5%]          1        0     19
Birth       CMIN            BANGLADESH                     >5%               0        8     19
Birth       CMIN            BANGLADESH                     >5%               1        2     19
Birth       CONTENT         PERU                           0%                0        0      2
Birth       CONTENT         PERU                           0%                1        0      2
Birth       CONTENT         PERU                           (0%, 5%]          0        1      2
Birth       CONTENT         PERU                           (0%, 5%]          1        0      2
Birth       CONTENT         PERU                           >5%               0        1      2
Birth       CONTENT         PERU                           >5%               1        0      2
Birth       EE              PAKISTAN                       0%                0      100    177
Birth       EE              PAKISTAN                       0%                1       15    177
Birth       EE              PAKISTAN                       (0%, 5%]          0       55    177
Birth       EE              PAKISTAN                       (0%, 5%]          1        7    177
Birth       EE              PAKISTAN                       >5%               0        0    177
Birth       EE              PAKISTAN                       >5%               1        0    177
Birth       JiVitA-4        BANGLADESH                     0%                0       53   2396
Birth       JiVitA-4        BANGLADESH                     0%                1        8   2396
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]          0     1885   2396
Birth       JiVitA-4        BANGLADESH                     (0%, 5%]          1      206   2396
Birth       JiVitA-4        BANGLADESH                     >5%               0      219   2396
Birth       JiVitA-4        BANGLADESH                     >5%               1       25   2396
Birth       MAL-ED          BANGLADESH                     0%                0       13    215
Birth       MAL-ED          BANGLADESH                     0%                1        1    215
Birth       MAL-ED          BANGLADESH                     (0%, 5%]          0      101    215
Birth       MAL-ED          BANGLADESH                     (0%, 5%]          1       26    215
Birth       MAL-ED          BANGLADESH                     >5%               0       65    215
Birth       MAL-ED          BANGLADESH                     >5%               1        9    215
Birth       MAL-ED          BRAZIL                         0%                0       34     62
Birth       MAL-ED          BRAZIL                         0%                1        0     62
Birth       MAL-ED          BRAZIL                         (0%, 5%]          0       24     62
Birth       MAL-ED          BRAZIL                         (0%, 5%]          1        2     62
Birth       MAL-ED          BRAZIL                         >5%               0        2     62
Birth       MAL-ED          BRAZIL                         >5%               1        0     62
Birth       MAL-ED          INDIA                          0%                0        5     45
Birth       MAL-ED          INDIA                          0%                1        0     45
Birth       MAL-ED          INDIA                          (0%, 5%]          0       28     45
Birth       MAL-ED          INDIA                          (0%, 5%]          1        3     45
Birth       MAL-ED          INDIA                          >5%               0        7     45
Birth       MAL-ED          INDIA                          >5%               1        2     45
Birth       MAL-ED          NEPAL                          0%                0        2     26
Birth       MAL-ED          NEPAL                          0%                1        0     26
Birth       MAL-ED          NEPAL                          (0%, 5%]          0       18     26
Birth       MAL-ED          NEPAL                          (0%, 5%]          1        1     26
Birth       MAL-ED          NEPAL                          >5%               0        4     26
Birth       MAL-ED          NEPAL                          >5%               1        1     26
Birth       MAL-ED          PERU                           0%                0       21    228
Birth       MAL-ED          PERU                           0%                1        0    228
Birth       MAL-ED          PERU                           (0%, 5%]          0       87    228
Birth       MAL-ED          PERU                           (0%, 5%]          1        0    228
Birth       MAL-ED          PERU                           >5%               0      115    228
Birth       MAL-ED          PERU                           >5%               1        5    228
Birth       MAL-ED          SOUTH AFRICA                   0%                0       38    112
Birth       MAL-ED          SOUTH AFRICA                   0%                1        4    112
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]          0       63    112
Birth       MAL-ED          SOUTH AFRICA                   (0%, 5%]          1        6    112
Birth       MAL-ED          SOUTH AFRICA                   >5%               0        1    112
Birth       MAL-ED          SOUTH AFRICA                   >5%               1        0    112
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                0        7    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                1        0    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       76    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        1    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               0       31    115
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               1        0    115
Birth       NIH-Birth       BANGLADESH                     0%                0       34    572
Birth       NIH-Birth       BANGLADESH                     0%                1       12    572
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]          0      235    572
Birth       NIH-Birth       BANGLADESH                     (0%, 5%]          1       92    572
Birth       NIH-Birth       BANGLADESH                     >5%               0      135    572
Birth       NIH-Birth       BANGLADESH                     >5%               1       64    572
Birth       NIH-Crypto      BANGLADESH                     0%                0      102    707
Birth       NIH-Crypto      BANGLADESH                     0%                1       42    707
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]          0      294    707
Birth       NIH-Crypto      BANGLADESH                     (0%, 5%]          1       81    707
Birth       NIH-Crypto      BANGLADESH                     >5%               0      139    707
Birth       NIH-Crypto      BANGLADESH                     >5%               1       49    707
Birth       PROVIDE         BANGLADESH                     0%                0       41    532
Birth       PROVIDE         BANGLADESH                     0%                1       14    532
Birth       PROVIDE         BANGLADESH                     (0%, 5%]          0      259    532
Birth       PROVIDE         BANGLADESH                     (0%, 5%]          1       63    532
Birth       PROVIDE         BANGLADESH                     >5%               0      115    532
Birth       PROVIDE         BANGLADESH                     >5%               1       40    532
6 months    CMIN            BANGLADESH                     0%                0        2    243
6 months    CMIN            BANGLADESH                     0%                1        0    243
6 months    CMIN            BANGLADESH                     (0%, 5%]          0      100    243
6 months    CMIN            BANGLADESH                     (0%, 5%]          1       11    243
6 months    CMIN            BANGLADESH                     >5%               0      120    243
6 months    CMIN            BANGLADESH                     >5%               1       10    243
6 months    CONTENT         PERU                           0%                0        6    215
6 months    CONTENT         PERU                           0%                1        0    215
6 months    CONTENT         PERU                           (0%, 5%]          0      142    215
6 months    CONTENT         PERU                           (0%, 5%]          1        0    215
6 months    CONTENT         PERU                           >5%               0       67    215
6 months    CONTENT         PERU                           >5%               1        0    215
6 months    EE              PAKISTAN                       0%                0      223    375
6 months    EE              PAKISTAN                       0%                1       35    375
6 months    EE              PAKISTAN                       (0%, 5%]          0      105    375
6 months    EE              PAKISTAN                       (0%, 5%]          1       12    375
6 months    EE              PAKISTAN                       >5%               0        0    375
6 months    EE              PAKISTAN                       >5%               1        0    375
6 months    Guatemala BSC   GUATEMALA                      0%                0       28    299
6 months    Guatemala BSC   GUATEMALA                      0%                1        1    299
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]          0       70    299
6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]          1        0    299
6 months    Guatemala BSC   GUATEMALA                      >5%               0      197    299
6 months    Guatemala BSC   GUATEMALA                      >5%               1        3    299
6 months    JiVitA-4        BANGLADESH                     0%                0      149   4833
6 months    JiVitA-4        BANGLADESH                     0%                1        7   4833
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]          0     3928   4833
6 months    JiVitA-4        BANGLADESH                     (0%, 5%]          1      225   4833
6 months    JiVitA-4        BANGLADESH                     >5%               0      481   4833
6 months    JiVitA-4        BANGLADESH                     >5%               1       43   4833
6 months    MAL-ED          BANGLADESH                     0%                0        6    241
6 months    MAL-ED          BANGLADESH                     0%                1        0    241
6 months    MAL-ED          BANGLADESH                     (0%, 5%]          0      136    241
6 months    MAL-ED          BANGLADESH                     (0%, 5%]          1        6    241
6 months    MAL-ED          BANGLADESH                     >5%               0       91    241
6 months    MAL-ED          BANGLADESH                     >5%               1        2    241
6 months    MAL-ED          BRAZIL                         0%                0      106    209
6 months    MAL-ED          BRAZIL                         0%                1        0    209
6 months    MAL-ED          BRAZIL                         (0%, 5%]          0      100    209
6 months    MAL-ED          BRAZIL                         (0%, 5%]          1        1    209
6 months    MAL-ED          BRAZIL                         >5%               0        2    209
6 months    MAL-ED          BRAZIL                         >5%               1        0    209
6 months    MAL-ED          INDIA                          0%                0        3    236
6 months    MAL-ED          INDIA                          0%                1        0    236
6 months    MAL-ED          INDIA                          (0%, 5%]          0      177    236
6 months    MAL-ED          INDIA                          (0%, 5%]          1       14    236
6 months    MAL-ED          INDIA                          >5%               0       37    236
6 months    MAL-ED          INDIA                          >5%               1        5    236
6 months    MAL-ED          NEPAL                          0%                0       13    236
6 months    MAL-ED          NEPAL                          0%                1        1    236
6 months    MAL-ED          NEPAL                          (0%, 5%]          0      140    236
6 months    MAL-ED          NEPAL                          (0%, 5%]          1        3    236
6 months    MAL-ED          NEPAL                          >5%               0       79    236
6 months    MAL-ED          NEPAL                          >5%               1        0    236
6 months    MAL-ED          PERU                           0%                0        7    273
6 months    MAL-ED          PERU                           0%                1        0    273
6 months    MAL-ED          PERU                           (0%, 5%]          0      109    273
6 months    MAL-ED          PERU                           (0%, 5%]          1        0    273
6 months    MAL-ED          PERU                           >5%               0      157    273
6 months    MAL-ED          PERU                           >5%               1        0    273
6 months    MAL-ED          SOUTH AFRICA                   0%                0       76    254
6 months    MAL-ED          SOUTH AFRICA                   0%                1        2    254
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]          0      169    254
6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]          1        5    254
6 months    MAL-ED          SOUTH AFRICA                   >5%               0        2    254
6 months    MAL-ED          SOUTH AFRICA                   >5%               1        0    254
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                0        8    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                1        1    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0      177    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        0    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               0       61    247
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               1        0    247
6 months    NIH-Birth       BANGLADESH                     0%                0       15    537
6 months    NIH-Birth       BANGLADESH                     0%                1        0    537
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]          0      316    537
6 months    NIH-Birth       BANGLADESH                     (0%, 5%]          1       23    537
6 months    NIH-Birth       BANGLADESH                     >5%               0      171    537
6 months    NIH-Birth       BANGLADESH                     >5%               1       12    537
6 months    NIH-Crypto      BANGLADESH                     0%                0      130    715
6 months    NIH-Crypto      BANGLADESH                     0%                1        4    715
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]          0      379    715
6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]          1        7    715
6 months    NIH-Crypto      BANGLADESH                     >5%               0      185    715
6 months    NIH-Crypto      BANGLADESH                     >5%               1       10    715
6 months    PROVIDE         BANGLADESH                     0%                0       12    603
6 months    PROVIDE         BANGLADESH                     0%                1        0    603
6 months    PROVIDE         BANGLADESH                     (0%, 5%]          0      390    603
6 months    PROVIDE         BANGLADESH                     (0%, 5%]          1       18    603
6 months    PROVIDE         BANGLADESH                     >5%               0      176    603
6 months    PROVIDE         BANGLADESH                     >5%               1        7    603
6 months    SAS-FoodSuppl   INDIA                          0%                0       61    380
6 months    SAS-FoodSuppl   INDIA                          0%                1       13    380
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]          0       38    380
6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]          1        8    380
6 months    SAS-FoodSuppl   INDIA                          >5%               0      212    380
6 months    SAS-FoodSuppl   INDIA                          >5%               1       48    380
24 months   CMIN            BANGLADESH                     0%                0        3    243
24 months   CMIN            BANGLADESH                     0%                1        0    243
24 months   CMIN            BANGLADESH                     (0%, 5%]          0       99    243
24 months   CMIN            BANGLADESH                     (0%, 5%]          1       15    243
24 months   CMIN            BANGLADESH                     >5%               0      116    243
24 months   CMIN            BANGLADESH                     >5%               1       10    243
24 months   CONTENT         PERU                           0%                0        4    164
24 months   CONTENT         PERU                           0%                1        0    164
24 months   CONTENT         PERU                           (0%, 5%]          0      107    164
24 months   CONTENT         PERU                           (0%, 5%]          1        1    164
24 months   CONTENT         PERU                           >5%               0       52    164
24 months   CONTENT         PERU                           >5%               1        0    164
24 months   EE              PAKISTAN                       0%                0       94    168
24 months   EE              PAKISTAN                       0%                1       22    168
24 months   EE              PAKISTAN                       (0%, 5%]          0       44    168
24 months   EE              PAKISTAN                       (0%, 5%]          1        8    168
24 months   EE              PAKISTAN                       >5%               0        0    168
24 months   EE              PAKISTAN                       >5%               1        0    168
24 months   JiVitA-4        BANGLADESH                     0%                0      129   4735
24 months   JiVitA-4        BANGLADESH                     0%                1       35   4735
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]          0     3293   4735
24 months   JiVitA-4        BANGLADESH                     (0%, 5%]          1      789   4735
24 months   JiVitA-4        BANGLADESH                     >5%               0      393   4735
24 months   JiVitA-4        BANGLADESH                     >5%               1       96   4735
24 months   MAL-ED          BANGLADESH                     0%                0        5    212
24 months   MAL-ED          BANGLADESH                     0%                1        1    212
24 months   MAL-ED          BANGLADESH                     (0%, 5%]          0      114    212
24 months   MAL-ED          BANGLADESH                     (0%, 5%]          1       16    212
24 months   MAL-ED          BANGLADESH                     >5%               0       72    212
24 months   MAL-ED          BANGLADESH                     >5%               1        4    212
24 months   MAL-ED          BRAZIL                         0%                0       75    169
24 months   MAL-ED          BRAZIL                         0%                1        1    169
24 months   MAL-ED          BRAZIL                         (0%, 5%]          0       89    169
24 months   MAL-ED          BRAZIL                         (0%, 5%]          1        2    169
24 months   MAL-ED          BRAZIL                         >5%               0        2    169
24 months   MAL-ED          BRAZIL                         >5%               1        0    169
24 months   MAL-ED          INDIA                          0%                0        3    227
24 months   MAL-ED          INDIA                          0%                1        0    227
24 months   MAL-ED          INDIA                          (0%, 5%]          0      160    227
24 months   MAL-ED          INDIA                          (0%, 5%]          1       23    227
24 months   MAL-ED          INDIA                          >5%               0       37    227
24 months   MAL-ED          INDIA                          >5%               1        4    227
24 months   MAL-ED          NEPAL                          0%                0       12    228
24 months   MAL-ED          NEPAL                          0%                1        0    228
24 months   MAL-ED          NEPAL                          (0%, 5%]          0      138    228
24 months   MAL-ED          NEPAL                          (0%, 5%]          1        2    228
24 months   MAL-ED          NEPAL                          >5%               0       73    228
24 months   MAL-ED          NEPAL                          >5%               1        3    228
24 months   MAL-ED          PERU                           0%                0        1    201
24 months   MAL-ED          PERU                           0%                1        0    201
24 months   MAL-ED          PERU                           (0%, 5%]          0       82    201
24 months   MAL-ED          PERU                           (0%, 5%]          1        2    201
24 months   MAL-ED          PERU                           >5%               0      114    201
24 months   MAL-ED          PERU                           >5%               1        2    201
24 months   MAL-ED          SOUTH AFRICA                   0%                0       71    238
24 months   MAL-ED          SOUTH AFRICA                   0%                1        0    238
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]          0      165    238
24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]          1        1    238
24 months   MAL-ED          SOUTH AFRICA                   >5%               0        1    238
24 months   MAL-ED          SOUTH AFRICA                   >5%               1        0    238
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                0        6    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                1        0    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0      154    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        2    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               0       50    214
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%               1        2    214
24 months   NIH-Birth       BANGLADESH                     0%                0        4    428
24 months   NIH-Birth       BANGLADESH                     0%                1        1    428
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]          0      239    428
24 months   NIH-Birth       BANGLADESH                     (0%, 5%]          1       39    428
24 months   NIH-Birth       BANGLADESH                     >5%               0      132    428
24 months   NIH-Birth       BANGLADESH                     >5%               1       13    428
24 months   NIH-Crypto      BANGLADESH                     0%                0      112    514
24 months   NIH-Crypto      BANGLADESH                     0%                1       11    514
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]          0      252    514
24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]          1       24    514
24 months   NIH-Crypto      BANGLADESH                     >5%               0      105    514
24 months   NIH-Crypto      BANGLADESH                     >5%               1       10    514
24 months   PROVIDE         BANGLADESH                     0%                0        9    579
24 months   PROVIDE         BANGLADESH                     0%                1        0    579
24 months   PROVIDE         BANGLADESH                     (0%, 5%]          0      350    579
24 months   PROVIDE         BANGLADESH                     (0%, 5%]          1       46    579
24 months   PROVIDE         BANGLADESH                     >5%               0      158    579
24 months   PROVIDE         BANGLADESH                     >5%               1       16    579


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




# Results Detail

## Results Plots
![](/tmp/69bf264e-5809-49fc-9efa-b870534e10fe/d5247c0d-fa5e-49cb-aff4-d48e7b7ba16f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/69bf264e-5809-49fc-9efa-b870534e10fe/d5247c0d-fa5e-49cb-aff4-d48e7b7ba16f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/69bf264e-5809-49fc-9efa-b870534e10fe/d5247c0d-fa5e-49cb-aff4-d48e7b7ba16f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/69bf264e-5809-49fc-9efa-b870534e10fe/d5247c0d-fa5e-49cb-aff4-d48e7b7ba16f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       JiVitA-4        BANGLADESH   0%                   NA                0.1311475   -0.0090976   0.2713927
Birth       JiVitA-4        BANGLADESH   (0%, 5%]             NA                0.0985175    0.0826046   0.1144303
Birth       JiVitA-4        BANGLADESH   >5%                  NA                0.1024590    0.0470775   0.1578405
Birth       NIH-Birth       BANGLADESH   0%                   NA                0.2905907    0.1679859   0.4131956
Birth       NIH-Birth       BANGLADESH   (0%, 5%]             NA                0.2789300    0.2305774   0.3272826
Birth       NIH-Birth       BANGLADESH   >5%                  NA                0.3225215    0.2569264   0.3881166
Birth       NIH-Crypto      BANGLADESH   0%                   NA                0.2739576    0.2151198   0.3327955
Birth       NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.2248953    0.1878967   0.2618940
Birth       NIH-Crypto      BANGLADESH   >5%                  NA                0.2531992    0.2090316   0.2973668
Birth       PROVIDE         BANGLADESH   0%                   NA                0.2415213    0.1285462   0.3544964
Birth       PROVIDE         BANGLADESH   (0%, 5%]             NA                0.1975906    0.1541196   0.2410616
Birth       PROVIDE         BANGLADESH   >5%                  NA                0.2600526    0.1912141   0.3288910
6 months    JiVitA-4        BANGLADESH   0%                   NA                0.0448718    0.0095437   0.0801999
6 months    JiVitA-4        BANGLADESH   (0%, 5%]             NA                0.0541777    0.0449929   0.0633625
6 months    JiVitA-4        BANGLADESH   >5%                  NA                0.0820611    0.0486177   0.1155045
6 months    SAS-FoodSuppl   INDIA        0%                   NA                0.1756757    0.0888578   0.2624936
6 months    SAS-FoodSuppl   INDIA        (0%, 5%]             NA                0.1739130    0.0642348   0.2835912
6 months    SAS-FoodSuppl   INDIA        >5%                  NA                0.1846154    0.1373929   0.2318379
24 months   JiVitA-4        BANGLADESH   0%                   NA                0.2163984    0.1442260   0.2885708
24 months   JiVitA-4        BANGLADESH   (0%, 5%]             NA                0.1928880    0.1789680   0.2068080
24 months   JiVitA-4        BANGLADESH   >5%                  NA                0.1964746    0.1486263   0.2443229
24 months   NIH-Crypto      BANGLADESH   0%                   NA                0.0895368    0.0384016   0.1406720
24 months   NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.0871473    0.0536686   0.1206260
24 months   NIH-Crypto      BANGLADESH   >5%                  NA                0.0852405    0.0341181   0.1363628


### Parameter: E(Y)


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       JiVitA-4        BANGLADESH   NA                   NA                0.0997496   0.0843744   0.1151247
Birth       NIH-Birth       BANGLADESH   NA                   NA                0.2937063   0.2563487   0.3310639
Birth       NIH-Crypto      BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROVIDE         BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
6 months    JiVitA-4        BANGLADESH   NA                   NA                0.0569005   0.0480577   0.0657432
6 months    SAS-FoodSuppl   INDIA        NA                   NA                0.1815789   0.1427684   0.2203895
24 months   JiVitA-4        BANGLADESH   NA                   NA                0.1942978   0.1810880   0.2075076
24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065


### Parameter: RR


agecat      studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       JiVitA-4        BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       JiVitA-4        BANGLADESH   (0%, 5%]             0%                0.7511956   0.2542327   2.219600
Birth       JiVitA-4        BANGLADESH   >5%                  0%                0.7812500   0.2381172   2.563241
Birth       NIH-Birth       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       NIH-Birth       BANGLADESH   (0%, 5%]             0%                0.9598723   0.6091231   1.512592
Birth       NIH-Birth       BANGLADESH   >5%                  0%                1.1098822   0.6960861   1.769664
Birth       NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       NIH-Crypto      BANGLADESH   (0%, 5%]             0%                0.8209128   0.6479213   1.040092
Birth       NIH-Crypto      BANGLADESH   >5%                  0%                0.9242275   0.7239847   1.179854
Birth       PROVIDE         BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
Birth       PROVIDE         BANGLADESH   (0%, 5%]             0%                0.8181084   0.4883265   1.370602
Birth       PROVIDE         BANGLADESH   >5%                  0%                1.0767272   0.6298481   1.840668
6 months    JiVitA-4        BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6 months    JiVitA-4        BANGLADESH   (0%, 5%]             0%                1.2073888   0.5378249   2.710525
6 months    JiVitA-4        BANGLADESH   >5%                  0%                1.8287895   0.7794357   4.290888
6 months    SAS-FoodSuppl   INDIA        0%                   0%                1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl   INDIA        (0%, 5%]             0%                0.9899666   0.4442801   2.205892
6 months    SAS-FoodSuppl   INDIA        >5%                  0%                1.0508876   0.6024010   1.833272
24 months   JiVitA-4        BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   JiVitA-4        BANGLADESH   (0%, 5%]             0%                0.8913559   0.6324944   1.256162
24 months   JiVitA-4        BANGLADESH   >5%                  0%                0.9079299   0.6012226   1.371101
24 months   NIH-Crypto      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
24 months   NIH-Crypto      BANGLADESH   (0%, 5%]             0%                0.9733126   0.4888860   1.937747
24 months   NIH-Crypto      BANGLADESH   >5%                  0%                0.9520162   0.4158970   2.179229


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-4        BANGLADESH   0%                   NA                -0.0313980   -0.1689018   0.1061058
Birth       NIH-Birth       BANGLADESH   0%                   NA                 0.0031156   -0.1148664   0.1210976
Birth       NIH-Crypto      BANGLADESH   0%                   NA                -0.0306762   -0.0782162   0.0168639
Birth       PROVIDE         BANGLADESH   0%                   NA                -0.0215965   -0.1278534   0.0846605
6 months    JiVitA-4        BANGLADESH   0%                   NA                 0.0120287   -0.0230586   0.0471160
6 months    SAS-FoodSuppl   INDIA        0%                   NA                 0.0059033   -0.0722505   0.0840570
24 months   JiVitA-4        BANGLADESH   0%                   NA                -0.0221006   -0.0932101   0.0490088
24 months   NIH-Crypto      BANGLADESH   0%                   NA                -0.0019882   -0.0464805   0.0425041


### Parameter: PAF


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-4        BANGLADESH   0%                   NA                -0.3147678   -2.7366393   0.5373879
Birth       NIH-Birth       BANGLADESH   0%                   NA                 0.0106078   -0.4848318   0.3407354
Birth       NIH-Crypto      BANGLADESH   0%                   NA                -0.1260934   -0.3390057   0.0529643
Birth       PROVIDE         BANGLADESH   0%                   NA                -0.0981994   -0.7047359   0.2925345
6 months    JiVitA-4        BANGLADESH   0%                   NA                 0.2113986   -0.7184872   0.6381165
6 months    SAS-FoodSuppl   INDIA        0%                   NA                 0.0325108   -0.5095190   0.3799115
24 months   JiVitA-4        BANGLADESH   0%                   NA                -0.1137462   -0.5472654   0.1983078
24 months   NIH-Crypto      BANGLADESH   0%                   NA                -0.0227092   -0.6808585   0.3777382
