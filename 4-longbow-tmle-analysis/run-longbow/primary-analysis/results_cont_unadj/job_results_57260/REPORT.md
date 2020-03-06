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

**Outcome Variable:** y_rate_len

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

agecat         studyid         country                        safeh20    n_cell     n
-------------  --------------  -----------------------------  --------  -------  ----
0-3 months     CONTENT         PERU                           1               5     6
0-3 months     CONTENT         PERU                           0               1     6
0-3 months     MAL-ED          BANGLADESH                     1               0   236
0-3 months     MAL-ED          BANGLADESH                     0             236   236
0-3 months     MAL-ED          BRAZIL                         1               0   116
0-3 months     MAL-ED          BRAZIL                         0             116   116
0-3 months     MAL-ED          INDIA                          1               0   177
0-3 months     MAL-ED          INDIA                          0             177   177
0-3 months     MAL-ED          NEPAL                          1               1   153
0-3 months     MAL-ED          NEPAL                          0             152   153
0-3 months     MAL-ED          PERU                           1              11   243
0-3 months     MAL-ED          PERU                           0             232   243
0-3 months     MAL-ED          SOUTH AFRICA                   1              31   196
0-3 months     MAL-ED          SOUTH AFRICA                   0             165   196
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155   224
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69   224
0-3 months     NIH-Birth       BANGLADESH                     1             564   566
0-3 months     NIH-Birth       BANGLADESH                     0               2   566
0-3 months     NIH-Crypto      BANGLADESH                     1             721   721
0-3 months     NIH-Crypto      BANGLADESH                     0               0   721
0-3 months     PROVIDE         BANGLADESH                     1              13    13
0-3 months     PROVIDE         BANGLADESH                     0               0    13
3-6 months     CONTENT         PERU                           1              54    57
3-6 months     CONTENT         PERU                           0               3    57
3-6 months     MAL-ED          BANGLADESH                     1               0   231
3-6 months     MAL-ED          BANGLADESH                     0             231   231
3-6 months     MAL-ED          BRAZIL                         1               0   141
3-6 months     MAL-ED          BRAZIL                         0             141   141
3-6 months     MAL-ED          INDIA                          1               0   230
3-6 months     MAL-ED          INDIA                          0             230   230
3-6 months     MAL-ED          NEPAL                          1               1   230
3-6 months     MAL-ED          NEPAL                          0             229   230
3-6 months     MAL-ED          PERU                           1              11   256
3-6 months     MAL-ED          PERU                           0             245   256
3-6 months     MAL-ED          SOUTH AFRICA                   1              36   240
3-6 months     MAL-ED          SOUTH AFRICA                   0             204   240
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             163   238
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              75   238
3-6 months     NIH-Birth       BANGLADESH                     1             521   523
3-6 months     NIH-Birth       BANGLADESH                     0               2   523
3-6 months     NIH-Crypto      BANGLADESH                     1             695   695
3-6 months     NIH-Crypto      BANGLADESH                     0               0   695
3-6 months     PROVIDE         BANGLADESH                     1              11    11
3-6 months     PROVIDE         BANGLADESH                     0               0    11
6-9 months     CONTENT         PERU                           1              54    57
6-9 months     CONTENT         PERU                           0               3    57
6-9 months     LCNI-5          MALAWI                         1             464   559
6-9 months     LCNI-5          MALAWI                         0              95   559
6-9 months     MAL-ED          BANGLADESH                     1               0   224
6-9 months     MAL-ED          BANGLADESH                     0             224   224
6-9 months     MAL-ED          BRAZIL                         1               0   133
6-9 months     MAL-ED          BRAZIL                         0             133   133
6-9 months     MAL-ED          INDIA                          1               0   230
6-9 months     MAL-ED          INDIA                          0             230   230
6-9 months     MAL-ED          NEPAL                          1               1   228
6-9 months     MAL-ED          NEPAL                          0             227   228
6-9 months     MAL-ED          PERU                           1              10   235
6-9 months     MAL-ED          PERU                           0             225   235
6-9 months     MAL-ED          SOUTH AFRICA                   1              36   230
6-9 months     MAL-ED          SOUTH AFRICA                   0             194   230
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155   224
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69   224
6-9 months     NIH-Birth       BANGLADESH                     1             496   498
6-9 months     NIH-Birth       BANGLADESH                     0               2   498
6-9 months     NIH-Crypto      BANGLADESH                     1             688   688
6-9 months     NIH-Crypto      BANGLADESH                     0               0   688
6-9 months     PROVIDE         BANGLADESH                     1               6     6
6-9 months     PROVIDE         BANGLADESH                     0               0     6
6-9 months     SAS-FoodSuppl   INDIA                          1             314   314
6-9 months     SAS-FoodSuppl   INDIA                          0               0   314
9-12 months    CONTENT         PERU                           1              54    57
9-12 months    CONTENT         PERU                           0               3    57
9-12 months    LCNI-5          MALAWI                         1             319   383
9-12 months    LCNI-5          MALAWI                         0              64   383
9-12 months    MAL-ED          BANGLADESH                     1               0   225
9-12 months    MAL-ED          BANGLADESH                     0             225   225
9-12 months    MAL-ED          BRAZIL                         1               0   129
9-12 months    MAL-ED          BRAZIL                         0             129   129
9-12 months    MAL-ED          INDIA                          1               0   227
9-12 months    MAL-ED          INDIA                          0             227   227
9-12 months    MAL-ED          NEPAL                          1               1   227
9-12 months    MAL-ED          NEPAL                          0             226   227
9-12 months    MAL-ED          PERU                           1               9   226
9-12 months    MAL-ED          PERU                           0             217   226
9-12 months    MAL-ED          SOUTH AFRICA                   1              37   232
9-12 months    MAL-ED          SOUTH AFRICA                   0             195   232
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             154   223
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69   223
9-12 months    NIH-Birth       BANGLADESH                     1             480   482
9-12 months    NIH-Birth       BANGLADESH                     0               2   482
9-12 months    NIH-Crypto      BANGLADESH                     1             674   674
9-12 months    NIH-Crypto      BANGLADESH                     0               0   674
9-12 months    PROVIDE         BANGLADESH                     1               6     6
9-12 months    PROVIDE         BANGLADESH                     0               0     6
9-12 months    SAS-FoodSuppl   INDIA                          1             311   311
9-12 months    SAS-FoodSuppl   INDIA                          0               0   311
12-15 months   CONTENT         PERU                           1              51    54
12-15 months   CONTENT         PERU                           0               3    54
12-15 months   LCNI-5          MALAWI                         1             105   126
12-15 months   LCNI-5          MALAWI                         0              21   126
12-15 months   MAL-ED          BANGLADESH                     1               0   212
12-15 months   MAL-ED          BANGLADESH                     0             212   212
12-15 months   MAL-ED          BRAZIL                         1               0   122
12-15 months   MAL-ED          BRAZIL                         0             122   122
12-15 months   MAL-ED          INDIA                          1               0   226
12-15 months   MAL-ED          INDIA                          0             226   226
12-15 months   MAL-ED          NEPAL                          1               1   228
12-15 months   MAL-ED          NEPAL                          0             227   228
12-15 months   MAL-ED          PERU                           1               8   215
12-15 months   MAL-ED          PERU                           0             207   215
12-15 months   MAL-ED          SOUTH AFRICA                   1              36   227
12-15 months   MAL-ED          SOUTH AFRICA                   0             191   227
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             156   225
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69   225
12-15 months   NIH-Birth       BANGLADESH                     1             459   461
12-15 months   NIH-Birth       BANGLADESH                     0               2   461
12-15 months   NIH-Crypto      BANGLADESH                     1             660   660
12-15 months   NIH-Crypto      BANGLADESH                     0               0   660
12-15 months   PROVIDE         BANGLADESH                     1               8     8
12-15 months   PROVIDE         BANGLADESH                     0               0     8
12-15 months   SAS-FoodSuppl   INDIA                          1             303   303
12-15 months   SAS-FoodSuppl   INDIA                          0               0   303
15-18 months   CONTENT         PERU                           1              45    48
15-18 months   CONTENT         PERU                           0               3    48
15-18 months   LCNI-5          MALAWI                         1             103   119
15-18 months   LCNI-5          MALAWI                         0              16   119
15-18 months   MAL-ED          BANGLADESH                     1               0   212
15-18 months   MAL-ED          BANGLADESH                     0             212   212
15-18 months   MAL-ED          BRAZIL                         1               0   116
15-18 months   MAL-ED          BRAZIL                         0             116   116
15-18 months   MAL-ED          INDIA                          1               0   226
15-18 months   MAL-ED          INDIA                          0             226   226
15-18 months   MAL-ED          NEPAL                          1               1   225
15-18 months   MAL-ED          NEPAL                          0             224   225
15-18 months   MAL-ED          PERU                           1               8   205
15-18 months   MAL-ED          PERU                           0             197   205
15-18 months   MAL-ED          SOUTH AFRICA                   1              35   224
15-18 months   MAL-ED          SOUTH AFRICA                   0             189   224
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             147   216
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69   216
15-18 months   NIH-Birth       BANGLADESH                     1             447   449
15-18 months   NIH-Birth       BANGLADESH                     0               2   449
15-18 months   NIH-Crypto      BANGLADESH                     1             604   604
15-18 months   NIH-Crypto      BANGLADESH                     0               0   604
15-18 months   PROVIDE         BANGLADESH                     1              10    10
15-18 months   PROVIDE         BANGLADESH                     0               0    10
15-18 months   SAS-FoodSuppl   INDIA                          1             291   291
15-18 months   SAS-FoodSuppl   INDIA                          0               0   291
18-21 months   CONTENT         PERU                           1              46    49
18-21 months   CONTENT         PERU                           0               3    49
18-21 months   LCNI-5          MALAWI                         1             391   474
18-21 months   LCNI-5          MALAWI                         0              83   474
18-21 months   MAL-ED          BANGLADESH                     1               0   209
18-21 months   MAL-ED          BANGLADESH                     0             209   209
18-21 months   MAL-ED          BRAZIL                         1               0   111
18-21 months   MAL-ED          BRAZIL                         0             111   111
18-21 months   MAL-ED          INDIA                          1               0   226
18-21 months   MAL-ED          INDIA                          0             226   226
18-21 months   MAL-ED          NEPAL                          1               1   225
18-21 months   MAL-ED          NEPAL                          0             224   225
18-21 months   MAL-ED          PERU                           1               8   196
18-21 months   MAL-ED          PERU                           0             188   196
18-21 months   MAL-ED          SOUTH AFRICA                   1              35   232
18-21 months   MAL-ED          SOUTH AFRICA                   0             197   232
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             136   203
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              67   203
18-21 months   NIH-Birth       BANGLADESH                     1             420   422
18-21 months   NIH-Birth       BANGLADESH                     0               2   422
18-21 months   NIH-Crypto      BANGLADESH                     1             546   546
18-21 months   NIH-Crypto      BANGLADESH                     0               0   546
18-21 months   PROVIDE         BANGLADESH                     1               9     9
18-21 months   PROVIDE         BANGLADESH                     0               0     9
21-24 months   CONTENT         PERU                           1               8     9
21-24 months   CONTENT         PERU                           0               1     9
21-24 months   LCNI-5          MALAWI                         1             342   405
21-24 months   LCNI-5          MALAWI                         0              63   405
21-24 months   MAL-ED          BANGLADESH                     1               0   207
21-24 months   MAL-ED          BANGLADESH                     0             207   207
21-24 months   MAL-ED          BRAZIL                         1               0   110
21-24 months   MAL-ED          BRAZIL                         0             110   110
21-24 months   MAL-ED          INDIA                          1               0   226
21-24 months   MAL-ED          INDIA                          0             226   226
21-24 months   MAL-ED          NEPAL                          1               1   225
21-24 months   MAL-ED          NEPAL                          0             224   225
21-24 months   MAL-ED          PERU                           1               7   182
21-24 months   MAL-ED          PERU                           0             175   182
21-24 months   MAL-ED          SOUTH AFRICA                   1              34   234
21-24 months   MAL-ED          SOUTH AFRICA                   0             200   234
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             138   203
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              65   203
21-24 months   NIH-Birth       BANGLADESH                     1             409   411
21-24 months   NIH-Birth       BANGLADESH                     0               2   411
21-24 months   NIH-Crypto      BANGLADESH                     1             490   490
21-24 months   NIH-Crypto      BANGLADESH                     0               0   490
21-24 months   PROVIDE         BANGLADESH                     1               8     8
21-24 months   PROVIDE         BANGLADESH                     0               0     8


The following strata were considered:

* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/36506add-01db-421c-8e98-1e850891158f/edfcf73d-e8ae-4e30-b801-b917f0f87203/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/36506add-01db-421c-8e98-1e850891158f/edfcf73d-e8ae-4e30-b801-b917f0f87203/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/36506add-01db-421c-8e98-1e850891158f/edfcf73d-e8ae-4e30-b801-b917f0f87203/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     MAL-ED    PERU                           1                    NA                3.0543487   2.8434291   3.2652683
0-3 months     MAL-ED    PERU                           0                    NA                3.0777052   3.0082828   3.1471277
0-3 months     MAL-ED    SOUTH AFRICA                   1                    NA                3.0867664   2.7724823   3.4010505
0-3 months     MAL-ED    SOUTH AFRICA                   0                    NA                3.1821355   3.0766901   3.2875809
0-3 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                3.2810603   3.1828474   3.3792732
0-3 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                3.2230000   3.1007481   3.3452518
3-6 months     MAL-ED    PERU                           1                    NA                1.9952084   1.7235889   2.2668279
3-6 months     MAL-ED    PERU                           0                    NA                2.0121468   1.9423139   2.0819796
3-6 months     MAL-ED    SOUTH AFRICA                   1                    NA                2.0345091   1.8285020   2.2405162
3-6 months     MAL-ED    SOUTH AFRICA                   0                    NA                1.9627817   1.8750981   2.0504653
3-6 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8322111   1.7508883   1.9135338
3-6 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8207878   1.6966195   1.9449560
6-9 months     LCNI-5    MALAWI                         1                    NA                1.4587157   1.4174457   1.4999857
6-9 months     LCNI-5    MALAWI                         0                    NA                1.4600134   1.3855332   1.5344936
6-9 months     MAL-ED    PERU                           1                    NA                1.1891673   1.0001965   1.3781382
6-9 months     MAL-ED    PERU                           0                    NA                1.3225151   1.2654496   1.3795806
6-9 months     MAL-ED    SOUTH AFRICA                   1                    NA                1.3905278   1.2313048   1.5497508
6-9 months     MAL-ED    SOUTH AFRICA                   0                    NA                1.3744186   1.3040363   1.4448008
6-9 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1791685   1.0900485   1.2682886
6-9 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2040078   1.0502043   1.3578112
9-12 months    LCNI-5    MALAWI                         1                    NA                1.1078346   1.0550423   1.1606270
9-12 months    LCNI-5    MALAWI                         0                    NA                1.0656688   0.9697546   1.1615831
9-12 months    MAL-ED    PERU                           1                    NA                1.1160877   0.9289289   1.3032464
9-12 months    MAL-ED    PERU                           0                    NA                1.1019161   1.0482767   1.1555555
9-12 months    MAL-ED    SOUTH AFRICA                   1                    NA                0.9911015   0.8441739   1.1380292
9-12 months    MAL-ED    SOUTH AFRICA                   0                    NA                1.0191347   0.9468856   1.0913837
9-12 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8535943   0.7543033   0.9528854
9-12 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7307786   0.5913353   0.8702219
12-15 months   LCNI-5    MALAWI                         1                    NA                0.9455394   0.8350495   1.0560293
12-15 months   LCNI-5    MALAWI                         0                    NA                1.0193447   0.8465255   1.1921640
12-15 months   MAL-ED    PERU                           1                    NA                0.8846595   0.7695897   0.9997294
12-15 months   MAL-ED    PERU                           0                    NA                0.8907084   0.8410984   0.9403185
12-15 months   MAL-ED    SOUTH AFRICA                   1                    NA                0.9349756   0.7869528   1.0829984
12-15 months   MAL-ED    SOUTH AFRICA                   0                    NA                0.9139355   0.8512901   0.9765808
12-15 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8292691   0.7516477   0.9068904
12-15 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9106296   0.7959278   1.0253314
15-18 months   LCNI-5    MALAWI                         1                    NA                0.8529229   0.7802301   0.9256157
15-18 months   LCNI-5    MALAWI                         0                    NA                0.6287857   0.3993908   0.8581806
15-18 months   MAL-ED    PERU                           1                    NA                0.8534728   0.6397559   1.0671898
15-18 months   MAL-ED    PERU                           0                    NA                0.8578623   0.8135834   0.9021411
15-18 months   MAL-ED    SOUTH AFRICA                   1                    NA                0.7828780   0.6699717   0.8957844
15-18 months   MAL-ED    SOUTH AFRICA                   0                    NA                0.9067024   0.8480191   0.9653858
15-18 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6533779   0.5799728   0.7267831
15-18 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7564174   0.6469456   0.8658892
18-21 months   LCNI-5    MALAWI                         1                    NA                0.8169541   0.7656855   0.8682228
18-21 months   LCNI-5    MALAWI                         0                    NA                0.8332582   0.7226816   0.9438348
18-21 months   MAL-ED    PERU                           1                    NA                0.6966493   0.5976815   0.7956172
18-21 months   MAL-ED    PERU                           0                    NA                0.8438128   0.7975106   0.8901149
18-21 months   MAL-ED    SOUTH AFRICA                   1                    NA                0.8017170   0.6930197   0.9104144
18-21 months   MAL-ED    SOUTH AFRICA                   0                    NA                0.7774169   0.7146809   0.8401530
18-21 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7407635   0.6537411   0.8277860
18-21 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7426130   0.6383851   0.8468409
21-24 months   LCNI-5    MALAWI                         1                    NA                0.7524034   0.7033730   0.8014337
21-24 months   LCNI-5    MALAWI                         0                    NA                0.7401904   0.6173036   0.8630773
21-24 months   MAL-ED    PERU                           1                    NA                0.6442119   0.4583975   0.8300263
21-24 months   MAL-ED    PERU                           0                    NA                0.7627749   0.7144494   0.8111003
21-24 months   MAL-ED    SOUTH AFRICA                   1                    NA                0.8282831   0.7009342   0.9556320
21-24 months   MAL-ED    SOUTH AFRICA                   0                    NA                0.8414204   0.7849451   0.8978956
21-24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7309093   0.6612385   0.8005800
21-24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6889680   0.5512938   0.8266422


### Parameter: E(Y)


agecat         studyid   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     MAL-ED    PERU                           NA                   NA                3.0766479   3.0096811   3.1436148
0-3 months     MAL-ED    SOUTH AFRICA                   NA                   NA                3.1670516   3.0651964   3.2689068
0-3 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2631757   3.1854001   3.3409512
3-6 months     MAL-ED    PERU                           NA                   NA                2.0114190   1.9435740   2.0792639
3-6 months     MAL-ED    SOUTH AFRICA                   NA                   NA                1.9735408   1.8927925   2.0542892
3-6 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8286113   1.7605412   1.8966813
6-9 months     LCNI-5    MALAWI                         NA                   NA                1.4589363   1.4224162   1.4954563
6-9 months     MAL-ED    PERU                           NA                   NA                1.3168407   1.2615074   1.3721740
6-9 months     MAL-ED    SOUTH AFRICA                   NA                   NA                1.3769400   1.3125507   1.4413293
6-9 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1868199   1.1090396   1.2646002
9-12 months    LCNI-5    MALAWI                         NA                   NA                1.1007887   1.0539615   1.1476158
9-12 months    MAL-ED    PERU                           NA                   NA                1.1024805   1.0504394   1.1545215
9-12 months    MAL-ED    SOUTH AFRICA                   NA                   NA                1.0146639   0.9495597   1.0797680
9-12 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8155931   0.7342357   0.8969504
12-15 months   LCNI-5    MALAWI                         NA                   NA                0.9578403   0.8612449   1.0544357
12-15 months   MAL-ED    PERU                           NA                   NA                0.8904833   0.8425275   0.9384392
12-15 months   MAL-ED    SOUTH AFRICA                   NA                   NA                0.9172722   0.8595621   0.9749824
12-15 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8542196   0.7897390   0.9187003
15-18 months   LCNI-5    MALAWI                         NA                   NA                0.8227868   0.7513696   0.8942040
15-18 months   MAL-ED    PERU                           NA                   NA                0.8576910   0.8143303   0.9010517
15-18 months   MAL-ED    SOUTH AFRICA                   NA                   NA                0.8873549   0.8344616   0.9402481
15-18 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6862933   0.6249762   0.7476104
18-21 months   LCNI-5    MALAWI                         NA                   NA                0.8198090   0.7732927   0.8663254
18-21 months   MAL-ED    PERU                           NA                   NA                0.8378061   0.7930237   0.8825886
18-21 months   MAL-ED    SOUTH AFRICA                   NA                   NA                0.7810829   0.7253333   0.8368325
18-21 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7413740   0.6736807   0.8090672
21-24 months   LCNI-5    MALAWI                         NA                   NA                0.7505036   0.7048983   0.7961088
21-24 months   MAL-ED    PERU                           NA                   NA                0.7582148   0.7110844   0.8053451
21-24 months   MAL-ED    SOUTH AFRICA                   NA                   NA                0.8395115   0.7878135   0.8912095
21-24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7174798   0.6527204   0.7822392


### Parameter: ATE


agecat         studyid   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     MAL-ED    PERU                           1                    1                  0.0000000    0.0000000   0.0000000
0-3 months     MAL-ED    PERU                           0                    1                  0.0233565   -0.1986943   0.2454073
0-3 months     MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
0-3 months     MAL-ED    SOUTH AFRICA                   0                    1                  0.0953691   -0.2361324   0.4268706
0-3 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
0-3 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0580603   -0.2148764   0.0987558
3-6 months     MAL-ED    PERU                           1                    1                  0.0000000    0.0000000   0.0000000
3-6 months     MAL-ED    PERU                           0                    1                  0.0169384   -0.2635144   0.2973912
3-6 months     MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
3-6 months     MAL-ED    SOUTH AFRICA                   0                    1                 -0.0717274   -0.2956187   0.1521640
3-6 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
3-6 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0114233   -0.1598522   0.1370056
6-9 months     LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000   0.0000000
6-9 months     LCNI-5    MALAWI                         0                    1                  0.0012977   -0.0838523   0.0864476
6-9 months     MAL-ED    PERU                           1                    1                  0.0000000    0.0000000   0.0000000
6-9 months     MAL-ED    PERU                           0                    1                  0.1333478   -0.0640515   0.3307470
6-9 months     MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
6-9 months     MAL-ED    SOUTH AFRICA                   0                    1                 -0.0161092   -0.1901944   0.1579759
6-9 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
6-9 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0248392   -0.1529187   0.2025972
9-12 months    LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000   0.0000000
9-12 months    LCNI-5    MALAWI                         0                    1                 -0.0421658   -0.1516490   0.0673174
9-12 months    MAL-ED    PERU                           1                    1                  0.0000000    0.0000000   0.0000000
9-12 months    MAL-ED    PERU                           0                    1                 -0.0141716   -0.2088651   0.1805220
9-12 months    MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
9-12 months    MAL-ED    SOUTH AFRICA                   0                    1                  0.0280331   -0.1356973   0.1917636
9-12 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
9-12 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1228157   -0.2939973   0.0483659
12-15 months   LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000   0.0000000
12-15 months   LCNI-5    MALAWI                         0                    1                  0.0738053   -0.1313154   0.2789261
12-15 months   MAL-ED    PERU                           1                    1                  0.0000000    0.0000000   0.0000000
12-15 months   MAL-ED    PERU                           0                    1                  0.0060489   -0.1192597   0.1313574
12-15 months   MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
12-15 months   MAL-ED    SOUTH AFRICA                   0                    1                 -0.0210401   -0.1817734   0.1396932
12-15 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
12-15 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0813606   -0.0571370   0.2198581
15-18 months   LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000   0.0000000
15-18 months   LCNI-5    MALAWI                         0                    1                 -0.2241372   -0.4647744   0.0165000
15-18 months   MAL-ED    PERU                           1                    1                  0.0000000    0.0000000   0.0000000
15-18 months   MAL-ED    PERU                           0                    1                  0.0043894   -0.2138663   0.2226452
15-18 months   MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
15-18 months   MAL-ED    SOUTH AFRICA                   0                    1                  0.1238244   -0.0034218   0.2510706
15-18 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
15-18 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1030394   -0.0287650   0.2348438
18-21 months   LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000   0.0000000
18-21 months   LCNI-5    MALAWI                         0                    1                  0.0163041   -0.1055797   0.1381879
18-21 months   MAL-ED    PERU                           1                    1                  0.0000000    0.0000000   0.0000000
18-21 months   MAL-ED    PERU                           0                    1                  0.1471634    0.0378999   0.2564270
18-21 months   MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
18-21 months   MAL-ED    SOUTH AFRICA                   0                    1                 -0.0243001   -0.1498028   0.1012026
18-21 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
18-21 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0018495   -0.1339311   0.1376300
21-24 months   LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000   0.0000000
21-24 months   LCNI-5    MALAWI                         0                    1                 -0.0122129   -0.1445200   0.1200941
21-24 months   MAL-ED    PERU                           1                    1                  0.0000000    0.0000000   0.0000000
21-24 months   MAL-ED    PERU                           0                    1                  0.1185629   -0.0734327   0.3105586
21-24 months   MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
21-24 months   MAL-ED    SOUTH AFRICA                   0                    1                  0.0131373   -0.1261724   0.1524470
21-24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
21-24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0419413   -0.1962403   0.1123578


### Parameter: PAR


agecat         studyid   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     MAL-ED    PERU                           1                    NA                 0.0222992   -0.1897008   0.2342992
0-3 months     MAL-ED    SOUTH AFRICA                   1                    NA                 0.0802852   -0.1988277   0.3593981
0-3 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0178847   -0.0663176   0.0305483
3-6 months     MAL-ED    PERU                           1                    NA                 0.0162106   -0.2521919   0.2846130
3-6 months     MAL-ED    SOUTH AFRICA                   1                    NA                -0.0609683   -0.2513036   0.1293671
3-6 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0035998   -0.0503785   0.0431789
6-9 months     LCNI-5    MALAWI                         1                    NA                 0.0002205   -0.0142504   0.0146915
6-9 months     MAL-ED    PERU                           1                    NA                 0.1276734   -0.0613573   0.3167041
6-9 months     MAL-ED    SOUTH AFRICA                   1                    NA                -0.0135878   -0.1604268   0.1332512
6-9 months     MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0076514   -0.0471251   0.0624279
9-12 months    LCNI-5    MALAWI                         1                    NA                -0.0070460   -0.0254087   0.0113167
9-12 months    MAL-ED    PERU                           1                    NA                -0.0136072   -0.2005478   0.1733334
9-12 months    MAL-ED    SOUTH AFRICA                   1                    NA                 0.0235623   -0.1140623   0.1611870
9-12 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0380013   -0.0914917   0.0154891
12-15 months   LCNI-5    MALAWI                         1                    NA                 0.0123009   -0.0222243   0.0468261
12-15 months   MAL-ED    PERU                           1                    NA                 0.0058238   -0.1148222   0.1264698
12-15 months   MAL-ED    SOUTH AFRICA                   1                    NA                -0.0177033   -0.1529496   0.1175429
12-15 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0249506   -0.0178052   0.0677064
15-18 months   LCNI-5    MALAWI                         1                    NA                -0.0301361   -0.0653092   0.0050370
15-18 months   MAL-ED    PERU                           1                    NA                 0.0042181   -0.2055203   0.2139566
15-18 months   MAL-ED    SOUTH AFRICA                   1                    NA                 0.1044768   -0.0030492   0.2120028
15-18 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0329154   -0.0096757   0.0755065
18-21 months   LCNI-5    MALAWI                         1                    NA                 0.0028549   -0.0184949   0.0242048
18-21 months   MAL-ED    PERU                           1                    NA                 0.1411568    0.0362733   0.2460402
18-21 months   MAL-ED    SOUTH AFRICA                   1                    NA                -0.0206341   -0.1272091   0.0859408
18-21 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0006104   -0.0442040   0.0454249
21-24 months   LCNI-5    MALAWI                         1                    NA                -0.0018998   -0.0224854   0.0186858
21-24 months   MAL-ED    PERU                           1                    NA                 0.1140028   -0.0706383   0.2986439
21-24 months   MAL-ED    SOUTH AFRICA                   1                    NA                 0.0112285   -0.1078412   0.1302981
21-24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0134295   -0.0629092   0.0360503
