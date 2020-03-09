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

**Outcome Variable:** y_rate_wtkg

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
0-3 months     JiVitA-3        BANGLADESH                     1           20238   20271
0-3 months     JiVitA-3        BANGLADESH                     0              33   20271
0-3 months     JiVitA-4        BANGLADESH                     1            1793    1793
0-3 months     JiVitA-4        BANGLADESH                     0               0    1793
0-3 months     MAL-ED          BANGLADESH                     1               0     239
0-3 months     MAL-ED          BANGLADESH                     0             239     239
0-3 months     MAL-ED          BRAZIL                         1               0     142
0-3 months     MAL-ED          BRAZIL                         0             142     142
0-3 months     MAL-ED          INDIA                          1               0     232
0-3 months     MAL-ED          INDIA                          0             232     232
0-3 months     MAL-ED          NEPAL                          1               1     227
0-3 months     MAL-ED          NEPAL                          0             226     227
0-3 months     MAL-ED          PERU                           1              11     258
0-3 months     MAL-ED          PERU                           0             247     258
0-3 months     MAL-ED          SOUTH AFRICA                   1              38     251
0-3 months     MAL-ED          SOUTH AFRICA                   0             213     251
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             158     232
0-3 months     MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              74     232
0-3 months     NIH-Birth       BANGLADESH                     1             563     565
0-3 months     NIH-Birth       BANGLADESH                     0               2     565
0-3 months     NIH-Crypto      BANGLADESH                     1             725     725
0-3 months     NIH-Crypto      BANGLADESH                     0               0     725
0-3 months     PROVIDE         BANGLADESH                     1              13      13
0-3 months     PROVIDE         BANGLADESH                     0               0      13
3-6 months     CONTENT         PERU                           1              54      57
3-6 months     CONTENT         PERU                           0               3      57
3-6 months     JiVitA-3        BANGLADESH                     1           12701   12713
3-6 months     JiVitA-3        BANGLADESH                     0              12   12713
3-6 months     JiVitA-4        BANGLADESH                     1            1817    1817
3-6 months     JiVitA-4        BANGLADESH                     0               0    1817
3-6 months     MAL-ED          BANGLADESH                     1               0     233
3-6 months     MAL-ED          BANGLADESH                     0             233     233
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
3-6 months     NIH-Birth       BANGLADESH                     1             520     522
3-6 months     NIH-Birth       BANGLADESH                     0               2     522
3-6 months     NIH-Crypto      BANGLADESH                     1             702     702
3-6 months     NIH-Crypto      BANGLADESH                     0               0     702
3-6 months     PROVIDE         BANGLADESH                     1              11      11
3-6 months     PROVIDE         BANGLADESH                     0               0      11
6-9 months     CONTENT         PERU                           1              54      57
6-9 months     CONTENT         PERU                           0               3      57
6-9 months     JiVitA-4        BANGLADESH                     1            3070    3071
6-9 months     JiVitA-4        BANGLADESH                     0               1    3071
6-9 months     LCNI-5          MALAWI                         1             461     556
6-9 months     LCNI-5          MALAWI                         0              95     556
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
6-9 months     NIH-Crypto      BANGLADESH                     1             693     693
6-9 months     NIH-Crypto      BANGLADESH                     0               0     693
6-9 months     PROVIDE         BANGLADESH                     1               6       6
6-9 months     PROVIDE         BANGLADESH                     0               0       6
6-9 months     SAS-FoodSuppl   INDIA                          1             309     309
6-9 months     SAS-FoodSuppl   INDIA                          0               0     309
9-12 months    CONTENT         PERU                           1              54      57
9-12 months    CONTENT         PERU                           0               3      57
9-12 months    JiVitA-4        BANGLADESH                     1            3516    3516
9-12 months    JiVitA-4        BANGLADESH                     0               0    3516
9-12 months    LCNI-5          MALAWI                         1             317     380
9-12 months    LCNI-5          MALAWI                         0              63     380
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
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             153     223
9-12 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              70     223
9-12 months    NIH-Birth       BANGLADESH                     1             479     481
9-12 months    NIH-Birth       BANGLADESH                     0               2     481
9-12 months    NIH-Crypto      BANGLADESH                     1             683     683
9-12 months    NIH-Crypto      BANGLADESH                     0               0     683
9-12 months    PROVIDE         BANGLADESH                     1               6       6
9-12 months    PROVIDE         BANGLADESH                     0               0       6
9-12 months    SAS-FoodSuppl   INDIA                          1             298     298
9-12 months    SAS-FoodSuppl   INDIA                          0               0     298
12-15 months   CONTENT         PERU                           1              51      54
12-15 months   CONTENT         PERU                           0               3      54
12-15 months   JiVitA-4        BANGLADESH                     1            3549    3549
12-15 months   JiVitA-4        BANGLADESH                     0               0    3549
12-15 months   LCNI-5          MALAWI                         1             104     125
12-15 months   LCNI-5          MALAWI                         0              21     125
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
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             155     225
12-15 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              70     225
12-15 months   NIH-Birth       BANGLADESH                     1             459     461
12-15 months   NIH-Birth       BANGLADESH                     0               2     461
12-15 months   NIH-Crypto      BANGLADESH                     1             666     666
12-15 months   NIH-Crypto      BANGLADESH                     0               0     666
12-15 months   PROVIDE         BANGLADESH                     1               8       8
12-15 months   PROVIDE         BANGLADESH                     0               0       8
12-15 months   SAS-FoodSuppl   INDIA                          1             300     300
12-15 months   SAS-FoodSuppl   INDIA                          0               0     300
15-18 months   CONTENT         PERU                           1              45      48
15-18 months   CONTENT         PERU                           0               3      48
15-18 months   JiVitA-4        BANGLADESH                     1            3507    3508
15-18 months   JiVitA-4        BANGLADESH                     0               1    3508
15-18 months   LCNI-5          MALAWI                         1             102     118
15-18 months   LCNI-5          MALAWI                         0              16     118
15-18 months   MAL-ED          BANGLADESH                     1               0     212
15-18 months   MAL-ED          BANGLADESH                     0             212     212
15-18 months   MAL-ED          BRAZIL                         1               0     116
15-18 months   MAL-ED          BRAZIL                         0             116     116
15-18 months   MAL-ED          INDIA                          1               0     226
15-18 months   MAL-ED          INDIA                          0             226     226
15-18 months   MAL-ED          NEPAL                          1               1     225
15-18 months   MAL-ED          NEPAL                          0             224     225
15-18 months   MAL-ED          PERU                           1               8     206
15-18 months   MAL-ED          PERU                           0             198     206
15-18 months   MAL-ED          SOUTH AFRICA                   1              35     224
15-18 months   MAL-ED          SOUTH AFRICA                   0             189     224
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             150     219
15-18 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              69     219
15-18 months   NIH-Birth       BANGLADESH                     1             447     449
15-18 months   NIH-Birth       BANGLADESH                     0               2     449
15-18 months   NIH-Crypto      BANGLADESH                     1             605     605
15-18 months   NIH-Crypto      BANGLADESH                     0               0     605
15-18 months   PROVIDE         BANGLADESH                     1              10      10
15-18 months   PROVIDE         BANGLADESH                     0               0      10
15-18 months   SAS-FoodSuppl   INDIA                          1             290     290
15-18 months   SAS-FoodSuppl   INDIA                          0               0     290
18-21 months   CONTENT         PERU                           1              46      49
18-21 months   CONTENT         PERU                           0               3      49
18-21 months   LCNI-5          MALAWI                         1             369     452
18-21 months   LCNI-5          MALAWI                         0              83     452
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
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             140     207
18-21 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              67     207
18-21 months   NIH-Birth       BANGLADESH                     1             420     422
18-21 months   NIH-Birth       BANGLADESH                     0               2     422
18-21 months   NIH-Crypto      BANGLADESH                     1             547     547
18-21 months   NIH-Crypto      BANGLADESH                     0               0     547
18-21 months   PROVIDE         BANGLADESH                     1               9       9
18-21 months   PROVIDE         BANGLADESH                     0               0       9
21-24 months   CONTENT         PERU                           1               8       9
21-24 months   CONTENT         PERU                           0               1       9
21-24 months   LCNI-5          MALAWI                         1             322     382
21-24 months   LCNI-5          MALAWI                         0              60     382
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
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             140     205
21-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              65     205
21-24 months   NIH-Birth       BANGLADESH                     1             409     411
21-24 months   NIH-Birth       BANGLADESH                     0               2     411
21-24 months   NIH-Crypto      BANGLADESH                     1             493     493
21-24 months   NIH-Crypto      BANGLADESH                     0               0     493
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
![](/tmp/eac9b792-a5cf-491f-a0d1-eb3a00a04904/4ac65f92-7ba5-4bec-b08f-45c6499c4736/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/eac9b792-a5cf-491f-a0d1-eb3a00a04904/4ac65f92-7ba5-4bec-b08f-45c6499c4736/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/eac9b792-a5cf-491f-a0d1-eb3a00a04904/4ac65f92-7ba5-4bec-b08f-45c6499c4736/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     JiVitA-3   BANGLADESH                     1                    NA                0.8711242    0.8679701   0.8742783
0-3 months     JiVitA-3   BANGLADESH                     0                    NA                0.8307665    0.8265188   0.8350142
0-3 months     MAL-ED     PERU                           1                    NA                0.9818306    0.8666402   1.0970211
0-3 months     MAL-ED     PERU                           0                    NA                0.9741548    0.9467304   1.0015792
0-3 months     MAL-ED     SOUTH AFRICA                   1                    NA                0.9866627    0.9014455   1.0718799
0-3 months     MAL-ED     SOUTH AFRICA                   0                    NA                0.9361772    0.9066173   0.9657370
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9004045    0.8647180   0.9360910
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8560800    0.7939443   0.9182157
3-6 months     JiVitA-3   BANGLADESH                     1                    NA                0.4413843    0.4383462   0.4444224
3-6 months     JiVitA-3   BANGLADESH                     0                    NA                0.4518510    0.4490952   0.4546067
3-6 months     MAL-ED     PERU                           1                    NA                0.4730516    0.3939259   0.5521774
3-6 months     MAL-ED     PERU                           0                    NA                0.4961399    0.4760510   0.5162288
3-6 months     MAL-ED     SOUTH AFRICA                   1                    NA                0.4324930    0.3446667   0.5203193
3-6 months     MAL-ED     SOUTH AFRICA                   0                    NA                0.4732494    0.4462793   0.5002195
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4736931    0.4431263   0.5042599
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4216847    0.3830308   0.4603387
6-9 months     LCNI-5     MALAWI                         1                    NA                0.2872572    0.2733621   0.3011523
6-9 months     LCNI-5     MALAWI                         0                    NA                0.2733501    0.2430537   0.3036465
6-9 months     MAL-ED     PERU                           1                    NA                0.2062279    0.1669678   0.2454881
6-9 months     MAL-ED     PERU                           0                    NA                0.2616363    0.2453301   0.2779426
6-9 months     MAL-ED     SOUTH AFRICA                   1                    NA                0.2266034    0.1776200   0.2755868
6-9 months     MAL-ED     SOUTH AFRICA                   0                    NA                0.2664697    0.2431120   0.2898274
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2262196    0.1952433   0.2571960
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2638853    0.2243620   0.3034086
9-12 months    LCNI-5     MALAWI                         1                    NA                0.2019938    0.1844158   0.2195717
9-12 months    LCNI-5     MALAWI                         0                    NA                0.2043665    0.1648098   0.2439231
9-12 months    MAL-ED     PERU                           1                    NA                0.1723232    0.1222520   0.2223945
9-12 months    MAL-ED     PERU                           0                    NA                0.1879670    0.1717185   0.2042154
9-12 months    MAL-ED     SOUTH AFRICA                   1                    NA                0.1881115    0.1392386   0.2369844
9-12 months    MAL-ED     SOUTH AFRICA                   0                    NA                0.2199725    0.1950767   0.2448683
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1679438    0.1434831   0.1924045
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1622713    0.1257105   0.1988321
12-15 months   LCNI-5     MALAWI                         1                    NA                0.1546965    0.1168796   0.1925133
12-15 months   LCNI-5     MALAWI                         0                    NA                0.1372551    0.0640811   0.2104290
12-15 months   MAL-ED     PERU                           1                    NA                0.2334736    0.1667517   0.3001954
12-15 months   MAL-ED     PERU                           0                    NA                0.1379933    0.1206783   0.1553083
12-15 months   MAL-ED     SOUTH AFRICA                   1                    NA                0.1916901    0.1388132   0.2445670
12-15 months   MAL-ED     SOUTH AFRICA                   0                    NA                0.1861021    0.1576919   0.2145123
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1497014    0.1194844   0.1799184
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1743729    0.1317306   0.2170152
15-18 months   LCNI-5     MALAWI                         1                    NA                0.1703468    0.1351473   0.2055463
15-18 months   LCNI-5     MALAWI                         0                    NA                0.1797428    0.1222728   0.2372127
15-18 months   MAL-ED     PERU                           1                    NA                0.1874214    0.1072172   0.2676256
15-18 months   MAL-ED     PERU                           0                    NA                0.1415552    0.1218013   0.1613092
15-18 months   MAL-ED     SOUTH AFRICA                   1                    NA                0.1823657    0.1094235   0.2553080
15-18 months   MAL-ED     SOUTH AFRICA                   0                    NA                0.2304125    0.1991442   0.2616808
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1379157    0.1124870   0.1633444
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1695967    0.1217560   0.2174373
18-21 months   LCNI-5     MALAWI                         1                    NA                0.1778211    0.1553529   0.2002892
18-21 months   LCNI-5     MALAWI                         0                    NA                0.2031374    0.1564664   0.2498084
18-21 months   MAL-ED     PERU                           1                    NA                0.0653975   -0.0157629   0.1465580
18-21 months   MAL-ED     PERU                           0                    NA                0.1660201    0.1463857   0.1856545
18-21 months   MAL-ED     SOUTH AFRICA                   1                    NA                0.1965828    0.1461319   0.2470336
18-21 months   MAL-ED     SOUTH AFRICA                   0                    NA                0.1718572    0.1417607   0.2019538
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1449110    0.1152838   0.1745383
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1259791    0.0821091   0.1698490
21-24 months   LCNI-5     MALAWI                         1                    NA                0.1848403    0.1555292   0.2141514
21-24 months   LCNI-5     MALAWI                         0                    NA                0.1408551    0.0720303   0.2096798
21-24 months   MAL-ED     PERU                           1                    NA                0.1869388    0.0820127   0.2918650
21-24 months   MAL-ED     PERU                           0                    NA                0.1795172    0.1591318   0.1999026
21-24 months   MAL-ED     SOUTH AFRICA                   1                    NA                0.1878003    0.1286310   0.2469695
21-24 months   MAL-ED     SOUTH AFRICA                   0                    NA                0.1878737    0.1616211   0.2141264
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1301797    0.0965621   0.1637973
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1486866    0.0974436   0.1999296


### Parameter: E(Y)


agecat         studyid    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     JiVitA-3   BANGLADESH                     NA                   NA                0.8710534   0.8679738   0.8741329
0-3 months     MAL-ED     PERU                           NA                   NA                0.9748614   0.9482620   1.0014607
0-3 months     MAL-ED     SOUTH AFRICA                   NA                   NA                0.9415988   0.9136365   0.9695612
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8861087   0.8555112   0.9167061
3-6 months     JiVitA-3   BANGLADESH                     NA                   NA                0.4413913   0.4384220   0.4443605
3-6 months     MAL-ED     PERU                           NA                   NA                0.4948529   0.4753805   0.5143254
3-6 months     MAL-ED     SOUTH AFRICA                   NA                   NA                0.4668837   0.4408277   0.4929397
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4566833   0.4325348   0.4808318
6-9 months     LCNI-5     MALAWI                         NA                   NA                0.2849079   0.2723110   0.2975048
6-9 months     MAL-ED     PERU                           NA                   NA                0.2593318   0.2435782   0.2750853
6-9 months     MAL-ED     SOUTH AFRICA                   NA                   NA                0.2596104   0.2384684   0.2807524
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2377801   0.2136152   0.2619451
9-12 months    LCNI-5     MALAWI                         NA                   NA                0.2022567   0.1863082   0.2182053
9-12 months    MAL-ED     PERU                           NA                   NA                0.1873440   0.1716106   0.2030773
9-12 months    MAL-ED     SOUTH AFRICA                   NA                   NA                0.2153147   0.1931793   0.2374501
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1670684   0.1467422   0.1873945
12-15 months   LCNI-5     MALAWI                         NA                   NA                0.1518822   0.1181702   0.1855942
12-15 months   MAL-ED     PERU                           NA                   NA                0.1415461   0.1245184   0.1585737
12-15 months   MAL-ED     SOUTH AFRICA                   NA                   NA                0.1879898   0.1627929   0.2131868
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1591083   0.1343053   0.1839113
15-18 months   LCNI-5     MALAWI                         NA                   NA                0.1738706   0.1423337   0.2054074
15-18 months   MAL-ED     PERU                           NA                   NA                0.1433364   0.1240576   0.1626152
15-18 months   MAL-ED     SOUTH AFRICA                   NA                   NA                0.2227120   0.1942678   0.2511562
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1449507   0.1222652   0.1676362
18-21 months   LCNI-5     MALAWI                         NA                   NA                0.1818489   0.1616805   0.2020172
18-21 months   MAL-ED     PERU                           NA                   NA                0.1619131   0.1425878   0.1812383
18-21 months   MAL-ED     SOUTH AFRICA                   NA                   NA                0.1755205   0.1490254   0.2020155
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1434559   0.1191029   0.1678089
21-24 months   LCNI-5     MALAWI                         NA                   NA                0.1789517   0.1520986   0.2058049
21-24 months   MAL-ED     PERU                           NA                   NA                0.1798026   0.1597891   0.1998162
21-24 months   MAL-ED     SOUTH AFRICA                   NA                   NA                0.1878453   0.1639966   0.2116939
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1402078   0.1124924   0.1679233


### Parameter: ATE


agecat         studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3   BANGLADESH                     0                    1                 -0.0403576   -0.0455956   -0.0351197
0-3 months     MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED     PERU                           0                    1                 -0.0076759   -0.1261507    0.1107990
0-3 months     MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED     SOUTH AFRICA                   0                    1                 -0.0504855   -0.1407402    0.0397692
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0443245   -0.1160504    0.0274013
3-6 months     JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3   BANGLADESH                     0                    1                  0.0104667    0.0065526    0.0143808
3-6 months     MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED     PERU                           0                    1                  0.0230883   -0.0587010    0.1048775
3-6 months     MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED     SOUTH AFRICA                   0                    1                  0.0407564   -0.0514493    0.1329620
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0520084   -0.1016568   -0.0023600
6-9 months     LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5     MALAWI                         0                    1                 -0.0139071   -0.0472979    0.0194837
6-9 months     MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED     PERU                           0                    1                  0.0554084    0.0129909    0.0978258
6-9 months     MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED     SOUTH AFRICA                   0                    1                  0.0398663   -0.0144536    0.0941863
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0376657   -0.0127082    0.0880396
9-12 months    LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5     MALAWI                         0                    1                  0.0023727   -0.0409066    0.0456521
9-12 months    MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED     PERU                           0                    1                  0.0156437   -0.0369979    0.0682854
9-12 months    MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED     SOUTH AFRICA                   0                    1                  0.0318610   -0.0230586    0.0867806
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0056725   -0.0496026    0.0382576
12-15 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5     MALAWI                         0                    1                 -0.0174414   -0.0996313    0.0647485
12-15 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED     PERU                           0                    1                 -0.0954802   -0.1644122   -0.0265483
12-15 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED     SOUTH AFRICA                   0                    1                 -0.0055880   -0.0658178    0.0546419
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0246715   -0.0278040    0.0771470
15-18 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5     MALAWI                         0                    1                  0.0093959   -0.0578984    0.0766902
15-18 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED     PERU                           0                    1                 -0.0458662   -0.1284672    0.0367349
15-18 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED     SOUTH AFRICA                   0                    1                  0.0480468   -0.0310814    0.1271749
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0316810   -0.0222468    0.0856088
18-21 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5     MALAWI                         0                    1                  0.0253164   -0.0266112    0.0772439
18-21 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED     PERU                           0                    1                  0.1006226    0.0171209    0.1841242
18-21 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED     SOUTH AFRICA                   0                    1                 -0.0247255   -0.0835132    0.0340621
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0189320   -0.0721822    0.0343183
21-24 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5     MALAWI                         0                    1                 -0.0439852   -0.1188277    0.0308572
21-24 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED     PERU                           0                    1                 -0.0074216   -0.1143097    0.0994665
21-24 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED     SOUTH AFRICA                   0                    1                  0.0000735   -0.0645990    0.0647460
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0185070   -0.0432369    0.0802508


### Parameter: PAR


agecat         studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     JiVitA-3   BANGLADESH                     1                    NA                -0.0000708   -0.0002032    0.0000617
0-3 months     MAL-ED     PERU                           1                    NA                -0.0069693   -0.1214282    0.1074896
0-3 months     MAL-ED     SOUTH AFRICA                   1                    NA                -0.0450638   -0.1223086    0.0321809
0-3 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0142959   -0.0363149    0.0077232
3-6 months     JiVitA-3   BANGLADESH                     1                    NA                 0.0000070   -0.0000915    0.0001056
3-6 months     MAL-ED     PERU                           1                    NA                 0.0218013   -0.0570042    0.1006068
3-6 months     MAL-ED     SOUTH AFRICA                   1                    NA                 0.0343907   -0.0448705    0.1136519
3-6 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0170098   -0.0331642   -0.0008554
6-9 months     LCNI-5     MALAWI                         1                    NA                -0.0023493   -0.0079420    0.0032434
6-9 months     MAL-ED     PERU                           1                    NA                 0.0531038    0.0120695    0.0941381
6-9 months     MAL-ED     SOUTH AFRICA                   1                    NA                 0.0330070   -0.0130272    0.0790412
6-9 months     MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0115605   -0.0042452    0.0273662
9-12 months    LCNI-5     MALAWI                         1                    NA                 0.0002630   -0.0066586    0.0071845
9-12 months    MAL-ED     PERU                           1                    NA                 0.0150207   -0.0355261    0.0655676
9-12 months    MAL-ED     SOUTH AFRICA                   1                    NA                 0.0272031   -0.0194450    0.0738513
9-12 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0008755   -0.0146720    0.0129211
12-15 months   LCNI-5     MALAWI                         1                    NA                -0.0028143   -0.0161781    0.0105496
12-15 months   MAL-ED     PERU                           1                    NA                -0.0919275   -0.1583387   -0.0255163
12-15 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0037003   -0.0546347    0.0472342
12-15 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0094069   -0.0073626    0.0261763
15-18 months   LCNI-5     MALAWI                         1                    NA                 0.0035237   -0.0062777    0.0133252
15-18 months   MAL-ED     PERU                           1                    NA                -0.0440850   -0.1234875    0.0353175
15-18 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.0403463   -0.0275490    0.1082415
15-18 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0070350   -0.0094420    0.0235121
18-21 months   LCNI-5     MALAWI                         1                    NA                 0.0040278   -0.0054763    0.0135319
18-21 months   MAL-ED     PERU                           1                    NA                 0.0965155    0.0163734    0.1766577
18-21 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0210623   -0.0713656    0.0292410
18-21 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0014551   -0.0184924    0.0155822
21-24 months   LCNI-5     MALAWI                         1                    NA                -0.0058885   -0.0174595    0.0056824
21-24 months   MAL-ED     PERU                           1                    NA                -0.0071362   -0.1099134    0.0956410
21-24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.0000450   -0.0556817    0.0557717
21-24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0100281   -0.0096617    0.0297180
