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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        nrooms    swasted   n_cell      n
----------  ---------------  -----------------------------  -------  --------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          4+              0        5     86
Birth       CMC-V-BCS-2002   INDIA                          4+              1        0     86
Birth       CMC-V-BCS-2002   INDIA                          1               0       34     86
Birth       CMC-V-BCS-2002   INDIA                          1               1        1     86
Birth       CMC-V-BCS-2002   INDIA                          2               0       27     86
Birth       CMC-V-BCS-2002   INDIA                          2               1        0     86
Birth       CMC-V-BCS-2002   INDIA                          3               0       19     86
Birth       CMC-V-BCS-2002   INDIA                          3               1        0     86
Birth       COHORTS          INDIA                          4+              0       87   4454
Birth       COHORTS          INDIA                          4+              1        3   4454
Birth       COHORTS          INDIA                          1               0     2733   4454
Birth       COHORTS          INDIA                          1               1      146   4454
Birth       COHORTS          INDIA                          2               0     1266   4454
Birth       COHORTS          INDIA                          2               1       62   4454
Birth       COHORTS          INDIA                          3               0      154   4454
Birth       COHORTS          INDIA                          3               1        3   4454
Birth       CONTENT          PERU                           4+              0        1      2
Birth       CONTENT          PERU                           4+              1        0      2
Birth       CONTENT          PERU                           1               0        0      2
Birth       CONTENT          PERU                           1               1        0      2
Birth       CONTENT          PERU                           2               0        1      2
Birth       CONTENT          PERU                           2               1        0      2
Birth       CONTENT          PERU                           3               0        0      2
Birth       CONTENT          PERU                           3               1        0      2
Birth       GMS-Nepal        NEPAL                          4+              0      284    641
Birth       GMS-Nepal        NEPAL                          4+              1       13    641
Birth       GMS-Nepal        NEPAL                          1               0       41    641
Birth       GMS-Nepal        NEPAL                          1               1        1    641
Birth       GMS-Nepal        NEPAL                          2               0      131    641
Birth       GMS-Nepal        NEPAL                          2               1        4    641
Birth       GMS-Nepal        NEPAL                          3               0      158    641
Birth       GMS-Nepal        NEPAL                          3               1        9    641
Birth       IRC              INDIA                          4+              0       11    341
Birth       IRC              INDIA                          4+              1        3    341
Birth       IRC              INDIA                          1               0      128    341
Birth       IRC              INDIA                          1               1       28    341
Birth       IRC              INDIA                          2               0      123    341
Birth       IRC              INDIA                          2               1       17    341
Birth       IRC              INDIA                          3               0       26    341
Birth       IRC              INDIA                          3               1        5    341
Birth       MAL-ED           BANGLADESH                     4+              0       12    201
Birth       MAL-ED           BANGLADESH                     4+              1        0    201
Birth       MAL-ED           BANGLADESH                     1               0      113    201
Birth       MAL-ED           BANGLADESH                     1               1        8    201
Birth       MAL-ED           BANGLADESH                     2               0       43    201
Birth       MAL-ED           BANGLADESH                     2               1        0    201
Birth       MAL-ED           BANGLADESH                     3               0       25    201
Birth       MAL-ED           BANGLADESH                     3               1        0    201
Birth       MAL-ED           BRAZIL                         4+              0       29     57
Birth       MAL-ED           BRAZIL                         4+              1        0     57
Birth       MAL-ED           BRAZIL                         1               0        0     57
Birth       MAL-ED           BRAZIL                         1               1        0     57
Birth       MAL-ED           BRAZIL                         2               0       10     57
Birth       MAL-ED           BRAZIL                         2               1        0     57
Birth       MAL-ED           BRAZIL                         3               0       18     57
Birth       MAL-ED           BRAZIL                         3               1        0     57
Birth       MAL-ED           INDIA                          4+              0        2     39
Birth       MAL-ED           INDIA                          4+              1        0     39
Birth       MAL-ED           INDIA                          1               0       17     39
Birth       MAL-ED           INDIA                          1               1        0     39
Birth       MAL-ED           INDIA                          2               0       16     39
Birth       MAL-ED           INDIA                          2               1        0     39
Birth       MAL-ED           INDIA                          3               0        4     39
Birth       MAL-ED           INDIA                          3               1        0     39
Birth       MAL-ED           NEPAL                          4+              0       14     25
Birth       MAL-ED           NEPAL                          4+              1        1     25
Birth       MAL-ED           NEPAL                          1               0        6     25
Birth       MAL-ED           NEPAL                          1               1        0     25
Birth       MAL-ED           NEPAL                          2               0        2     25
Birth       MAL-ED           NEPAL                          2               1        0     25
Birth       MAL-ED           NEPAL                          3               0        2     25
Birth       MAL-ED           NEPAL                          3               1        0     25
Birth       MAL-ED           PERU                           4+              0      103    210
Birth       MAL-ED           PERU                           4+              1        0    210
Birth       MAL-ED           PERU                           1               0       13    210
Birth       MAL-ED           PERU                           1               1        0    210
Birth       MAL-ED           PERU                           2               0       45    210
Birth       MAL-ED           PERU                           2               1        0    210
Birth       MAL-ED           PERU                           3               0       49    210
Birth       MAL-ED           PERU                           3               1        0    210
Birth       MAL-ED           SOUTH AFRICA                   4+              0       66     95
Birth       MAL-ED           SOUTH AFRICA                   4+              1        0     95
Birth       MAL-ED           SOUTH AFRICA                   1               0        5     95
Birth       MAL-ED           SOUTH AFRICA                   1               1        0     95
Birth       MAL-ED           SOUTH AFRICA                   2               0       12     95
Birth       MAL-ED           SOUTH AFRICA                   2               1        0     95
Birth       MAL-ED           SOUTH AFRICA                   3               0       12     95
Birth       MAL-ED           SOUTH AFRICA                   3               1        0     95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              0       45    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              1        0    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        9    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       28    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        0    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       30    112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1        0    112
Birth       NIH-Crypto       BANGLADESH                     4+              0       86    707
Birth       NIH-Crypto       BANGLADESH                     4+              1        4    707
Birth       NIH-Crypto       BANGLADESH                     1               0      313    707
Birth       NIH-Crypto       BANGLADESH                     1               1       25    707
Birth       NIH-Crypto       BANGLADESH                     2               0      171    707
Birth       NIH-Crypto       BANGLADESH                     2               1       10    707
Birth       NIH-Crypto       BANGLADESH                     3               0       90    707
Birth       NIH-Crypto       BANGLADESH                     3               1        8    707
Birth       PROVIDE          BANGLADESH                     4+              0       17    532
Birth       PROVIDE          BANGLADESH                     4+              1        1    532
Birth       PROVIDE          BANGLADESH                     1               0      380    532
Birth       PROVIDE          BANGLADESH                     1               1        8    532
Birth       PROVIDE          BANGLADESH                     2               0       78    532
Birth       PROVIDE          BANGLADESH                     2               1        1    532
Birth       PROVIDE          BANGLADESH                     3               0       44    532
Birth       PROVIDE          BANGLADESH                     3               1        3    532
6 months    CMC-V-BCS-2002   INDIA                          4+              0       14    368
6 months    CMC-V-BCS-2002   INDIA                          4+              1        0    368
6 months    CMC-V-BCS-2002   INDIA                          1               0      189    368
6 months    CMC-V-BCS-2002   INDIA                          1               1        8    368
6 months    CMC-V-BCS-2002   INDIA                          2               0      102    368
6 months    CMC-V-BCS-2002   INDIA                          2               1        4    368
6 months    CMC-V-BCS-2002   INDIA                          3               0       51    368
6 months    CMC-V-BCS-2002   INDIA                          3               1        0    368
6 months    COHORTS          INDIA                          4+              0       93   4955
6 months    COHORTS          INDIA                          4+              1        0   4955
6 months    COHORTS          INDIA                          1               0     3090   4955
6 months    COHORTS          INDIA                          1               1      116   4955
6 months    COHORTS          INDIA                          2               0     1443   4955
6 months    COHORTS          INDIA                          2               1       31   4955
6 months    COHORTS          INDIA                          3               0      178   4955
6 months    COHORTS          INDIA                          3               1        4   4955
6 months    CONTENT          PERU                           4+              0       78    215
6 months    CONTENT          PERU                           4+              1        0    215
6 months    CONTENT          PERU                           1               0       44    215
6 months    CONTENT          PERU                           1               1        0    215
6 months    CONTENT          PERU                           2               0       54    215
6 months    CONTENT          PERU                           2               1        0    215
6 months    CONTENT          PERU                           3               0       39    215
6 months    CONTENT          PERU                           3               1        0    215
6 months    GMS-Nepal        NEPAL                          4+              0      265    564
6 months    GMS-Nepal        NEPAL                          4+              1        3    564
6 months    GMS-Nepal        NEPAL                          1               0       39    564
6 months    GMS-Nepal        NEPAL                          1               1        1    564
6 months    GMS-Nepal        NEPAL                          2               0      113    564
6 months    GMS-Nepal        NEPAL                          2               1        2    564
6 months    GMS-Nepal        NEPAL                          3               0      140    564
6 months    GMS-Nepal        NEPAL                          3               1        1    564
6 months    IRC              INDIA                          4+              0       15    406
6 months    IRC              INDIA                          4+              1        2    406
6 months    IRC              INDIA                          1               0      174    406
6 months    IRC              INDIA                          1               1        9    406
6 months    IRC              INDIA                          2               0      164    406
6 months    IRC              INDIA                          2               1        6    406
6 months    IRC              INDIA                          3               0       32    406
6 months    IRC              INDIA                          3               1        4    406
6 months    MAL-ED           BANGLADESH                     4+              0       12    240
6 months    MAL-ED           BANGLADESH                     4+              1        0    240
6 months    MAL-ED           BANGLADESH                     1               0      149    240
6 months    MAL-ED           BANGLADESH                     1               1        1    240
6 months    MAL-ED           BANGLADESH                     2               0       50    240
6 months    MAL-ED           BANGLADESH                     2               1        0    240
6 months    MAL-ED           BANGLADESH                     3               0       27    240
6 months    MAL-ED           BANGLADESH                     3               1        1    240
6 months    MAL-ED           BRAZIL                         4+              0      126    209
6 months    MAL-ED           BRAZIL                         4+              1        0    209
6 months    MAL-ED           BRAZIL                         1               0        4    209
6 months    MAL-ED           BRAZIL                         1               1        0    209
6 months    MAL-ED           BRAZIL                         2               0       20    209
6 months    MAL-ED           BRAZIL                         2               1        0    209
6 months    MAL-ED           BRAZIL                         3               0       59    209
6 months    MAL-ED           BRAZIL                         3               1        0    209
6 months    MAL-ED           INDIA                          4+              0       25    235
6 months    MAL-ED           INDIA                          4+              1        0    235
6 months    MAL-ED           INDIA                          1               0       82    235
6 months    MAL-ED           INDIA                          1               1        2    235
6 months    MAL-ED           INDIA                          2               0       76    235
6 months    MAL-ED           INDIA                          2               1        2    235
6 months    MAL-ED           INDIA                          3               0       46    235
6 months    MAL-ED           INDIA                          3               1        2    235
6 months    MAL-ED           NEPAL                          4+              0      131    236
6 months    MAL-ED           NEPAL                          4+              1        0    236
6 months    MAL-ED           NEPAL                          1               0       52    236
6 months    MAL-ED           NEPAL                          1               1        0    236
6 months    MAL-ED           NEPAL                          2               0       31    236
6 months    MAL-ED           NEPAL                          2               1        0    236
6 months    MAL-ED           NEPAL                          3               0       22    236
6 months    MAL-ED           NEPAL                          3               1        0    236
6 months    MAL-ED           PERU                           4+              0      139    270
6 months    MAL-ED           PERU                           4+              1        0    270
6 months    MAL-ED           PERU                           1               0       19    270
6 months    MAL-ED           PERU                           1               1        0    270
6 months    MAL-ED           PERU                           2               0       50    270
6 months    MAL-ED           PERU                           2               1        0    270
6 months    MAL-ED           PERU                           3               0       62    270
6 months    MAL-ED           PERU                           3               1        0    270
6 months    MAL-ED           SOUTH AFRICA                   4+              0      189    249
6 months    MAL-ED           SOUTH AFRICA                   4+              1        2    249
6 months    MAL-ED           SOUTH AFRICA                   1               0       14    249
6 months    MAL-ED           SOUTH AFRICA                   1               1        0    249
6 months    MAL-ED           SOUTH AFRICA                   2               0       21    249
6 months    MAL-ED           SOUTH AFRICA                   2               1        0    249
6 months    MAL-ED           SOUTH AFRICA                   3               0       22    249
6 months    MAL-ED           SOUTH AFRICA                   3               1        1    249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              0      108    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              1        0    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0       13    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       62    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        0    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       64    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1        0    247
6 months    NIH-Crypto       BANGLADESH                     4+              0       91    715
6 months    NIH-Crypto       BANGLADESH                     4+              1        0    715
6 months    NIH-Crypto       BANGLADESH                     1               0      339    715
6 months    NIH-Crypto       BANGLADESH                     1               1        0    715
6 months    NIH-Crypto       BANGLADESH                     2               0      184    715
6 months    NIH-Crypto       BANGLADESH                     2               1        0    715
6 months    NIH-Crypto       BANGLADESH                     3               0      101    715
6 months    NIH-Crypto       BANGLADESH                     3               1        0    715
6 months    PROVIDE          BANGLADESH                     4+              0       21    603
6 months    PROVIDE          BANGLADESH                     4+              1        0    603
6 months    PROVIDE          BANGLADESH                     1               0      426    603
6 months    PROVIDE          BANGLADESH                     1               1        4    603
6 months    PROVIDE          BANGLADESH                     2               0       93    603
6 months    PROVIDE          BANGLADESH                     2               1        1    603
6 months    PROVIDE          BANGLADESH                     3               0       58    603
6 months    PROVIDE          BANGLADESH                     3               1        0    603
24 months   CMC-V-BCS-2002   INDIA                          4+              0       14    372
24 months   CMC-V-BCS-2002   INDIA                          4+              1        0    372
24 months   CMC-V-BCS-2002   INDIA                          1               0      199    372
24 months   CMC-V-BCS-2002   INDIA                          1               1        2    372
24 months   CMC-V-BCS-2002   INDIA                          2               0      105    372
24 months   CMC-V-BCS-2002   INDIA                          2               1        1    372
24 months   CMC-V-BCS-2002   INDIA                          3               0       51    372
24 months   CMC-V-BCS-2002   INDIA                          3               1        0    372
24 months   COHORTS          INDIA                          4+              0       75   3719
24 months   COHORTS          INDIA                          4+              1        0   3719
24 months   COHORTS          INDIA                          1               0     2254   3719
24 months   COHORTS          INDIA                          1               1       33   3719
24 months   COHORTS          INDIA                          2               0     1200   3719
24 months   COHORTS          INDIA                          2               1        7   3719
24 months   COHORTS          INDIA                          3               0      149   3719
24 months   COHORTS          INDIA                          3               1        1   3719
24 months   CONTENT          PERU                           4+              0       63    164
24 months   CONTENT          PERU                           4+              1        0    164
24 months   CONTENT          PERU                           1               0       30    164
24 months   CONTENT          PERU                           1               1        0    164
24 months   CONTENT          PERU                           2               0       39    164
24 months   CONTENT          PERU                           2               1        0    164
24 months   CONTENT          PERU                           3               0       32    164
24 months   CONTENT          PERU                           3               1        0    164
24 months   GMS-Nepal        NEPAL                          4+              0      224    487
24 months   GMS-Nepal        NEPAL                          4+              1        7    487
24 months   GMS-Nepal        NEPAL                          1               0       33    487
24 months   GMS-Nepal        NEPAL                          1               1        2    487
24 months   GMS-Nepal        NEPAL                          2               0      103    487
24 months   GMS-Nepal        NEPAL                          2               1        3    487
24 months   GMS-Nepal        NEPAL                          3               0      112    487
24 months   GMS-Nepal        NEPAL                          3               1        3    487
24 months   IRC              INDIA                          4+              0       17    407
24 months   IRC              INDIA                          4+              1        0    407
24 months   IRC              INDIA                          1               0      182    407
24 months   IRC              INDIA                          1               1        2    407
24 months   IRC              INDIA                          2               0      169    407
24 months   IRC              INDIA                          2               1        1    407
24 months   IRC              INDIA                          3               0       35    407
24 months   IRC              INDIA                          3               1        1    407
24 months   MAL-ED           BANGLADESH                     4+              0       11    212
24 months   MAL-ED           BANGLADESH                     4+              1        0    212
24 months   MAL-ED           BANGLADESH                     1               0      134    212
24 months   MAL-ED           BANGLADESH                     1               1        0    212
24 months   MAL-ED           BANGLADESH                     2               0       40    212
24 months   MAL-ED           BANGLADESH                     2               1        0    212
24 months   MAL-ED           BANGLADESH                     3               0       27    212
24 months   MAL-ED           BANGLADESH                     3               1        0    212
24 months   MAL-ED           BRAZIL                         4+              0      103    169
24 months   MAL-ED           BRAZIL                         4+              1        1    169
24 months   MAL-ED           BRAZIL                         1               0        0    169
24 months   MAL-ED           BRAZIL                         1               1        0    169
24 months   MAL-ED           BRAZIL                         2               0       16    169
24 months   MAL-ED           BRAZIL                         2               1        0    169
24 months   MAL-ED           BRAZIL                         3               0       49    169
24 months   MAL-ED           BRAZIL                         3               1        0    169
24 months   MAL-ED           INDIA                          4+              0       24    227
24 months   MAL-ED           INDIA                          4+              1        1    227
24 months   MAL-ED           INDIA                          1               0       82    227
24 months   MAL-ED           INDIA                          1               1        0    227
24 months   MAL-ED           INDIA                          2               0       74    227
24 months   MAL-ED           INDIA                          2               1        0    227
24 months   MAL-ED           INDIA                          3               0       45    227
24 months   MAL-ED           INDIA                          3               1        1    227
24 months   MAL-ED           NEPAL                          4+              0      127    228
24 months   MAL-ED           NEPAL                          4+              1        0    228
24 months   MAL-ED           NEPAL                          1               0       48    228
24 months   MAL-ED           NEPAL                          1               1        0    228
24 months   MAL-ED           NEPAL                          2               0       31    228
24 months   MAL-ED           NEPAL                          2               1        0    228
24 months   MAL-ED           NEPAL                          3               0       22    228
24 months   MAL-ED           NEPAL                          3               1        0    228
24 months   MAL-ED           PERU                           4+              0      109    201
24 months   MAL-ED           PERU                           4+              1        1    201
24 months   MAL-ED           PERU                           1               0       15    201
24 months   MAL-ED           PERU                           1               1        1    201
24 months   MAL-ED           PERU                           2               0       32    201
24 months   MAL-ED           PERU                           2               1        0    201
24 months   MAL-ED           PERU                           3               0       43    201
24 months   MAL-ED           PERU                           3               1        0    201
24 months   MAL-ED           SOUTH AFRICA                   4+              0      183    238
24 months   MAL-ED           SOUTH AFRICA                   4+              1        0    238
24 months   MAL-ED           SOUTH AFRICA                   1               0       13    238
24 months   MAL-ED           SOUTH AFRICA                   1               1        0    238
24 months   MAL-ED           SOUTH AFRICA                   2               0       19    238
24 months   MAL-ED           SOUTH AFRICA                   2               1        0    238
24 months   MAL-ED           SOUTH AFRICA                   3               0       23    238
24 months   MAL-ED           SOUTH AFRICA                   3               1        0    238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              0       98    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              1        0    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        9    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       50    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        0    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       57    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1        0    214
24 months   NIH-Crypto       BANGLADESH                     4+              0       82    514
24 months   NIH-Crypto       BANGLADESH                     4+              1        0    514
24 months   NIH-Crypto       BANGLADESH                     1               0      217    514
24 months   NIH-Crypto       BANGLADESH                     1               1        0    514
24 months   NIH-Crypto       BANGLADESH                     2               0      133    514
24 months   NIH-Crypto       BANGLADESH                     2               1        4    514
24 months   NIH-Crypto       BANGLADESH                     3               0       78    514
24 months   NIH-Crypto       BANGLADESH                     3               1        0    514
24 months   PROVIDE          BANGLADESH                     4+              0       22    579
24 months   PROVIDE          BANGLADESH                     4+              1        0    579
24 months   PROVIDE          BANGLADESH                     1               0      400    579
24 months   PROVIDE          BANGLADESH                     1               1        8    579
24 months   PROVIDE          BANGLADESH                     2               0       91    579
24 months   PROVIDE          BANGLADESH                     2               1        1    579
24 months   PROVIDE          BANGLADESH                     3               0       57    579
24 months   PROVIDE          BANGLADESH                     3               1        0    579


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


ALL STRATA DROPPED. JOB FINISHED
















