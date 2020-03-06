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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        nrooms    sstunted   n_cell      n
----------  ---------------  -----------------------------  -------  ---------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          4+               0        5     92
Birth       CMC-V-BCS-2002   INDIA                          4+               1        0     92
Birth       CMC-V-BCS-2002   INDIA                          1                0       36     92
Birth       CMC-V-BCS-2002   INDIA                          1                1        2     92
Birth       CMC-V-BCS-2002   INDIA                          2                0       28     92
Birth       CMC-V-BCS-2002   INDIA                          2                1        1     92
Birth       CMC-V-BCS-2002   INDIA                          3                0       19     92
Birth       CMC-V-BCS-2002   INDIA                          3                1        1     92
Birth       COHORTS          INDIA                          4+               0       91   4769
Birth       COHORTS          INDIA                          4+               1        1   4769
Birth       COHORTS          INDIA                          1                0     3021   4769
Birth       COHORTS          INDIA                          1                1      104   4769
Birth       COHORTS          INDIA                          2                0     1356   4769
Birth       COHORTS          INDIA                          2                1       29   4769
Birth       COHORTS          INDIA                          3                0      160   4769
Birth       COHORTS          INDIA                          3                1        7   4769
Birth       CONTENT          PERU                           4+               0        1      2
Birth       CONTENT          PERU                           4+               1        0      2
Birth       CONTENT          PERU                           1                0        0      2
Birth       CONTENT          PERU                           1                1        0      2
Birth       CONTENT          PERU                           2                0        1      2
Birth       CONTENT          PERU                           2                1        0      2
Birth       CONTENT          PERU                           3                0        0      2
Birth       CONTENT          PERU                           3                1        0      2
Birth       GMS-Nepal        NEPAL                          4+               0      306    696
Birth       GMS-Nepal        NEPAL                          4+               1       15    696
Birth       GMS-Nepal        NEPAL                          1                0       44    696
Birth       GMS-Nepal        NEPAL                          1                1        5    696
Birth       GMS-Nepal        NEPAL                          2                0      139    696
Birth       GMS-Nepal        NEPAL                          2                1        6    696
Birth       GMS-Nepal        NEPAL                          3                0      176    696
Birth       GMS-Nepal        NEPAL                          3                1        5    696
Birth       IRC              INDIA                          4+               0       17    386
Birth       IRC              INDIA                          4+               1        0    386
Birth       IRC              INDIA                          1                0      167    386
Birth       IRC              INDIA                          1                1        8    386
Birth       IRC              INDIA                          2                0      153    386
Birth       IRC              INDIA                          2                1        8    386
Birth       IRC              INDIA                          3                0       33    386
Birth       IRC              INDIA                          3                1        0    386
Birth       MAL-ED           BANGLADESH                     4+               0       12    213
Birth       MAL-ED           BANGLADESH                     4+               1        0    213
Birth       MAL-ED           BANGLADESH                     1                0      125    213
Birth       MAL-ED           BANGLADESH                     1                1        5    213
Birth       MAL-ED           BANGLADESH                     2                0       45    213
Birth       MAL-ED           BANGLADESH                     2                1        1    213
Birth       MAL-ED           BANGLADESH                     3                0       25    213
Birth       MAL-ED           BANGLADESH                     3                1        0    213
Birth       MAL-ED           BRAZIL                         4+               0       29     60
Birth       MAL-ED           BRAZIL                         4+               1        1     60
Birth       MAL-ED           BRAZIL                         1                0        0     60
Birth       MAL-ED           BRAZIL                         1                1        0     60
Birth       MAL-ED           BRAZIL                         2                0       10     60
Birth       MAL-ED           BRAZIL                         2                1        0     60
Birth       MAL-ED           BRAZIL                         3                0       18     60
Birth       MAL-ED           BRAZIL                         3                1        2     60
Birth       MAL-ED           INDIA                          4+               0        2     41
Birth       MAL-ED           INDIA                          4+               1        0     41
Birth       MAL-ED           INDIA                          1                0       17     41
Birth       MAL-ED           INDIA                          1                1        1     41
Birth       MAL-ED           INDIA                          2                0       16     41
Birth       MAL-ED           INDIA                          2                1        1     41
Birth       MAL-ED           INDIA                          3                0        4     41
Birth       MAL-ED           INDIA                          3                1        0     41
Birth       MAL-ED           NEPAL                          4+               0       15     26
Birth       MAL-ED           NEPAL                          4+               1        0     26
Birth       MAL-ED           NEPAL                          1                0        6     26
Birth       MAL-ED           NEPAL                          1                1        1     26
Birth       MAL-ED           NEPAL                          2                0        2     26
Birth       MAL-ED           NEPAL                          2                1        0     26
Birth       MAL-ED           NEPAL                          3                0        2     26
Birth       MAL-ED           NEPAL                          3                1        0     26
Birth       MAL-ED           PERU                           4+               0      103    215
Birth       MAL-ED           PERU                           4+               1        4    215
Birth       MAL-ED           PERU                           1                0       13    215
Birth       MAL-ED           PERU                           1                1        0    215
Birth       MAL-ED           PERU                           2                0       45    215
Birth       MAL-ED           PERU                           2                1        0    215
Birth       MAL-ED           PERU                           3                0       50    215
Birth       MAL-ED           PERU                           3                1        0    215
Birth       MAL-ED           SOUTH AFRICA                   4+               0       66     96
Birth       MAL-ED           SOUTH AFRICA                   4+               1        1     96
Birth       MAL-ED           SOUTH AFRICA                   1                0        5     96
Birth       MAL-ED           SOUTH AFRICA                   1                1        0     96
Birth       MAL-ED           SOUTH AFRICA                   2                0       12     96
Birth       MAL-ED           SOUTH AFRICA                   2                1        0     96
Birth       MAL-ED           SOUTH AFRICA                   3                0       12     96
Birth       MAL-ED           SOUTH AFRICA                   3                1        0     96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+               0       45    120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+               1        4    120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        9    120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0    120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       28    120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        3    120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       30    120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        1    120
Birth       NIH-Crypto       BANGLADESH                     4+               0       92    732
Birth       NIH-Crypto       BANGLADESH                     4+               1        1    732
Birth       NIH-Crypto       BANGLADESH                     1                0      350    732
Birth       NIH-Crypto       BANGLADESH                     1                1        3    732
Birth       NIH-Crypto       BANGLADESH                     2                0      183    732
Birth       NIH-Crypto       BANGLADESH                     2                1        4    732
Birth       NIH-Crypto       BANGLADESH                     3                0       97    732
Birth       NIH-Crypto       BANGLADESH                     3                1        2    732
Birth       PROVIDE          BANGLADESH                     4+               0       19    539
Birth       PROVIDE          BANGLADESH                     4+               1        0    539
Birth       PROVIDE          BANGLADESH                     1                0      387    539
Birth       PROVIDE          BANGLADESH                     1                1        3    539
Birth       PROVIDE          BANGLADESH                     2                0       82    539
Birth       PROVIDE          BANGLADESH                     2                1        1    539
Birth       PROVIDE          BANGLADESH                     3                0       47    539
Birth       PROVIDE          BANGLADESH                     3                1        0    539
6 months    CMC-V-BCS-2002   INDIA                          4+               0       14    369
6 months    CMC-V-BCS-2002   INDIA                          4+               1        0    369
6 months    CMC-V-BCS-2002   INDIA                          1                0      179    369
6 months    CMC-V-BCS-2002   INDIA                          1                1       19    369
6 months    CMC-V-BCS-2002   INDIA                          2                0       91    369
6 months    CMC-V-BCS-2002   INDIA                          2                1       15    369
6 months    CMC-V-BCS-2002   INDIA                          3                0       43    369
6 months    CMC-V-BCS-2002   INDIA                          3                1        8    369
6 months    COHORTS          INDIA                          4+               0       93   4962
6 months    COHORTS          INDIA                          4+               1        0   4962
6 months    COHORTS          INDIA                          1                0     3000   4962
6 months    COHORTS          INDIA                          1                1      213   4962
6 months    COHORTS          INDIA                          2                0     1448   4962
6 months    COHORTS          INDIA                          2                1       26   4962
6 months    COHORTS          INDIA                          3                0      179   4962
6 months    COHORTS          INDIA                          3                1        3   4962
6 months    CONTENT          PERU                           4+               0       78    215
6 months    CONTENT          PERU                           4+               1        0    215
6 months    CONTENT          PERU                           1                0       43    215
6 months    CONTENT          PERU                           1                1        1    215
6 months    CONTENT          PERU                           2                0       54    215
6 months    CONTENT          PERU                           2                1        0    215
6 months    CONTENT          PERU                           3                0       39    215
6 months    CONTENT          PERU                           3                1        0    215
6 months    GMS-Nepal        NEPAL                          4+               0      262    564
6 months    GMS-Nepal        NEPAL                          4+               1        6    564
6 months    GMS-Nepal        NEPAL                          1                0       38    564
6 months    GMS-Nepal        NEPAL                          1                1        2    564
6 months    GMS-Nepal        NEPAL                          2                0      107    564
6 months    GMS-Nepal        NEPAL                          2                1        8    564
6 months    GMS-Nepal        NEPAL                          3                0      136    564
6 months    GMS-Nepal        NEPAL                          3                1        5    564
6 months    IRC              INDIA                          4+               0       16    405
6 months    IRC              INDIA                          4+               1        1    405
6 months    IRC              INDIA                          1                0      172    405
6 months    IRC              INDIA                          1                1       11    405
6 months    IRC              INDIA                          2                0      156    405
6 months    IRC              INDIA                          2                1       14    405
6 months    IRC              INDIA                          3                0       32    405
6 months    IRC              INDIA                          3                1        3    405
6 months    MAL-ED           BANGLADESH                     4+               0       12    240
6 months    MAL-ED           BANGLADESH                     4+               1        0    240
6 months    MAL-ED           BANGLADESH                     1                0      145    240
6 months    MAL-ED           BANGLADESH                     1                1        5    240
6 months    MAL-ED           BANGLADESH                     2                0       47    240
6 months    MAL-ED           BANGLADESH                     2                1        3    240
6 months    MAL-ED           BANGLADESH                     3                0       28    240
6 months    MAL-ED           BANGLADESH                     3                1        0    240
6 months    MAL-ED           BRAZIL                         4+               0      126    209
6 months    MAL-ED           BRAZIL                         4+               1        0    209
6 months    MAL-ED           BRAZIL                         1                0        4    209
6 months    MAL-ED           BRAZIL                         1                1        0    209
6 months    MAL-ED           BRAZIL                         2                0       20    209
6 months    MAL-ED           BRAZIL                         2                1        0    209
6 months    MAL-ED           BRAZIL                         3                0       59    209
6 months    MAL-ED           BRAZIL                         3                1        0    209
6 months    MAL-ED           INDIA                          4+               0       25    235
6 months    MAL-ED           INDIA                          4+               1        0    235
6 months    MAL-ED           INDIA                          1                0       81    235
6 months    MAL-ED           INDIA                          1                1        3    235
6 months    MAL-ED           INDIA                          2                0       74    235
6 months    MAL-ED           INDIA                          2                1        4    235
6 months    MAL-ED           INDIA                          3                0       46    235
6 months    MAL-ED           INDIA                          3                1        2    235
6 months    MAL-ED           NEPAL                          4+               0      131    236
6 months    MAL-ED           NEPAL                          4+               1        0    236
6 months    MAL-ED           NEPAL                          1                0       51    236
6 months    MAL-ED           NEPAL                          1                1        1    236
6 months    MAL-ED           NEPAL                          2                0       31    236
6 months    MAL-ED           NEPAL                          2                1        0    236
6 months    MAL-ED           NEPAL                          3                0       22    236
6 months    MAL-ED           NEPAL                          3                1        0    236
6 months    MAL-ED           PERU                           4+               0      133    270
6 months    MAL-ED           PERU                           4+               1        6    270
6 months    MAL-ED           PERU                           1                0       18    270
6 months    MAL-ED           PERU                           1                1        1    270
6 months    MAL-ED           PERU                           2                0       49    270
6 months    MAL-ED           PERU                           2                1        1    270
6 months    MAL-ED           PERU                           3                0       60    270
6 months    MAL-ED           PERU                           3                1        2    270
6 months    MAL-ED           SOUTH AFRICA                   4+               0      185    249
6 months    MAL-ED           SOUTH AFRICA                   4+               1        6    249
6 months    MAL-ED           SOUTH AFRICA                   1                0       14    249
6 months    MAL-ED           SOUTH AFRICA                   1                1        0    249
6 months    MAL-ED           SOUTH AFRICA                   2                0       21    249
6 months    MAL-ED           SOUTH AFRICA                   2                1        0    249
6 months    MAL-ED           SOUTH AFRICA                   3                0       23    249
6 months    MAL-ED           SOUTH AFRICA                   3                1        0    249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+               0      103    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+               1        5    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       11    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        2    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       56    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        6    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       63    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        1    247
6 months    NIH-Crypto       BANGLADESH                     4+               0       90    715
6 months    NIH-Crypto       BANGLADESH                     4+               1        1    715
6 months    NIH-Crypto       BANGLADESH                     1                0      326    715
6 months    NIH-Crypto       BANGLADESH                     1                1       13    715
6 months    NIH-Crypto       BANGLADESH                     2                0      178    715
6 months    NIH-Crypto       BANGLADESH                     2                1        6    715
6 months    NIH-Crypto       BANGLADESH                     3                0       98    715
6 months    NIH-Crypto       BANGLADESH                     3                1        3    715
6 months    PROVIDE          BANGLADESH                     4+               0       21    604
6 months    PROVIDE          BANGLADESH                     4+               1        0    604
6 months    PROVIDE          BANGLADESH                     1                0      419    604
6 months    PROVIDE          BANGLADESH                     1                1       12    604
6 months    PROVIDE          BANGLADESH                     2                0       92    604
6 months    PROVIDE          BANGLADESH                     2                1        2    604
6 months    PROVIDE          BANGLADESH                     3                0       58    604
6 months    PROVIDE          BANGLADESH                     3                1        0    604
24 months   CMC-V-BCS-2002   INDIA                          4+               0       11    371
24 months   CMC-V-BCS-2002   INDIA                          4+               1        3    371
24 months   CMC-V-BCS-2002   INDIA                          1                0      129    371
24 months   CMC-V-BCS-2002   INDIA                          1                1       72    371
24 months   CMC-V-BCS-2002   INDIA                          2                0       71    371
24 months   CMC-V-BCS-2002   INDIA                          2                1       34    371
24 months   CMC-V-BCS-2002   INDIA                          3                0       35    371
24 months   CMC-V-BCS-2002   INDIA                          3                1       16    371
24 months   COHORTS          INDIA                          4+               0       71   3746
24 months   COHORTS          INDIA                          4+               1        5   3746
24 months   COHORTS          INDIA                          1                0     1541   3746
24 months   COHORTS          INDIA                          1                1      758   3746
24 months   COHORTS          INDIA                          2                0     1042   3746
24 months   COHORTS          INDIA                          2                1      179   3746
24 months   COHORTS          INDIA                          3                0      130   3746
24 months   COHORTS          INDIA                          3                1       20   3746
24 months   CONTENT          PERU                           4+               0       63    164
24 months   CONTENT          PERU                           4+               1        0    164
24 months   CONTENT          PERU                           1                0       30    164
24 months   CONTENT          PERU                           1                1        0    164
24 months   CONTENT          PERU                           2                0       38    164
24 months   CONTENT          PERU                           2                1        1    164
24 months   CONTENT          PERU                           3                0       32    164
24 months   CONTENT          PERU                           3                1        0    164
24 months   GMS-Nepal        NEPAL                          4+               0      209    488
24 months   GMS-Nepal        NEPAL                          4+               1       22    488
24 months   GMS-Nepal        NEPAL                          1                0       29    488
24 months   GMS-Nepal        NEPAL                          1                1        6    488
24 months   GMS-Nepal        NEPAL                          2                0       91    488
24 months   GMS-Nepal        NEPAL                          2                1       15    488
24 months   GMS-Nepal        NEPAL                          3                0      106    488
24 months   GMS-Nepal        NEPAL                          3                1       10    488
24 months   IRC              INDIA                          4+               0       15    407
24 months   IRC              INDIA                          4+               1        2    407
24 months   IRC              INDIA                          1                0      159    407
24 months   IRC              INDIA                          1                1       25    407
24 months   IRC              INDIA                          2                0      158    407
24 months   IRC              INDIA                          2                1       12    407
24 months   IRC              INDIA                          3                0       34    407
24 months   IRC              INDIA                          3                1        2    407
24 months   MAL-ED           BANGLADESH                     4+               0       11    212
24 months   MAL-ED           BANGLADESH                     4+               1        0    212
24 months   MAL-ED           BANGLADESH                     1                0      111    212
24 months   MAL-ED           BANGLADESH                     1                1       23    212
24 months   MAL-ED           BANGLADESH                     2                0       36    212
24 months   MAL-ED           BANGLADESH                     2                1        4    212
24 months   MAL-ED           BANGLADESH                     3                0       26    212
24 months   MAL-ED           BANGLADESH                     3                1        1    212
24 months   MAL-ED           BRAZIL                         4+               0      104    169
24 months   MAL-ED           BRAZIL                         4+               1        0    169
24 months   MAL-ED           BRAZIL                         1                0        0    169
24 months   MAL-ED           BRAZIL                         1                1        0    169
24 months   MAL-ED           BRAZIL                         2                0       16    169
24 months   MAL-ED           BRAZIL                         2                1        0    169
24 months   MAL-ED           BRAZIL                         3                0       48    169
24 months   MAL-ED           BRAZIL                         3                1        1    169
24 months   MAL-ED           INDIA                          4+               0       22    227
24 months   MAL-ED           INDIA                          4+               1        3    227
24 months   MAL-ED           INDIA                          1                0       73    227
24 months   MAL-ED           INDIA                          1                1        9    227
24 months   MAL-ED           INDIA                          2                0       60    227
24 months   MAL-ED           INDIA                          2                1       14    227
24 months   MAL-ED           INDIA                          3                0       42    227
24 months   MAL-ED           INDIA                          3                1        4    227
24 months   MAL-ED           NEPAL                          4+               0      122    228
24 months   MAL-ED           NEPAL                          4+               1        5    228
24 months   MAL-ED           NEPAL                          1                0       47    228
24 months   MAL-ED           NEPAL                          1                1        1    228
24 months   MAL-ED           NEPAL                          2                0       31    228
24 months   MAL-ED           NEPAL                          2                1        0    228
24 months   MAL-ED           NEPAL                          3                0       21    228
24 months   MAL-ED           NEPAL                          3                1        1    228
24 months   MAL-ED           PERU                           4+               0      100    201
24 months   MAL-ED           PERU                           4+               1       10    201
24 months   MAL-ED           PERU                           1                0       13    201
24 months   MAL-ED           PERU                           1                1        3    201
24 months   MAL-ED           PERU                           2                0       32    201
24 months   MAL-ED           PERU                           2                1        0    201
24 months   MAL-ED           PERU                           3                0       41    201
24 months   MAL-ED           PERU                           3                1        2    201
24 months   MAL-ED           SOUTH AFRICA                   4+               0      165    238
24 months   MAL-ED           SOUTH AFRICA                   4+               1       18    238
24 months   MAL-ED           SOUTH AFRICA                   1                0       10    238
24 months   MAL-ED           SOUTH AFRICA                   1                1        3    238
24 months   MAL-ED           SOUTH AFRICA                   2                0       17    238
24 months   MAL-ED           SOUTH AFRICA                   2                1        2    238
24 months   MAL-ED           SOUTH AFRICA                   3                0       19    238
24 months   MAL-ED           SOUTH AFRICA                   3                1        4    238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+               0       68    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+               1       30    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        7    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        2    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       27    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1       23    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       42    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1       15    214
24 months   NIH-Crypto       BANGLADESH                     4+               0       80    514
24 months   NIH-Crypto       BANGLADESH                     4+               1        2    514
24 months   NIH-Crypto       BANGLADESH                     1                0      200    514
24 months   NIH-Crypto       BANGLADESH                     1                1       17    514
24 months   NIH-Crypto       BANGLADESH                     2                0      120    514
24 months   NIH-Crypto       BANGLADESH                     2                1       17    514
24 months   NIH-Crypto       BANGLADESH                     3                0       78    514
24 months   NIH-Crypto       BANGLADESH                     3                1        0    514
24 months   PROVIDE          BANGLADESH                     4+               0       21    578
24 months   PROVIDE          BANGLADESH                     4+               1        1    578
24 months   PROVIDE          BANGLADESH                     1                0      368    578
24 months   PROVIDE          BANGLADESH                     1                1       39    578
24 months   PROVIDE          BANGLADESH                     2                0       84    578
24 months   PROVIDE          BANGLADESH                     2                1        8    578
24 months   PROVIDE          BANGLADESH                     3                0       53    578
24 months   PROVIDE          BANGLADESH                     3                1        4    578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/d5f82ae5-9801-40dc-98ea-3cd4cf1a9a7e/4a733474-0d37-48a2-83f5-d8a16a0767bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d5f82ae5-9801-40dc-98ea-3cd4cf1a9a7e/4a733474-0d37-48a2-83f5-d8a16a0767bc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d5f82ae5-9801-40dc-98ea-3cd4cf1a9a7e/4a733474-0d37-48a2-83f5-d8a16a0767bc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d5f82ae5-9801-40dc-98ea-3cd4cf1a9a7e/4a733474-0d37-48a2-83f5-d8a16a0767bc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL     4+                   NA                0.0467290   0.0236238   0.0698341
Birth       GMS-Nepal   NEPAL     1                    NA                0.1020408   0.0172249   0.1868568
Birth       GMS-Nepal   NEPAL     2                    NA                0.0413793   0.0089385   0.0738201
Birth       GMS-Nepal   NEPAL     3                    NA                0.0276243   0.0037306   0.0515180
24 months   COHORTS     INDIA     4+                   NA                0.0657895   0.0205512   0.1110277
24 months   COHORTS     INDIA     1                    NA                0.3297086   0.3104894   0.3489277
24 months   COHORTS     INDIA     2                    NA                0.1466011   0.1267588   0.1664435
24 months   COHORTS     INDIA     3                    NA                0.1333333   0.0789262   0.1877405
24 months   GMS-Nepal   NEPAL     4+                   NA                0.0952381   0.0573450   0.1331312
24 months   GMS-Nepal   NEPAL     1                    NA                0.1714286   0.0464412   0.2964159
24 months   GMS-Nepal   NEPAL     2                    NA                0.1415094   0.0750891   0.2079298
24 months   GMS-Nepal   NEPAL     3                    NA                0.0862069   0.0350788   0.1373350


### Parameter: E(Y)


agecat      studyid     country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL     NA                   NA                0.0445402   0.0292033   0.0598771
24 months   COHORTS     INDIA     NA                   NA                0.2568073   0.2428154   0.2707992
24 months   GMS-Nepal   NEPAL     NA                   NA                0.1086066   0.0809724   0.1362407


### Parameter: RR


agecat      studyid     country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------  --------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal   NEPAL     4+                   4+                1.0000000   1.0000000   1.000000
Birth       GMS-Nepal   NEPAL     1                    4+                2.1836735   0.8301606   5.743984
Birth       GMS-Nepal   NEPAL     2                    4+                0.8855172   0.3504743   2.237370
Birth       GMS-Nepal   NEPAL     3                    4+                0.5911602   0.2182807   1.601014
24 months   COHORTS     INDIA     4+                   4+                1.0000000   1.0000000   1.000000
24 months   COHORTS     INDIA     1                    4+                5.0115702   2.5134637   9.992520
24 months   COHORTS     INDIA     2                    4+                2.2283374   1.1056576   4.490981
24 months   COHORTS     INDIA     3                    4+                2.0266667   0.9110212   4.508542
24 months   GMS-Nepal   NEPAL     4+                   4+                1.0000000   1.0000000   1.000000
24 months   GMS-Nepal   NEPAL     1                    4+                1.8000000   0.7844243   4.130418
24 months   GMS-Nepal   NEPAL     2                    4+                1.4858491   0.8030562   2.749182
24 months   GMS-Nepal   NEPAL     3                    4+                0.9051724   0.4431652   1.848830


### Parameter: PAR


agecat      studyid     country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL     4+                   NA                -0.0021887   -0.0188213   0.0144438
24 months   COHORTS     INDIA     4+                   NA                 0.1910178    0.1447582   0.2372773
24 months   GMS-Nepal   NEPAL     4+                   NA                 0.0133685   -0.0156169   0.0423538


### Parameter: PAF


agecat      studyid     country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal   NEPAL     4+                   NA                -0.0491408   -0.4971711   0.2648159
24 months   COHORTS     INDIA     4+                   NA                 0.7438177    0.4916036   0.8709091
24 months   GMS-Nepal   NEPAL     4+                   NA                 0.1230907   -0.1868964   0.3521171
