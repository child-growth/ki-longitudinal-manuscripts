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

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid         country                        safeh20    wast_rec90d   n_cell     n
------------  --------------  -----------------------------  --------  ------------  -------  ----
0-24 months   CONTENT         PERU                           1                    0        0     1
0-24 months   CONTENT         PERU                           1                    1        1     1
0-24 months   CONTENT         PERU                           0                    0        0     1
0-24 months   CONTENT         PERU                           0                    1        0     1
0-24 months   LCNI-5          MALAWI                         1                    0       52    78
0-24 months   LCNI-5          MALAWI                         1                    1        9    78
0-24 months   LCNI-5          MALAWI                         0                    0       13    78
0-24 months   LCNI-5          MALAWI                         0                    1        4    78
0-24 months   MAL-ED          BANGLADESH                     1                    0        0   121
0-24 months   MAL-ED          BANGLADESH                     1                    1        0   121
0-24 months   MAL-ED          BANGLADESH                     0                    0       43   121
0-24 months   MAL-ED          BANGLADESH                     0                    1       78   121
0-24 months   MAL-ED          BRAZIL                         1                    0        0    17
0-24 months   MAL-ED          BRAZIL                         1                    1        0    17
0-24 months   MAL-ED          BRAZIL                         0                    0        3    17
0-24 months   MAL-ED          BRAZIL                         0                    1       14    17
0-24 months   MAL-ED          INDIA                          1                    0        0   175
0-24 months   MAL-ED          INDIA                          1                    1        0   175
0-24 months   MAL-ED          INDIA                          0                    0       66   175
0-24 months   MAL-ED          INDIA                          0                    1      109   175
0-24 months   MAL-ED          NEPAL                          1                    0        0    96
0-24 months   MAL-ED          NEPAL                          1                    1        0    96
0-24 months   MAL-ED          NEPAL                          0                    0       19    96
0-24 months   MAL-ED          NEPAL                          0                    1       77    96
0-24 months   MAL-ED          PERU                           1                    0        0    34
0-24 months   MAL-ED          PERU                           1                    1        0    34
0-24 months   MAL-ED          PERU                           0                    0        6    34
0-24 months   MAL-ED          PERU                           0                    1       28    34
0-24 months   MAL-ED          SOUTH AFRICA                   1                    0        2    79
0-24 months   MAL-ED          SOUTH AFRICA                   1                    1       14    79
0-24 months   MAL-ED          SOUTH AFRICA                   0                    0       11    79
0-24 months   MAL-ED          SOUTH AFRICA                   0                    1       52    79
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        8    51
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       34    51
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        1    51
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        8    51
0-24 months   NIH-Birth       BANGLADESH                     1                    0      202   421
0-24 months   NIH-Birth       BANGLADESH                     1                    1      218   421
0-24 months   NIH-Birth       BANGLADESH                     0                    0        0   421
0-24 months   NIH-Birth       BANGLADESH                     0                    1        1   421
0-24 months   NIH-Crypto      BANGLADESH                     1                    0      117   310
0-24 months   NIH-Crypto      BANGLADESH                     1                    1      193   310
0-24 months   NIH-Crypto      BANGLADESH                     0                    0        0   310
0-24 months   NIH-Crypto      BANGLADESH                     0                    1        0   310
0-24 months   PROVIDE         BANGLADESH                     1                    0        9    15
0-24 months   PROVIDE         BANGLADESH                     1                    1        6    15
0-24 months   PROVIDE         BANGLADESH                     0                    0        0    15
0-24 months   PROVIDE         BANGLADESH                     0                    1        0    15
0-24 months   SAS-FoodSuppl   INDIA                          1                    0      221   234
0-24 months   SAS-FoodSuppl   INDIA                          1                    1       13   234
0-24 months   SAS-FoodSuppl   INDIA                          0                    0        0   234
0-24 months   SAS-FoodSuppl   INDIA                          0                    1        0   234
0-6 months    CONTENT         PERU                           1                    0        0     1
0-6 months    CONTENT         PERU                           1                    1        1     1
0-6 months    CONTENT         PERU                           0                    0        0     1
0-6 months    CONTENT         PERU                           0                    1        0     1
0-6 months    LCNI-5          MALAWI                         1                    0        3     4
0-6 months    LCNI-5          MALAWI                         1                    1        0     4
0-6 months    LCNI-5          MALAWI                         0                    0        1     4
0-6 months    LCNI-5          MALAWI                         0                    1        0     4
0-6 months    MAL-ED          BANGLADESH                     1                    0        0    60
0-6 months    MAL-ED          BANGLADESH                     1                    1        0    60
0-6 months    MAL-ED          BANGLADESH                     0                    0       12    60
0-6 months    MAL-ED          BANGLADESH                     0                    1       48    60
0-6 months    MAL-ED          BRAZIL                         1                    0        0    11
0-6 months    MAL-ED          BRAZIL                         1                    1        0    11
0-6 months    MAL-ED          BRAZIL                         0                    0        1    11
0-6 months    MAL-ED          BRAZIL                         0                    1       10    11
0-6 months    MAL-ED          INDIA                          1                    0        0    80
0-6 months    MAL-ED          INDIA                          1                    1        0    80
0-6 months    MAL-ED          INDIA                          0                    0       22    80
0-6 months    MAL-ED          INDIA                          0                    1       58    80
0-6 months    MAL-ED          NEPAL                          1                    0        0    46
0-6 months    MAL-ED          NEPAL                          1                    1        0    46
0-6 months    MAL-ED          NEPAL                          0                    0        8    46
0-6 months    MAL-ED          NEPAL                          0                    1       38    46
0-6 months    MAL-ED          PERU                           1                    0        0    10
0-6 months    MAL-ED          PERU                           1                    1        0    10
0-6 months    MAL-ED          PERU                           0                    0        0    10
0-6 months    MAL-ED          PERU                           0                    1       10    10
0-6 months    MAL-ED          SOUTH AFRICA                   1                    0        0    28
0-6 months    MAL-ED          SOUTH AFRICA                   1                    1        6    28
0-6 months    MAL-ED          SOUTH AFRICA                   0                    0        4    28
0-6 months    MAL-ED          SOUTH AFRICA                   0                    1       18    28
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       11    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        1    14
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        2    14
0-6 months    NIH-Birth       BANGLADESH                     1                    0       64   223
0-6 months    NIH-Birth       BANGLADESH                     1                    1      158   223
0-6 months    NIH-Birth       BANGLADESH                     0                    0        0   223
0-6 months    NIH-Birth       BANGLADESH                     0                    1        1   223
0-6 months    NIH-Crypto      BANGLADESH                     1                    0       21   197
0-6 months    NIH-Crypto      BANGLADESH                     1                    1      176   197
0-6 months    NIH-Crypto      BANGLADESH                     0                    0        0   197
0-6 months    NIH-Crypto      BANGLADESH                     0                    1        0   197
0-6 months    PROVIDE         BANGLADESH                     1                    0        8    13
0-6 months    PROVIDE         BANGLADESH                     1                    1        5    13
0-6 months    PROVIDE         BANGLADESH                     0                    0        0    13
0-6 months    PROVIDE         BANGLADESH                     0                    1        0    13
0-6 months    SAS-FoodSuppl   INDIA                          1                    0       78    78
0-6 months    SAS-FoodSuppl   INDIA                          1                    1        0    78
0-6 months    SAS-FoodSuppl   INDIA                          0                    0        0    78
0-6 months    SAS-FoodSuppl   INDIA                          0                    1        0    78
6-24 months   LCNI-5          MALAWI                         1                    0       49    74
6-24 months   LCNI-5          MALAWI                         1                    1        9    74
6-24 months   LCNI-5          MALAWI                         0                    0       12    74
6-24 months   LCNI-5          MALAWI                         0                    1        4    74
6-24 months   MAL-ED          BANGLADESH                     1                    0        0    61
6-24 months   MAL-ED          BANGLADESH                     1                    1        0    61
6-24 months   MAL-ED          BANGLADESH                     0                    0       31    61
6-24 months   MAL-ED          BANGLADESH                     0                    1       30    61
6-24 months   MAL-ED          BRAZIL                         1                    0        0     6
6-24 months   MAL-ED          BRAZIL                         1                    1        0     6
6-24 months   MAL-ED          BRAZIL                         0                    0        2     6
6-24 months   MAL-ED          BRAZIL                         0                    1        4     6
6-24 months   MAL-ED          INDIA                          1                    0        0    95
6-24 months   MAL-ED          INDIA                          1                    1        0    95
6-24 months   MAL-ED          INDIA                          0                    0       44    95
6-24 months   MAL-ED          INDIA                          0                    1       51    95
6-24 months   MAL-ED          NEPAL                          1                    0        0    50
6-24 months   MAL-ED          NEPAL                          1                    1        0    50
6-24 months   MAL-ED          NEPAL                          0                    0       11    50
6-24 months   MAL-ED          NEPAL                          0                    1       39    50
6-24 months   MAL-ED          PERU                           1                    0        0    24
6-24 months   MAL-ED          PERU                           1                    1        0    24
6-24 months   MAL-ED          PERU                           0                    0        6    24
6-24 months   MAL-ED          PERU                           0                    1       18    24
6-24 months   MAL-ED          SOUTH AFRICA                   1                    0        2    51
6-24 months   MAL-ED          SOUTH AFRICA                   1                    1        8    51
6-24 months   MAL-ED          SOUTH AFRICA                   0                    0        7    51
6-24 months   MAL-ED          SOUTH AFRICA                   0                    1       34    51
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        8    37
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       23    37
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        0    37
6-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        6    37
6-24 months   NIH-Birth       BANGLADESH                     1                    0      138   198
6-24 months   NIH-Birth       BANGLADESH                     1                    1       60   198
6-24 months   NIH-Birth       BANGLADESH                     0                    0        0   198
6-24 months   NIH-Birth       BANGLADESH                     0                    1        0   198
6-24 months   NIH-Crypto      BANGLADESH                     1                    0       96   113
6-24 months   NIH-Crypto      BANGLADESH                     1                    1       17   113
6-24 months   NIH-Crypto      BANGLADESH                     0                    0        0   113
6-24 months   NIH-Crypto      BANGLADESH                     0                    1        0   113
6-24 months   PROVIDE         BANGLADESH                     1                    0        1     2
6-24 months   PROVIDE         BANGLADESH                     1                    1        1     2
6-24 months   PROVIDE         BANGLADESH                     0                    0        0     2
6-24 months   PROVIDE         BANGLADESH                     0                    1        0     2
6-24 months   SAS-FoodSuppl   INDIA                          1                    0      143   156
6-24 months   SAS-FoodSuppl   INDIA                          1                    1       13   156
6-24 months   SAS-FoodSuppl   INDIA                          0                    0        0   156
6-24 months   SAS-FoodSuppl   INDIA                          0                    1        0   156


The following strata were considered:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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


ALL STRATA DROPPED. JOB FINISHED
















