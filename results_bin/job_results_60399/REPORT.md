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

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
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

agecat        studyid      country                        perdiar6    wast_rec90d   n_cell     n
------------  -----------  -----------------------------  ---------  ------------  -------  ----
0-24 months   CMIN         BANGLADESH                     0%                    0       28   190
0-24 months   CMIN         BANGLADESH                     0%                    1       43   190
0-24 months   CMIN         BANGLADESH                     (0%, 5%]              0       19   190
0-24 months   CMIN         BANGLADESH                     (0%, 5%]              1       16   190
0-24 months   CMIN         BANGLADESH                     >5%                   0       33   190
0-24 months   CMIN         BANGLADESH                     >5%                   1       51   190
0-24 months   CONTENT      PERU                           0%                    0        0     7
0-24 months   CONTENT      PERU                           0%                    1        1     7
0-24 months   CONTENT      PERU                           (0%, 5%]              0        0     7
0-24 months   CONTENT      PERU                           (0%, 5%]              1        1     7
0-24 months   CONTENT      PERU                           >5%                   0        1     7
0-24 months   CONTENT      PERU                           >5%                   1        4     7
0-24 months   EE           PAKISTAN                       0%                    0      149   323
0-24 months   EE           PAKISTAN                       0%                    1      141   323
0-24 months   EE           PAKISTAN                       (0%, 5%]              0       11   323
0-24 months   EE           PAKISTAN                       (0%, 5%]              1       18   323
0-24 months   EE           PAKISTAN                       >5%                   0        0   323
0-24 months   EE           PAKISTAN                       >5%                   1        4   323
0-24 months   MAL-ED       BANGLADESH                     0%                    0       16   124
0-24 months   MAL-ED       BANGLADESH                     0%                    1       22   124
0-24 months   MAL-ED       BANGLADESH                     (0%, 5%]              0       20   124
0-24 months   MAL-ED       BANGLADESH                     (0%, 5%]              1       34   124
0-24 months   MAL-ED       BANGLADESH                     >5%                   0        8   124
0-24 months   MAL-ED       BANGLADESH                     >5%                   1       24   124
0-24 months   MAL-ED       BRAZIL                         0%                    0        5    24
0-24 months   MAL-ED       BRAZIL                         0%                    1       16    24
0-24 months   MAL-ED       BRAZIL                         (0%, 5%]              0        0    24
0-24 months   MAL-ED       BRAZIL                         (0%, 5%]              1        2    24
0-24 months   MAL-ED       BRAZIL                         >5%                   0        1    24
0-24 months   MAL-ED       BRAZIL                         >5%                   1        0    24
0-24 months   MAL-ED       INDIA                          0%                    0       14   181
0-24 months   MAL-ED       INDIA                          0%                    1       29   181
0-24 months   MAL-ED       INDIA                          (0%, 5%]              0       35   181
0-24 months   MAL-ED       INDIA                          (0%, 5%]              1       50   181
0-24 months   MAL-ED       INDIA                          >5%                   0       22   181
0-24 months   MAL-ED       INDIA                          >5%                   1       31   181
0-24 months   MAL-ED       NEPAL                          0%                    0       12    98
0-24 months   MAL-ED       NEPAL                          0%                    1       31    98
0-24 months   MAL-ED       NEPAL                          (0%, 5%]              0        2    98
0-24 months   MAL-ED       NEPAL                          (0%, 5%]              1       23    98
0-24 months   MAL-ED       NEPAL                          >5%                   0        6    98
0-24 months   MAL-ED       NEPAL                          >5%                   1       24    98
0-24 months   MAL-ED       PERU                           0%                    0        3    35
0-24 months   MAL-ED       PERU                           0%                    1        8    35
0-24 months   MAL-ED       PERU                           (0%, 5%]              0        1    35
0-24 months   MAL-ED       PERU                           (0%, 5%]              1        6    35
0-24 months   MAL-ED       PERU                           >5%                   0        2    35
0-24 months   MAL-ED       PERU                           >5%                   1       15    35
0-24 months   MAL-ED       SOUTH AFRICA                   0%                    0       11    84
0-24 months   MAL-ED       SOUTH AFRICA                   0%                    1       51    84
0-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]              0        4    84
0-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]              1       15    84
0-24 months   MAL-ED       SOUTH AFRICA                   >5%                   0        0    84
0-24 months   MAL-ED       SOUTH AFRICA                   >5%                   1        3    84
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0        4    51
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       21    51
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0        3    51
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       19    51
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0        2    51
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        2    51
0-24 months   NIH-Birth    BANGLADESH                     0%                    0       45   421
0-24 months   NIH-Birth    BANGLADESH                     0%                    1       44   421
0-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]              0       61   421
0-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]              1       52   421
0-24 months   NIH-Birth    BANGLADESH                     >5%                   0       96   421
0-24 months   NIH-Birth    BANGLADESH                     >5%                   1      123   421
0-24 months   NIH-Crypto   BANGLADESH                     0%                    0       58   310
0-24 months   NIH-Crypto   BANGLADESH                     0%                    1       98   310
0-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]              0       28   310
0-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]              1       46   310
0-24 months   NIH-Crypto   BANGLADESH                     >5%                   0       31   310
0-24 months   NIH-Crypto   BANGLADESH                     >5%                   1       49   310
0-24 months   PROVIDE      BANGLADESH                     0%                    0       38   308
0-24 months   PROVIDE      BANGLADESH                     0%                    1       47   308
0-24 months   PROVIDE      BANGLADESH                     (0%, 5%]              0       57   308
0-24 months   PROVIDE      BANGLADESH                     (0%, 5%]              1       78   308
0-24 months   PROVIDE      BANGLADESH                     >5%                   0       34   308
0-24 months   PROVIDE      BANGLADESH                     >5%                   1       54   308
0-6 months    CMIN         BANGLADESH                     0%                    0        5    52
0-6 months    CMIN         BANGLADESH                     0%                    1       13    52
0-6 months    CMIN         BANGLADESH                     (0%, 5%]              0        9    52
0-6 months    CMIN         BANGLADESH                     (0%, 5%]              1        6    52
0-6 months    CMIN         BANGLADESH                     >5%                   0       11    52
0-6 months    CMIN         BANGLADESH                     >5%                   1        8    52
0-6 months    CONTENT      PERU                           0%                    0        0     4
0-6 months    CONTENT      PERU                           0%                    1        1     4
0-6 months    CONTENT      PERU                           (0%, 5%]              0        0     4
0-6 months    CONTENT      PERU                           (0%, 5%]              1        0     4
0-6 months    CONTENT      PERU                           >5%                   0        0     4
0-6 months    CONTENT      PERU                           >5%                   1        3     4
0-6 months    EE           PAKISTAN                       0%                    0       52   127
0-6 months    EE           PAKISTAN                       0%                    1       61   127
0-6 months    EE           PAKISTAN                       (0%, 5%]              0        3   127
0-6 months    EE           PAKISTAN                       (0%, 5%]              1       10   127
0-6 months    EE           PAKISTAN                       >5%                   0        0   127
0-6 months    EE           PAKISTAN                       >5%                   1        1   127
0-6 months    MAL-ED       BANGLADESH                     0%                    0        5    63
0-6 months    MAL-ED       BANGLADESH                     0%                    1       13    63
0-6 months    MAL-ED       BANGLADESH                     (0%, 5%]              0        5    63
0-6 months    MAL-ED       BANGLADESH                     (0%, 5%]              1       19    63
0-6 months    MAL-ED       BANGLADESH                     >5%                   0        3    63
0-6 months    MAL-ED       BANGLADESH                     >5%                   1       18    63
0-6 months    MAL-ED       BRAZIL                         0%                    0        1    15
0-6 months    MAL-ED       BRAZIL                         0%                    1       12    15
0-6 months    MAL-ED       BRAZIL                         (0%, 5%]              0        0    15
0-6 months    MAL-ED       BRAZIL                         (0%, 5%]              1        2    15
0-6 months    MAL-ED       BRAZIL                         >5%                   0        0    15
0-6 months    MAL-ED       BRAZIL                         >5%                   1        0    15
0-6 months    MAL-ED       INDIA                          0%                    0        6    86
0-6 months    MAL-ED       INDIA                          0%                    1       14    86
0-6 months    MAL-ED       INDIA                          (0%, 5%]              0       13    86
0-6 months    MAL-ED       INDIA                          (0%, 5%]              1       29    86
0-6 months    MAL-ED       INDIA                          >5%                   0        8    86
0-6 months    MAL-ED       INDIA                          >5%                   1       16    86
0-6 months    MAL-ED       NEPAL                          0%                    0        6    48
0-6 months    MAL-ED       NEPAL                          0%                    1       11    48
0-6 months    MAL-ED       NEPAL                          (0%, 5%]              0        2    48
0-6 months    MAL-ED       NEPAL                          (0%, 5%]              1       17    48
0-6 months    MAL-ED       NEPAL                          >5%                   0        1    48
0-6 months    MAL-ED       NEPAL                          >5%                   1       11    48
0-6 months    MAL-ED       PERU                           0%                    0        0    11
0-6 months    MAL-ED       PERU                           0%                    1        0    11
0-6 months    MAL-ED       PERU                           (0%, 5%]              0        0    11
0-6 months    MAL-ED       PERU                           (0%, 5%]              1        2    11
0-6 months    MAL-ED       PERU                           >5%                   0        0    11
0-6 months    MAL-ED       PERU                           >5%                   1        9    11
0-6 months    MAL-ED       SOUTH AFRICA                   0%                    0        5    33
0-6 months    MAL-ED       SOUTH AFRICA                   0%                    1       19    33
0-6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]              0        1    33
0-6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        6    33
0-6 months    MAL-ED       SOUTH AFRICA                   >5%                   0        0    33
0-6 months    MAL-ED       SOUTH AFRICA                   >5%                   1        2    33
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0        1    14
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1        5    14
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0        0    14
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1        7    14
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0        0    14
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        1    14
0-6 months    NIH-Birth    BANGLADESH                     0%                    0       15   223
0-6 months    NIH-Birth    BANGLADESH                     0%                    1       34   223
0-6 months    NIH-Birth    BANGLADESH                     (0%, 5%]              0       18   223
0-6 months    NIH-Birth    BANGLADESH                     (0%, 5%]              1       42   223
0-6 months    NIH-Birth    BANGLADESH                     >5%                   0       31   223
0-6 months    NIH-Birth    BANGLADESH                     >5%                   1       83   223
0-6 months    NIH-Crypto   BANGLADESH                     0%                    0        7   197
0-6 months    NIH-Crypto   BANGLADESH                     0%                    1       92   197
0-6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]              0        5   197
0-6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]              1       43   197
0-6 months    NIH-Crypto   BANGLADESH                     >5%                   0        9   197
0-6 months    NIH-Crypto   BANGLADESH                     >5%                   1       41   197
0-6 months    PROVIDE      BANGLADESH                     0%                    0       17   185
0-6 months    PROVIDE      BANGLADESH                     0%                    1       39   185
0-6 months    PROVIDE      BANGLADESH                     (0%, 5%]              0       11   185
0-6 months    PROVIDE      BANGLADESH                     (0%, 5%]              1       60   185
0-6 months    PROVIDE      BANGLADESH                     >5%                   0       12   185
0-6 months    PROVIDE      BANGLADESH                     >5%                   1       46   185
6-24 months   CMIN         BANGLADESH                     0%                    0       23   138
6-24 months   CMIN         BANGLADESH                     0%                    1       30   138
6-24 months   CMIN         BANGLADESH                     (0%, 5%]              0       10   138
6-24 months   CMIN         BANGLADESH                     (0%, 5%]              1       10   138
6-24 months   CMIN         BANGLADESH                     >5%                   0       22   138
6-24 months   CMIN         BANGLADESH                     >5%                   1       43   138
6-24 months   CONTENT      PERU                           0%                    0        0     3
6-24 months   CONTENT      PERU                           0%                    1        0     3
6-24 months   CONTENT      PERU                           (0%, 5%]              0        0     3
6-24 months   CONTENT      PERU                           (0%, 5%]              1        1     3
6-24 months   CONTENT      PERU                           >5%                   0        1     3
6-24 months   CONTENT      PERU                           >5%                   1        1     3
6-24 months   EE           PAKISTAN                       0%                    0       97   196
6-24 months   EE           PAKISTAN                       0%                    1       80   196
6-24 months   EE           PAKISTAN                       (0%, 5%]              0        8   196
6-24 months   EE           PAKISTAN                       (0%, 5%]              1        8   196
6-24 months   EE           PAKISTAN                       >5%                   0        0   196
6-24 months   EE           PAKISTAN                       >5%                   1        3   196
6-24 months   MAL-ED       BANGLADESH                     0%                    0       11    61
6-24 months   MAL-ED       BANGLADESH                     0%                    1        9    61
6-24 months   MAL-ED       BANGLADESH                     (0%, 5%]              0       15    61
6-24 months   MAL-ED       BANGLADESH                     (0%, 5%]              1       15    61
6-24 months   MAL-ED       BANGLADESH                     >5%                   0        5    61
6-24 months   MAL-ED       BANGLADESH                     >5%                   1        6    61
6-24 months   MAL-ED       BRAZIL                         0%                    0        4     9
6-24 months   MAL-ED       BRAZIL                         0%                    1        4     9
6-24 months   MAL-ED       BRAZIL                         (0%, 5%]              0        0     9
6-24 months   MAL-ED       BRAZIL                         (0%, 5%]              1        0     9
6-24 months   MAL-ED       BRAZIL                         >5%                   0        1     9
6-24 months   MAL-ED       BRAZIL                         >5%                   1        0     9
6-24 months   MAL-ED       INDIA                          0%                    0        8    95
6-24 months   MAL-ED       INDIA                          0%                    1       15    95
6-24 months   MAL-ED       INDIA                          (0%, 5%]              0       22    95
6-24 months   MAL-ED       INDIA                          (0%, 5%]              1       21    95
6-24 months   MAL-ED       INDIA                          >5%                   0       14    95
6-24 months   MAL-ED       INDIA                          >5%                   1       15    95
6-24 months   MAL-ED       NEPAL                          0%                    0        6    50
6-24 months   MAL-ED       NEPAL                          0%                    1       20    50
6-24 months   MAL-ED       NEPAL                          (0%, 5%]              0        0    50
6-24 months   MAL-ED       NEPAL                          (0%, 5%]              1        6    50
6-24 months   MAL-ED       NEPAL                          >5%                   0        5    50
6-24 months   MAL-ED       NEPAL                          >5%                   1       13    50
6-24 months   MAL-ED       PERU                           0%                    0        3    24
6-24 months   MAL-ED       PERU                           0%                    1        8    24
6-24 months   MAL-ED       PERU                           (0%, 5%]              0        1    24
6-24 months   MAL-ED       PERU                           (0%, 5%]              1        4    24
6-24 months   MAL-ED       PERU                           >5%                   0        2    24
6-24 months   MAL-ED       PERU                           >5%                   1        6    24
6-24 months   MAL-ED       SOUTH AFRICA                   0%                    0        6    51
6-24 months   MAL-ED       SOUTH AFRICA                   0%                    1       32    51
6-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]              0        3    51
6-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        9    51
6-24 months   MAL-ED       SOUTH AFRICA                   >5%                   0        0    51
6-24 months   MAL-ED       SOUTH AFRICA                   >5%                   1        1    51
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0        3    37
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       16    37
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0        3    37
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       12    37
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0        2    37
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        1    37
6-24 months   NIH-Birth    BANGLADESH                     0%                    0       30   198
6-24 months   NIH-Birth    BANGLADESH                     0%                    1       10   198
6-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]              0       43   198
6-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]              1       10   198
6-24 months   NIH-Birth    BANGLADESH                     >5%                   0       65   198
6-24 months   NIH-Birth    BANGLADESH                     >5%                   1       40   198
6-24 months   NIH-Crypto   BANGLADESH                     0%                    0       51   113
6-24 months   NIH-Crypto   BANGLADESH                     0%                    1        6   113
6-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]              0       23   113
6-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]              1        3   113
6-24 months   NIH-Crypto   BANGLADESH                     >5%                   0       22   113
6-24 months   NIH-Crypto   BANGLADESH                     >5%                   1        8   113
6-24 months   PROVIDE      BANGLADESH                     0%                    0       21   123
6-24 months   PROVIDE      BANGLADESH                     0%                    1        8   123
6-24 months   PROVIDE      BANGLADESH                     (0%, 5%]              0       46   123
6-24 months   PROVIDE      BANGLADESH                     (0%, 5%]              1       18   123
6-24 months   PROVIDE      BANGLADESH                     >5%                   0       22   123
6-24 months   PROVIDE      BANGLADESH                     >5%                   1        8   123


The following strata were considered:

* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

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
![](/tmp/8ee23d1c-ba30-4f05-83c2-194d0b837842/5dfd0551-d4b2-465f-a999-a751400e7e94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8ee23d1c-ba30-4f05-83c2-194d0b837842/5dfd0551-d4b2-465f-a999-a751400e7e94/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8ee23d1c-ba30-4f05-83c2-194d0b837842/5dfd0551-d4b2-465f-a999-a751400e7e94/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8ee23d1c-ba30-4f05-83c2-194d0b837842/5dfd0551-d4b2-465f-a999-a751400e7e94/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMIN         BANGLADESH   0%                   NA                0.6208388   0.4962683   0.7454094
0-24 months   CMIN         BANGLADESH   (0%, 5%]             NA                0.4935285   0.2966957   0.6903612
0-24 months   CMIN         BANGLADESH   >5%                  NA                0.6127808   0.4936258   0.7319358
0-24 months   MAL-ED       BANGLADESH   0%                   NA                0.5789474   0.4106093   0.7472854
0-24 months   MAL-ED       BANGLADESH   (0%, 5%]             NA                0.6296296   0.5121519   0.7471074
0-24 months   MAL-ED       BANGLADESH   >5%                  NA                0.7500000   0.5844253   0.9155747
0-24 months   MAL-ED       INDIA        0%                   NA                0.6627065   0.4915503   0.8338627
0-24 months   MAL-ED       INDIA        (0%, 5%]             NA                0.5732784   0.4563143   0.6902425
0-24 months   MAL-ED       INDIA        >5%                  NA                0.5564866   0.4145523   0.6984209
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                0.5016833   0.3819397   0.6214268
0-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.4617738   0.3594909   0.5640566
0-24 months   NIH-Birth    BANGLADESH   >5%                  NA                0.5587479   0.4908477   0.6266480
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                0.6169799   0.5389807   0.6949791
0-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.6175651   0.5047303   0.7303998
0-24 months   NIH-Crypto   BANGLADESH   >5%                  NA                0.6372161   0.5384984   0.7359339
0-24 months   PROVIDE      BANGLADESH   0%                   NA                0.5619994   0.4442231   0.6797757
0-24 months   PROVIDE      BANGLADESH   (0%, 5%]             NA                0.5793274   0.4930909   0.6655640
0-24 months   PROVIDE      BANGLADESH   >5%                  NA                0.6135162   0.5129340   0.7140984
0-6 months    CMIN         BANGLADESH   0%                   NA                0.7222222   0.5220936   0.9223508
0-6 months    CMIN         BANGLADESH   (0%, 5%]             NA                0.4000000   0.1395476   0.6604524
0-6 months    CMIN         BANGLADESH   >5%                  NA                0.4210526   0.1965983   0.6455070
0-6 months    MAL-ED       INDIA        0%                   NA                0.7000000   0.4880703   0.9119297
0-6 months    MAL-ED       INDIA        (0%, 5%]             NA                0.6904762   0.5490691   0.8318832
0-6 months    MAL-ED       INDIA        >5%                  NA                0.6666667   0.4697615   0.8635719
0-6 months    NIH-Birth    BANGLADESH   0%                   NA                0.6930760   0.5562350   0.8299170
0-6 months    NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.7038637   0.5862341   0.8214933
0-6 months    NIH-Birth    BANGLADESH   >5%                  NA                0.7265867   0.6446334   0.8085399
0-6 months    NIH-Crypto   BANGLADESH   0%                   NA                0.9292929   0.8781896   0.9803962
0-6 months    NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.8958333   0.8083040   0.9833626
0-6 months    NIH-Crypto   BANGLADESH   >5%                  NA                0.8200000   0.7121415   0.9278585
0-6 months    PROVIDE      BANGLADESH   0%                   NA                0.7036355   0.5821528   0.8251182
0-6 months    PROVIDE      BANGLADESH   (0%, 5%]             NA                0.8443270   0.7572959   0.9313581
0-6 months    PROVIDE      BANGLADESH   >5%                  NA                0.7929170   0.6907735   0.8950605
6-24 months   CMIN         BANGLADESH   0%                   NA                0.5849847   0.4476029   0.7223665
6-24 months   CMIN         BANGLADESH   (0%, 5%]             NA                0.5624248   0.2900798   0.8347699
6-24 months   CMIN         BANGLADESH   >5%                  NA                0.6674888   0.5434810   0.7914965
6-24 months   MAL-ED       BANGLADESH   0%                   NA                0.4500000   0.2011920   0.6988080
6-24 months   MAL-ED       BANGLADESH   (0%, 5%]             NA                0.5000000   0.3500866   0.6499134
6-24 months   MAL-ED       BANGLADESH   >5%                  NA                0.5454545   0.1641333   0.9267758
6-24 months   MAL-ED       INDIA        0%                   NA                0.6521739   0.4227678   0.8815800
6-24 months   MAL-ED       INDIA        (0%, 5%]             NA                0.4883721   0.3173946   0.6593495
6-24 months   MAL-ED       INDIA        >5%                  NA                0.5172414   0.3159219   0.7185608
6-24 months   NIH-Birth    BANGLADESH   0%                   NA                0.2249275   0.0881910   0.3616640
6-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.1847166   0.0708381   0.2985952
6-24 months   NIH-Birth    BANGLADESH   >5%                  NA                0.3813221   0.2862032   0.4764410
6-24 months   PROVIDE      BANGLADESH   0%                   NA                0.2758621   0.1082883   0.4434359
6-24 months   PROVIDE      BANGLADESH   (0%, 5%]             NA                0.2812500   0.1643962   0.3981038
6-24 months   PROVIDE      BANGLADESH   >5%                  NA                0.2666667   0.1154539   0.4178794


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMIN         BANGLADESH   NA                   NA                0.5789474   0.5004470   0.6574477
0-24 months   MAL-ED       BANGLADESH   NA                   NA                0.6451613   0.5593015   0.7310211
0-24 months   MAL-ED       INDIA        NA                   NA                0.6077348   0.5286689   0.6868008
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROVIDE      BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-6 months    CMIN         BANGLADESH   NA                   NA                0.5192308   0.3806687   0.6577929
0-6 months    MAL-ED       INDIA        NA                   NA                0.6860465   0.5849088   0.7871842
0-6 months    NIH-Birth    BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    NIH-Crypto   BANGLADESH   NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    PROVIDE      BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
6-24 months   CMIN         BANGLADESH   NA                   NA                0.6014493   0.5131344   0.6897641
6-24 months   MAL-ED       BANGLADESH   NA                   NA                0.4918033   0.3610932   0.6225134
6-24 months   MAL-ED       INDIA        NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   PROVIDE      BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682


### Parameter: RR


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   CMIN         BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   CMIN         BANGLADESH   (0%, 5%]             0%                0.7949382   0.5086007   1.242481
0-24 months   CMIN         BANGLADESH   >5%                  0%                0.9870208   0.7465608   1.304930
0-24 months   MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       BANGLADESH   (0%, 5%]             0%                1.0875421   0.7699799   1.536076
0-24 months   MAL-ED       BANGLADESH   >5%                  0%                1.2954545   0.8993242   1.866071
0-24 months   MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       INDIA        (0%, 5%]             0%                0.8650562   0.6237122   1.199788
0-24 months   MAL-ED       INDIA        >5%                  0%                0.8397180   0.5864270   1.202411
0-24 months   NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             0%                0.9204488   0.6643311   1.275307
0-24 months   NIH-Birth    BANGLADESH   >5%                  0%                1.1137462   0.8524383   1.455156
0-24 months   NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.0009485   0.8021632   1.248995
0-24 months   NIH-Crypto   BANGLADESH   >5%                  0%                1.0327989   0.8484017   1.257274
0-24 months   PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   PROVIDE      BANGLADESH   (0%, 5%]             0%                1.0308328   0.7966114   1.333921
0-24 months   PROVIDE      BANGLADESH   >5%                  0%                1.0916670   0.8360752   1.425394
0-6 months    CMIN         BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    CMIN         BANGLADESH   (0%, 5%]             0%                0.5538462   0.2729382   1.123865
0-6 months    CMIN         BANGLADESH   >5%                  0%                0.5829960   0.3197555   1.062950
0-6 months    MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    MAL-ED       INDIA        (0%, 5%]             0%                0.9863946   0.6843974   1.421651
0-6 months    MAL-ED       INDIA        >5%                  0%                0.9523810   0.6239074   1.453789
0-6 months    NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth    BANGLADESH   (0%, 5%]             0%                1.0155650   0.7839752   1.315567
0-6 months    NIH-Birth    BANGLADESH   >5%                  0%                1.0483506   0.8343985   1.317163
0-6 months    NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto   BANGLADESH   (0%, 5%]             0%                0.9639946   0.8617509   1.078369
0-6 months    NIH-Crypto   BANGLADESH   >5%                  0%                0.8823913   0.7651472   1.017601
0-6 months    PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    PROVIDE      BANGLADESH   (0%, 5%]             0%                1.1999494   0.9811298   1.467572
0-6 months    PROVIDE      BANGLADESH   >5%                  0%                1.1268860   0.9082676   1.398126
6-24 months   CMIN         BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   CMIN         BANGLADESH   (0%, 5%]             0%                0.9614351   0.5632496   1.641115
6-24 months   CMIN         BANGLADESH   >5%                  0%                1.1410363   0.8438911   1.542810
6-24 months   MAL-ED       BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       BANGLADESH   (0%, 5%]             0%                1.1111111   0.5923791   2.084084
6-24 months   MAL-ED       BANGLADESH   >5%                  0%                1.2121212   0.4972345   2.954819
6-24 months   MAL-ED       INDIA        0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   MAL-ED       INDIA        (0%, 5%]             0%                0.7488372   0.4558306   1.230188
6-24 months   MAL-ED       INDIA        >5%                  0%                0.7931034   0.4694408   1.339920
6-24 months   NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             0%                0.8212274   0.3466570   1.945480
6-24 months   NIH-Birth    BANGLADESH   >5%                  0%                1.6953112   0.8788162   3.270400
6-24 months   PROVIDE      BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   PROVIDE      BANGLADESH   (0%, 5%]             0%                1.0195312   0.4883689   2.128399
6-24 months   PROVIDE      BANGLADESH   >5%                  0%                0.9666667   0.4210787   2.219168


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMIN         BANGLADESH   0%                   NA                -0.0418915   -0.1435748    0.0597919
0-24 months   MAL-ED       BANGLADESH   0%                   NA                 0.0662139   -0.0688583    0.2012861
0-24 months   MAL-ED       INDIA        0%                   NA                -0.0549717   -0.2012910    0.0913476
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                 0.0185068   -0.0866480    0.1236616
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                 0.0056007   -0.0479081    0.0591096
0-24 months   PROVIDE      BANGLADESH   0%                   NA                 0.0191694   -0.0796278    0.1179666
0-6 months    CMIN         BANGLADESH   0%                   NA                -0.2029915   -0.3793059   -0.0266770
0-6 months    MAL-ED       INDIA        0%                   NA                -0.0139535   -0.1990284    0.1711214
0-6 months    NIH-Birth    BANGLADESH   0%                   NA                 0.0199285   -0.1006746    0.1405315
0-6 months    NIH-Crypto   BANGLADESH   0%                   NA                -0.0358919   -0.0793847    0.0076008
0-6 months    PROVIDE      BANGLADESH   0%                   NA                 0.0801483   -0.0176954    0.1779919
6-24 months   CMIN         BANGLADESH   0%                   NA                 0.0164646   -0.0976761    0.1306052
6-24 months   MAL-ED       BANGLADESH   0%                   NA                 0.0418033   -0.1531482    0.2367548
6-24 months   MAL-ED       INDIA        0%                   NA                -0.1153318   -0.3165243    0.0858607
6-24 months   NIH-Birth    BANGLADESH   0%                   NA                 0.0781028   -0.0471362    0.2033418
6-24 months   PROVIDE      BANGLADESH   0%                   NA                 0.0005607   -0.1459375    0.1470589


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMIN         BANGLADESH   0%                   NA                -0.0723580   -0.2642274    0.0903918
0-24 months   MAL-ED       BANGLADESH   0%                   NA                 0.1026316   -0.1357451    0.2909764
0-24 months   MAL-ED       INDIA        0%                   NA                -0.0904534   -0.3591851    0.1251459
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                 0.0355769   -0.1896416    0.2181579
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                 0.0089960   -0.0808346    0.0913606
0-24 months   PROVIDE      BANGLADESH   0%                   NA                 0.0329843   -0.1532166    0.1891207
0-6 months    CMIN         BANGLADESH   0%                   NA                -0.3909465   -0.8220742   -0.0618295
0-6 months    MAL-ED       INDIA        0%                   NA                -0.0203390   -0.3291105    0.2167005
0-6 months    NIH-Birth    BANGLADESH   0%                   NA                 0.0279500   -0.1569514    0.1833008
0-6 months    NIH-Crypto   BANGLADESH   0%                   NA                -0.0401745   -0.0906918    0.0080031
0-6 months    PROVIDE      BANGLADESH   0%                   NA                 0.1022582   -0.0332839    0.2200203
6-24 months   CMIN         BANGLADESH   0%                   NA                 0.0273748   -0.1817587    0.1994984
6-24 months   MAL-ED       BANGLADESH   0%                   NA                 0.0850000   -0.4167715    0.4090614
6-24 months   MAL-ED       INDIA        0%                   NA                -0.2148338   -0.6589228    0.1103739
6-24 months   NIH-Birth    BANGLADESH   0%                   NA                 0.2577392   -0.2944293    0.5743676
6-24 months   PROVIDE      BANGLADESH   0%                   NA                 0.0020284   -0.6972781    0.4132091
