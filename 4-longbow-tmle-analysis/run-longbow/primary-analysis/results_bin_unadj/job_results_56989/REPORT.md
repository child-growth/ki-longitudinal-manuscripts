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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid         country                        perdiar24    wast_rec90d   n_cell     n
------------  --------------  -----------------------------  ----------  ------------  -------  ----
0-24 months   CMIN            BANGLADESH                     0%                     0        2   190
0-24 months   CMIN            BANGLADESH                     0%                     1        1   190
0-24 months   CMIN            BANGLADESH                     (0%, 5%]               0       41   190
0-24 months   CMIN            BANGLADESH                     (0%, 5%]               1       47   190
0-24 months   CMIN            BANGLADESH                     >5%                    0       37   190
0-24 months   CMIN            BANGLADESH                     >5%                    1       62   190
0-24 months   CONTENT         PERU                           0%                     0        0     7
0-24 months   CONTENT         PERU                           0%                     1        0     7
0-24 months   CONTENT         PERU                           (0%, 5%]               0        1     7
0-24 months   CONTENT         PERU                           (0%, 5%]               1        4     7
0-24 months   CONTENT         PERU                           >5%                    0        0     7
0-24 months   CONTENT         PERU                           >5%                    1        2     7
0-24 months   EE              PAKISTAN                       0%                     0      114   323
0-24 months   EE              PAKISTAN                       0%                     1      100   323
0-24 months   EE              PAKISTAN                       (0%, 5%]               0       46   323
0-24 months   EE              PAKISTAN                       (0%, 5%]               1       63   323
0-24 months   EE              PAKISTAN                       >5%                    0        0   323
0-24 months   EE              PAKISTAN                       >5%                    1        0   323
0-24 months   Guatemala BSC   GUATEMALA                      0%                     0        2    38
0-24 months   Guatemala BSC   GUATEMALA                      0%                     1        1    38
0-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]               0        6    38
0-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]               1        7    38
0-24 months   Guatemala BSC   GUATEMALA                      >5%                    0       13    38
0-24 months   Guatemala BSC   GUATEMALA                      >5%                    1        9    38
0-24 months   iLiNS-Zinc      BURKINA FASO                   0%                     0       94   635
0-24 months   iLiNS-Zinc      BURKINA FASO                   0%                     1        2   635
0-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]               0      311   635
0-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]               1       20   635
0-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                    0      194   635
0-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                    1       14   635
0-24 months   MAL-ED          BANGLADESH                     0%                     0        3   124
0-24 months   MAL-ED          BANGLADESH                     0%                     1        3   124
0-24 months   MAL-ED          BANGLADESH                     (0%, 5%]               0       29   124
0-24 months   MAL-ED          BANGLADESH                     (0%, 5%]               1       48   124
0-24 months   MAL-ED          BANGLADESH                     >5%                    0       12   124
0-24 months   MAL-ED          BANGLADESH                     >5%                    1       29   124
0-24 months   MAL-ED          BRAZIL                         0%                     0        2    24
0-24 months   MAL-ED          BRAZIL                         0%                     1        6    24
0-24 months   MAL-ED          BRAZIL                         (0%, 5%]               0        3    24
0-24 months   MAL-ED          BRAZIL                         (0%, 5%]               1       12    24
0-24 months   MAL-ED          BRAZIL                         >5%                    0        1    24
0-24 months   MAL-ED          BRAZIL                         >5%                    1        0    24
0-24 months   MAL-ED          INDIA                          0%                     0        2   181
0-24 months   MAL-ED          INDIA                          0%                     1        2   181
0-24 months   MAL-ED          INDIA                          (0%, 5%]               0       53   181
0-24 months   MAL-ED          INDIA                          (0%, 5%]               1       88   181
0-24 months   MAL-ED          INDIA                          >5%                    0       16   181
0-24 months   MAL-ED          INDIA                          >5%                    1       20   181
0-24 months   MAL-ED          NEPAL                          0%                     0        3    98
0-24 months   MAL-ED          NEPAL                          0%                     1        4    98
0-24 months   MAL-ED          NEPAL                          (0%, 5%]               0       11    98
0-24 months   MAL-ED          NEPAL                          (0%, 5%]               1       54    98
0-24 months   MAL-ED          NEPAL                          >5%                    0        6    98
0-24 months   MAL-ED          NEPAL                          >5%                    1       20    98
0-24 months   MAL-ED          PERU                           0%                     0        0    35
0-24 months   MAL-ED          PERU                           0%                     1        0    35
0-24 months   MAL-ED          PERU                           (0%, 5%]               0        3    35
0-24 months   MAL-ED          PERU                           (0%, 5%]               1        9    35
0-24 months   MAL-ED          PERU                           >5%                    0        3    35
0-24 months   MAL-ED          PERU                           >5%                    1       20    35
0-24 months   MAL-ED          SOUTH AFRICA                   0%                     0        5    84
0-24 months   MAL-ED          SOUTH AFRICA                   0%                     1       29    84
0-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]               0       10    84
0-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       40    84
0-24 months   MAL-ED          SOUTH AFRICA                   >5%                    0        0    84
0-24 months   MAL-ED          SOUTH AFRICA                   >5%                    1        0    84
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0        1    51
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        2    51
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0        3    51
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       33    51
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0        5    51
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        7    51
0-24 months   NIH-Birth       BANGLADESH                     0%                     0        9   421
0-24 months   NIH-Birth       BANGLADESH                     0%                     1        6   421
0-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]               0      137   421
0-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]               1      110   421
0-24 months   NIH-Birth       BANGLADESH                     >5%                    0       56   421
0-24 months   NIH-Birth       BANGLADESH                     >5%                    1      103   421
0-24 months   NIH-Crypto      BANGLADESH                     0%                     0       25   310
0-24 months   NIH-Crypto      BANGLADESH                     0%                     1       43   310
0-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]               0       57   310
0-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]               1       97   310
0-24 months   NIH-Crypto      BANGLADESH                     >5%                    0       35   310
0-24 months   NIH-Crypto      BANGLADESH                     >5%                    1       53   310
0-24 months   PROVIDE         BANGLADESH                     0%                     0       11   308
0-24 months   PROVIDE         BANGLADESH                     0%                     1        8   308
0-24 months   PROVIDE         BANGLADESH                     (0%, 5%]               0       84   308
0-24 months   PROVIDE         BANGLADESH                     (0%, 5%]               1      116   308
0-24 months   PROVIDE         BANGLADESH                     >5%                    0       34   308
0-24 months   PROVIDE         BANGLADESH                     >5%                    1       55   308
0-24 months   SAS-FoodSuppl   INDIA                          0%                     0       48   234
0-24 months   SAS-FoodSuppl   INDIA                          0%                     1        1   234
0-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]               0       23   234
0-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]               1        1   234
0-24 months   SAS-FoodSuppl   INDIA                          >5%                    0      150   234
0-24 months   SAS-FoodSuppl   INDIA                          >5%                    1       11   234
0-6 months    CMIN            BANGLADESH                     0%                     0        2    52
0-6 months    CMIN            BANGLADESH                     0%                     1        0    52
0-6 months    CMIN            BANGLADESH                     (0%, 5%]               0       13    52
0-6 months    CMIN            BANGLADESH                     (0%, 5%]               1       14    52
0-6 months    CMIN            BANGLADESH                     >5%                    0       10    52
0-6 months    CMIN            BANGLADESH                     >5%                    1       13    52
0-6 months    CONTENT         PERU                           0%                     0        0     4
0-6 months    CONTENT         PERU                           0%                     1        0     4
0-6 months    CONTENT         PERU                           (0%, 5%]               0        0     4
0-6 months    CONTENT         PERU                           (0%, 5%]               1        2     4
0-6 months    CONTENT         PERU                           >5%                    0        0     4
0-6 months    CONTENT         PERU                           >5%                    1        2     4
0-6 months    EE              PAKISTAN                       0%                     0       40   127
0-6 months    EE              PAKISTAN                       0%                     1       41   127
0-6 months    EE              PAKISTAN                       (0%, 5%]               0       15   127
0-6 months    EE              PAKISTAN                       (0%, 5%]               1       31   127
0-6 months    EE              PAKISTAN                       >5%                    0        0   127
0-6 months    EE              PAKISTAN                       >5%                    1        0   127
0-6 months    Guatemala BSC   GUATEMALA                      0%                     0        1    10
0-6 months    Guatemala BSC   GUATEMALA                      0%                     1        0    10
0-6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]               0        1    10
0-6 months    Guatemala BSC   GUATEMALA                      (0%, 5%]               1        2    10
0-6 months    Guatemala BSC   GUATEMALA                      >5%                    0        4    10
0-6 months    Guatemala BSC   GUATEMALA                      >5%                    1        2    10
0-6 months    MAL-ED          BANGLADESH                     0%                     0        1    63
0-6 months    MAL-ED          BANGLADESH                     0%                     1        2    63
0-6 months    MAL-ED          BANGLADESH                     (0%, 5%]               0        9    63
0-6 months    MAL-ED          BANGLADESH                     (0%, 5%]               1       28    63
0-6 months    MAL-ED          BANGLADESH                     >5%                    0        3    63
0-6 months    MAL-ED          BANGLADESH                     >5%                    1       20    63
0-6 months    MAL-ED          BRAZIL                         0%                     0        0    15
0-6 months    MAL-ED          BRAZIL                         0%                     1        5    15
0-6 months    MAL-ED          BRAZIL                         (0%, 5%]               0        1    15
0-6 months    MAL-ED          BRAZIL                         (0%, 5%]               1        9    15
0-6 months    MAL-ED          BRAZIL                         >5%                    0        0    15
0-6 months    MAL-ED          BRAZIL                         >5%                    1        0    15
0-6 months    MAL-ED          INDIA                          0%                     0        2    86
0-6 months    MAL-ED          INDIA                          0%                     1        1    86
0-6 months    MAL-ED          INDIA                          (0%, 5%]               0       17    86
0-6 months    MAL-ED          INDIA                          (0%, 5%]               1       46    86
0-6 months    MAL-ED          INDIA                          >5%                    0        8    86
0-6 months    MAL-ED          INDIA                          >5%                    1       12    86
0-6 months    MAL-ED          NEPAL                          0%                     0        2    48
0-6 months    MAL-ED          NEPAL                          0%                     1        2    48
0-6 months    MAL-ED          NEPAL                          (0%, 5%]               0        6    48
0-6 months    MAL-ED          NEPAL                          (0%, 5%]               1       28    48
0-6 months    MAL-ED          NEPAL                          >5%                    0        1    48
0-6 months    MAL-ED          NEPAL                          >5%                    1        9    48
0-6 months    MAL-ED          PERU                           0%                     0        0    11
0-6 months    MAL-ED          PERU                           0%                     1        0    11
0-6 months    MAL-ED          PERU                           (0%, 5%]               0        0    11
0-6 months    MAL-ED          PERU                           (0%, 5%]               1        2    11
0-6 months    MAL-ED          PERU                           >5%                    0        0    11
0-6 months    MAL-ED          PERU                           >5%                    1        9    11
0-6 months    MAL-ED          SOUTH AFRICA                   0%                     0        2    33
0-6 months    MAL-ED          SOUTH AFRICA                   0%                     1       13    33
0-6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]               0        4    33
0-6 months    MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       14    33
0-6 months    MAL-ED          SOUTH AFRICA                   >5%                    0        0    33
0-6 months    MAL-ED          SOUTH AFRICA                   >5%                    1        0    33
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0        1    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        0    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0        0    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       11    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0        0    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        2    14
0-6 months    NIH-Birth       BANGLADESH                     0%                     0        8   223
0-6 months    NIH-Birth       BANGLADESH                     0%                     1        6   223
0-6 months    NIH-Birth       BANGLADESH                     (0%, 5%]               0       34   223
0-6 months    NIH-Birth       BANGLADESH                     (0%, 5%]               1       86   223
0-6 months    NIH-Birth       BANGLADESH                     >5%                    0       22   223
0-6 months    NIH-Birth       BANGLADESH                     >5%                    1       67   223
0-6 months    NIH-Crypto      BANGLADESH                     0%                     0        3   197
0-6 months    NIH-Crypto      BANGLADESH                     0%                     1       42   197
0-6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]               0        8   197
0-6 months    NIH-Crypto      BANGLADESH                     (0%, 5%]               1       89   197
0-6 months    NIH-Crypto      BANGLADESH                     >5%                    0       10   197
0-6 months    NIH-Crypto      BANGLADESH                     >5%                    1       45   197
0-6 months    PROVIDE         BANGLADESH                     0%                     0        9   185
0-6 months    PROVIDE         BANGLADESH                     0%                     1        7   185
0-6 months    PROVIDE         BANGLADESH                     (0%, 5%]               0       21   185
0-6 months    PROVIDE         BANGLADESH                     (0%, 5%]               1       90   185
0-6 months    PROVIDE         BANGLADESH                     >5%                    0       10   185
0-6 months    PROVIDE         BANGLADESH                     >5%                    1       48   185
0-6 months    SAS-FoodSuppl   INDIA                          0%                     0       16    78
0-6 months    SAS-FoodSuppl   INDIA                          0%                     1        0    78
0-6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]               0       11    78
0-6 months    SAS-FoodSuppl   INDIA                          (0%, 5%]               1        0    78
0-6 months    SAS-FoodSuppl   INDIA                          >5%                    0       51    78
0-6 months    SAS-FoodSuppl   INDIA                          >5%                    1        0    78
6-24 months   CMIN            BANGLADESH                     0%                     0        0   138
6-24 months   CMIN            BANGLADESH                     0%                     1        1   138
6-24 months   CMIN            BANGLADESH                     (0%, 5%]               0       28   138
6-24 months   CMIN            BANGLADESH                     (0%, 5%]               1       33   138
6-24 months   CMIN            BANGLADESH                     >5%                    0       27   138
6-24 months   CMIN            BANGLADESH                     >5%                    1       49   138
6-24 months   CONTENT         PERU                           0%                     0        0     3
6-24 months   CONTENT         PERU                           0%                     1        0     3
6-24 months   CONTENT         PERU                           (0%, 5%]               0        1     3
6-24 months   CONTENT         PERU                           (0%, 5%]               1        2     3
6-24 months   CONTENT         PERU                           >5%                    0        0     3
6-24 months   CONTENT         PERU                           >5%                    1        0     3
6-24 months   EE              PAKISTAN                       0%                     0       74   196
6-24 months   EE              PAKISTAN                       0%                     1       59   196
6-24 months   EE              PAKISTAN                       (0%, 5%]               0       31   196
6-24 months   EE              PAKISTAN                       (0%, 5%]               1       32   196
6-24 months   EE              PAKISTAN                       >5%                    0        0   196
6-24 months   EE              PAKISTAN                       >5%                    1        0   196
6-24 months   Guatemala BSC   GUATEMALA                      0%                     0        1    28
6-24 months   Guatemala BSC   GUATEMALA                      0%                     1        1    28
6-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]               0        5    28
6-24 months   Guatemala BSC   GUATEMALA                      (0%, 5%]               1        5    28
6-24 months   Guatemala BSC   GUATEMALA                      >5%                    0        9    28
6-24 months   Guatemala BSC   GUATEMALA                      >5%                    1        7    28
6-24 months   iLiNS-Zinc      BURKINA FASO                   0%                     0       94   635
6-24 months   iLiNS-Zinc      BURKINA FASO                   0%                     1        2   635
6-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]               0      311   635
6-24 months   iLiNS-Zinc      BURKINA FASO                   (0%, 5%]               1       20   635
6-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                    0      194   635
6-24 months   iLiNS-Zinc      BURKINA FASO                   >5%                    1       14   635
6-24 months   MAL-ED          BANGLADESH                     0%                     0        2    61
6-24 months   MAL-ED          BANGLADESH                     0%                     1        1    61
6-24 months   MAL-ED          BANGLADESH                     (0%, 5%]               0       20    61
6-24 months   MAL-ED          BANGLADESH                     (0%, 5%]               1       20    61
6-24 months   MAL-ED          BANGLADESH                     >5%                    0        9    61
6-24 months   MAL-ED          BANGLADESH                     >5%                    1        9    61
6-24 months   MAL-ED          BRAZIL                         0%                     0        2     9
6-24 months   MAL-ED          BRAZIL                         0%                     1        1     9
6-24 months   MAL-ED          BRAZIL                         (0%, 5%]               0        2     9
6-24 months   MAL-ED          BRAZIL                         (0%, 5%]               1        3     9
6-24 months   MAL-ED          BRAZIL                         >5%                    0        1     9
6-24 months   MAL-ED          BRAZIL                         >5%                    1        0     9
6-24 months   MAL-ED          INDIA                          0%                     0        0    95
6-24 months   MAL-ED          INDIA                          0%                     1        1    95
6-24 months   MAL-ED          INDIA                          (0%, 5%]               0       36    95
6-24 months   MAL-ED          INDIA                          (0%, 5%]               1       42    95
6-24 months   MAL-ED          INDIA                          >5%                    0        8    95
6-24 months   MAL-ED          INDIA                          >5%                    1        8    95
6-24 months   MAL-ED          NEPAL                          0%                     0        1    50
6-24 months   MAL-ED          NEPAL                          0%                     1        2    50
6-24 months   MAL-ED          NEPAL                          (0%, 5%]               0        5    50
6-24 months   MAL-ED          NEPAL                          (0%, 5%]               1       26    50
6-24 months   MAL-ED          NEPAL                          >5%                    0        5    50
6-24 months   MAL-ED          NEPAL                          >5%                    1       11    50
6-24 months   MAL-ED          PERU                           0%                     0        0    24
6-24 months   MAL-ED          PERU                           0%                     1        0    24
6-24 months   MAL-ED          PERU                           (0%, 5%]               0        3    24
6-24 months   MAL-ED          PERU                           (0%, 5%]               1        7    24
6-24 months   MAL-ED          PERU                           >5%                    0        3    24
6-24 months   MAL-ED          PERU                           >5%                    1       11    24
6-24 months   MAL-ED          SOUTH AFRICA                   0%                     0        3    51
6-24 months   MAL-ED          SOUTH AFRICA                   0%                     1       16    51
6-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]               0        6    51
6-24 months   MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       26    51
6-24 months   MAL-ED          SOUTH AFRICA                   >5%                    0        0    51
6-24 months   MAL-ED          SOUTH AFRICA                   >5%                    1        0    51
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0        0    37
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        2    37
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0        3    37
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       22    37
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0        5    37
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        5    37
6-24 months   NIH-Birth       BANGLADESH                     0%                     0        1   198
6-24 months   NIH-Birth       BANGLADESH                     0%                     1        0   198
6-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]               0      103   198
6-24 months   NIH-Birth       BANGLADESH                     (0%, 5%]               1       24   198
6-24 months   NIH-Birth       BANGLADESH                     >5%                    0       34   198
6-24 months   NIH-Birth       BANGLADESH                     >5%                    1       36   198
6-24 months   NIH-Crypto      BANGLADESH                     0%                     0       22   113
6-24 months   NIH-Crypto      BANGLADESH                     0%                     1        1   113
6-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]               0       49   113
6-24 months   NIH-Crypto      BANGLADESH                     (0%, 5%]               1        8   113
6-24 months   NIH-Crypto      BANGLADESH                     >5%                    0       25   113
6-24 months   NIH-Crypto      BANGLADESH                     >5%                    1        8   113
6-24 months   PROVIDE         BANGLADESH                     0%                     0        2   123
6-24 months   PROVIDE         BANGLADESH                     0%                     1        1   123
6-24 months   PROVIDE         BANGLADESH                     (0%, 5%]               0       63   123
6-24 months   PROVIDE         BANGLADESH                     (0%, 5%]               1       26   123
6-24 months   PROVIDE         BANGLADESH                     >5%                    0       24   123
6-24 months   PROVIDE         BANGLADESH                     >5%                    1        7   123
6-24 months   SAS-FoodSuppl   INDIA                          0%                     0       32   156
6-24 months   SAS-FoodSuppl   INDIA                          0%                     1        1   156
6-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]               0       12   156
6-24 months   SAS-FoodSuppl   INDIA                          (0%, 5%]               1        1   156
6-24 months   SAS-FoodSuppl   INDIA                          >5%                    0       99   156
6-24 months   SAS-FoodSuppl   INDIA                          >5%                    1       11   156


The following strata were considered:

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
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
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
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/63c65de7-317b-497d-9c22-4b6e9689d066/8c029688-55f2-40d6-8abd-ba8a8674d186/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/63c65de7-317b-497d-9c22-4b6e9689d066/8c029688-55f2-40d6-8abd-ba8a8674d186/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/63c65de7-317b-497d-9c22-4b6e9689d066/8c029688-55f2-40d6-8abd-ba8a8674d186/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/63c65de7-317b-497d-9c22-4b6e9689d066/8c029688-55f2-40d6-8abd-ba8a8674d186/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                0.4000000   0.0491643   0.7508357
0-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.4453441   0.3809000   0.5097883
0-24 months   NIH-Birth    BANGLADESH   >5%                  NA                0.6477987   0.5684298   0.7271677
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                0.6323529   0.5194007   0.7453052
0-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.6298701   0.5524197   0.7073206
0-24 months   NIH-Crypto   BANGLADESH   >5%                  NA                0.6022727   0.4993932   0.7051522
0-24 months   PROVIDE      BANGLADESH   0%                   NA                0.4210526   0.1425309   0.6995744
0-24 months   PROVIDE      BANGLADESH   (0%, 5%]             NA                0.5800000   0.5109095   0.6490905
0-24 months   PROVIDE      BANGLADESH   >5%                  NA                0.6179775   0.5169387   0.7190164
0-6 months    NIH-Birth    BANGLADESH   0%                   NA                0.4285714   0.1675904   0.6895524
0-6 months    NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.7166667   0.6364129   0.7969204
0-6 months    NIH-Birth    BANGLADESH   >5%                  NA                0.7528090   0.6625804   0.8430376
0-6 months    PROVIDE      BANGLADESH   0%                   NA                0.4375000   0.1883651   0.6866349
0-6 months    PROVIDE      BANGLADESH   (0%, 5%]             NA                0.8108108   0.7401781   0.8814435
0-6 months    PROVIDE      BANGLADESH   >5%                  NA                0.8275862   0.7316779   0.9234945


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROVIDE      BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-6 months    NIH-Birth    BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    PROVIDE      BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812


### Parameter: RR


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             0%                1.1133603   0.4576898   2.708322
0-24 months   NIH-Birth    BANGLADESH   >5%                  0%                1.6194969   0.6679847   3.926392
0-24 months   NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.9960737   0.8016407   1.237665
0-24 months   NIH-Crypto   BANGLADESH   >5%                  0%                0.9524313   0.7435086   1.220060
0-24 months   PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   PROVIDE      BANGLADESH   (0%, 5%]             0%                1.3775000   0.7033792   2.697700
0-24 months   PROVIDE      BANGLADESH   >5%                  0%                1.4676966   0.7425231   2.901100
0-6 months    NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth    BANGLADESH   (0%, 5%]             0%                1.6722222   0.9003129   3.105951
0-6 months    NIH-Birth    BANGLADESH   >5%                  0%                1.7565543   0.9443253   3.267394
0-6 months    PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    PROVIDE      BANGLADESH   (0%, 5%]             0%                1.8532819   1.0417293   3.297069
0-6 months    PROVIDE      BANGLADESH   >5%                  0%                1.8916256   1.0579284   3.382315


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                 0.1201900   -0.2216808   0.4620609
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                -0.0097723   -0.1103983   0.0908537
0-24 months   PROVIDE      BANGLADESH   0%                   NA                 0.1601162   -0.1067355   0.4269679
0-6 months    NIH-Birth    BANGLADESH   0%                   NA                 0.2844331    0.0332574   0.5356087
0-6 months    PROVIDE      BANGLADESH   0%                   NA                 0.3462838    0.1122880   0.5802796


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                 0.2310502   -0.8139788   0.6740404
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                -0.0156964   -0.1909441   0.1337635
0-24 months   PROVIDE      BANGLADESH   0%                   NA                 0.2755072   -0.3722136   0.6174868
0-6 months    NIH-Birth    BANGLADESH   0%                   NA                 0.3989218   -0.0858849   0.6672806
0-6 months    PROVIDE      BANGLADESH   0%                   NA                 0.4418103    0.0360080   0.6767860
