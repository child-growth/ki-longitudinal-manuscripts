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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        nrooms    wasted   n_cell      n
----------  ---------------  -----------------------------  -------  -------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          4+             0        5     86
Birth       CMC-V-BCS-2002   INDIA                          4+             1        0     86
Birth       CMC-V-BCS-2002   INDIA                          1              0       31     86
Birth       CMC-V-BCS-2002   INDIA                          1              1        4     86
Birth       CMC-V-BCS-2002   INDIA                          2              0       21     86
Birth       CMC-V-BCS-2002   INDIA                          2              1        6     86
Birth       CMC-V-BCS-2002   INDIA                          3              0       18     86
Birth       CMC-V-BCS-2002   INDIA                          3              1        1     86
Birth       COHORTS          INDIA                          4+             0       84   4454
Birth       COHORTS          INDIA                          4+             1        6   4454
Birth       COHORTS          INDIA                          1              0     2333   4454
Birth       COHORTS          INDIA                          1              1      546   4454
Birth       COHORTS          INDIA                          2              0     1121   4454
Birth       COHORTS          INDIA                          2              1      207   4454
Birth       COHORTS          INDIA                          3              0      141   4454
Birth       COHORTS          INDIA                          3              1       16   4454
Birth       CONTENT          PERU                           4+             0        1      2
Birth       CONTENT          PERU                           4+             1        0      2
Birth       CONTENT          PERU                           1              0        0      2
Birth       CONTENT          PERU                           1              1        0      2
Birth       CONTENT          PERU                           2              0        1      2
Birth       CONTENT          PERU                           2              1        0      2
Birth       CONTENT          PERU                           3              0        0      2
Birth       CONTENT          PERU                           3              1        0      2
Birth       GMS-Nepal        NEPAL                          4+             0      228    641
Birth       GMS-Nepal        NEPAL                          4+             1       69    641
Birth       GMS-Nepal        NEPAL                          1              0       33    641
Birth       GMS-Nepal        NEPAL                          1              1        9    641
Birth       GMS-Nepal        NEPAL                          2              0      112    641
Birth       GMS-Nepal        NEPAL                          2              1       23    641
Birth       GMS-Nepal        NEPAL                          3              0      136    641
Birth       GMS-Nepal        NEPAL                          3              1       31    641
Birth       IRC              INDIA                          4+             0        9    341
Birth       IRC              INDIA                          4+             1        5    341
Birth       IRC              INDIA                          1              0      111    341
Birth       IRC              INDIA                          1              1       45    341
Birth       IRC              INDIA                          2              0      105    341
Birth       IRC              INDIA                          2              1       35    341
Birth       IRC              INDIA                          3              0       25    341
Birth       IRC              INDIA                          3              1        6    341
Birth       MAL-ED           BANGLADESH                     4+             0       11    201
Birth       MAL-ED           BANGLADESH                     4+             1        1    201
Birth       MAL-ED           BANGLADESH                     1              0       94    201
Birth       MAL-ED           BANGLADESH                     1              1       27    201
Birth       MAL-ED           BANGLADESH                     2              0       40    201
Birth       MAL-ED           BANGLADESH                     2              1        3    201
Birth       MAL-ED           BANGLADESH                     3              0       21    201
Birth       MAL-ED           BANGLADESH                     3              1        4    201
Birth       MAL-ED           BRAZIL                         4+             0       28     57
Birth       MAL-ED           BRAZIL                         4+             1        1     57
Birth       MAL-ED           BRAZIL                         1              0        0     57
Birth       MAL-ED           BRAZIL                         1              1        0     57
Birth       MAL-ED           BRAZIL                         2              0        9     57
Birth       MAL-ED           BRAZIL                         2              1        1     57
Birth       MAL-ED           BRAZIL                         3              0       18     57
Birth       MAL-ED           BRAZIL                         3              1        0     57
Birth       MAL-ED           INDIA                          4+             0        2     39
Birth       MAL-ED           INDIA                          4+             1        0     39
Birth       MAL-ED           INDIA                          1              0       14     39
Birth       MAL-ED           INDIA                          1              1        3     39
Birth       MAL-ED           INDIA                          2              0       14     39
Birth       MAL-ED           INDIA                          2              1        2     39
Birth       MAL-ED           INDIA                          3              0        4     39
Birth       MAL-ED           INDIA                          3              1        0     39
Birth       MAL-ED           NEPAL                          4+             0       14     25
Birth       MAL-ED           NEPAL                          4+             1        1     25
Birth       MAL-ED           NEPAL                          1              0        6     25
Birth       MAL-ED           NEPAL                          1              1        0     25
Birth       MAL-ED           NEPAL                          2              0        2     25
Birth       MAL-ED           NEPAL                          2              1        0     25
Birth       MAL-ED           NEPAL                          3              0        1     25
Birth       MAL-ED           NEPAL                          3              1        1     25
Birth       MAL-ED           PERU                           4+             0      101    210
Birth       MAL-ED           PERU                           4+             1        2    210
Birth       MAL-ED           PERU                           1              0       12    210
Birth       MAL-ED           PERU                           1              1        1    210
Birth       MAL-ED           PERU                           2              0       44    210
Birth       MAL-ED           PERU                           2              1        1    210
Birth       MAL-ED           PERU                           3              0       48    210
Birth       MAL-ED           PERU                           3              1        1    210
Birth       MAL-ED           SOUTH AFRICA                   4+             0       59     95
Birth       MAL-ED           SOUTH AFRICA                   4+             1        7     95
Birth       MAL-ED           SOUTH AFRICA                   1              0        4     95
Birth       MAL-ED           SOUTH AFRICA                   1              1        1     95
Birth       MAL-ED           SOUTH AFRICA                   2              0       12     95
Birth       MAL-ED           SOUTH AFRICA                   2              1        0     95
Birth       MAL-ED           SOUTH AFRICA                   3              0       10     95
Birth       MAL-ED           SOUTH AFRICA                   3              1        2     95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+             0       44    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+             1        1    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0        9    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        0    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0       28    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1        0    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0       30    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1        0    112
Birth       NIH-Crypto       BANGLADESH                     4+             0       70    707
Birth       NIH-Crypto       BANGLADESH                     4+             1       20    707
Birth       NIH-Crypto       BANGLADESH                     1              0      255    707
Birth       NIH-Crypto       BANGLADESH                     1              1       83    707
Birth       NIH-Crypto       BANGLADESH                     2              0      138    707
Birth       NIH-Crypto       BANGLADESH                     2              1       43    707
Birth       NIH-Crypto       BANGLADESH                     3              0       72    707
Birth       NIH-Crypto       BANGLADESH                     3              1       26    707
Birth       PROVIDE          BANGLADESH                     4+             0       14    532
Birth       PROVIDE          BANGLADESH                     4+             1        4    532
Birth       PROVIDE          BANGLADESH                     1              0      306    532
Birth       PROVIDE          BANGLADESH                     1              1       82    532
Birth       PROVIDE          BANGLADESH                     2              0       58    532
Birth       PROVIDE          BANGLADESH                     2              1       21    532
Birth       PROVIDE          BANGLADESH                     3              0       37    532
Birth       PROVIDE          BANGLADESH                     3              1       10    532
6 months    CMC-V-BCS-2002   INDIA                          4+             0       12    368
6 months    CMC-V-BCS-2002   INDIA                          4+             1        2    368
6 months    CMC-V-BCS-2002   INDIA                          1              0      171    368
6 months    CMC-V-BCS-2002   INDIA                          1              1       26    368
6 months    CMC-V-BCS-2002   INDIA                          2              0       91    368
6 months    CMC-V-BCS-2002   INDIA                          2              1       15    368
6 months    CMC-V-BCS-2002   INDIA                          3              0       48    368
6 months    CMC-V-BCS-2002   INDIA                          3              1        3    368
6 months    COHORTS          INDIA                          4+             0       89   4955
6 months    COHORTS          INDIA                          4+             1        4   4955
6 months    COHORTS          INDIA                          1              0     2732   4955
6 months    COHORTS          INDIA                          1              1      474   4955
6 months    COHORTS          INDIA                          2              0     1313   4955
6 months    COHORTS          INDIA                          2              1      161   4955
6 months    COHORTS          INDIA                          3              0      171   4955
6 months    COHORTS          INDIA                          3              1       11   4955
6 months    CONTENT          PERU                           4+             0       78    215
6 months    CONTENT          PERU                           4+             1        0    215
6 months    CONTENT          PERU                           1              0       44    215
6 months    CONTENT          PERU                           1              1        0    215
6 months    CONTENT          PERU                           2              0       54    215
6 months    CONTENT          PERU                           2              1        0    215
6 months    CONTENT          PERU                           3              0       39    215
6 months    CONTENT          PERU                           3              1        0    215
6 months    GMS-Nepal        NEPAL                          4+             0      245    564
6 months    GMS-Nepal        NEPAL                          4+             1       23    564
6 months    GMS-Nepal        NEPAL                          1              0       36    564
6 months    GMS-Nepal        NEPAL                          1              1        4    564
6 months    GMS-Nepal        NEPAL                          2              0      104    564
6 months    GMS-Nepal        NEPAL                          2              1       11    564
6 months    GMS-Nepal        NEPAL                          3              0      128    564
6 months    GMS-Nepal        NEPAL                          3              1       13    564
6 months    IRC              INDIA                          4+             0       13    406
6 months    IRC              INDIA                          4+             1        4    406
6 months    IRC              INDIA                          1              0      163    406
6 months    IRC              INDIA                          1              1       20    406
6 months    IRC              INDIA                          2              0      149    406
6 months    IRC              INDIA                          2              1       21    406
6 months    IRC              INDIA                          3              0       28    406
6 months    IRC              INDIA                          3              1        8    406
6 months    MAL-ED           BANGLADESH                     4+             0       11    240
6 months    MAL-ED           BANGLADESH                     4+             1        1    240
6 months    MAL-ED           BANGLADESH                     1              0      145    240
6 months    MAL-ED           BANGLADESH                     1              1        5    240
6 months    MAL-ED           BANGLADESH                     2              0       49    240
6 months    MAL-ED           BANGLADESH                     2              1        1    240
6 months    MAL-ED           BANGLADESH                     3              0       27    240
6 months    MAL-ED           BANGLADESH                     3              1        1    240
6 months    MAL-ED           BRAZIL                         4+             0      125    209
6 months    MAL-ED           BRAZIL                         4+             1        1    209
6 months    MAL-ED           BRAZIL                         1              0        4    209
6 months    MAL-ED           BRAZIL                         1              1        0    209
6 months    MAL-ED           BRAZIL                         2              0       20    209
6 months    MAL-ED           BRAZIL                         2              1        0    209
6 months    MAL-ED           BRAZIL                         3              0       59    209
6 months    MAL-ED           BRAZIL                         3              1        0    209
6 months    MAL-ED           INDIA                          4+             0       24    235
6 months    MAL-ED           INDIA                          4+             1        1    235
6 months    MAL-ED           INDIA                          1              0       77    235
6 months    MAL-ED           INDIA                          1              1        7    235
6 months    MAL-ED           INDIA                          2              0       74    235
6 months    MAL-ED           INDIA                          2              1        4    235
6 months    MAL-ED           INDIA                          3              0       41    235
6 months    MAL-ED           INDIA                          3              1        7    235
6 months    MAL-ED           NEPAL                          4+             0      128    236
6 months    MAL-ED           NEPAL                          4+             1        3    236
6 months    MAL-ED           NEPAL                          1              0       51    236
6 months    MAL-ED           NEPAL                          1              1        1    236
6 months    MAL-ED           NEPAL                          2              0       31    236
6 months    MAL-ED           NEPAL                          2              1        0    236
6 months    MAL-ED           NEPAL                          3              0       22    236
6 months    MAL-ED           NEPAL                          3              1        0    236
6 months    MAL-ED           PERU                           4+             0      139    270
6 months    MAL-ED           PERU                           4+             1        0    270
6 months    MAL-ED           PERU                           1              0       19    270
6 months    MAL-ED           PERU                           1              1        0    270
6 months    MAL-ED           PERU                           2              0       50    270
6 months    MAL-ED           PERU                           2              1        0    270
6 months    MAL-ED           PERU                           3              0       62    270
6 months    MAL-ED           PERU                           3              1        0    270
6 months    MAL-ED           SOUTH AFRICA                   4+             0      186    249
6 months    MAL-ED           SOUTH AFRICA                   4+             1        5    249
6 months    MAL-ED           SOUTH AFRICA                   1              0       14    249
6 months    MAL-ED           SOUTH AFRICA                   1              1        0    249
6 months    MAL-ED           SOUTH AFRICA                   2              0       20    249
6 months    MAL-ED           SOUTH AFRICA                   2              1        1    249
6 months    MAL-ED           SOUTH AFRICA                   3              0       22    249
6 months    MAL-ED           SOUTH AFRICA                   3              1        1    249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+             0      108    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+             1        0    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0       13    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        0    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0       62    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1        0    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0       63    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1        1    247
6 months    NIH-Crypto       BANGLADESH                     4+             0       89    715
6 months    NIH-Crypto       BANGLADESH                     4+             1        2    715
6 months    NIH-Crypto       BANGLADESH                     1              0      325    715
6 months    NIH-Crypto       BANGLADESH                     1              1       14    715
6 months    NIH-Crypto       BANGLADESH                     2              0      180    715
6 months    NIH-Crypto       BANGLADESH                     2              1        4    715
6 months    NIH-Crypto       BANGLADESH                     3              0      100    715
6 months    NIH-Crypto       BANGLADESH                     3              1        1    715
6 months    PROVIDE          BANGLADESH                     4+             0       19    603
6 months    PROVIDE          BANGLADESH                     4+             1        2    603
6 months    PROVIDE          BANGLADESH                     1              0      410    603
6 months    PROVIDE          BANGLADESH                     1              1       20    603
6 months    PROVIDE          BANGLADESH                     2              0       92    603
6 months    PROVIDE          BANGLADESH                     2              1        2    603
6 months    PROVIDE          BANGLADESH                     3              0       57    603
6 months    PROVIDE          BANGLADESH                     3              1        1    603
24 months   CMC-V-BCS-2002   INDIA                          4+             0       14    372
24 months   CMC-V-BCS-2002   INDIA                          4+             1        0    372
24 months   CMC-V-BCS-2002   INDIA                          1              0      186    372
24 months   CMC-V-BCS-2002   INDIA                          1              1       15    372
24 months   CMC-V-BCS-2002   INDIA                          2              0       99    372
24 months   CMC-V-BCS-2002   INDIA                          2              1        7    372
24 months   CMC-V-BCS-2002   INDIA                          3              0       50    372
24 months   CMC-V-BCS-2002   INDIA                          3              1        1    372
24 months   COHORTS          INDIA                          4+             0       73   3719
24 months   COHORTS          INDIA                          4+             1        2   3719
24 months   COHORTS          INDIA                          1              0     2021   3719
24 months   COHORTS          INDIA                          1              1      266   3719
24 months   COHORTS          INDIA                          2              0     1123   3719
24 months   COHORTS          INDIA                          2              1       84   3719
24 months   COHORTS          INDIA                          3              0      146   3719
24 months   COHORTS          INDIA                          3              1        4   3719
24 months   CONTENT          PERU                           4+             0       62    164
24 months   CONTENT          PERU                           4+             1        1    164
24 months   CONTENT          PERU                           1              0       30    164
24 months   CONTENT          PERU                           1              1        0    164
24 months   CONTENT          PERU                           2              0       39    164
24 months   CONTENT          PERU                           2              1        0    164
24 months   CONTENT          PERU                           3              0       32    164
24 months   CONTENT          PERU                           3              1        0    164
24 months   GMS-Nepal        NEPAL                          4+             0      184    487
24 months   GMS-Nepal        NEPAL                          4+             1       47    487
24 months   GMS-Nepal        NEPAL                          1              0       31    487
24 months   GMS-Nepal        NEPAL                          1              1        4    487
24 months   GMS-Nepal        NEPAL                          2              0       85    487
24 months   GMS-Nepal        NEPAL                          2              1       21    487
24 months   GMS-Nepal        NEPAL                          3              0       96    487
24 months   GMS-Nepal        NEPAL                          3              1       19    487
24 months   IRC              INDIA                          4+             0       16    407
24 months   IRC              INDIA                          4+             1        1    407
24 months   IRC              INDIA                          1              0      174    407
24 months   IRC              INDIA                          1              1       10    407
24 months   IRC              INDIA                          2              0      154    407
24 months   IRC              INDIA                          2              1       16    407
24 months   IRC              INDIA                          3              0       33    407
24 months   IRC              INDIA                          3              1        3    407
24 months   MAL-ED           BANGLADESH                     4+             0        9    212
24 months   MAL-ED           BANGLADESH                     4+             1        2    212
24 months   MAL-ED           BANGLADESH                     1              0      120    212
24 months   MAL-ED           BANGLADESH                     1              1       14    212
24 months   MAL-ED           BANGLADESH                     2              0       37    212
24 months   MAL-ED           BANGLADESH                     2              1        3    212
24 months   MAL-ED           BANGLADESH                     3              0       25    212
24 months   MAL-ED           BANGLADESH                     3              1        2    212
24 months   MAL-ED           BRAZIL                         4+             0      101    169
24 months   MAL-ED           BRAZIL                         4+             1        3    169
24 months   MAL-ED           BRAZIL                         1              0        0    169
24 months   MAL-ED           BRAZIL                         1              1        0    169
24 months   MAL-ED           BRAZIL                         2              0       16    169
24 months   MAL-ED           BRAZIL                         2              1        0    169
24 months   MAL-ED           BRAZIL                         3              0       49    169
24 months   MAL-ED           BRAZIL                         3              1        0    169
24 months   MAL-ED           INDIA                          4+             0       24    227
24 months   MAL-ED           INDIA                          4+             1        1    227
24 months   MAL-ED           INDIA                          1              0       75    227
24 months   MAL-ED           INDIA                          1              1        7    227
24 months   MAL-ED           INDIA                          2              0       62    227
24 months   MAL-ED           INDIA                          2              1       12    227
24 months   MAL-ED           INDIA                          3              0       39    227
24 months   MAL-ED           INDIA                          3              1        7    227
24 months   MAL-ED           NEPAL                          4+             0      125    228
24 months   MAL-ED           NEPAL                          4+             1        2    228
24 months   MAL-ED           NEPAL                          1              0       45    228
24 months   MAL-ED           NEPAL                          1              1        3    228
24 months   MAL-ED           NEPAL                          2              0       31    228
24 months   MAL-ED           NEPAL                          2              1        0    228
24 months   MAL-ED           NEPAL                          3              0       22    228
24 months   MAL-ED           NEPAL                          3              1        0    228
24 months   MAL-ED           PERU                           4+             0      108    201
24 months   MAL-ED           PERU                           4+             1        2    201
24 months   MAL-ED           PERU                           1              0       15    201
24 months   MAL-ED           PERU                           1              1        1    201
24 months   MAL-ED           PERU                           2              0       32    201
24 months   MAL-ED           PERU                           2              1        0    201
24 months   MAL-ED           PERU                           3              0       42    201
24 months   MAL-ED           PERU                           3              1        1    201
24 months   MAL-ED           SOUTH AFRICA                   4+             0      182    238
24 months   MAL-ED           SOUTH AFRICA                   4+             1        1    238
24 months   MAL-ED           SOUTH AFRICA                   1              0       13    238
24 months   MAL-ED           SOUTH AFRICA                   1              1        0    238
24 months   MAL-ED           SOUTH AFRICA                   2              0       19    238
24 months   MAL-ED           SOUTH AFRICA                   2              1        0    238
24 months   MAL-ED           SOUTH AFRICA                   3              0       23    238
24 months   MAL-ED           SOUTH AFRICA                   3              1        0    238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+             0       98    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+             1        0    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              0        9    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1        0    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              0       50    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              1        0    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              0       53    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              1        4    214
24 months   NIH-Crypto       BANGLADESH                     4+             0       75    514
24 months   NIH-Crypto       BANGLADESH                     4+             1        7    514
24 months   NIH-Crypto       BANGLADESH                     1              0      193    514
24 months   NIH-Crypto       BANGLADESH                     1              1       24    514
24 months   NIH-Crypto       BANGLADESH                     2              0      126    514
24 months   NIH-Crypto       BANGLADESH                     2              1       11    514
24 months   NIH-Crypto       BANGLADESH                     3              0       75    514
24 months   NIH-Crypto       BANGLADESH                     3              1        3    514
24 months   PROVIDE          BANGLADESH                     4+             0       19    579
24 months   PROVIDE          BANGLADESH                     4+             1        3    579
24 months   PROVIDE          BANGLADESH                     1              0      364    579
24 months   PROVIDE          BANGLADESH                     1              1       44    579
24 months   PROVIDE          BANGLADESH                     2              0       85    579
24 months   PROVIDE          BANGLADESH                     2              1        7    579
24 months   PROVIDE          BANGLADESH                     3              0       49    579
24 months   PROVIDE          BANGLADESH                     3              1        8    579


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
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/02020fd2-eda4-4719-844f-4fb793c91fb0/d15b14d3-5082-4920-81d7-831a054596f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/02020fd2-eda4-4719-844f-4fb793c91fb0/d15b14d3-5082-4920-81d7-831a054596f6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/02020fd2-eda4-4719-844f-4fb793c91fb0/d15b14d3-5082-4920-81d7-831a054596f6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/02020fd2-eda4-4719-844f-4fb793c91fb0/d15b14d3-5082-4920-81d7-831a054596f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat   studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    COHORTS      INDIA        4+                   NA                0.0666667   0.0250085   0.1083249
Birth    COHORTS      INDIA        1                    NA                0.1896492   0.1753277   0.2039707
Birth    COHORTS      INDIA        2                    NA                0.1558735   0.1363621   0.1753849
Birth    COHORTS      INDIA        3                    NA                0.1019108   0.0545830   0.1492387
Birth    GMS-Nepal    NEPAL        4+                   NA                0.2323232   0.1842565   0.2803899
Birth    GMS-Nepal    NEPAL        1                    NA                0.2142857   0.0900943   0.3384771
Birth    GMS-Nepal    NEPAL        2                    NA                0.1703704   0.1069017   0.2338390
Birth    GMS-Nepal    NEPAL        3                    NA                0.1856287   0.1266137   0.2446438
Birth    IRC          INDIA        4+                   NA                0.3571429   0.1057806   0.6085051
Birth    IRC          INDIA        1                    NA                0.2884615   0.2172637   0.3596594
Birth    IRC          INDIA        2                    NA                0.2500000   0.1781673   0.3218327
Birth    IRC          INDIA        3                    NA                0.1935484   0.0542683   0.3328284
Birth    NIH-Crypto   BANGLADESH   4+                   NA                0.2222222   0.1362703   0.3081742
Birth    NIH-Crypto   BANGLADESH   1                    NA                0.2455621   0.1996434   0.2914808
Birth    NIH-Crypto   BANGLADESH   2                    NA                0.2375691   0.1755234   0.2996147
Birth    NIH-Crypto   BANGLADESH   3                    NA                0.2653061   0.1778341   0.3527782


### Parameter: E(Y)


agecat   studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    COHORTS      INDIA        NA                   NA                0.1740009   0.1628660   0.1851358
Birth    GMS-Nepal    NEPAL        NA                   NA                0.2059282   0.1745993   0.2372572
Birth    IRC          INDIA        NA                   NA                0.2668622   0.2198462   0.3138781
Birth    NIH-Crypto   BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310


### Parameter: RR


agecat   studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth    COHORTS      INDIA        4+                   4+                1.0000000   1.0000000   1.000000
Birth    COHORTS      INDIA        1                    4+                2.8447378   1.5159635   5.338211
Birth    COHORTS      INDIA        2                    4+                2.3381024   1.2362126   4.422154
Birth    COHORTS      INDIA        3                    4+                1.5286624   0.7017657   3.329899
Birth    GMS-Nepal    NEPAL        4+                   4+                1.0000000   1.0000000   1.000000
Birth    GMS-Nepal    NEPAL        1                    4+                0.9223602   0.4984751   1.706702
Birth    GMS-Nepal    NEPAL        2                    4+                0.7333333   0.4788895   1.122968
Birth    GMS-Nepal    NEPAL        3                    4+                0.7990107   0.5467877   1.167579
Birth    IRC          INDIA        4+                   4+                1.0000000   1.0000000   1.000000
Birth    IRC          INDIA        1                    4+                0.8076923   0.3831181   1.702783
Birth    IRC          INDIA        2                    4+                0.7000000   0.3272990   1.497102
Birth    IRC          INDIA        3                    4+                0.5419355   0.1980599   1.482855
Birth    NIH-Crypto   BANGLADESH   4+                   4+                1.0000000   1.0000000   1.000000
Birth    NIH-Crypto   BANGLADESH   1                    4+                1.1050296   0.7191091   1.698060
Birth    NIH-Crypto   BANGLADESH   2                    4+                1.0690608   0.6703726   1.704859
Birth    NIH-Crypto   BANGLADESH   3                    4+                1.1938776   0.7181829   1.984653


### Parameter: PAR


agecat   studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth    COHORTS      INDIA        4+                   NA                 0.1073342    0.0652317   0.1494368
Birth    GMS-Nepal    NEPAL        4+                   NA                -0.0263950   -0.0603201   0.0075301
Birth    IRC          INDIA        4+                   NA                -0.0902807   -0.3356486   0.1550872
Birth    NIH-Crypto   BANGLADESH   4+                   NA                 0.0210592   -0.0596162   0.1017347


### Parameter: PAF


agecat   studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth    COHORTS      INDIA        4+                   NA                 0.6168602    0.2862315   0.7943365
Birth    GMS-Nepal    NEPAL        4+                   NA                -0.1281757   -0.3049988   0.0246885
Birth    IRC          INDIA        4+                   NA                -0.3383046   -1.6601876   0.3267170
Birth    NIH-Crypto   BANGLADESH   4+                   NA                 0.0865633   -0.3131281   0.3645962
