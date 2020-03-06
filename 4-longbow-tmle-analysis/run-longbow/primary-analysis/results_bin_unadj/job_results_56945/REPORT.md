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

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        safeh20    swasted   n_cell     n
----------  --------------  -----------------------------  --------  --------  -------  ----
Birth       MAL-ED          BANGLADESH                     1                0        0   201
Birth       MAL-ED          BANGLADESH                     1                1        0   201
Birth       MAL-ED          BANGLADESH                     0                0      193   201
Birth       MAL-ED          BANGLADESH                     0                1        8   201
Birth       MAL-ED          BRAZIL                         1                0        0    38
Birth       MAL-ED          BRAZIL                         1                1        0    38
Birth       MAL-ED          BRAZIL                         0                0       38    38
Birth       MAL-ED          BRAZIL                         0                1        0    38
Birth       MAL-ED          INDIA                          1                0        0    39
Birth       MAL-ED          INDIA                          1                1        0    39
Birth       MAL-ED          INDIA                          0                0       39    39
Birth       MAL-ED          INDIA                          0                1        0    39
Birth       MAL-ED          NEPAL                          1                0        1    25
Birth       MAL-ED          NEPAL                          1                1        0    25
Birth       MAL-ED          NEPAL                          0                0       23    25
Birth       MAL-ED          NEPAL                          0                1        1    25
Birth       MAL-ED          PERU                           1                0        9   202
Birth       MAL-ED          PERU                           1                1        0   202
Birth       MAL-ED          PERU                           0                0      193   202
Birth       MAL-ED          PERU                           0                1        0   202
Birth       MAL-ED          SOUTH AFRICA                   1                0       13    95
Birth       MAL-ED          SOUTH AFRICA                   1                1        0    95
Birth       MAL-ED          SOUTH AFRICA                   0                0       82    95
Birth       MAL-ED          SOUTH AFRICA                   0                1        0    95
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0       74   111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0   111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       37   111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0   111
Birth       NIH-Birth       BANGLADESH                     1                0      536   575
Birth       NIH-Birth       BANGLADESH                     1                1       37   575
Birth       NIH-Birth       BANGLADESH                     0                0        1   575
Birth       NIH-Birth       BANGLADESH                     0                1        1   575
Birth       NIH-Crypto      BANGLADESH                     1                0      660   707
Birth       NIH-Crypto      BANGLADESH                     1                1       47   707
Birth       NIH-Crypto      BANGLADESH                     0                0        0   707
Birth       NIH-Crypto      BANGLADESH                     0                1        0   707
Birth       PROVIDE         BANGLADESH                     1                0       43    45
Birth       PROVIDE         BANGLADESH                     1                1        2    45
Birth       PROVIDE         BANGLADESH                     0                0        0    45
Birth       PROVIDE         BANGLADESH                     0                1        0    45
6 months    CONTENT         PERU                           1                0       54    57
6 months    CONTENT         PERU                           1                1        0    57
6 months    CONTENT         PERU                           0                0        3    57
6 months    CONTENT         PERU                           0                1        0    57
6 months    LCNI-5          MALAWI                         1                0      672   816
6 months    LCNI-5          MALAWI                         1                1        0   816
6 months    LCNI-5          MALAWI                         0                0      144   816
6 months    LCNI-5          MALAWI                         0                1        0   816
6 months    MAL-ED          BANGLADESH                     1                0        0   240
6 months    MAL-ED          BANGLADESH                     1                1        0   240
6 months    MAL-ED          BANGLADESH                     0                0      238   240
6 months    MAL-ED          BANGLADESH                     0                1        2   240
6 months    MAL-ED          BRAZIL                         1                0        0   142
6 months    MAL-ED          BRAZIL                         1                1        0   142
6 months    MAL-ED          BRAZIL                         0                0      142   142
6 months    MAL-ED          BRAZIL                         0                1        0   142
6 months    MAL-ED          INDIA                          1                0        0   235
6 months    MAL-ED          INDIA                          1                1        0   235
6 months    MAL-ED          INDIA                          0                0      229   235
6 months    MAL-ED          INDIA                          0                1        6   235
6 months    MAL-ED          NEPAL                          1                0        1   233
6 months    MAL-ED          NEPAL                          1                1        0   233
6 months    MAL-ED          NEPAL                          0                0      232   233
6 months    MAL-ED          NEPAL                          0                1        0   233
6 months    MAL-ED          PERU                           1                0       11   259
6 months    MAL-ED          PERU                           1                1        0   259
6 months    MAL-ED          PERU                           0                0      248   259
6 months    MAL-ED          PERU                           0                1        0   259
6 months    MAL-ED          SOUTH AFRICA                   1                0       37   248
6 months    MAL-ED          SOUTH AFRICA                   1                1        0   248
6 months    MAL-ED          SOUTH AFRICA                   0                0      208   248
6 months    MAL-ED          SOUTH AFRICA                   0                1        3   248
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      168   246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0   246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       78   246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0   246
6 months    NIH-Birth       BANGLADESH                     1                0      529   537
6 months    NIH-Birth       BANGLADESH                     1                1        6   537
6 months    NIH-Birth       BANGLADESH                     0                0        2   537
6 months    NIH-Birth       BANGLADESH                     0                1        0   537
6 months    NIH-Crypto      BANGLADESH                     1                0      715   715
6 months    NIH-Crypto      BANGLADESH                     1                1        0   715
6 months    NIH-Crypto      BANGLADESH                     0                0        0   715
6 months    NIH-Crypto      BANGLADESH                     0                1        0   715
6 months    PROVIDE         BANGLADESH                     1                0       11    11
6 months    PROVIDE         BANGLADESH                     1                1        0    11
6 months    PROVIDE         BANGLADESH                     0                0        0    11
6 months    PROVIDE         BANGLADESH                     0                1        0    11
6 months    SAS-FoodSuppl   INDIA                          1                0      361   380
6 months    SAS-FoodSuppl   INDIA                          1                1       19   380
6 months    SAS-FoodSuppl   INDIA                          0                0        0   380
6 months    SAS-FoodSuppl   INDIA                          0                1        0   380
24 months   CONTENT         PERU                           1                0       45    48
24 months   CONTENT         PERU                           1                1        0    48
24 months   CONTENT         PERU                           0                0        3    48
24 months   CONTENT         PERU                           0                1        0    48
24 months   LCNI-5          MALAWI                         1                0      463   558
24 months   LCNI-5          MALAWI                         1                1        1   558
24 months   LCNI-5          MALAWI                         0                0       94   558
24 months   LCNI-5          MALAWI                         0                1        0   558
24 months   MAL-ED          BANGLADESH                     1                0        0   212
24 months   MAL-ED          BANGLADESH                     1                1        0   212
24 months   MAL-ED          BANGLADESH                     0                0      212   212
24 months   MAL-ED          BANGLADESH                     0                1        0   212
24 months   MAL-ED          BRAZIL                         1                0        0   113
24 months   MAL-ED          BRAZIL                         1                1        0   113
24 months   MAL-ED          BRAZIL                         0                0      112   113
24 months   MAL-ED          BRAZIL                         0                1        1   113
24 months   MAL-ED          INDIA                          1                0        0   227
24 months   MAL-ED          INDIA                          1                1        0   227
24 months   MAL-ED          INDIA                          0                0      225   227
24 months   MAL-ED          INDIA                          0                1        2   227
24 months   MAL-ED          NEPAL                          1                0        1   226
24 months   MAL-ED          NEPAL                          1                1        0   226
24 months   MAL-ED          NEPAL                          0                0      225   226
24 months   MAL-ED          NEPAL                          0                1        0   226
24 months   MAL-ED          PERU                           1                0        7   193
24 months   MAL-ED          PERU                           1                1        0   193
24 months   MAL-ED          PERU                           0                0      184   193
24 months   MAL-ED          PERU                           0                1        2   193
24 months   MAL-ED          SOUTH AFRICA                   1                0       34   237
24 months   MAL-ED          SOUTH AFRICA                   1                1        0   237
24 months   MAL-ED          SOUTH AFRICA                   0                0      203   237
24 months   MAL-ED          SOUTH AFRICA                   0                1        0   237
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0      145   213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0   213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0       68   213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1        0   213
24 months   NIH-Birth       BANGLADESH                     1                0      416   428
24 months   NIH-Birth       BANGLADESH                     1                1       10   428
24 months   NIH-Birth       BANGLADESH                     0                0        2   428
24 months   NIH-Birth       BANGLADESH                     0                1        0   428
24 months   NIH-Crypto      BANGLADESH                     1                0      510   514
24 months   NIH-Crypto      BANGLADESH                     1                1        4   514
24 months   NIH-Crypto      BANGLADESH                     0                0        0   514
24 months   NIH-Crypto      BANGLADESH                     0                1        0   514
24 months   PROVIDE         BANGLADESH                     1                0        9     9
24 months   PROVIDE         BANGLADESH                     1                1        0     9
24 months   PROVIDE         BANGLADESH                     0                0        0     9
24 months   PROVIDE         BANGLADESH                     0                1        0     9


The following strata were considered:

* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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


ALL STRATA DROPPED. JOB FINISHED
















