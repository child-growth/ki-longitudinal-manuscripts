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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** perdiar6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid      country                        perdiar6    pers_wast   n_cell     n
------------  -----------  -----------------------------  ---------  ----------  -------  ----
0-24 months   CMIN         BANGLADESH                     0%                  0       82   257
0-24 months   CMIN         BANGLADESH                     0%                  1        5   257
0-24 months   CMIN         BANGLADESH                     (0%, 5%]            0       54   257
0-24 months   CMIN         BANGLADESH                     (0%, 5%]            1        6   257
0-24 months   CMIN         BANGLADESH                     >5%                 0      101   257
0-24 months   CMIN         BANGLADESH                     >5%                 1        9   257
0-24 months   CONTENT      PERU                           0%                  0      115   215
0-24 months   CONTENT      PERU                           0%                  1        0   215
0-24 months   CONTENT      PERU                           (0%, 5%]            0       43   215
0-24 months   CONTENT      PERU                           (0%, 5%]            1        0   215
0-24 months   CONTENT      PERU                           >5%                 0       57   215
0-24 months   CONTENT      PERU                           >5%                 1        0   215
0-24 months   EE           PAKISTAN                       0%                  0      308   377
0-24 months   EE           PAKISTAN                       0%                  1       32   377
0-24 months   EE           PAKISTAN                       (0%, 5%]            0       34   377
0-24 months   EE           PAKISTAN                       (0%, 5%]            1        1   377
0-24 months   EE           PAKISTAN                       >5%                 0        2   377
0-24 months   EE           PAKISTAN                       >5%                 1        0   377
0-24 months   MAL-ED       BANGLADESH                     0%                  0       69   248
0-24 months   MAL-ED       BANGLADESH                     0%                  1        4   248
0-24 months   MAL-ED       BANGLADESH                     (0%, 5%]            0       90   248
0-24 months   MAL-ED       BANGLADESH                     (0%, 5%]            1        6   248
0-24 months   MAL-ED       BANGLADESH                     >5%                 0       76   248
0-24 months   MAL-ED       BANGLADESH                     >5%                 1        3   248
0-24 months   MAL-ED       BRAZIL                         0%                  0      199   218
0-24 months   MAL-ED       BRAZIL                         0%                  1        2   218
0-24 months   MAL-ED       BRAZIL                         (0%, 5%]            0       15   218
0-24 months   MAL-ED       BRAZIL                         (0%, 5%]            1        0   218
0-24 months   MAL-ED       BRAZIL                         >5%                 0        2   218
0-24 months   MAL-ED       BRAZIL                         >5%                 1        0   218
0-24 months   MAL-ED       INDIA                          0%                  0       48   241
0-24 months   MAL-ED       INDIA                          0%                  1        4   241
0-24 months   MAL-ED       INDIA                          (0%, 5%]            0      118   241
0-24 months   MAL-ED       INDIA                          (0%, 5%]            1       11   241
0-24 months   MAL-ED       INDIA                          >5%                 0       54   241
0-24 months   MAL-ED       INDIA                          >5%                 1        6   241
0-24 months   MAL-ED       NEPAL                          0%                  0       78   238
0-24 months   MAL-ED       NEPAL                          0%                  1        3   238
0-24 months   MAL-ED       NEPAL                          (0%, 5%]            0       76   238
0-24 months   MAL-ED       NEPAL                          (0%, 5%]            1        1   238
0-24 months   MAL-ED       NEPAL                          >5%                 0       80   238
0-24 months   MAL-ED       NEPAL                          >5%                 1        0   238
0-24 months   MAL-ED       PERU                           0%                  0       71   284
0-24 months   MAL-ED       PERU                           0%                  1        1   284
0-24 months   MAL-ED       PERU                           (0%, 5%]            0       93   284
0-24 months   MAL-ED       PERU                           (0%, 5%]            1        0   284
0-24 months   MAL-ED       PERU                           >5%                 0      119   284
0-24 months   MAL-ED       PERU                           >5%                 1        0   284
0-24 months   MAL-ED       SOUTH AFRICA                   0%                  0      204   275
0-24 months   MAL-ED       SOUTH AFRICA                   0%                  1        2   275
0-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]            0       59   275
0-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]            1        0   275
0-24 months   MAL-ED       SOUTH AFRICA                   >5%                 0       10   275
0-24 months   MAL-ED       SOUTH AFRICA                   >5%                 1        0   275
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  0      106   253
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  1        0   253
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      101   253
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        0   253
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 0       46   253
0-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 1        0   253
0-24 months   NIH-Birth    BANGLADESH                     0%                  0      112   534
0-24 months   NIH-Birth    BANGLADESH                     0%                  1       12   534
0-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]            0      155   534
0-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]            1       12   534
0-24 months   NIH-Birth    BANGLADESH                     >5%                 0      220   534
0-24 months   NIH-Birth    BANGLADESH                     >5%                 1       23   534
0-24 months   NIH-Crypto   BANGLADESH                     0%                  0      334   730
0-24 months   NIH-Crypto   BANGLADESH                     0%                  1       11   730
0-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]            0      163   730
0-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]            1        7   730
0-24 months   NIH-Crypto   BANGLADESH                     >5%                 0      207   730
0-24 months   NIH-Crypto   BANGLADESH                     >5%                 1        8   730
0-24 months   PROVIDE      BANGLADESH                     0%                  0      167   641
0-24 months   PROVIDE      BANGLADESH                     0%                  1        4   641
0-24 months   PROVIDE      BANGLADESH                     (0%, 5%]            0      253   641
0-24 months   PROVIDE      BANGLADESH                     (0%, 5%]            1        5   641
0-24 months   PROVIDE      BANGLADESH                     >5%                 0      206   641
0-24 months   PROVIDE      BANGLADESH                     >5%                 1        6   641
0-6 months    CMIN         BANGLADESH                     0%                  0       77   234
0-6 months    CMIN         BANGLADESH                     0%                  1        2   234
0-6 months    CMIN         BANGLADESH                     (0%, 5%]            0       52   234
0-6 months    CMIN         BANGLADESH                     (0%, 5%]            1        2   234
0-6 months    CMIN         BANGLADESH                     >5%                 0       96   234
0-6 months    CMIN         BANGLADESH                     >5%                 1        5   234
0-6 months    CONTENT      PERU                           0%                  0      115   215
0-6 months    CONTENT      PERU                           0%                  1        0   215
0-6 months    CONTENT      PERU                           (0%, 5%]            0       43   215
0-6 months    CONTENT      PERU                           (0%, 5%]            1        0   215
0-6 months    CONTENT      PERU                           >5%                 0       57   215
0-6 months    CONTENT      PERU                           >5%                 1        0   215
0-6 months    EE           PAKISTAN                       0%                  0      310   371
0-6 months    EE           PAKISTAN                       0%                  1       24   371
0-6 months    EE           PAKISTAN                       (0%, 5%]            0       34   371
0-6 months    EE           PAKISTAN                       (0%, 5%]            1        1   371
0-6 months    EE           PAKISTAN                       >5%                 0        2   371
0-6 months    EE           PAKISTAN                       >5%                 1        0   371
0-6 months    MAL-ED       BANGLADESH                     0%                  0       71   248
0-6 months    MAL-ED       BANGLADESH                     0%                  1        2   248
0-6 months    MAL-ED       BANGLADESH                     (0%, 5%]            0       92   248
0-6 months    MAL-ED       BANGLADESH                     (0%, 5%]            1        4   248
0-6 months    MAL-ED       BANGLADESH                     >5%                 0       78   248
0-6 months    MAL-ED       BANGLADESH                     >5%                 1        1   248
0-6 months    MAL-ED       BRAZIL                         0%                  0      200   218
0-6 months    MAL-ED       BRAZIL                         0%                  1        1   218
0-6 months    MAL-ED       BRAZIL                         (0%, 5%]            0       15   218
0-6 months    MAL-ED       BRAZIL                         (0%, 5%]            1        0   218
0-6 months    MAL-ED       BRAZIL                         >5%                 0        2   218
0-6 months    MAL-ED       BRAZIL                         >5%                 1        0   218
0-6 months    MAL-ED       INDIA                          0%                  0       47   240
0-6 months    MAL-ED       INDIA                          0%                  1        4   240
0-6 months    MAL-ED       INDIA                          (0%, 5%]            0      119   240
0-6 months    MAL-ED       INDIA                          (0%, 5%]            1       10   240
0-6 months    MAL-ED       INDIA                          >5%                 0       55   240
0-6 months    MAL-ED       INDIA                          >5%                 1        5   240
0-6 months    MAL-ED       NEPAL                          0%                  0       76   238
0-6 months    MAL-ED       NEPAL                          0%                  1        5   238
0-6 months    MAL-ED       NEPAL                          (0%, 5%]            0       75   238
0-6 months    MAL-ED       NEPAL                          (0%, 5%]            1        2   238
0-6 months    MAL-ED       NEPAL                          >5%                 0       80   238
0-6 months    MAL-ED       NEPAL                          >5%                 1        0   238
0-6 months    MAL-ED       PERU                           0%                  0       72   284
0-6 months    MAL-ED       PERU                           0%                  1        0   284
0-6 months    MAL-ED       PERU                           (0%, 5%]            0       93   284
0-6 months    MAL-ED       PERU                           (0%, 5%]            1        0   284
0-6 months    MAL-ED       PERU                           >5%                 0      119   284
0-6 months    MAL-ED       PERU                           >5%                 1        0   284
0-6 months    MAL-ED       SOUTH AFRICA                   0%                  0      203   274
0-6 months    MAL-ED       SOUTH AFRICA                   0%                  1        2   274
0-6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]            0       59   274
0-6 months    MAL-ED       SOUTH AFRICA                   (0%, 5%]            1        0   274
0-6 months    MAL-ED       SOUTH AFRICA                   >5%                 0       10   274
0-6 months    MAL-ED       SOUTH AFRICA                   >5%                 1        0   274
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  0      106   253
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  1        0   253
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      101   253
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        0   253
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 0       46   253
0-6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 1        0   253
0-6 months    NIH-Birth    BANGLADESH                     0%                  0        0   169
0-6 months    NIH-Birth    BANGLADESH                     0%                  1        0   169
0-6 months    NIH-Birth    BANGLADESH                     (0%, 5%]            0       18   169
0-6 months    NIH-Birth    BANGLADESH                     (0%, 5%]            1        1   169
0-6 months    NIH-Birth    BANGLADESH                     >5%                 0      140   169
0-6 months    NIH-Birth    BANGLADESH                     >5%                 1       10   169
0-6 months    NIH-Crypto   BANGLADESH                     0%                  0       74   250
0-6 months    NIH-Crypto   BANGLADESH                     0%                  1        0   250
0-6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]            0       61   250
0-6 months    NIH-Crypto   BANGLADESH                     (0%, 5%]            1        2   250
0-6 months    NIH-Crypto   BANGLADESH                     >5%                 0      110   250
0-6 months    NIH-Crypto   BANGLADESH                     >5%                 1        3   250
0-6 months    PROVIDE      BANGLADESH                     0%                  0      168   638
0-6 months    PROVIDE      BANGLADESH                     0%                  1        1   638
0-6 months    PROVIDE      BANGLADESH                     (0%, 5%]            0      251   638
0-6 months    PROVIDE      BANGLADESH                     (0%, 5%]            1        6   638
0-6 months    PROVIDE      BANGLADESH                     >5%                 0      205   638
0-6 months    PROVIDE      BANGLADESH                     >5%                 1        7   638
6-24 months   CMIN         BANGLADESH                     0%                  0       82   257
6-24 months   CMIN         BANGLADESH                     0%                  1        5   257
6-24 months   CMIN         BANGLADESH                     (0%, 5%]            0       54   257
6-24 months   CMIN         BANGLADESH                     (0%, 5%]            1        6   257
6-24 months   CMIN         BANGLADESH                     >5%                 0      101   257
6-24 months   CMIN         BANGLADESH                     >5%                 1        9   257
6-24 months   CONTENT      PERU                           0%                  0      115   215
6-24 months   CONTENT      PERU                           0%                  1        0   215
6-24 months   CONTENT      PERU                           (0%, 5%]            0       43   215
6-24 months   CONTENT      PERU                           (0%, 5%]            1        0   215
6-24 months   CONTENT      PERU                           >5%                 0       57   215
6-24 months   CONTENT      PERU                           >5%                 1        0   215
6-24 months   EE           PAKISTAN                       0%                  0      308   377
6-24 months   EE           PAKISTAN                       0%                  1       32   377
6-24 months   EE           PAKISTAN                       (0%, 5%]            0       34   377
6-24 months   EE           PAKISTAN                       (0%, 5%]            1        1   377
6-24 months   EE           PAKISTAN                       >5%                 0        2   377
6-24 months   EE           PAKISTAN                       >5%                 1        0   377
6-24 months   MAL-ED       BANGLADESH                     0%                  0       69   248
6-24 months   MAL-ED       BANGLADESH                     0%                  1        4   248
6-24 months   MAL-ED       BANGLADESH                     (0%, 5%]            0       90   248
6-24 months   MAL-ED       BANGLADESH                     (0%, 5%]            1        6   248
6-24 months   MAL-ED       BANGLADESH                     >5%                 0       76   248
6-24 months   MAL-ED       BANGLADESH                     >5%                 1        3   248
6-24 months   MAL-ED       BRAZIL                         0%                  0      199   218
6-24 months   MAL-ED       BRAZIL                         0%                  1        2   218
6-24 months   MAL-ED       BRAZIL                         (0%, 5%]            0       15   218
6-24 months   MAL-ED       BRAZIL                         (0%, 5%]            1        0   218
6-24 months   MAL-ED       BRAZIL                         >5%                 0        2   218
6-24 months   MAL-ED       BRAZIL                         >5%                 1        0   218
6-24 months   MAL-ED       INDIA                          0%                  0       48   241
6-24 months   MAL-ED       INDIA                          0%                  1        4   241
6-24 months   MAL-ED       INDIA                          (0%, 5%]            0      118   241
6-24 months   MAL-ED       INDIA                          (0%, 5%]            1       11   241
6-24 months   MAL-ED       INDIA                          >5%                 0       54   241
6-24 months   MAL-ED       INDIA                          >5%                 1        6   241
6-24 months   MAL-ED       NEPAL                          0%                  0       78   238
6-24 months   MAL-ED       NEPAL                          0%                  1        3   238
6-24 months   MAL-ED       NEPAL                          (0%, 5%]            0       76   238
6-24 months   MAL-ED       NEPAL                          (0%, 5%]            1        1   238
6-24 months   MAL-ED       NEPAL                          >5%                 0       80   238
6-24 months   MAL-ED       NEPAL                          >5%                 1        0   238
6-24 months   MAL-ED       PERU                           0%                  0       71   284
6-24 months   MAL-ED       PERU                           0%                  1        1   284
6-24 months   MAL-ED       PERU                           (0%, 5%]            0       93   284
6-24 months   MAL-ED       PERU                           (0%, 5%]            1        0   284
6-24 months   MAL-ED       PERU                           >5%                 0      119   284
6-24 months   MAL-ED       PERU                           >5%                 1        0   284
6-24 months   MAL-ED       SOUTH AFRICA                   0%                  0      204   275
6-24 months   MAL-ED       SOUTH AFRICA                   0%                  1        2   275
6-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]            0       59   275
6-24 months   MAL-ED       SOUTH AFRICA                   (0%, 5%]            1        0   275
6-24 months   MAL-ED       SOUTH AFRICA                   >5%                 0       10   275
6-24 months   MAL-ED       SOUTH AFRICA                   >5%                 1        0   275
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  0      106   253
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  1        0   253
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      101   253
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        0   253
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 0       46   253
6-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 1        0   253
6-24 months   NIH-Birth    BANGLADESH                     0%                  0      112   534
6-24 months   NIH-Birth    BANGLADESH                     0%                  1       12   534
6-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]            0      155   534
6-24 months   NIH-Birth    BANGLADESH                     (0%, 5%]            1       12   534
6-24 months   NIH-Birth    BANGLADESH                     >5%                 0      220   534
6-24 months   NIH-Birth    BANGLADESH                     >5%                 1       23   534
6-24 months   NIH-Crypto   BANGLADESH                     0%                  0      334   730
6-24 months   NIH-Crypto   BANGLADESH                     0%                  1       11   730
6-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]            0      163   730
6-24 months   NIH-Crypto   BANGLADESH                     (0%, 5%]            1        7   730
6-24 months   NIH-Crypto   BANGLADESH                     >5%                 0      207   730
6-24 months   NIH-Crypto   BANGLADESH                     >5%                 1        8   730
6-24 months   PROVIDE      BANGLADESH                     0%                  0      167   641
6-24 months   PROVIDE      BANGLADESH                     0%                  1        4   641
6-24 months   PROVIDE      BANGLADESH                     (0%, 5%]            0      253   641
6-24 months   PROVIDE      BANGLADESH                     (0%, 5%]            1        5   641
6-24 months   PROVIDE      BANGLADESH                     >5%                 0      206   641
6-24 months   PROVIDE      BANGLADESH                     >5%                 1        6   641


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
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/16be09c6-ed14-4c9b-aab6-e24fb1c3704a/cdfdfdc4-5eb5-428a-80c5-cbe5418200dd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/16be09c6-ed14-4c9b-aab6-e24fb1c3704a/cdfdfdc4-5eb5-428a-80c5-cbe5418200dd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/16be09c6-ed14-4c9b-aab6-e24fb1c3704a/cdfdfdc4-5eb5-428a-80c5-cbe5418200dd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/16be09c6-ed14-4c9b-aab6-e24fb1c3704a/cdfdfdc4-5eb5-428a-80c5-cbe5418200dd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMIN         BANGLADESH   0%                   NA                0.0574713   0.0084700   0.1064726
0-24 months   CMIN         BANGLADESH   (0%, 5%]             NA                0.1000000   0.0239428   0.1760572
0-24 months   CMIN         BANGLADESH   >5%                  NA                0.0818182   0.0304981   0.1331383
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                0.0967742   0.0446880   0.1488603
0-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.0718563   0.0326517   0.1110609
0-24 months   NIH-Birth    BANGLADESH   >5%                  NA                0.0946502   0.0578101   0.1314903
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                0.0318841   0.0133322   0.0504359
0-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0411765   0.0112872   0.0710657
0-24 months   NIH-Crypto   BANGLADESH   >5%                  NA                0.0372093   0.0118920   0.0625267
6-24 months   CMIN         BANGLADESH   0%                   NA                0.0574713   0.0084700   0.1064726
6-24 months   CMIN         BANGLADESH   (0%, 5%]             NA                0.1000000   0.0239428   0.1760572
6-24 months   CMIN         BANGLADESH   >5%                  NA                0.0818182   0.0304981   0.1331383
6-24 months   NIH-Birth    BANGLADESH   0%                   NA                0.0967742   0.0446880   0.1488603
6-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             NA                0.0718563   0.0326517   0.1110609
6-24 months   NIH-Birth    BANGLADESH   >5%                  NA                0.0946502   0.0578101   0.1314903
6-24 months   NIH-Crypto   BANGLADESH   0%                   NA                0.0318841   0.0133322   0.0504359
6-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0411765   0.0112872   0.0710657
6-24 months   NIH-Crypto   BANGLADESH   >5%                  NA                0.0372093   0.0118920   0.0625267


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMIN         BANGLADESH   NA                   NA                0.0778210   0.0450051   0.1106369
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   CMIN         BANGLADESH   NA                   NA                0.0778210   0.0450051   0.1106369
6-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699


### Parameter: RR


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   CMIN         BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   CMIN         BANGLADESH   (0%, 5%]             0%                1.7400000   0.5550642   5.454504
0-24 months   CMIN         BANGLADESH   >5%                  0%                1.4236364   0.4939720   4.102946
0-24 months   NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             0%                0.7425150   0.3450359   1.597887
0-24 months   NIH-Birth    BANGLADESH   >5%                  0%                0.9780521   0.5033820   1.900318
0-24 months   NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.2914439   0.5093913   3.274157
0-24 months   NIH-Crypto   BANGLADESH   >5%                  0%                1.1670190   0.4767258   2.856848
6-24 months   CMIN         BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   CMIN         BANGLADESH   (0%, 5%]             0%                1.7400000   0.5550642   5.454504
6-24 months   CMIN         BANGLADESH   >5%                  0%                1.4236364   0.4939720   4.102946
6-24 months   NIH-Birth    BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth    BANGLADESH   (0%, 5%]             0%                0.7425150   0.3450359   1.597887
6-24 months   NIH-Birth    BANGLADESH   >5%                  0%                0.9780521   0.5033820   1.900318
6-24 months   NIH-Crypto   BANGLADESH   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto   BANGLADESH   (0%, 5%]             0%                1.2914439   0.5093913   3.274157
6-24 months   NIH-Crypto   BANGLADESH   >5%                  0%                1.1670190   0.4767258   2.856848


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMIN         BANGLADESH   0%                   NA                 0.0203497   -0.0226891   0.0633886
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                -0.0087592   -0.0538317   0.0363132
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                 0.0037324   -0.0104046   0.0178694
6-24 months   CMIN         BANGLADESH   0%                   NA                 0.0203497   -0.0226891   0.0633886
6-24 months   NIH-Birth    BANGLADESH   0%                   NA                -0.0087592   -0.0538317   0.0363132
6-24 months   NIH-Crypto   BANGLADESH   0%                   NA                 0.0037324   -0.0104046   0.0178694


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMIN         BANGLADESH   0%                   NA                 0.2614943   -0.5412670   0.6461413
0-24 months   NIH-Birth    BANGLADESH   0%                   NA                -0.0995196   -0.7508550   0.3095126
0-24 months   NIH-Crypto   BANGLADESH   0%                   NA                 0.1047938   -0.3918344   0.4242173
6-24 months   CMIN         BANGLADESH   0%                   NA                 0.2614943   -0.5412670   0.6461413
6-24 months   NIH-Birth    BANGLADESH   0%                   NA                -0.0995196   -0.7508550   0.3095126
6-24 months   NIH-Crypto   BANGLADESH   0%                   NA                 0.1047938   -0.3918344   0.4242173
