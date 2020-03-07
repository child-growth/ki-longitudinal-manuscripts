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

**Outcome Variable:** y_rate_haz

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

agecat         studyid         country                        safeh20    n_cell       n
-------------  --------------  -----------------------------  --------  -------  ------
0-3 months     CONTENT         PERU                           1               5       6
0-3 months     CONTENT         PERU                           0               1       6
0-3 months     JiVitA-3        BANGLADESH                     1           19828   19862
0-3 months     JiVitA-3        BANGLADESH                     0              34   19862
0-3 months     JiVitA-4        BANGLADESH                     1            1805    1805
0-3 months     JiVitA-4        BANGLADESH                     0               0    1805
0-3 months     MAL-ED          BANGLADESH                     1               0     236
0-3 months     MAL-ED          BANGLADESH                     0             236     236
0-3 months     MAL-ED          BRAZIL                         1               0     116
0-3 months     MAL-ED          BRAZIL                         0             116     116
0-3 months     MAL-ED          INDIA                          1               0     177
0-3 months     MAL-ED          INDIA                          0             177     177
0-3 months     MAL-ED          NEPAL                          1               1     153
0-3 months     MAL-ED          NEPAL                          0             152     153
0-3 months     MAL-ED          PERU                           1              11     243
0-3 months     MAL-ED          PERU                           0             232     243
0-3 months     MAL-ED          SOUTH AFRICA                   1              31     196
0-3 months     MAL-ED          SOUTH AFRICA                   0             165     196
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155     224
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     224
0-3 months     NIH-Birth       BANGLADESH                     1             564     566
0-3 months     NIH-Birth       BANGLADESH                     0               2     566
0-3 months     NIH-Crypto      BANGLADESH                     1             721     721
0-3 months     NIH-Crypto      BANGLADESH                     0               0     721
0-3 months     PROVIDE         BANGLADESH                     1              13      13
0-3 months     PROVIDE         BANGLADESH                     0               0      13
3-6 months     CONTENT         PERU                           1              54      57
3-6 months     CONTENT         PERU                           0               3      57
3-6 months     JiVitA-3        BANGLADESH                     1           12562   12574
3-6 months     JiVitA-3        BANGLADESH                     0              12   12574
3-6 months     JiVitA-4        BANGLADESH                     1            1839    1839
3-6 months     JiVitA-4        BANGLADESH                     0               0    1839
3-6 months     MAL-ED          BANGLADESH                     1               0     231
3-6 months     MAL-ED          BANGLADESH                     0             231     231
3-6 months     MAL-ED          BRAZIL                         1               0     141
3-6 months     MAL-ED          BRAZIL                         0             141     141
3-6 months     MAL-ED          INDIA                          1               0     230
3-6 months     MAL-ED          INDIA                          0             230     230
3-6 months     MAL-ED          NEPAL                          1               1     230
3-6 months     MAL-ED          NEPAL                          0             229     230
3-6 months     MAL-ED          PERU                           1              11     256
3-6 months     MAL-ED          PERU                           0             245     256
3-6 months     MAL-ED          SOUTH AFRICA                   1              36     240
3-6 months     MAL-ED          SOUTH AFRICA                   0             204     240
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             163     238
3-6 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              75     238
3-6 months     NIH-Birth       BANGLADESH                     1             521     523
3-6 months     NIH-Birth       BANGLADESH                     0               2     523
3-6 months     NIH-Crypto      BANGLADESH                     1             695     695
3-6 months     NIH-Crypto      BANGLADESH                     0               0     695
3-6 months     PROVIDE         BANGLADESH                     1              11      11
3-6 months     PROVIDE         BANGLADESH                     0               0      11
6-9 months     CONTENT         PERU                           1              54      57
6-9 months     CONTENT         PERU                           0               3      57
6-9 months     JiVitA-4        BANGLADESH                     1            3051    3052
6-9 months     JiVitA-4        BANGLADESH                     0               1    3052
6-9 months     LCNI-5          MALAWI                         1             464     559
6-9 months     LCNI-5          MALAWI                         0              95     559
6-9 months     MAL-ED          BANGLADESH                     1               0     224
6-9 months     MAL-ED          BANGLADESH                     0             224     224
6-9 months     MAL-ED          BRAZIL                         1               0     133
6-9 months     MAL-ED          BRAZIL                         0             133     133
6-9 months     MAL-ED          INDIA                          1               0     230
6-9 months     MAL-ED          INDIA                          0             230     230
6-9 months     MAL-ED          NEPAL                          1               1     228
6-9 months     MAL-ED          NEPAL                          0             227     228
6-9 months     MAL-ED          PERU                           1              10     235
6-9 months     MAL-ED          PERU                           0             225     235
6-9 months     MAL-ED          SOUTH AFRICA                   1              36     230
6-9 months     MAL-ED          SOUTH AFRICA                   0             194     230
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155     224
6-9 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     224
6-9 months     NIH-Birth       BANGLADESH                     1             496     498
6-9 months     NIH-Birth       BANGLADESH                     0               2     498
6-9 months     NIH-Crypto      BANGLADESH                     1             688     688
6-9 months     NIH-Crypto      BANGLADESH                     0               0     688
6-9 months     PROVIDE         BANGLADESH                     1               6       6
6-9 months     PROVIDE         BANGLADESH                     0               0       6
6-9 months     SAS-FoodSuppl   INDIA                          1             314     314
6-9 months     SAS-FoodSuppl   INDIA                          0               0     314
9-12 months    CONTENT         PERU                           1              54      57
9-12 months    CONTENT         PERU                           0               3      57
9-12 months    JiVitA-4        BANGLADESH                     1            3499    3499
9-12 months    JiVitA-4        BANGLADESH                     0               0    3499
9-12 months    LCNI-5          MALAWI                         1             319     383
9-12 months    LCNI-5          MALAWI                         0              64     383
9-12 months    MAL-ED          BANGLADESH                     1               0     225
9-12 months    MAL-ED          BANGLADESH                     0             225     225
9-12 months    MAL-ED          BRAZIL                         1               0     129
9-12 months    MAL-ED          BRAZIL                         0             129     129
9-12 months    MAL-ED          INDIA                          1               0     227
9-12 months    MAL-ED          INDIA                          0             227     227
9-12 months    MAL-ED          NEPAL                          1               1     227
9-12 months    MAL-ED          NEPAL                          0             226     227
9-12 months    MAL-ED          PERU                           1               9     226
9-12 months    MAL-ED          PERU                           0             217     226
9-12 months    MAL-ED          SOUTH AFRICA                   1              37     232
9-12 months    MAL-ED          SOUTH AFRICA                   0             195     232
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             154     223
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     223
9-12 months    NIH-Birth       BANGLADESH                     1             480     482
9-12 months    NIH-Birth       BANGLADESH                     0               2     482
9-12 months    NIH-Crypto      BANGLADESH                     1             674     674
9-12 months    NIH-Crypto      BANGLADESH                     0               0     674
9-12 months    PROVIDE         BANGLADESH                     1               6       6
9-12 months    PROVIDE         BANGLADESH                     0               0       6
9-12 months    SAS-FoodSuppl   INDIA                          1             311     311
9-12 months    SAS-FoodSuppl   INDIA                          0               0     311
12-15 months   CONTENT         PERU                           1              51      54
12-15 months   CONTENT         PERU                           0               3      54
12-15 months   JiVitA-4        BANGLADESH                     1            3547    3547
12-15 months   JiVitA-4        BANGLADESH                     0               0    3547
12-15 months   LCNI-5          MALAWI                         1             105     126
12-15 months   LCNI-5          MALAWI                         0              21     126
12-15 months   MAL-ED          BANGLADESH                     1               0     212
12-15 months   MAL-ED          BANGLADESH                     0             212     212
12-15 months   MAL-ED          BRAZIL                         1               0     122
12-15 months   MAL-ED          BRAZIL                         0             122     122
12-15 months   MAL-ED          INDIA                          1               0     226
12-15 months   MAL-ED          INDIA                          0             226     226
12-15 months   MAL-ED          NEPAL                          1               1     228
12-15 months   MAL-ED          NEPAL                          0             227     228
12-15 months   MAL-ED          PERU                           1               8     215
12-15 months   MAL-ED          PERU                           0             207     215
12-15 months   MAL-ED          SOUTH AFRICA                   1              36     227
12-15 months   MAL-ED          SOUTH AFRICA                   0             191     227
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             156     225
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     225
12-15 months   NIH-Birth       BANGLADESH                     1             459     461
12-15 months   NIH-Birth       BANGLADESH                     0               2     461
12-15 months   NIH-Crypto      BANGLADESH                     1             660     660
12-15 months   NIH-Crypto      BANGLADESH                     0               0     660
12-15 months   PROVIDE         BANGLADESH                     1               8       8
12-15 months   PROVIDE         BANGLADESH                     0               0       8
12-15 months   SAS-FoodSuppl   INDIA                          1             303     303
12-15 months   SAS-FoodSuppl   INDIA                          0               0     303
15-18 months   CONTENT         PERU                           1              45      48
15-18 months   CONTENT         PERU                           0               3      48
15-18 months   JiVitA-4        BANGLADESH                     1            3548    3548
15-18 months   JiVitA-4        BANGLADESH                     0               0    3548
15-18 months   LCNI-5          MALAWI                         1             103     119
15-18 months   LCNI-5          MALAWI                         0              16     119
15-18 months   MAL-ED          BANGLADESH                     1               0     212
15-18 months   MAL-ED          BANGLADESH                     0             212     212
15-18 months   MAL-ED          BRAZIL                         1               0     116
15-18 months   MAL-ED          BRAZIL                         0             116     116
15-18 months   MAL-ED          INDIA                          1               0     226
15-18 months   MAL-ED          INDIA                          0             226     226
15-18 months   MAL-ED          NEPAL                          1               1     225
15-18 months   MAL-ED          NEPAL                          0             224     225
15-18 months   MAL-ED          PERU                           1               8     205
15-18 months   MAL-ED          PERU                           0             197     205
15-18 months   MAL-ED          SOUTH AFRICA                   1              35     224
15-18 months   MAL-ED          SOUTH AFRICA                   0             189     224
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             147     216
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     216
15-18 months   NIH-Birth       BANGLADESH                     1             447     449
15-18 months   NIH-Birth       BANGLADESH                     0               2     449
15-18 months   NIH-Crypto      BANGLADESH                     1             604     604
15-18 months   NIH-Crypto      BANGLADESH                     0               0     604
15-18 months   PROVIDE         BANGLADESH                     1              10      10
15-18 months   PROVIDE         BANGLADESH                     0               0      10
15-18 months   SAS-FoodSuppl   INDIA                          1             291     291
15-18 months   SAS-FoodSuppl   INDIA                          0               0     291
18-21 months   CONTENT         PERU                           1              46      49
18-21 months   CONTENT         PERU                           0               3      49
18-21 months   LCNI-5          MALAWI                         1             391     474
18-21 months   LCNI-5          MALAWI                         0              83     474
18-21 months   MAL-ED          BANGLADESH                     1               0     209
18-21 months   MAL-ED          BANGLADESH                     0             209     209
18-21 months   MAL-ED          BRAZIL                         1               0     111
18-21 months   MAL-ED          BRAZIL                         0             111     111
18-21 months   MAL-ED          INDIA                          1               0     226
18-21 months   MAL-ED          INDIA                          0             226     226
18-21 months   MAL-ED          NEPAL                          1               1     225
18-21 months   MAL-ED          NEPAL                          0             224     225
18-21 months   MAL-ED          PERU                           1               8     196
18-21 months   MAL-ED          PERU                           0             188     196
18-21 months   MAL-ED          SOUTH AFRICA                   1              35     232
18-21 months   MAL-ED          SOUTH AFRICA                   0             197     232
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             136     203
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              67     203
18-21 months   NIH-Birth       BANGLADESH                     1             420     422
18-21 months   NIH-Birth       BANGLADESH                     0               2     422
18-21 months   NIH-Crypto      BANGLADESH                     1             546     546
18-21 months   NIH-Crypto      BANGLADESH                     0               0     546
18-21 months   PROVIDE         BANGLADESH                     1               9       9
18-21 months   PROVIDE         BANGLADESH                     0               0       9
21-24 months   CONTENT         PERU                           1               8       9
21-24 months   CONTENT         PERU                           0               1       9
21-24 months   LCNI-5          MALAWI                         1             342     405
21-24 months   LCNI-5          MALAWI                         0              63     405
21-24 months   MAL-ED          BANGLADESH                     1               0     207
21-24 months   MAL-ED          BANGLADESH                     0             207     207
21-24 months   MAL-ED          BRAZIL                         1               0     110
21-24 months   MAL-ED          BRAZIL                         0             110     110
21-24 months   MAL-ED          INDIA                          1               0     226
21-24 months   MAL-ED          INDIA                          0             226     226
21-24 months   MAL-ED          NEPAL                          1               1     225
21-24 months   MAL-ED          NEPAL                          0             224     225
21-24 months   MAL-ED          PERU                           1               7     182
21-24 months   MAL-ED          PERU                           0             175     182
21-24 months   MAL-ED          SOUTH AFRICA                   1              34     234
21-24 months   MAL-ED          SOUTH AFRICA                   0             200     234
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             138     203
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              65     203
21-24 months   NIH-Birth       BANGLADESH                     1             409     411
21-24 months   NIH-Birth       BANGLADESH                     0               2     411
21-24 months   NIH-Crypto      BANGLADESH                     1             490     490
21-24 months   NIH-Crypto      BANGLADESH                     0               0     490
21-24 months   PROVIDE         BANGLADESH                     1               8       8
21-24 months   PROVIDE         BANGLADESH                     0               0       8


The following strata were considered:

* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
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
![](/tmp/7526aed8-d53f-4b53-8c19-ed50a9f72b2d/1e4e8562-e2e3-482a-b1bd-215d2606fe1a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7526aed8-d53f-4b53-8c19-ed50a9f72b2d/1e4e8562-e2e3-482a-b1bd-215d2606fe1a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7526aed8-d53f-4b53-8c19-ed50a9f72b2d/1e4e8562-e2e3-482a-b1bd-215d2606fe1a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3   BANGLADESH                     1                    NA                 0.0741757    0.0691176    0.0792337
0-3 months     JiVitA-3   BANGLADESH                     0                    NA                 0.0251736    0.0206618    0.0296854
0-3 months     MAL-ED     PERU                           1                    NA                -0.2741800   -0.3783027   -0.1700574
0-3 months     MAL-ED     PERU                           0                    NA                -0.2515711   -0.2871794   -0.2159628
0-3 months     MAL-ED     SOUTH AFRICA                   1                    NA                -0.2284712   -0.3823085   -0.0746340
0-3 months     MAL-ED     SOUTH AFRICA                   0                    NA                -0.1827755   -0.2360970   -0.1294540
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1356788   -0.1849851   -0.0863726
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1464422   -0.2108734   -0.0820110
3-6 months     JiVitA-3   BANGLADESH                     1                    NA                -0.0033711   -0.0083544    0.0016122
3-6 months     JiVitA-3   BANGLADESH                     0                    NA                -0.0698670   -0.0737614   -0.0659726
3-6 months     MAL-ED     PERU                           1                    NA                 0.0098455   -0.1145680    0.1342590
3-6 months     MAL-ED     PERU                           0                    NA                 0.0242542   -0.0088242    0.0573326
3-6 months     MAL-ED     SOUTH AFRICA                   1                    NA                 0.0269050   -0.0674921    0.1213021
3-6 months     MAL-ED     SOUTH AFRICA                   0                    NA                -0.0086767   -0.0500740    0.0327207
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0727068   -0.1117404   -0.0336732
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0687704   -0.1260899   -0.0114510
6-9 months     LCNI-5     MALAWI                         1                    NA                 0.0278301    0.0098213    0.0458389
6-9 months     LCNI-5     MALAWI                         0                    NA                 0.0284376   -0.0039391    0.0608144
6-9 months     MAL-ED     PERU                           1                    NA                -0.0916708   -0.1782518   -0.0050898
6-9 months     MAL-ED     PERU                           0                    NA                -0.0324167   -0.0577223   -0.0071111
6-9 months     MAL-ED     SOUTH AFRICA                   1                    NA                -0.0102498   -0.0804345    0.0599350
6-9 months     MAL-ED     SOUTH AFRICA                   0                    NA                -0.0191880   -0.0500330    0.0116570
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0982239   -0.1370553   -0.0593924
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0881640   -0.1527888   -0.0235392
9-12 months    LCNI-5     MALAWI                         1                    NA                -0.0405956   -0.0624151   -0.0187762
9-12 months    LCNI-5     MALAWI                         0                    NA                -0.0568638   -0.0969954   -0.0167321
9-12 months    MAL-ED     PERU                           1                    NA                -0.0326081   -0.1116005    0.0463844
9-12 months    MAL-ED     PERU                           0                    NA                -0.0406500   -0.0632066   -0.0180933
9-12 months    MAL-ED     SOUTH AFRICA                   1                    NA                -0.0952228   -0.1564356   -0.0340100
9-12 months    MAL-ED     SOUTH AFRICA                   0                    NA                -0.0827486   -0.1126892   -0.0528080
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1386388   -0.1799468   -0.0973308
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1882126   -0.2463695   -0.1300556
12-15 months   LCNI-5     MALAWI                         1                    NA                -0.0457654   -0.0881354   -0.0033954
12-15 months   LCNI-5     MALAWI                         0                    NA                -0.0133177   -0.0800327    0.0533972
12-15 months   MAL-ED     PERU                           1                    NA                -0.0657169   -0.1092700   -0.0221637
12-15 months   MAL-ED     PERU                           0                    NA                -0.0660215   -0.0851882   -0.0468548
12-15 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0526575   -0.1135558    0.0082408
12-15 months   MAL-ED     SOUTH AFRICA                   0                    NA                -0.0614240   -0.0861065   -0.0367415
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0799073   -0.1100774   -0.0497372
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0481057   -0.0930234   -0.0031880
15-18 months   LCNI-5     MALAWI                         1                    NA                -0.0353804   -0.0615797   -0.0091812
15-18 months   LCNI-5     MALAWI                         0                    NA                -0.1173555   -0.2008952   -0.0338158
15-18 months   MAL-ED     PERU                           1                    NA                -0.0323292   -0.1121274    0.0474690
15-18 months   MAL-ED     PERU                           0                    NA                -0.0347368   -0.0509458   -0.0185277
15-18 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0643710   -0.1041675   -0.0245745
15-18 months   MAL-ED     SOUTH AFRICA                   0                    NA                -0.0217737   -0.0430037   -0.0005436
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0977238   -0.1244902   -0.0709575
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0603133   -0.1007081   -0.0199185
18-21 months   LCNI-5     MALAWI                         1                    NA                -0.0158941   -0.0338633    0.0020750
18-21 months   LCNI-5     MALAWI                         0                    NA                -0.0092616   -0.0471423    0.0286191
18-21 months   MAL-ED     PERU                           1                    NA                -0.0527482   -0.0889320   -0.0165645
18-21 months   MAL-ED     PERU                           0                    NA                -0.0074914   -0.0233551    0.0083722
18-21 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0235376   -0.0600223    0.0129470
18-21 months   MAL-ED     SOUTH AFRICA                   0                    NA                -0.0340734   -0.0557757   -0.0123710
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0282824   -0.0578553    0.0012904
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0301784   -0.0654663    0.0051095
21-24 months   LCNI-5     MALAWI                         1                    NA                 0.0272298    0.0105488    0.0439109
21-24 months   LCNI-5     MALAWI                         0                    NA                 0.0183132   -0.0206414    0.0572678
21-24 months   MAL-ED     PERU                           1                    NA                 0.0232134   -0.0327597    0.0791864
21-24 months   MAL-ED     PERU                           0                    NA                 0.0574631    0.0416924    0.0732338
21-24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.0420213    0.0013276    0.0827151
21-24 months   MAL-ED     SOUTH AFRICA                   0                    NA                 0.0444395    0.0260031    0.0628760
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0142802   -0.0095364    0.0380968
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0046025   -0.0499998    0.0407947


### Parameter: E(Y)


agecat         studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3   BANGLADESH                     NA                   NA                 0.0740918    0.0691549    0.0790286
0-3 months     MAL-ED     PERU                           NA                   NA                -0.2525945   -0.2869213   -0.2182678
0-3 months     MAL-ED     SOUTH AFRICA                   NA                   NA                -0.1900029   -0.2411148   -0.1388910
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1389943   -0.1784707   -0.0995180
3-6 months     JiVitA-3   BANGLADESH                     NA                   NA                -0.0034346   -0.0083001    0.0014310
3-6 months     MAL-ED     PERU                           NA                   NA                 0.0236350   -0.0084722    0.0557423
3-6 months     MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0033394   -0.0413034    0.0346246
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0714664   -0.1037306   -0.0392021
6-9 months     LCNI-5     MALAWI                         NA                   NA                 0.0279334    0.0120046    0.0438622
6-9 months     MAL-ED     PERU                           NA                   NA                -0.0349381   -0.0594933   -0.0103830
6-9 months     MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0177890   -0.0460334    0.0104554
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0951251   -0.1285712   -0.0616789
9-12 months    LCNI-5     MALAWI                         NA                   NA                -0.0433141   -0.0626948   -0.0239333
9-12 months    MAL-ED     PERU                           NA                   NA                -0.0403297   -0.0622163   -0.0184431
9-12 months    MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0847380   -0.1117373   -0.0577388
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1539778   -0.1878402   -0.1201153
12-15 months   LCNI-5     MALAWI                         NA                   NA                -0.0403575   -0.0774359   -0.0032790
12-15 months   MAL-ED     PERU                           NA                   NA                -0.0660102   -0.0845347   -0.0474856
12-15 months   MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0600337   -0.0829414   -0.0371260
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0701548   -0.0952743   -0.0450353
15-18 months   LCNI-5     MALAWI                         NA                   NA                -0.0464023   -0.0722064   -0.0205982
15-18 months   MAL-ED     PERU                           NA                   NA                -0.0346428   -0.0505277   -0.0187579
15-18 months   MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0284295   -0.0474993   -0.0093597
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0857732   -0.1082180   -0.0633284
18-21 months   LCNI-5     MALAWI                         NA                   NA                -0.0147327   -0.0309734    0.0015080
18-21 months   MAL-ED     PERU                           NA                   NA                -0.0093386   -0.0246779    0.0060006
18-21 months   MAL-ED     SOUTH AFRICA                   NA                   NA                -0.0324839   -0.0517228   -0.0132451
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0289082   -0.0518906   -0.0059258
21-24 months   LCNI-5     MALAWI                         NA                   NA                 0.0258428    0.0105053    0.0411803
21-24 months   MAL-ED     PERU                           NA                   NA                 0.0561458    0.0407996    0.0714920
21-24 months   MAL-ED     SOUTH AFRICA                   NA                   NA                 0.0440882    0.0272574    0.0609190
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0082340   -0.0135584    0.0300264


### Parameter: ATE


agecat         studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3   BANGLADESH                     0                    1                 -0.0490021   -0.0555922   -0.0424119
0-3 months     MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED     PERU                           0                    1                  0.0226089   -0.0874342    0.1326520
0-3 months     MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED     SOUTH AFRICA                   0                    1                  0.0456957   -0.1171204    0.2085118
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0107634   -0.0918959    0.0703692
3-6 months     JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3   BANGLADESH                     0                    1                 -0.0664959   -0.0726033   -0.0603885
3-6 months     MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED     PERU                           0                    1                  0.0144087   -0.1143271    0.1431445
3-6 months     MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED     SOUTH AFRICA                   0                    1                 -0.0355817   -0.1386571    0.0674938
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0039364   -0.0654116    0.0732844
6-9 months     LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5     MALAWI                         0                    1                  0.0006075   -0.0364407    0.0376557
6-9 months     MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED     PERU                           0                    1                  0.0592541   -0.0309493    0.1494575
6-9 months     MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED     SOUTH AFRICA                   0                    1                 -0.0089382   -0.0856019    0.0677254
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0100599   -0.0653341    0.0854538
9-12 months    LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5     MALAWI                         0                    1                 -0.0162681   -0.0619479    0.0294116
9-12 months    MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED     PERU                           0                    1                 -0.0080419   -0.0901918    0.0741080
9-12 months    MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED     SOUTH AFRICA                   0                    1                  0.0124742   -0.0556686    0.0806170
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0495737   -0.1209080    0.0217605
12-15 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5     MALAWI                         0                    1                  0.0324477   -0.0465846    0.1114800
12-15 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED     PERU                           0                    1                 -0.0003046   -0.0478886    0.0472794
12-15 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED     SOUTH AFRICA                   0                    1                 -0.0087665   -0.0744766    0.0569437
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0318016   -0.0223079    0.0859111
15-18 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5     MALAWI                         0                    1                 -0.0819751   -0.1695267    0.0055766
15-18 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED     PERU                           0                    1                 -0.0024076   -0.0838354    0.0790202
15-18 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED     SOUTH AFRICA                   0                    1                  0.0425973   -0.0025079    0.0877025
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0374105   -0.0110475    0.0858685
18-21 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5     MALAWI                         0                    1                  0.0066325   -0.0352941    0.0485591
18-21 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED     PERU                           0                    1                  0.0452568    0.0057484    0.0847653
18-21 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED     SOUTH AFRICA                   0                    1                 -0.0105357   -0.0529871    0.0319157
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0018960   -0.0479372    0.0441452
21-24 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5     MALAWI                         0                    1                 -0.0089166   -0.0512925    0.0334593
21-24 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED     PERU                           0                    1                  0.0342497   -0.0239026    0.0924021
21-24 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED     SOUTH AFRICA                   0                    1                  0.0024182   -0.0422571    0.0470935
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0188827   -0.0701481    0.0323827


### Parameter: PAR


agecat         studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     JiVitA-3   BANGLADESH                     1                    NA                -0.0000839   -0.0002474   0.0000796
0-3 months     MAL-ED     PERU                           1                    NA                 0.0215855   -0.0834779   0.1266489
0-3 months     MAL-ED     SOUTH AFRICA                   1                    NA                 0.0384683   -0.0986162   0.1755529
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0033155   -0.0283157   0.0216847
3-6 months     JiVitA-3   BANGLADESH                     1                    NA                -0.0000635   -0.0002231   0.0000962
3-6 months     MAL-ED     PERU                           1                    NA                 0.0137896   -0.1094151   0.1369943
3-6 months     MAL-ED     SOUTH AFRICA                   1                    NA                -0.0302444   -0.1178734   0.0573846
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0012405   -0.0206142   0.0230951
6-9 months     LCNI-5     MALAWI                         1                    NA                 0.0001032   -0.0061930   0.0063995
6-9 months     MAL-ED     PERU                           1                    NA                 0.0567327   -0.0296459   0.1431112
6-9 months     MAL-ED     SOUTH AFRICA                   1                    NA                -0.0075392   -0.0722047   0.0571263
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0030988   -0.0201332   0.0263308
9-12 months    LCNI-5     MALAWI                         1                    NA                -0.0027184   -0.0103758   0.0049390
9-12 months    MAL-ED     PERU                           1                    NA                -0.0077217   -0.0866004   0.0711570
9-12 months    MAL-ED     SOUTH AFRICA                   1                    NA                 0.0104848   -0.0467935   0.0677630
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0153390   -0.0376159   0.0069380
12-15 months   LCNI-5     MALAWI                         1                    NA                 0.0054079   -0.0079336   0.0187495
12-15 months   MAL-ED     PERU                           1                    NA                -0.0002933   -0.0461067   0.0455202
12-15 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0073762   -0.0626669   0.0479146
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0097525   -0.0069518   0.0264568
15-18 months   LCNI-5     MALAWI                         1                    NA                -0.0110219   -0.0238293   0.0017856
15-18 months   MAL-ED     PERU                           1                    NA                -0.0023136   -0.0805638   0.0759365
15-18 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.0359415   -0.0021701   0.0740531
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0119506   -0.0037037   0.0276048
18-21 months   LCNI-5     MALAWI                         1                    NA                 0.0011614   -0.0061837   0.0085065
18-21 months   MAL-ED     PERU                           1                    NA                 0.0434096    0.0054929   0.0813263
18-21 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0089463   -0.0449966   0.0271041
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0006258   -0.0158221   0.0145706
21-24 months   LCNI-5     MALAWI                         1                    NA                -0.0013870   -0.0079864   0.0052123
21-24 months   MAL-ED     PERU                           1                    NA                 0.0329325   -0.0229915   0.0888564
21-24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.0020668   -0.0361173   0.0402510
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0060462   -0.0225061   0.0104137
