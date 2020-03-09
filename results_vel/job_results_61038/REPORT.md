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
![](/tmp/7ebf9b70-127f-46c7-a2eb-07d32eda0e01/f9ef79cd-d458-436d-ba2f-18ff496e662e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7ebf9b70-127f-46c7-a2eb-07d32eda0e01/f9ef79cd-d458-436d-ba2f-18ff496e662e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7ebf9b70-127f-46c7-a2eb-07d32eda0e01/f9ef79cd-d458-436d-ba2f-18ff496e662e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3   BANGLADESH                     1                    NA                 0.0741773    0.0691196    0.0792350
0-3 months     JiVitA-3   BANGLADESH                     0                    NA                 0.0281774    0.0235653    0.0327896
0-3 months     MAL-ED     PERU                           1                    NA                -0.2853442   -0.4127172   -0.1579713
0-3 months     MAL-ED     PERU                           0                    NA                -0.2508390   -0.2864648   -0.2152132
0-3 months     MAL-ED     SOUTH AFRICA                   1                    NA                -0.2126860   -0.3771107   -0.0482613
0-3 months     MAL-ED     SOUTH AFRICA                   0                    NA                -0.1811847   -0.2348069   -0.1275626
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1337958   -0.1834082   -0.0841834
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1499506   -0.2165662   -0.0833350
3-6 months     JiVitA-3   BANGLADESH                     1                    NA                -0.0033703   -0.0083531    0.0016125
3-6 months     JiVitA-3   BANGLADESH                     0                    NA                -0.0709865   -0.0748016   -0.0671713
3-6 months     MAL-ED     PERU                           1                    NA                -0.0435003   -0.2226802    0.1356796
3-6 months     MAL-ED     PERU                           0                    NA                 0.0243197   -0.0087831    0.0574225
3-6 months     MAL-ED     SOUTH AFRICA                   1                    NA                 0.0203123   -0.0760344    0.1166591
3-6 months     MAL-ED     SOUTH AFRICA                   0                    NA                -0.0080399   -0.0495192    0.0334393
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0631102   -0.1029814   -0.0232391
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0914518   -0.1529666   -0.0299371
6-9 months     LCNI-5     MALAWI                         1                    NA                 0.0268916    0.0089138    0.0448693
6-9 months     LCNI-5     MALAWI                         0                    NA                 0.0355440    0.0013608    0.0697272
6-9 months     MAL-ED     PERU                           1                    NA                -0.1374352   -0.2007075   -0.0741629
6-9 months     MAL-ED     PERU                           0                    NA                -0.0326739   -0.0580422   -0.0073055
6-9 months     MAL-ED     SOUTH AFRICA                   1                    NA                -0.0048297   -0.0760581    0.0663987
6-9 months     MAL-ED     SOUTH AFRICA                   0                    NA                -0.0193598   -0.0503734    0.0116538
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0904292   -0.1307248   -0.0501336
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1002590   -0.1736483   -0.0268697
9-12 months    LCNI-5     MALAWI                         1                    NA                -0.0407856   -0.0624626   -0.0191087
9-12 months    LCNI-5     MALAWI                         0                    NA                -0.0585222   -0.0993010   -0.0177435
9-12 months    MAL-ED     PERU                           1                    NA                -0.0326081   -0.1116005    0.0463844
9-12 months    MAL-ED     PERU                           0                    NA                -0.0406500   -0.0632066   -0.0180933
9-12 months    MAL-ED     SOUTH AFRICA                   1                    NA                -0.1365968   -0.1957581   -0.0774356
9-12 months    MAL-ED     SOUTH AFRICA                   0                    NA                -0.0840909   -0.1141391   -0.0540427
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1436057   -0.1854635   -0.1017479
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1760904   -0.2356962   -0.1164845
12-15 months   LCNI-5     MALAWI                         1                    NA                -0.0456600   -0.0878697   -0.0034503
12-15 months   LCNI-5     MALAWI                         0                    NA                -0.0070699   -0.0799004    0.0657605
12-15 months   MAL-ED     PERU                           1                    NA                -0.0657169   -0.1092700   -0.0221637
12-15 months   MAL-ED     PERU                           0                    NA                -0.0660215   -0.0851882   -0.0468548
12-15 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0581522   -0.1250771    0.0087727
12-15 months   MAL-ED     SOUTH AFRICA                   0                    NA                -0.0603558   -0.0851074   -0.0356043
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0803957   -0.1107027   -0.0500887
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0442962   -0.0884515   -0.0001409
15-18 months   LCNI-5     MALAWI                         1                    NA                -0.0349387   -0.0612476   -0.0086298
15-18 months   LCNI-5     MALAWI                         0                    NA                -0.1383934   -0.2266932   -0.0500936
15-18 months   MAL-ED     PERU                           1                    NA                -0.0323292   -0.1121274    0.0474690
15-18 months   MAL-ED     PERU                           0                    NA                -0.0347368   -0.0509458   -0.0185277
15-18 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0773393   -0.1171208   -0.0375578
15-18 months   MAL-ED     SOUTH AFRICA                   0                    NA                -0.0212945   -0.0425704   -0.0000186
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0972313   -0.1241964   -0.0702663
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0613971   -0.1020803   -0.0207139
18-21 months   LCNI-5     MALAWI                         1                    NA                -0.0160170   -0.0341239    0.0020898
18-21 months   LCNI-5     MALAWI                         0                    NA                -0.0090702   -0.0479584    0.0298180
18-21 months   MAL-ED     PERU                           1                    NA                -0.0527482   -0.0889320   -0.0165645
18-21 months   MAL-ED     PERU                           0                    NA                -0.0074914   -0.0233551    0.0083722
18-21 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0300980   -0.0700942    0.0098982
18-21 months   MAL-ED     SOUTH AFRICA                   0                    NA                -0.0350946   -0.0570017   -0.0131876
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0306808   -0.0616765    0.0003150
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0282596   -0.0652866    0.0087674
21-24 months   LCNI-5     MALAWI                         1                    NA                 0.0274738    0.0107883    0.0441593
21-24 months   LCNI-5     MALAWI                         0                    NA                 0.0151800   -0.0239339    0.0542939
21-24 months   MAL-ED     PERU                           1                    NA                 0.0232134   -0.0327597    0.0791864
21-24 months   MAL-ED     PERU                           0                    NA                 0.0574631    0.0416924    0.0732338
21-24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.0395293   -0.0069081    0.0859667
21-24 months   MAL-ED     SOUTH AFRICA                   0                    NA                 0.0449577    0.0264852    0.0634302
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0153514   -0.0086218    0.0393247
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022684   -0.0489934    0.0444566


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
0-3 months     JiVitA-3   BANGLADESH                     0                    1                 -0.0459999   -0.0526388   -0.0393610
0-3 months     MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED     PERU                           0                    1                  0.0345052   -0.0977623    0.1667728
0-3 months     MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED     SOUTH AFRICA                   0                    1                  0.0315013   -0.1423269    0.2053295
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0161548   -0.0992389    0.0669293
3-6 months     JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3   BANGLADESH                     0                    1                 -0.0676161   -0.0737529   -0.0614794
3-6 months     MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED     PERU                           0                    1                  0.0678199   -0.1142913    0.2499312
3-6 months     MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED     SOUTH AFRICA                   0                    1                 -0.0283523   -0.1333806    0.0766760
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0283416   -0.1022867    0.0456035
6-9 months     LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5     MALAWI                         0                    1                  0.0086524   -0.0300204    0.0473253
6-9 months     MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED     PERU                           0                    1                  0.1047613    0.0367096    0.1728131
6-9 months     MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED     SOUTH AFRICA                   0                    1                 -0.0145301   -0.0923068    0.0632466
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0098298   -0.0944129    0.0747533
9-12 months    LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5     MALAWI                         0                    1                 -0.0177366   -0.0638208    0.0283476
9-12 months    MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED     PERU                           0                    1                 -0.0080419   -0.0901918    0.0741080
9-12 months    MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED     SOUTH AFRICA                   0                    1                  0.0525059   -0.0150001    0.1200120
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0324847   -0.1059617    0.0409923
12-15 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5     MALAWI                         0                    1                  0.0385900   -0.0446504    0.1218305
12-15 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED     PERU                           0                    1                 -0.0003046   -0.0478886    0.0472794
12-15 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED     SOUTH AFRICA                   0                    1                 -0.0022036   -0.0740684    0.0696611
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0360995   -0.0177538    0.0899528
15-18 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5     MALAWI                         0                    1                 -0.1034547   -0.1961565   -0.0107529
15-18 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED     PERU                           0                    1                 -0.0024076   -0.0838354    0.0790202
15-18 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED     SOUTH AFRICA                   0                    1                  0.0560449    0.0108967    0.1011930
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0358342   -0.0130199    0.0846884
18-21 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5     MALAWI                         0                    1                  0.0069469   -0.0359647    0.0498584
18-21 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED     PERU                           0                    1                  0.0452568    0.0057484    0.0847653
18-21 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED     SOUTH AFRICA                   0                    1                 -0.0049966   -0.0512858    0.0412926
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0024211   -0.0473999    0.0522422
21-24 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5     MALAWI                         0                    1                 -0.0122938   -0.0547736    0.0301859
21-24 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED     PERU                           0                    1                  0.0342497   -0.0239026    0.0924021
21-24 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED     SOUTH AFRICA                   0                    1                  0.0054284   -0.0445497    0.0554065
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0176198   -0.0702351    0.0349954


### Parameter: PAR


agecat         studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     JiVitA-3   BANGLADESH                     1                    NA                -0.0000855   -0.0002489   0.0000779
0-3 months     MAL-ED     PERU                           1                    NA                 0.0327497   -0.0943986   0.1598980
0-3 months     MAL-ED     SOUTH AFRICA                   1                    NA                 0.0226831   -0.1247095   0.1700757
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0051985   -0.0304209   0.0200239
3-6 months     JiVitA-3   BANGLADESH                     1                    NA                -0.0000642   -0.0002259   0.0000975
3-6 months     MAL-ED     PERU                           1                    NA                 0.0671353   -0.1097124   0.2439831
3-6 months     MAL-ED     SOUTH AFRICA                   1                    NA                -0.0236518   -0.1131822   0.0658787
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0083561   -0.0313096   0.0145974
6-9 months     LCNI-5     MALAWI                         1                    NA                 0.0010418   -0.0053064   0.0073900
6-9 months     MAL-ED     PERU                           1                    NA                 0.1024971    0.0376673   0.1673268
6-9 months     MAL-ED     SOUTH AFRICA                   1                    NA                -0.0129593   -0.0786415   0.0527230
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0046958   -0.0296930   0.0203013
9-12 months    LCNI-5     MALAWI                         1                    NA                -0.0025284   -0.0100070   0.0049502
9-12 months    MAL-ED     PERU                           1                    NA                -0.0077217   -0.0866004   0.0711570
9-12 months    MAL-ED     SOUTH AFRICA                   1                    NA                 0.0518588   -0.0057815   0.1094990
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0103721   -0.0329967   0.0122525
12-15 months   LCNI-5     MALAWI                         1                    NA                 0.0053025   -0.0075673   0.0181724
12-15 months   MAL-ED     PERU                           1                    NA                -0.0002933   -0.0461067   0.0455202
12-15 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0018815   -0.0630088   0.0592458
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0102409   -0.0068756   0.0273574
15-18 months   LCNI-5     MALAWI                         1                    NA                -0.0114636   -0.0247556   0.0018285
15-18 months   MAL-ED     PERU                           1                    NA                -0.0023136   -0.0805638   0.0759365
15-18 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.0489099    0.0102330   0.0875867
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0114581   -0.0043855   0.0273017
18-21 months   LCNI-5     MALAWI                         1                    NA                 0.0012843   -0.0061266   0.0086953
18-21 months   MAL-ED     PERU                           1                    NA                 0.0434096    0.0054929   0.0813263
18-21 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0023859   -0.0418908   0.0371189
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0017725   -0.0147113   0.0182564
21-24 months   LCNI-5     MALAWI                         1                    NA                -0.0016310   -0.0081890   0.0049270
21-24 months   MAL-ED     PERU                           1                    NA                 0.0329325   -0.0229915   0.0888564
21-24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.0045589   -0.0390020   0.0481198
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0071175   -0.0237493   0.0095144
