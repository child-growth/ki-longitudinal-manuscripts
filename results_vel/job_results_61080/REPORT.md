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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_impfloor
* delta_impsan

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




# Results Detail

## Results Plots
![](/tmp/00b4da67-c326-4735-95cc-115c7b7b2677/7028e3a8-4b5b-4a6c-ace4-d29020be3feb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/00b4da67-c326-4735-95cc-115c7b7b2677/7028e3a8-4b5b-4a6c-ace4-d29020be3feb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/00b4da67-c326-4735-95cc-115c7b7b2677/7028e3a8-4b5b-4a6c-ace4-d29020be3feb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     JiVitA-3   BANGLADESH                     1                    NA                3.7235665   3.7130009   3.7341321
0-3 months     JiVitA-3   BANGLADESH                     0                    NA                3.6369864   3.6270100   3.6469628
0-3 months     MAL-ED     PERU                           1                    NA                3.0358305   2.7623825   3.3092785
0-3 months     MAL-ED     PERU                           0                    NA                3.0779010   3.0085516   3.1472504
0-3 months     MAL-ED     SOUTH AFRICA                   1                    NA                3.1207642   2.7867225   3.4548060
0-3 months     MAL-ED     SOUTH AFRICA                   0                    NA                3.1817853   3.0762163   3.2873543
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                3.2845427   3.1867454   3.3823399
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                3.2146947   3.0854140   3.3439753
3-6 months     JiVitA-3   BANGLADESH                     1                    NA                1.9203144   1.9096043   1.9310245
3-6 months     JiVitA-3   BANGLADESH                     0                    NA                1.7945360   1.7842862   1.8047858
3-6 months     MAL-ED     PERU                           1                    NA                1.9684174   1.6026783   2.3341566
3-6 months     MAL-ED     PERU                           0                    NA                2.0127835   1.9428914   2.0826756
3-6 months     MAL-ED     SOUTH AFRICA                   1                    NA                1.9851218   1.7686392   2.2016043
3-6 months     MAL-ED     SOUTH AFRICA                   0                    NA                1.9625578   1.8745221   2.0505935
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8323731   1.7507876   1.9139585
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7992234   1.6732101   1.9252367
6-9 months     LCNI-5     MALAWI                         1                    NA                1.4575757   1.4160681   1.4990834
6-9 months     LCNI-5     MALAWI                         0                    NA                1.4629394   1.3859325   1.5399464
6-9 months     MAL-ED     PERU                           1                    NA                1.1684070   0.9557718   1.3810422
6-9 months     MAL-ED     PERU                           0                    NA                1.3225108   1.2653831   1.3796384
6-9 months     MAL-ED     SOUTH AFRICA                   1                    NA                1.4321776   1.2671242   1.5972309
6-9 months     MAL-ED     SOUTH AFRICA                   0                    NA                1.3736582   1.3026413   1.4446750
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1916561   1.1004413   1.2828709
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1797089   1.0206990   1.3387188
9-12 months    LCNI-5     MALAWI                         1                    NA                1.1024498   1.0473690   1.1575307
9-12 months    LCNI-5     MALAWI                         0                    NA                1.0514787   0.9384526   1.1645049
9-12 months    MAL-ED     PERU                           1                    NA                1.1160877   0.9289289   1.3032464
9-12 months    MAL-ED     PERU                           0                    NA                1.1019161   1.0482767   1.1555555
9-12 months    MAL-ED     SOUTH AFRICA                   1                    NA                0.9889957   0.8322027   1.1457886
9-12 months    MAL-ED     SOUTH AFRICA                   0                    NA                1.0192915   0.9473126   1.0912704
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8555325   0.7559482   0.9551168
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7505965   0.6060446   0.8951484
12-15 months   LCNI-5     MALAWI                         1                    NA                0.9425552   0.8329835   1.0521268
12-15 months   LCNI-5     MALAWI                         0                    NA                1.0271351   0.8408344   1.2134357
12-15 months   MAL-ED     PERU                           1                    NA                0.8846595   0.7695897   0.9997294
12-15 months   MAL-ED     PERU                           0                    NA                0.8907084   0.8410984   0.9403185
12-15 months   MAL-ED     SOUTH AFRICA                   1                    NA                0.9498992   0.7980974   1.1017010
12-15 months   MAL-ED     SOUTH AFRICA                   0                    NA                0.9141028   0.8510940   0.9771115
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8271436   0.7493919   0.9048953
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9127188   0.7956549   1.0297828
15-18 months   LCNI-5     MALAWI                         1                    NA                0.8586274   0.7855989   0.9316558
15-18 months   LCNI-5     MALAWI                         0                    NA                0.6247885   0.3068980   0.9426789
15-18 months   MAL-ED     PERU                           1                    NA                0.8534728   0.6397559   1.0671898
15-18 months   MAL-ED     PERU                           0                    NA                0.8578623   0.8135834   0.9021411
15-18 months   MAL-ED     SOUTH AFRICA                   1                    NA                0.7885806   0.6698167   0.9073446
15-18 months   MAL-ED     SOUTH AFRICA                   0                    NA                0.9048520   0.8462196   0.9634844
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6541005   0.5803862   0.7278147
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7569068   0.6454235   0.8683901
18-21 months   LCNI-5     MALAWI                         1                    NA                0.8170125   0.7654379   0.8685872
18-21 months   LCNI-5     MALAWI                         0                    NA                0.8509710   0.7379197   0.9640222
18-21 months   MAL-ED     PERU                           1                    NA                0.6966493   0.5976815   0.7956172
18-21 months   MAL-ED     PERU                           0                    NA                0.8438128   0.7975106   0.8901149
18-21 months   MAL-ED     SOUTH AFRICA                   1                    NA                0.8384742   0.7269122   0.9500362
18-21 months   MAL-ED     SOUTH AFRICA                   0                    NA                0.7777101   0.7147848   0.8406355
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7411862   0.6545389   0.8278336
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7410955   0.6329312   0.8492599
21-24 months   LCNI-5     MALAWI                         1                    NA                0.7536355   0.7042537   0.8030173
21-24 months   LCNI-5     MALAWI                         0                    NA                0.7314547   0.6020265   0.8608830
21-24 months   MAL-ED     PERU                           1                    NA                0.6442119   0.4583975   0.8300263
21-24 months   MAL-ED     PERU                           0                    NA                0.7627749   0.7144494   0.8111003
21-24 months   MAL-ED     SOUTH AFRICA                   1                    NA                0.8175084   0.6792664   0.9557503
21-24 months   MAL-ED     SOUTH AFRICA                   0                    NA                0.8468648   0.7903538   0.9033758
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7352193   0.6649549   0.8054837
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6755818   0.5335200   0.8176437


### Parameter: E(Y)


agecat         studyid    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     JiVitA-3   BANGLADESH                     NA                   NA                3.7234127   3.7131065   3.7337188
0-3 months     MAL-ED     PERU                           NA                   NA                3.0766479   3.0096811   3.1436148
0-3 months     MAL-ED     SOUTH AFRICA                   NA                   NA                3.1670516   3.0651964   3.2689068
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2631757   3.1854001   3.3409512
3-6 months     JiVitA-3   BANGLADESH                     NA                   NA                1.9201969   1.9097350   1.9306589
3-6 months     MAL-ED     PERU                           NA                   NA                2.0114190   1.9435740   2.0792639
3-6 months     MAL-ED     SOUTH AFRICA                   NA                   NA                1.9735408   1.8927925   2.0542892
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8286113   1.7605412   1.8966813
6-9 months     LCNI-5     MALAWI                         NA                   NA                1.4589363   1.4224162   1.4954563
6-9 months     MAL-ED     PERU                           NA                   NA                1.3168407   1.2615074   1.3721740
6-9 months     MAL-ED     SOUTH AFRICA                   NA                   NA                1.3769400   1.3125507   1.4413293
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1868199   1.1090396   1.2646002
9-12 months    LCNI-5     MALAWI                         NA                   NA                1.1007887   1.0539615   1.1476158
9-12 months    MAL-ED     PERU                           NA                   NA                1.1024805   1.0504394   1.1545215
9-12 months    MAL-ED     SOUTH AFRICA                   NA                   NA                1.0146639   0.9495597   1.0797680
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8155931   0.7342357   0.8969504
12-15 months   LCNI-5     MALAWI                         NA                   NA                0.9578403   0.8612449   1.0544357
12-15 months   MAL-ED     PERU                           NA                   NA                0.8904833   0.8425275   0.9384392
12-15 months   MAL-ED     SOUTH AFRICA                   NA                   NA                0.9172722   0.8595621   0.9749824
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8542196   0.7897390   0.9187003
15-18 months   LCNI-5     MALAWI                         NA                   NA                0.8227868   0.7513696   0.8942040
15-18 months   MAL-ED     PERU                           NA                   NA                0.8576910   0.8143303   0.9010517
15-18 months   MAL-ED     SOUTH AFRICA                   NA                   NA                0.8873549   0.8344616   0.9402481
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6862933   0.6249762   0.7476104
18-21 months   LCNI-5     MALAWI                         NA                   NA                0.8198090   0.7732927   0.8663254
18-21 months   MAL-ED     PERU                           NA                   NA                0.8378061   0.7930237   0.8825886
18-21 months   MAL-ED     SOUTH AFRICA                   NA                   NA                0.7810829   0.7253333   0.8368325
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7413740   0.6736807   0.8090672
21-24 months   LCNI-5     MALAWI                         NA                   NA                0.7505036   0.7048983   0.7961088
21-24 months   MAL-ED     PERU                           NA                   NA                0.7582148   0.7110844   0.8053451
21-24 months   MAL-ED     SOUTH AFRICA                   NA                   NA                0.8395115   0.7878135   0.8912095
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7174798   0.6527204   0.7822392


### Parameter: ATE


agecat         studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3   BANGLADESH                     0                    1                 -0.0865801   -0.1010105   -0.0721496
0-3 months     MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED     PERU                           0                    1                  0.0420705   -0.2402156    0.3243566
0-3 months     MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED     SOUTH AFRICA                   0                    1                  0.0610210   -0.2897083    0.4117504
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0698480   -0.2324908    0.0927948
3-6 months     JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3   BANGLADESH                     0                    1                 -0.1257784   -0.1399992   -0.1115576
3-6 months     MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED     PERU                           0                    1                  0.0443661   -0.3279640    0.4166962
3-6 months     MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED     SOUTH AFRICA                   0                    1                 -0.0225640   -0.2570853    0.2119574
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0331497   -0.1837622    0.1174628
6-9 months     LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5     MALAWI                         0                    1                  0.0053637   -0.0825101    0.0932374
6-9 months     MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED     PERU                           0                    1                  0.1541038   -0.0659244    0.3741319
6-9 months     MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED     SOUTH AFRICA                   0                    1                 -0.0585194   -0.2384699    0.1214311
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0119472   -0.1974509    0.1735564
9-12 months    LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5     MALAWI                         0                    1                 -0.0509711   -0.1778432    0.0759010
9-12 months    MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED     PERU                           0                    1                 -0.0141716   -0.2088651    0.1805220
9-12 months    MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED     SOUTH AFRICA                   0                    1                  0.0302958   -0.1424783    0.2030700
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1049360   -0.2822864    0.0724144
12-15 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5     MALAWI                         0                    1                  0.0845799   -0.1337868    0.3029466
12-15 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED     PERU                           0                    1                  0.0060489   -0.1192597    0.1313574
12-15 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED     SOUTH AFRICA                   0                    1                 -0.0357965   -0.2001957    0.1286028
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0855752   -0.0553997    0.2265502
15-18 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5     MALAWI                         0                    1                 -0.2338389   -0.5603476    0.0926697
15-18 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED     PERU                           0                    1                  0.0043894   -0.2138663    0.2226452
15-18 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED     SOUTH AFRICA                   0                    1                  0.1162713   -0.0174949    0.2500375
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1028063   -0.0312844    0.2368970
18-21 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5     MALAWI                         0                    1                  0.0339584   -0.0914313    0.1593482
18-21 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED     PERU                           0                    1                  0.1471634    0.0378999    0.2564270
18-21 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED     SOUTH AFRICA                   0                    1                 -0.0607640   -0.1900978    0.0685698
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0000907   -0.1394702    0.1392888
21-24 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5     MALAWI                         0                    1                 -0.0221807   -0.1614481    0.1170866
21-24 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED     PERU                           0                    1                  0.1185629   -0.0734327    0.3105586
21-24 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED     SOUTH AFRICA                   0                    1                  0.0293564   -0.1200844    0.1787973
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0596375   -0.2187251    0.0994501


### Parameter: PAR


agecat         studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     JiVitA-3   BANGLADESH                     1                    NA                -0.0001538   -0.0005122   0.0002045
0-3 months     MAL-ED     PERU                           1                    NA                 0.0408174   -0.2317261   0.3133610
0-3 months     MAL-ED     SOUTH AFRICA                   1                    NA                 0.0462874   -0.2521154   0.3446901
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0213670   -0.0700230   0.0272889
3-6 months     JiVitA-3   BANGLADESH                     1                    NA                -0.0001174   -0.0004739   0.0002390
3-6 months     MAL-ED     PERU                           1                    NA                 0.0430015   -0.3175018   0.4035049
3-6 months     MAL-ED     SOUTH AFRICA                   1                    NA                -0.0115809   -0.2126703   0.1895085
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0037618   -0.0519888   0.0444653
6-9 months     LCNI-5     MALAWI                         1                    NA                 0.0013605   -0.0134308   0.0161518
6-9 months     MAL-ED     PERU                           1                    NA                 0.1484337   -0.0639026   0.3607700
6-9 months     MAL-ED     SOUTH AFRICA                   1                    NA                -0.0552376   -0.2086078   0.0981326
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0048362   -0.0621768   0.0525043
9-12 months    LCNI-5     MALAWI                         1                    NA                -0.0016612   -0.0232069   0.0198845
9-12 months    MAL-ED     PERU                           1                    NA                -0.0136072   -0.2005478   0.1733334
9-12 months    MAL-ED     SOUTH AFRICA                   1                    NA                 0.0256682   -0.1210153   0.1723517
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0399395   -0.0948378   0.0149589
12-15 months   LCNI-5     MALAWI                         1                    NA                 0.0152851   -0.0204033   0.0509736
12-15 months   MAL-ED     PERU                           1                    NA                 0.0058238   -0.1148222   0.1264698
12-15 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0326270   -0.1714344   0.1061804
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0270760   -0.0160640   0.0702161
15-18 months   LCNI-5     MALAWI                         1                    NA                -0.0358406   -0.0728075   0.0011262
15-18 months   MAL-ED     PERU                           1                    NA                 0.0042181   -0.2055203   0.2139566
15-18 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.0987742   -0.0144250   0.2119734
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0321928   -0.0108210   0.0752067
18-21 months   LCNI-5     MALAWI                         1                    NA                 0.0027965   -0.0194153   0.0250084
18-21 months   MAL-ED     PERU                           1                    NA                 0.1411568    0.0362733   0.2460402
18-21 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0573913   -0.1684153   0.0536328
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0001877   -0.0450097   0.0453851
21-24 months   LCNI-5     MALAWI                         1                    NA                -0.0031319   -0.0239924   0.0177286
21-24 months   MAL-ED     PERU                           1                    NA                 0.1140028   -0.0706383   0.2986439
21-24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.0220032   -0.1080298   0.1520361
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0177396   -0.0680064   0.0325273
