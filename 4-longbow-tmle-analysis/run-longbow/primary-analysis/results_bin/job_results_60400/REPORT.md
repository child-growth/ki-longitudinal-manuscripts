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

**Outcome Variable:** wast_rec90d

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

agecat        studyid         country                        perdiar24    wast_rec90d   n_cell      n
------------  --------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   CMIN            BANGLADESH                     0%                     0        2    190
0-24 months   CMIN            BANGLADESH                     0%                     1        1    190
0-24 months   CMIN            BANGLADESH                     (0%, 5%]               0       41    190
0-24 months   CMIN            BANGLADESH                     (0%, 5%]               1       47    190
0-24 months   CMIN            BANGLADESH                     >5%                    0       37    190
0-24 months   CMIN            BANGLADESH                     >5%                    1       62    190
0-24 months   CONTENT         PERU                           0%                     0        0      7
0-24 months   CONTENT         PERU                           0%                     1        0      7
0-24 months   CONTENT         PERU                           (0%, 5%]               0        1      7
0-24 months   CONTENT         PERU                           (0%, 5%]               1        4      7
0-24 months   CONTENT         PERU                           >5%                    0        0      7
0-24 months   CONTENT         PERU                           >5%                    1        2      7
0-24 months   EE              PAKISTAN                       0%                     0      114    323
0-24 months   EE              PAKISTAN                       0%                     1      100    323
0-24 months   EE              PAKISTAN                       (0%, 5%]               0       46    323
0-24 months   EE              PAKISTAN                       (0%, 5%]               1       63    323
0-24 months   EE              PAKISTAN                       >5%                    0        0    323
0-24 months   EE              PAKISTAN                       >5%                    1        0    323
0-24 months   Guatemala BSC   GUATEMALA                      0%                     0        2     38
0-24 months   Guatemala BSC   GUATEMALA                      0%                     1        1     38
0-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]               0        6     38
0-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]               1        7     38
0-24 months   Guatemala BSC   GUATEMALA                      >5%                    0       13     38
0-24 months   Guatemala BSC   GUATEMALA                      >5%                    1        9     38
0-24 months   iLiNS-Zinc      BURKINA FASO                   0%                     0       94    635
0-24 months   iLiNS-Zinc      BURKINA FASO                   0%                     1        2    635
0-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]               0      311    635
0-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]               1       20    635
0-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                    0      194    635
0-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                    1       14    635
0-24 months   JiVitA-4        BANGLADESH                     0%                     0       56   2069
0-24 months   JiVitA-4        BANGLADESH                     0%                     1       19   2069
0-24 months   JiVitA-4        BANGLADESH                     (0%, 5%]               0     1269   2069
0-24 months   JiVitA-4        BANGLADESH                     (0%, 5%]               1      449   2069
0-24 months   JiVitA-4        BANGLADESH                     >5%                    0      209   2069
0-24 months   JiVitA-4        BANGLADESH                     >5%                    1       67   2069
0-24 months   MAL-ED          BANGLADESH                     0%                     0        3    124
0-24 months   MAL-ED          BANGLADESH                     0%                     1        3    124
0-24 months   MAL-ED          BANGLADESH                     (0%, 5%]               0       29    124
0-24 months   MAL-ED          BANGLADESH                     (0%, 5%]               1       48    124
0-24 months   MAL-ED          BANGLADESH                     >5%                    0       12    124
0-24 months   MAL-ED          BANGLADESH                     >5%                    1       29    124
0-24 months   MAL-ED          BRAZIL                         0%                     0        2     24
0-24 months   MAL-ED          BRAZIL                         0%                     1        6     24
0-24 months   MAL-ED          BRAZIL                         (0%, 5%]               0        3     24
0-24 months   MAL-ED          BRAZIL                         (0%, 5%]               1       12     24
0-24 months   MAL-ED          BRAZIL                         >5%                    0        1     24
0-24 months   MAL-ED          BRAZIL                         >5%                    1        0     24
0-24 months   MAL-ED          INDIA                          0%                     0        2    181
0-24 months   MAL-ED          INDIA                          0%                     1        2    181
0-24 months   MAL-ED          INDIA                          (0%, 5%]               0       53    181
0-24 months   MAL-ED          INDIA                          (0%, 5%]               1       88    181
0-24 months   MAL-ED          INDIA                          >5%                    0       16    181
0-24 months   MAL-ED          INDIA                          >5%                    1       20    181
0-24 months   MAL-ED          NEPAL                          0%                     0        3     98
0-24 months   MAL-ED          NEPAL                          0%                     1        4     98
0-24 months   MAL-ED          NEPAL                          (0%, 5%]               0       11     98
0-24 months   MAL-ED          NEPAL                          (0%, 5%]               1       54     98
0-24 months   MAL-ED          NEPAL                          >5%                    0        6     98
0-24 months   MAL-ED          NEPAL                          >5%                    1       20     98
0-24 months   MAL-ED          PERU                           0%                     0        0     35
0-24 months   MAL-ED          PERU                           0%                     1        0     35
0-24 months   MAL-ED          PERU                           (0%, 5%]               0        3     35
0-24 months   MAL-ED          PERU                           (0%, 5%]               1        9     35
0-24 months   MAL-ED          PERU                           >5%                    0        3     35
0-24 months   MAL-ED          PERU                           >5%                    1       20     35
0-24 months   MAL-ED          SOUTH AFRICA                   0%                     0        5     84
0-24 months   MAL-ED          SOUTH AFRICA                   0%                     1       29     84
0-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]               0       10     84
0-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       40     84
0-24 months   MAL-ED          SOUTH AFRICA                   >5%                    0        0     84
0-24 months   MAL-ED          SOUTH AFRICA                   >5%                    1        0     84
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0        1     51
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        2     51
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0        3     51
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       33     51
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0        5     51
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        7     51
0-24 months   NIH-Birth       BANGLADESH                     0%                     0        9    421
0-24 months   NIH-Birth       BANGLADESH                     0%                     1        6    421
0-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]               0      137    421
0-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]               1      110    421
0-24 months   NIH-Birth       BANGLADESH                     >5%                    0       56    421
0-24 months   NIH-Birth       BANGLADESH                     >5%                    1      103    421
0-24 months   NIH-Crypto      BANGLADESH                     0%                     0       25    310
0-24 months   NIH-Crypto      BANGLADESH                     0%                     1       43    310
0-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]               0       57    310
0-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]               1       97    310
0-24 months   NIH-Crypto      BANGLADESH                     >5%                    0       35    310
0-24 months   NIH-Crypto      BANGLADESH                     >5%                    1       53    310
0-24 months   PROVIDE         BANGLADESH                     0%                     0       11    308
0-24 months   PROVIDE         BANGLADESH                     0%                     1        8    308
0-24 months   PROVIDE         BANGLADESH                     (0%, 5%]               0       84    308
0-24 months   PROVIDE         BANGLADESH                     (0%, 5%]               1      116    308
0-24 months   PROVIDE         BANGLADESH                     >5%                    0       34    308
0-24 months   PROVIDE         BANGLADESH                     >5%                    1       55    308
0-24 months   SAS-FoodSuppl   INDIA                          0%                     0       48    234
0-24 months   SAS-FoodSuppl   INDIA                          0%                     1        1    234
0-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]               0       23    234
0-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]               1        1    234
0-24 months   SAS-FoodSuppl   INDIA                          >5%                    0      150    234
0-24 months   SAS-FoodSuppl   INDIA                          >5%                    1       11    234
0-6 months    CMIN            BANGLADESH                     0%                     0        2     52
0-6 months    CMIN            BANGLADESH                     0%                     1        0     52
0-6 months    CMIN            BANGLADESH                     (0%, 5%]               0       13     52
0-6 months    CMIN            BANGLADESH                     (0%, 5%]               1       14     52
0-6 months    CMIN            BANGLADESH                     >5%                    0       10     52
0-6 months    CMIN            BANGLADESH                     >5%                    1       13     52
0-6 months    CONTENT         PERU                           0%                     0        0      4
0-6 months    CONTENT         PERU                           0%                     1        0      4
0-6 months    CONTENT         PERU                           (0%, 5%]               0        0      4
0-6 months    CONTENT         PERU                           (0%, 5%]               1        2      4
0-6 months    CONTENT         PERU                           >5%                    0        0      4
0-6 months    CONTENT         PERU                           >5%                    1        2      4
0-6 months    EE              PAKISTAN                       0%                     0       40    127
0-6 months    EE              PAKISTAN                       0%                     1       41    127
0-6 months    EE              PAKISTAN                       (0%, 5%]               0       15    127
0-6 months    EE              PAKISTAN                       (0%, 5%]               1       31    127
0-6 months    EE              PAKISTAN                       >5%                    0        0    127
0-6 months    EE              PAKISTAN                       >5%                    1        0    127
0-6 months    Guatemala BSC   GUATEMALA                      0%                     0        1     10
0-6 months    Guatemala BSC   GUATEMALA                      0%                     1        0     10
0-6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]               0        1     10
0-6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]               1        2     10
0-6 months    Guatemala BSC   GUATEMALA                      >5%                    0        4     10
0-6 months    Guatemala BSC   GUATEMALA                      >5%                    1        2     10
0-6 months    JiVitA-4        BANGLADESH                     0%                     0        8    553
0-6 months    JiVitA-4        BANGLADESH                     0%                     1       13    553
0-6 months    JiVitA-4        BANGLADESH                     (0%, 5%]               0      202    553
0-6 months    JiVitA-4        BANGLADESH                     (0%, 5%]               1      262    553
0-6 months    JiVitA-4        BANGLADESH                     >5%                    0       34    553
0-6 months    JiVitA-4        BANGLADESH                     >5%                    1       34    553
0-6 months    MAL-ED          BANGLADESH                     0%                     0        1     63
0-6 months    MAL-ED          BANGLADESH                     0%                     1        2     63
0-6 months    MAL-ED          BANGLADESH                     (0%, 5%]               0        9     63
0-6 months    MAL-ED          BANGLADESH                     (0%, 5%]               1       28     63
0-6 months    MAL-ED          BANGLADESH                     >5%                    0        3     63
0-6 months    MAL-ED          BANGLADESH                     >5%                    1       20     63
0-6 months    MAL-ED          BRAZIL                         0%                     0        0     15
0-6 months    MAL-ED          BRAZIL                         0%                     1        5     15
0-6 months    MAL-ED          BRAZIL                         (0%, 5%]               0        1     15
0-6 months    MAL-ED          BRAZIL                         (0%, 5%]               1        9     15
0-6 months    MAL-ED          BRAZIL                         >5%                    0        0     15
0-6 months    MAL-ED          BRAZIL                         >5%                    1        0     15
0-6 months    MAL-ED          INDIA                          0%                     0        2     86
0-6 months    MAL-ED          INDIA                          0%                     1        1     86
0-6 months    MAL-ED          INDIA                          (0%, 5%]               0       17     86
0-6 months    MAL-ED          INDIA                          (0%, 5%]               1       46     86
0-6 months    MAL-ED          INDIA                          >5%                    0        8     86
0-6 months    MAL-ED          INDIA                          >5%                    1       12     86
0-6 months    MAL-ED          NEPAL                          0%                     0        2     48
0-6 months    MAL-ED          NEPAL                          0%                     1        2     48
0-6 months    MAL-ED          NEPAL                          (0%, 5%]               0        6     48
0-6 months    MAL-ED          NEPAL                          (0%, 5%]               1       28     48
0-6 months    MAL-ED          NEPAL                          >5%                    0        1     48
0-6 months    MAL-ED          NEPAL                          >5%                    1        9     48
0-6 months    MAL-ED          PERU                           0%                     0        0     11
0-6 months    MAL-ED          PERU                           0%                     1        0     11
0-6 months    MAL-ED          PERU                           (0%, 5%]               0        0     11
0-6 months    MAL-ED          PERU                           (0%, 5%]               1        2     11
0-6 months    MAL-ED          PERU                           >5%                    0        0     11
0-6 months    MAL-ED          PERU                           >5%                    1        9     11
0-6 months    MAL-ED          SOUTH AFRICA                   0%                     0        2     33
0-6 months    MAL-ED          SOUTH AFRICA                   0%                     1       13     33
0-6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]               0        4     33
0-6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       14     33
0-6 months    MAL-ED          SOUTH AFRICA                   >5%                    0        0     33
0-6 months    MAL-ED          SOUTH AFRICA                   >5%                    1        0     33
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0        1     14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        0     14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0        0     14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       11     14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0        0     14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        2     14
0-6 months    NIH-Birth       BANGLADESH                     0%                     0        8    223
0-6 months    NIH-Birth       BANGLADESH                     0%                     1        6    223
0-6 months    NIH-Birth       BANGLADESH                     (0%, 5%]               0       34    223
0-6 months    NIH-Birth       BANGLADESH                     (0%, 5%]               1       86    223
0-6 months    NIH-Birth       BANGLADESH                     >5%                    0       22    223
0-6 months    NIH-Birth       BANGLADESH                     >5%                    1       67    223
0-6 months    NIH-Crypto      BANGLADESH                     0%                     0        3    197
0-6 months    NIH-Crypto      BANGLADESH                     0%                     1       42    197
0-6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]               0        8    197
0-6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]               1       89    197
0-6 months    NIH-Crypto      BANGLADESH                     >5%                    0       10    197
0-6 months    NIH-Crypto      BANGLADESH                     >5%                    1       45    197
0-6 months    PROVIDE         BANGLADESH                     0%                     0        9    185
0-6 months    PROVIDE         BANGLADESH                     0%                     1        7    185
0-6 months    PROVIDE         BANGLADESH                     (0%, 5%]               0       21    185
0-6 months    PROVIDE         BANGLADESH                     (0%, 5%]               1       90    185
0-6 months    PROVIDE         BANGLADESH                     >5%                    0       10    185
0-6 months    PROVIDE         BANGLADESH                     >5%                    1       48    185
0-6 months    SAS-FoodSuppl   INDIA                          0%                     0       16     78
0-6 months    SAS-FoodSuppl   INDIA                          0%                     1        0     78
0-6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]               0       11     78
0-6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]               1        0     78
0-6 months    SAS-FoodSuppl   INDIA                          >5%                    0       51     78
0-6 months    SAS-FoodSuppl   INDIA                          >5%                    1        0     78
6-24 months   CMIN            BANGLADESH                     0%                     0        0    138
6-24 months   CMIN            BANGLADESH                     0%                     1        1    138
6-24 months   CMIN            BANGLADESH                     (0%, 5%]               0       28    138
6-24 months   CMIN            BANGLADESH                     (0%, 5%]               1       33    138
6-24 months   CMIN            BANGLADESH                     >5%                    0       27    138
6-24 months   CMIN            BANGLADESH                     >5%                    1       49    138
6-24 months   CONTENT         PERU                           0%                     0        0      3
6-24 months   CONTENT         PERU                           0%                     1        0      3
6-24 months   CONTENT         PERU                           (0%, 5%]               0        1      3
6-24 months   CONTENT         PERU                           (0%, 5%]               1        2      3
6-24 months   CONTENT         PERU                           >5%                    0        0      3
6-24 months   CONTENT         PERU                           >5%                    1        0      3
6-24 months   EE              PAKISTAN                       0%                     0       74    196
6-24 months   EE              PAKISTAN                       0%                     1       59    196
6-24 months   EE              PAKISTAN                       (0%, 5%]               0       31    196
6-24 months   EE              PAKISTAN                       (0%, 5%]               1       32    196
6-24 months   EE              PAKISTAN                       >5%                    0        0    196
6-24 months   EE              PAKISTAN                       >5%                    1        0    196
6-24 months   Guatemala BSC   GUATEMALA                      0%                     0        1     28
6-24 months   Guatemala BSC   GUATEMALA                      0%                     1        1     28
6-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]               0        5     28
6-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]               1        5     28
6-24 months   Guatemala BSC   GUATEMALA                      >5%                    0        9     28
6-24 months   Guatemala BSC   GUATEMALA                      >5%                    1        7     28
6-24 months   iLiNS-Zinc      BURKINA FASO                   0%                     0       94    635
6-24 months   iLiNS-Zinc      BURKINA FASO                   0%                     1        2    635
6-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]               0      311    635
6-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]               1       20    635
6-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                    0      194    635
6-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                    1       14    635
6-24 months   JiVitA-4        BANGLADESH                     0%                     0       48   1516
6-24 months   JiVitA-4        BANGLADESH                     0%                     1        6   1516
6-24 months   JiVitA-4        BANGLADESH                     (0%, 5%]               0     1067   1516
6-24 months   JiVitA-4        BANGLADESH                     (0%, 5%]               1      187   1516
6-24 months   JiVitA-4        BANGLADESH                     >5%                    0      175   1516
6-24 months   JiVitA-4        BANGLADESH                     >5%                    1       33   1516
6-24 months   MAL-ED          BANGLADESH                     0%                     0        2     61
6-24 months   MAL-ED          BANGLADESH                     0%                     1        1     61
6-24 months   MAL-ED          BANGLADESH                     (0%, 5%]               0       20     61
6-24 months   MAL-ED          BANGLADESH                     (0%, 5%]               1       20     61
6-24 months   MAL-ED          BANGLADESH                     >5%                    0        9     61
6-24 months   MAL-ED          BANGLADESH                     >5%                    1        9     61
6-24 months   MAL-ED          BRAZIL                         0%                     0        2      9
6-24 months   MAL-ED          BRAZIL                         0%                     1        1      9
6-24 months   MAL-ED          BRAZIL                         (0%, 5%]               0        2      9
6-24 months   MAL-ED          BRAZIL                         (0%, 5%]               1        3      9
6-24 months   MAL-ED          BRAZIL                         >5%                    0        1      9
6-24 months   MAL-ED          BRAZIL                         >5%                    1        0      9
6-24 months   MAL-ED          INDIA                          0%                     0        0     95
6-24 months   MAL-ED          INDIA                          0%                     1        1     95
6-24 months   MAL-ED          INDIA                          (0%, 5%]               0       36     95
6-24 months   MAL-ED          INDIA                          (0%, 5%]               1       42     95
6-24 months   MAL-ED          INDIA                          >5%                    0        8     95
6-24 months   MAL-ED          INDIA                          >5%                    1        8     95
6-24 months   MAL-ED          NEPAL                          0%                     0        1     50
6-24 months   MAL-ED          NEPAL                          0%                     1        2     50
6-24 months   MAL-ED          NEPAL                          (0%, 5%]               0        5     50
6-24 months   MAL-ED          NEPAL                          (0%, 5%]               1       26     50
6-24 months   MAL-ED          NEPAL                          >5%                    0        5     50
6-24 months   MAL-ED          NEPAL                          >5%                    1       11     50
6-24 months   MAL-ED          PERU                           0%                     0        0     24
6-24 months   MAL-ED          PERU                           0%                     1        0     24
6-24 months   MAL-ED          PERU                           (0%, 5%]               0        3     24
6-24 months   MAL-ED          PERU                           (0%, 5%]               1        7     24
6-24 months   MAL-ED          PERU                           >5%                    0        3     24
6-24 months   MAL-ED          PERU                           >5%                    1       11     24
6-24 months   MAL-ED          SOUTH AFRICA                   0%                     0        3     51
6-24 months   MAL-ED          SOUTH AFRICA                   0%                     1       16     51
6-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]               0        6     51
6-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       26     51
6-24 months   MAL-ED          SOUTH AFRICA                   >5%                    0        0     51
6-24 months   MAL-ED          SOUTH AFRICA                   >5%                    1        0     51
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0        0     37
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        2     37
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0        3     37
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       22     37
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0        5     37
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        5     37
6-24 months   NIH-Birth       BANGLADESH                     0%                     0        1    198
6-24 months   NIH-Birth       BANGLADESH                     0%                     1        0    198
6-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]               0      103    198
6-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]               1       24    198
6-24 months   NIH-Birth       BANGLADESH                     >5%                    0       34    198
6-24 months   NIH-Birth       BANGLADESH                     >5%                    1       36    198
6-24 months   NIH-Crypto      BANGLADESH                     0%                     0       22    113
6-24 months   NIH-Crypto      BANGLADESH                     0%                     1        1    113
6-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]               0       49    113
6-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]               1        8    113
6-24 months   NIH-Crypto      BANGLADESH                     >5%                    0       25    113
6-24 months   NIH-Crypto      BANGLADESH                     >5%                    1        8    113
6-24 months   PROVIDE         BANGLADESH                     0%                     0        2    123
6-24 months   PROVIDE         BANGLADESH                     0%                     1        1    123
6-24 months   PROVIDE         BANGLADESH                     (0%, 5%]               0       63    123
6-24 months   PROVIDE         BANGLADESH                     (0%, 5%]               1       26    123
6-24 months   PROVIDE         BANGLADESH                     >5%                    0       24    123
6-24 months   PROVIDE         BANGLADESH                     >5%                    1        7    123
6-24 months   SAS-FoodSuppl   INDIA                          0%                     0       32    156
6-24 months   SAS-FoodSuppl   INDIA                          0%                     1        1    156
6-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]               0       12    156
6-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]               1        1    156
6-24 months   SAS-FoodSuppl   INDIA                          >5%                    0       99    156
6-24 months   SAS-FoodSuppl   INDIA                          >5%                    1       11    156


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
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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
![](/tmp/0b060327-6e17-497e-8c54-ff62ad057b97/d7b6a68e-74a9-4bcf-b9c2-eee357091012/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0b060327-6e17-497e-8c54-ff62ad057b97/d7b6a68e-74a9-4bcf-b9c2-eee357091012/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0b060327-6e17-497e-8c54-ff62ad057b97/d7b6a68e-74a9-4bcf-b9c2-eee357091012/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0b060327-6e17-497e-8c54-ff62ad057b97/d7b6a68e-74a9-4bcf-b9c2-eee357091012/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   JiVitA-4     BANGLADESH   0%                   NA                0.2549123   0.1595253   0.3502994
0-24 months   JiVitA-4     BANGLADESH   (0%, 5%]             NA                0.2600710   0.2386975   0.2814445
0-24 months   JiVitA-4     BANGLADESH   >5%                  NA                0.2418778   0.1906330   0.2931226
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                0.4000000   0.0491643   0.7508357
0-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.4453441   0.3809000   0.5097883
0-24 months   NIH-Birth    BANGLADESH   >5%                  NA                0.6477987   0.5684298   0.7271677
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                0.6376152   0.5295110   0.7457194
0-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.6363324   0.5605177   0.7121470
0-24 months   NIH-Crypto   BANGLADESH   >5%                  NA                0.5906893   0.4850320   0.6963465
0-24 months   PROVIDE      BANGLADESH   0%                   NA                0.4210526   0.1425309   0.6995744
0-24 months   PROVIDE      BANGLADESH   (0%, 5%]             NA                0.5800000   0.5109095   0.6490905
0-24 months   PROVIDE      BANGLADESH   >5%                  NA                0.6179775   0.5169387   0.7190164
0-6 months    JiVitA-4     BANGLADESH   0%                   NA                0.6190476   0.4111599   0.8269353
0-6 months    JiVitA-4     BANGLADESH   (0%, 5%]             NA                0.5646552   0.5195018   0.6098086
0-6 months    JiVitA-4     BANGLADESH   >5%                  NA                0.5000000   0.3810521   0.6189479
0-6 months    NIH-Birth    BANGLADESH   0%                   NA                0.4285714   0.1675904   0.6895524
0-6 months    NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.7166667   0.6364129   0.7969204
0-6 months    NIH-Birth    BANGLADESH   >5%                  NA                0.7528090   0.6625804   0.8430376
0-6 months    PROVIDE      BANGLADESH   0%                   NA                0.4375000   0.1883651   0.6866349
0-6 months    PROVIDE      BANGLADESH   (0%, 5%]             NA                0.8108108   0.7401781   0.8814435
0-6 months    PROVIDE      BANGLADESH   >5%                  NA                0.8275862   0.7316779   0.9234945
6-24 months   JiVitA-4     BANGLADESH   0%                   NA                0.1111111   0.0290775   0.1931447
6-24 months   JiVitA-4     BANGLADESH   (0%, 5%]             NA                0.1491228   0.1295980   0.1686476
6-24 months   JiVitA-4     BANGLADESH   >5%                  NA                0.1586538   0.1126313   0.2046764


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.2585790   0.2392503   0.2779077
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROVIDE      BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-6 months    JiVitA-4     BANGLADESH   NA                   NA                0.5587703   0.5173487   0.6001920
0-6 months    NIH-Birth    BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    PROVIDE      BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
6-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.1490765   0.1314900   0.1666630


### Parameter: RR


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   JiVitA-4     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4     BANGLADESH   (0%, 5%]             0%                1.0202372   0.6956386   1.496300
0-24 months   JiVitA-4     BANGLADESH   >5%                  0%                0.9488666   0.6171239   1.458942
0-24 months   NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             0%                1.1133603   0.4576898   2.708322
0-24 months   NIH-Birth    BANGLADESH   >5%                  0%                1.6194969   0.6679847   3.926392
0-24 months   NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.9979881   0.8153915   1.221475
0-24 months   NIH-Crypto   BANGLADESH   >5%                  0%                0.9264040   0.7270183   1.180471
0-24 months   PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   PROVIDE      BANGLADESH   (0%, 5%]             0%                1.3775000   0.7033792   2.697700
0-24 months   PROVIDE      BANGLADESH   >5%                  0%                1.4676966   0.7425231   2.901100
0-6 months    JiVitA-4     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4     BANGLADESH   (0%, 5%]             0%                0.9121353   0.6458582   1.288194
0-6 months    JiVitA-4     BANGLADESH   >5%                  0%                0.8076923   0.5351982   1.218926
0-6 months    NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth    BANGLADESH   (0%, 5%]             0%                1.6722222   0.9003129   3.105951
0-6 months    NIH-Birth    BANGLADESH   >5%                  0%                1.7565543   0.9443253   3.267394
0-6 months    PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    PROVIDE      BANGLADESH   (0%, 5%]             0%                1.8532819   1.0417293   3.297069
0-6 months    PROVIDE      BANGLADESH   >5%                  0%                1.8916256   1.0579284   3.382315
6-24 months   JiVitA-4     BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4     BANGLADESH   (0%, 5%]             0%                1.3421053   0.6340660   2.840787
6-24 months   JiVitA-4     BANGLADESH   >5%                  0%                1.4278846   0.6459118   3.156553


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   JiVitA-4     BANGLADESH   0%                   NA                 0.0036667   -0.0901226   0.0974560
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                 0.1201900   -0.2216808   0.4620609
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                -0.0150346   -0.1111654   0.0810963
0-24 months   PROVIDE      BANGLADESH   0%                   NA                 0.1601162   -0.1067355   0.4269679
0-6 months    JiVitA-4     BANGLADESH   0%                   NA                -0.0602773   -0.2643624   0.1438078
0-6 months    NIH-Birth    BANGLADESH   0%                   NA                 0.2844331    0.0332574   0.5356087
0-6 months    PROVIDE      BANGLADESH   0%                   NA                 0.3462838    0.1122880   0.5802796
6-24 months   JiVitA-4     BANGLADESH   0%                   NA                 0.0379654   -0.0430125   0.1189433


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   JiVitA-4     BANGLADESH   0%                   NA                 0.0141802   -0.4242228   0.3176343
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                 0.2310502   -0.8139788   0.6740404
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                -0.0241488   -0.1909334   0.1192784
0-24 months   PROVIDE      BANGLADESH   0%                   NA                 0.2755072   -0.3722136   0.6174868
0-6 months    JiVitA-4     BANGLADESH   0%                   NA                -0.1078749   -0.5407392   0.2033780
0-6 months    NIH-Birth    BANGLADESH   0%                   NA                 0.3989218   -0.0858849   0.6672806
0-6 months    PROVIDE      BANGLADESH   0%                   NA                 0.4418103    0.0360080   0.6767860
6-24 months   JiVitA-4     BANGLADESH   0%                   NA                 0.2546706   -0.5434883   0.6400906
