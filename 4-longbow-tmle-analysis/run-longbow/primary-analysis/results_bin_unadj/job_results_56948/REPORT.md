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

**Intervention Variable:** predfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid     country                        predfeed3    swasted   n_cell     n
----------  ----------  -----------------------------  ----------  --------  -------  ----
Birth       EE          PAKISTAN                       1                  0       22    22
Birth       EE          PAKISTAN                       1                  1        0    22
Birth       EE          PAKISTAN                       0                  0        0    22
Birth       EE          PAKISTAN                       0                  1        0    22
Birth       GMS-Nepal   NEPAL                          1                  0      335   422
Birth       GMS-Nepal   NEPAL                          1                  1       17   422
Birth       GMS-Nepal   NEPAL                          0                  0       70   422
Birth       GMS-Nepal   NEPAL                          0                  1        0   422
Birth       MAL-ED      BANGLADESH                     1                  0      158   202
Birth       MAL-ED      BANGLADESH                     1                  1        6   202
Birth       MAL-ED      BANGLADESH                     0                  0       36   202
Birth       MAL-ED      BANGLADESH                     0                  1        2   202
Birth       MAL-ED      BRAZIL                         1                  0       23    55
Birth       MAL-ED      BRAZIL                         1                  1        0    55
Birth       MAL-ED      BRAZIL                         0                  0       32    55
Birth       MAL-ED      BRAZIL                         0                  1        0    55
Birth       MAL-ED      INDIA                          1                  0       27    39
Birth       MAL-ED      INDIA                          1                  1        0    39
Birth       MAL-ED      INDIA                          0                  0       12    39
Birth       MAL-ED      INDIA                          0                  1        0    39
Birth       MAL-ED      NEPAL                          1                  0       13    25
Birth       MAL-ED      NEPAL                          1                  1        1    25
Birth       MAL-ED      NEPAL                          0                  0       11    25
Birth       MAL-ED      NEPAL                          0                  1        0    25
Birth       MAL-ED      PERU                           1                  0      145   218
Birth       MAL-ED      PERU                           1                  1        0   218
Birth       MAL-ED      PERU                           0                  0       73   218
Birth       MAL-ED      PERU                           0                  1        0   218
Birth       MAL-ED      SOUTH AFRICA                   1                  0       33    99
Birth       MAL-ED      SOUTH AFRICA                   1                  1        0    99
Birth       MAL-ED      SOUTH AFRICA                   0                  0       66    99
Birth       MAL-ED      SOUTH AFRICA                   0                  1        0    99
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       24    95
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1        0    95
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0       71    95
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1        0    95
6 months    EE          PAKISTAN                       1                  0       38    39
6 months    EE          PAKISTAN                       1                  1        1    39
6 months    EE          PAKISTAN                       0                  0        0    39
6 months    EE          PAKISTAN                       0                  1        0    39
6 months    GMS-Nepal   NEPAL                          1                  0      360   441
6 months    GMS-Nepal   NEPAL                          1                  1        7   441
6 months    GMS-Nepal   NEPAL                          0                  0       74   441
6 months    GMS-Nepal   NEPAL                          0                  1        0   441
6 months    MAL-ED      BANGLADESH                     1                  0      190   233
6 months    MAL-ED      BANGLADESH                     1                  1        1   233
6 months    MAL-ED      BANGLADESH                     0                  0       41   233
6 months    MAL-ED      BANGLADESH                     0                  1        1   233
6 months    MAL-ED      BRAZIL                         1                  0       93   187
6 months    MAL-ED      BRAZIL                         1                  1        0   187
6 months    MAL-ED      BRAZIL                         0                  0       94   187
6 months    MAL-ED      BRAZIL                         0                  1        0   187
6 months    MAL-ED      INDIA                          1                  0      143   210
6 months    MAL-ED      INDIA                          1                  1        4   210
6 months    MAL-ED      INDIA                          0                  0       62   210
6 months    MAL-ED      INDIA                          0                  1        1   210
6 months    MAL-ED      NEPAL                          1                  0      113   227
6 months    MAL-ED      NEPAL                          1                  1        0   227
6 months    MAL-ED      NEPAL                          0                  0      114   227
6 months    MAL-ED      NEPAL                          0                  1        0   227
6 months    MAL-ED      PERU                           1                  0      176   270
6 months    MAL-ED      PERU                           1                  1        0   270
6 months    MAL-ED      PERU                           0                  0       94   270
6 months    MAL-ED      PERU                           0                  1        0   270
6 months    MAL-ED      SOUTH AFRICA                   1                  0       63   244
6 months    MAL-ED      SOUTH AFRICA                   1                  1        0   244
6 months    MAL-ED      SOUTH AFRICA                   0                  0      179   244
6 months    MAL-ED      SOUTH AFRICA                   0                  1        2   244
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       64   212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1        0   212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0      148   212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1        0   212
24 months   EE          PAKISTAN                       1                  0       20    20
24 months   EE          PAKISTAN                       1                  1        0    20
24 months   EE          PAKISTAN                       0                  0        0    20
24 months   EE          PAKISTAN                       0                  1        0    20
24 months   GMS-Nepal   NEPAL                          1                  0      313   384
24 months   GMS-Nepal   NEPAL                          1                  1        9   384
24 months   GMS-Nepal   NEPAL                          0                  0       60   384
24 months   GMS-Nepal   NEPAL                          0                  1        2   384
24 months   MAL-ED      BANGLADESH                     1                  0      168   205
24 months   MAL-ED      BANGLADESH                     1                  1        0   205
24 months   MAL-ED      BANGLADESH                     0                  0       37   205
24 months   MAL-ED      BANGLADESH                     0                  1        0   205
24 months   MAL-ED      BRAZIL                         1                  0       78   152
24 months   MAL-ED      BRAZIL                         1                  1        1   152
24 months   MAL-ED      BRAZIL                         0                  0       73   152
24 months   MAL-ED      BRAZIL                         0                  1        0   152
24 months   MAL-ED      INDIA                          1                  0      139   202
24 months   MAL-ED      INDIA                          1                  1        0   202
24 months   MAL-ED      INDIA                          0                  0       62   202
24 months   MAL-ED      INDIA                          0                  1        1   202
24 months   MAL-ED      NEPAL                          1                  0      110   220
24 months   MAL-ED      NEPAL                          1                  1        0   220
24 months   MAL-ED      NEPAL                          0                  0      110   220
24 months   MAL-ED      NEPAL                          0                  1        0   220
24 months   MAL-ED      PERU                           1                  0      130   198
24 months   MAL-ED      PERU                           1                  1        1   198
24 months   MAL-ED      PERU                           0                  0       67   198
24 months   MAL-ED      PERU                           0                  1        0   198
24 months   MAL-ED      SOUTH AFRICA                   1                  0       60   228
24 months   MAL-ED      SOUTH AFRICA                   1                  1        0   228
24 months   MAL-ED      SOUTH AFRICA                   0                  0      168   228
24 months   MAL-ED      SOUTH AFRICA                   0                  1        0   228
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       54   184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1        0   184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0      130   184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1        0   184


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF


ALL STRATA DROPPED. JOB FINISHED
















