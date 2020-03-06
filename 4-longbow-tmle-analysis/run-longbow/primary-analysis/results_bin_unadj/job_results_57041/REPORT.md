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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid      country                        impsan    ever_wasted   n_cell      n
----------------------------  -----------  -----------------------------  -------  ------------  -------  -----
0-24 months (no birth wast)   COHORTS      GUATEMALA                      1                   0       73    870
0-24 months (no birth wast)   COHORTS      GUATEMALA                      1                   1        8    870
0-24 months (no birth wast)   COHORTS      GUATEMALA                      0                   0      666    870
0-24 months (no birth wast)   COHORTS      GUATEMALA                      0                   1      123    870
0-24 months (no birth wast)   COHORTS      INDIA                          1                   0     1675   5168
0-24 months (no birth wast)   COHORTS      INDIA                          1                   1      291   5168
0-24 months (no birth wast)   COHORTS      INDIA                          0                   0     2500   5168
0-24 months (no birth wast)   COHORTS      INDIA                          0                   1      702   5168
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    1                   0      142   1185
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    1                   1       37   1185
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    0                   0      661   1185
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    0                   1      345   1185
0-24 months (no birth wast)   CONTENT      PERU                           1                   0      197    215
0-24 months (no birth wast)   CONTENT      PERU                           1                   1        4    215
0-24 months (no birth wast)   CONTENT      PERU                           0                   0       14    215
0-24 months (no birth wast)   CONTENT      PERU                           0                   1        0    215
0-24 months (no birth wast)   LCNI-5       MALAWI                         1                   0        3    810
0-24 months (no birth wast)   LCNI-5       MALAWI                         1                   1        0    810
0-24 months (no birth wast)   LCNI-5       MALAWI                         0                   0      753    810
0-24 months (no birth wast)   LCNI-5       MALAWI                         0                   1       54    810
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     1                   0      157    242
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     1                   1       47    242
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     0                   0       28    242
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     0                   1       10    242
0-24 months (no birth wast)   MAL-ED       BRAZIL                         1                   0      193    210
0-24 months (no birth wast)   MAL-ED       BRAZIL                         1                   1       13    210
0-24 months (no birth wast)   MAL-ED       BRAZIL                         0                   0        4    210
0-24 months (no birth wast)   MAL-ED       BRAZIL                         0                   1        0    210
0-24 months (no birth wast)   MAL-ED       INDIA                          1                   0       74    229
0-24 months (no birth wast)   MAL-ED       INDIA                          1                   1       31    229
0-24 months (no birth wast)   MAL-ED       INDIA                          0                   0       69    229
0-24 months (no birth wast)   MAL-ED       INDIA                          0                   1       55    229
0-24 months (no birth wast)   MAL-ED       NEPAL                          1                   0      189    236
0-24 months (no birth wast)   MAL-ED       NEPAL                          1                   1       46    236
0-24 months (no birth wast)   MAL-ED       NEPAL                          0                   0        1    236
0-24 months (no birth wast)   MAL-ED       NEPAL                          0                   1        0    236
0-24 months (no birth wast)   MAL-ED       PERU                           1                   0       59    263
0-24 months (no birth wast)   MAL-ED       PERU                           1                   1        6    263
0-24 months (no birth wast)   MAL-ED       PERU                           0                   0      183    263
0-24 months (no birth wast)   MAL-ED       PERU                           0                   1       15    263
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   1                   0        3    250
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   1                   1        1    250
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   0                   0      203    250
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   0                   1       43    250
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0    241
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0    241
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      208    241
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       33    241
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     1                   0      180    602
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     1                   1       53    602
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     0                   0      244    602
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     0                   1      125    602
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     1                   0      560    743
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     1                   1       91    743
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     0                   0       77    743
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     0                   1       15    743
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     1                   0       47     52
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     1                   1        3     52
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     0                   0        2     52
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     0                   1        0     52
0-6 months (no birth wast)    COHORTS      GUATEMALA                      1                   0       67    650
0-6 months (no birth wast)    COHORTS      GUATEMALA                      1                   1        0    650
0-6 months (no birth wast)    COHORTS      GUATEMALA                      0                   0      571    650
0-6 months (no birth wast)    COHORTS      GUATEMALA                      0                   1       12    650
0-6 months (no birth wast)    COHORTS      INDIA                          1                   0     1651   4723
0-6 months (no birth wast)    COHORTS      INDIA                          1                   1      131   4723
0-6 months (no birth wast)    COHORTS      INDIA                          0                   0     2687   4723
0-6 months (no birth wast)    COHORTS      INDIA                          0                   1      254   4723
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    1                   0      162   1180
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    1                   1       17   1180
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    0                   0      911   1180
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    0                   1       90   1180
0-6 months (no birth wast)    CONTENT      PERU                           1                   0      198    215
0-6 months (no birth wast)    CONTENT      PERU                           1                   1        3    215
0-6 months (no birth wast)    CONTENT      PERU                           0                   0       14    215
0-6 months (no birth wast)    CONTENT      PERU                           0                   1        0    215
0-6 months (no birth wast)    LCNI-5       MALAWI                         1                   0        0    265
0-6 months (no birth wast)    LCNI-5       MALAWI                         1                   1        0    265
0-6 months (no birth wast)    LCNI-5       MALAWI                         0                   0      265    265
0-6 months (no birth wast)    LCNI-5       MALAWI                         0                   1        0    265
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     1                   0      188    241
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     1                   1       15    241
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     0                   0       35    241
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     0                   1        3    241
0-6 months (no birth wast)    MAL-ED       BRAZIL                         1                   0      198    210
0-6 months (no birth wast)    MAL-ED       BRAZIL                         1                   1        8    210
0-6 months (no birth wast)    MAL-ED       BRAZIL                         0                   0        4    210
0-6 months (no birth wast)    MAL-ED       BRAZIL                         0                   1        0    210
0-6 months (no birth wast)    MAL-ED       INDIA                          1                   0       89    227
0-6 months (no birth wast)    MAL-ED       INDIA                          1                   1       15    227
0-6 months (no birth wast)    MAL-ED       INDIA                          0                   0      102    227
0-6 months (no birth wast)    MAL-ED       INDIA                          0                   1       21    227
0-6 months (no birth wast)    MAL-ED       NEPAL                          1                   0      217    234
0-6 months (no birth wast)    MAL-ED       NEPAL                          1                   1       16    234
0-6 months (no birth wast)    MAL-ED       NEPAL                          0                   0        1    234
0-6 months (no birth wast)    MAL-ED       NEPAL                          0                   1        0    234
0-6 months (no birth wast)    MAL-ED       PERU                           1                   0       64    263
0-6 months (no birth wast)    MAL-ED       PERU                           1                   1        1    263
0-6 months (no birth wast)    MAL-ED       PERU                           0                   0      194    263
0-6 months (no birth wast)    MAL-ED       PERU                           0                   1        4    263
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   1                   0        4    249
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   1                   1        0    249
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   0                   0      232    249
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   0                   1       13    249
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0    241
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0    241
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      231    241
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       10    241
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     1                   0      213    584
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     1                   1       14    584
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     0                   0      325    584
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     0                   1       32    584
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     1                   0      631    738
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     1                   1       16    738
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     0                   0       87    738
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     0                   1        4    738
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     1                   0       48     52
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     1                   1        2     52
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     0                   0        2     52
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     0                   1        0     52
6-24 months                   COHORTS      GUATEMALA                      1                   0       71    858
6-24 months                   COHORTS      GUATEMALA                      1                   1        9    858
6-24 months                   COHORTS      GUATEMALA                      0                   0      660    858
6-24 months                   COHORTS      GUATEMALA                      0                   1      118    858
6-24 months                   COHORTS      INDIA                          1                   0     1727   5025
6-24 months                   COHORTS      INDIA                          1                   1      176   5025
6-24 months                   COHORTS      INDIA                          0                   0     2637   5025
6-24 months                   COHORTS      INDIA                          0                   1      485   5025
6-24 months                   COHORTS      PHILIPPINES                    1                   0      123   1113
6-24 months                   COHORTS      PHILIPPINES                    1                   1       24   1113
6-24 months                   COHORTS      PHILIPPINES                    0                   0      669   1113
6-24 months                   COHORTS      PHILIPPINES                    0                   1      297   1113
6-24 months                   CONTENT      PERU                           1                   0      199    215
6-24 months                   CONTENT      PERU                           1                   1        2    215
6-24 months                   CONTENT      PERU                           0                   0       14    215
6-24 months                   CONTENT      PERU                           0                   1        0    215
6-24 months                   LCNI-5       MALAWI                         1                   0        3    801
6-24 months                   LCNI-5       MALAWI                         1                   1        0    801
6-24 months                   LCNI-5       MALAWI                         0                   0      736    801
6-24 months                   LCNI-5       MALAWI                         0                   1       62    801
6-24 months                   MAL-ED       BANGLADESH                     1                   0      167    240
6-24 months                   MAL-ED       BANGLADESH                     1                   1       35    240
6-24 months                   MAL-ED       BANGLADESH                     0                   0       30    240
6-24 months                   MAL-ED       BANGLADESH                     0                   1        8    240
6-24 months                   MAL-ED       BRAZIL                         1                   0      197    207
6-24 months                   MAL-ED       BRAZIL                         1                   1        6    207
6-24 months                   MAL-ED       BRAZIL                         0                   0        4    207
6-24 months                   MAL-ED       BRAZIL                         0                   1        0    207
6-24 months                   MAL-ED       INDIA                          1                   0       87    233
6-24 months                   MAL-ED       INDIA                          1                   1       21    233
6-24 months                   MAL-ED       INDIA                          0                   0       84    233
6-24 months                   MAL-ED       INDIA                          0                   1       41    233
6-24 months                   MAL-ED       NEPAL                          1                   0      198    235
6-24 months                   MAL-ED       NEPAL                          1                   1       36    235
6-24 months                   MAL-ED       NEPAL                          0                   0        1    235
6-24 months                   MAL-ED       NEPAL                          0                   1        0    235
6-24 months                   MAL-ED       PERU                           1                   0       60    263
6-24 months                   MAL-ED       PERU                           1                   1        5    263
6-24 months                   MAL-ED       PERU                           0                   0      185    263
6-24 months                   MAL-ED       PERU                           0                   1       13    263
6-24 months                   MAL-ED       SOUTH AFRICA                   1                   0        3    250
6-24 months                   MAL-ED       SOUTH AFRICA                   1                   1        1    250
6-24 months                   MAL-ED       SOUTH AFRICA                   0                   0      210    250
6-24 months                   MAL-ED       SOUTH AFRICA                   0                   1       36    250
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0    237
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0    237
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      210    237
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       27    237
6-24 months                   NIH-Birth    BANGLADESH                     1                   0      159    542
6-24 months                   NIH-Birth    BANGLADESH                     1                   1       49    542
6-24 months                   NIH-Birth    BANGLADESH                     0                   0      224    542
6-24 months                   NIH-Birth    BANGLADESH                     0                   1      110    542
6-24 months                   NIH-Crypto   BANGLADESH                     1                   0      550    719
6-24 months                   NIH-Crypto   BANGLADESH                     1                   1       80    719
6-24 months                   NIH-Crypto   BANGLADESH                     0                   0       75    719
6-24 months                   NIH-Crypto   BANGLADESH                     0                   1       14    719
6-24 months                   PROVIDE      BANGLADESH                     1                   0        9     10
6-24 months                   PROVIDE      BANGLADESH                     1                   1        1     10
6-24 months                   PROVIDE      BANGLADESH                     0                   0        0     10
6-24 months                   PROVIDE      BANGLADESH                     0                   1        0     10


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/1b0d86c1-311c-4448-a74d-f2d53aab6329/4b4195a9-2386-4992-a427-fd16875ae88f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1b0d86c1-311c-4448-a74d-f2d53aab6329/4b4195a9-2386-4992-a427-fd16875ae88f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1b0d86c1-311c-4448-a74d-f2d53aab6329/4b4195a9-2386-4992-a427-fd16875ae88f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1b0d86c1-311c-4448-a74d-f2d53aab6329/4b4195a9-2386-4992-a427-fd16875ae88f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS      GUATEMALA     1                    NA                0.0987654   0.0337559   0.1637749
0-24 months (no birth wast)   COHORTS      GUATEMALA     0                    NA                0.1558935   0.1305672   0.1812199
0-24 months (no birth wast)   COHORTS      INDIA         1                    NA                0.1480163   0.1323174   0.1637152
0-24 months (no birth wast)   COHORTS      INDIA         0                    NA                0.2192380   0.2049063   0.2335696
0-24 months (no birth wast)   COHORTS      PHILIPPINES   1                    NA                0.2067039   0.1473572   0.2660507
0-24 months (no birth wast)   COHORTS      PHILIPPINES   0                    NA                0.3429423   0.3135966   0.3722881
0-24 months (no birth wast)   MAL-ED       BANGLADESH    1                    NA                0.2303922   0.1724892   0.2882951
0-24 months (no birth wast)   MAL-ED       BANGLADESH    0                    NA                0.2631579   0.1228601   0.4034557
0-24 months (no birth wast)   MAL-ED       INDIA         1                    NA                0.2952381   0.2077979   0.3826783
0-24 months (no birth wast)   MAL-ED       INDIA         0                    NA                0.4435484   0.3559146   0.5311822
0-24 months (no birth wast)   MAL-ED       PERU          1                    NA                0.0923077   0.0218048   0.1628106
0-24 months (no birth wast)   MAL-ED       PERU          0                    NA                0.0757576   0.0388302   0.1126850
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    1                    NA                0.2274678   0.1735975   0.2813381
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    0                    NA                0.3387534   0.2904231   0.3870837
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    1                    NA                0.1397849   0.1131296   0.1664403
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    0                    NA                0.1630435   0.0875082   0.2385788
0-6 months (no birth wast)    COHORTS      INDIA         1                    NA                0.0735129   0.0613946   0.0856312
0-6 months (no birth wast)    COHORTS      INDIA         0                    NA                0.0863652   0.0762120   0.0965184
0-6 months (no birth wast)    COHORTS      PHILIPPINES   1                    NA                0.0949721   0.0520051   0.1379390
0-6 months (no birth wast)    COHORTS      PHILIPPINES   0                    NA                0.0899101   0.0721820   0.1076382
0-6 months (no birth wast)    MAL-ED       INDIA         1                    NA                0.1442308   0.0765606   0.2119010
0-6 months (no birth wast)    MAL-ED       INDIA         0                    NA                0.1707317   0.1040880   0.2373754
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    1                    NA                0.0616740   0.0303530   0.0929950
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    0                    NA                0.0896359   0.0599784   0.1192934
6-24 months                   COHORTS      GUATEMALA     1                    NA                0.1125000   0.0432186   0.1817814
6-24 months                   COHORTS      GUATEMALA     0                    NA                0.1516710   0.1264510   0.1768909
6-24 months                   COHORTS      INDIA         1                    NA                0.0924855   0.0794678   0.1055033
6-24 months                   COHORTS      INDIA         0                    NA                0.1553491   0.1426414   0.1680569
6-24 months                   COHORTS      PHILIPPINES   1                    NA                0.1632653   0.1034895   0.2230411
6-24 months                   COHORTS      PHILIPPINES   0                    NA                0.3074534   0.2783416   0.3365652
6-24 months                   MAL-ED       BANGLADESH    1                    NA                0.1732673   0.1209651   0.2255695
6-24 months                   MAL-ED       BANGLADESH    0                    NA                0.2105263   0.0806335   0.3404191
6-24 months                   MAL-ED       INDIA         1                    NA                0.1944444   0.1196420   0.2692469
6-24 months                   MAL-ED       INDIA         0                    NA                0.3280000   0.2455200   0.4104800
6-24 months                   MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
6-24 months                   MAL-ED       PERU          0                    NA                0.0656566   0.0310917   0.1002214
6-24 months                   NIH-Birth    BANGLADESH    1                    NA                0.2355769   0.1778537   0.2933002
6-24 months                   NIH-Birth    BANGLADESH    0                    NA                0.3293413   0.2788926   0.3797900
6-24 months                   NIH-Crypto   BANGLADESH    1                    NA                0.1269841   0.1009666   0.1530016
6-24 months                   NIH-Crypto   BANGLADESH    0                    NA                0.1573034   0.0816096   0.2329971


### Parameter: E(Y)


agecat                        studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS      GUATEMALA     NA                   NA                0.1505747   0.1267966   0.1743528
0-24 months (no birth wast)   COHORTS      INDIA         NA                   NA                0.1921440   0.1814014   0.2028866
0-24 months (no birth wast)   COHORTS      PHILIPPINES   NA                   NA                0.3223629   0.2957407   0.3489850
0-24 months (no birth wast)   MAL-ED       BANGLADESH    NA                   NA                0.2355372   0.1819640   0.2891104
0-24 months (no birth wast)   MAL-ED       INDIA         NA                   NA                0.3755459   0.3126876   0.4384041
0-24 months (no birth wast)   MAL-ED       PERU          NA                   NA                0.0798479   0.0470264   0.1126695
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    NA                   NA                0.2956811   0.2591967   0.3321655
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    NA                   NA                0.1426649   0.1175009   0.1678289
0-6 months (no birth wast)    COHORTS      INDIA         NA                   NA                0.0815160   0.0737115   0.0893204
0-6 months (no birth wast)    COHORTS      PHILIPPINES   NA                   NA                0.0906780   0.0742871   0.1070688
0-6 months (no birth wast)    MAL-ED       INDIA         NA                   NA                0.1585903   0.1109652   0.2062154
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    NA                   NA                0.0787671   0.0569010   0.1006332
6-24 months                   COHORTS      GUATEMALA     NA                   NA                0.1480186   0.1242431   0.1717942
6-24 months                   COHORTS      INDIA         NA                   NA                0.1315423   0.1221962   0.1408884
6-24 months                   COHORTS      PHILIPPINES   NA                   NA                0.2884097   0.2617831   0.3150363
6-24 months                   MAL-ED       BANGLADESH    NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months                   MAL-ED       INDIA         NA                   NA                0.2660944   0.2092298   0.3229590
6-24 months                   MAL-ED       PERU          NA                   NA                0.0684411   0.0378665   0.0990157
6-24 months                   NIH-Birth    BANGLADESH    NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months                   NIH-Crypto   BANGLADESH    NA                   NA                0.1307371   0.1060790   0.1553953


### Parameter: RR


agecat                        studyid      country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS      GUATEMALA     0                    1                 1.5784221   0.8012777   3.109304
0-24 months (no birth wast)   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS      INDIA         0                    1                 1.4811748   1.3076696   1.677701
0-24 months (no birth wast)   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS      PHILIPPINES   0                    1                 1.6590995   1.2295947   2.238633
0-24 months (no birth wast)   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED       BANGLADESH    0                    1                 1.1422172   0.6335419   2.059312
0-24 months (no birth wast)   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED       INDIA         0                    1                 1.5023413   1.0523262   2.144800
0-24 months (no birth wast)   MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED       PERU          0                    1                 0.8207071   0.3316556   2.030902
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    0                    1                 1.4892366   1.1295089   1.963531
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    0                    1                 1.1663880   0.7067486   1.924957
0-6 months (no birth wast)    COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS      INDIA         0                    1                 1.1748302   0.9594951   1.438492
0-6 months (no birth wast)    COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS      PHILIPPINES   0                    1                 0.9467004   0.5779374   1.550759
0-6 months (no birth wast)    MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED       INDIA         0                    1                 1.1837398   0.6429772   2.179300
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    0                    1                 1.4533814   0.7927660   2.664490
6-24 months                   COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   COHORTS      GUATEMALA     0                    1                 1.3481862   0.7123909   2.551417
6-24 months                   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   COHORTS      INDIA         0                    1                 1.6797125   1.4273572   1.976684
6-24 months                   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   COHORTS      PHILIPPINES   0                    1                 1.8831522   1.2901707   2.748677
6-24 months                   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED       BANGLADESH    0                    1                 1.2150376   0.6113418   2.414879
6-24 months                   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED       INDIA         0                    1                 1.6868571   1.0653179   2.671022
6-24 months                   MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED       PERU          0                    1                 0.8535354   0.3157269   2.307445
6-24 months                   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   NIH-Birth    BANGLADESH    0                    1                 1.3980203   1.0471658   1.866429
6-24 months                   NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   NIH-Crypto   BANGLADESH    0                    1                 1.2387640   0.7342649   2.089895


### Parameter: PAR


agecat                        studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS      GUATEMALA     1                    NA                 0.0518093   -0.0114732   0.1150918
0-24 months (no birth wast)   COHORTS      INDIA         1                    NA                 0.0441277    0.0309237   0.0573317
0-24 months (no birth wast)   COHORTS      PHILIPPINES   1                    NA                 0.1156590    0.0593852   0.1719327
0-24 months (no birth wast)   MAL-ED       BANGLADESH    1                    NA                 0.0051450   -0.0187352   0.0290252
0-24 months (no birth wast)   MAL-ED       INDIA         1                    NA                 0.0803078    0.0125912   0.1480243
0-24 months (no birth wast)   MAL-ED       PERU          1                    NA                -0.0124598   -0.0723842   0.0474646
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    1                    NA                 0.0682133    0.0236407   0.1127858
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    1                    NA                 0.0028799   -0.0070536   0.0128135
0-6 months (no birth wast)    COHORTS      INDIA         1                    NA                 0.0080031   -0.0018431   0.0178492
0-6 months (no birth wast)    COHORTS      PHILIPPINES   1                    NA                -0.0042941   -0.0437239   0.0351357
0-6 months (no birth wast)    MAL-ED       INDIA         1                    NA                 0.0143595   -0.0371326   0.0658516
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    1                    NA                 0.0170931   -0.0092982   0.0434844
6-24 months                   COHORTS      GUATEMALA     1                    NA                 0.0355186   -0.0313402   0.1023775
6-24 months                   COHORTS      INDIA         1                    NA                 0.0390567    0.0277228   0.0503907
6-24 months                   COHORTS      PHILIPPINES   1                    NA                 0.1251444    0.0673666   0.1829222
6-24 months                   MAL-ED       BANGLADESH    1                    NA                 0.0058993   -0.0163386   0.0281373
6-24 months                   MAL-ED       INDIA         1                    NA                 0.0716500    0.0113024   0.1319976
6-24 months                   MAL-ED       PERU          1                    NA                -0.0084820   -0.0638448   0.0468808
6-24 months                   NIH-Birth    BANGLADESH    1                    NA                 0.0577810    0.0103832   0.1051788
6-24 months                   NIH-Crypto   BANGLADESH    1                    NA                 0.0037530   -0.0061815   0.0136875


### Parameter: PAF


agecat                        studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS      GUATEMALA     1                    NA                 0.3440769   -0.2397390   0.6529632
0-24 months (no birth wast)   COHORTS      INDIA         1                    NA                 0.2296595    0.1586168   0.2947036
0-24 months (no birth wast)   COHORTS      PHILIPPINES   1                    NA                 0.3587850    0.1594347   0.5108569
0-24 months (no birth wast)   MAL-ED       BANGLADESH    1                    NA                 0.0218438   -0.0849294   0.1181090
0-24 months (no birth wast)   MAL-ED       INDIA         1                    NA                 0.2138427    0.0114163   0.3748195
0-24 months (no birth wast)   MAL-ED       PERU          1                    NA                -0.1560440   -1.2084404   0.3948500
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    1                    NA                 0.2306988    0.0653306   0.3668088
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    1                    NA                 0.0201867   -0.0519095   0.0873415
0-6 months (no birth wast)    COHORTS      INDIA         1                    NA                 0.0981780   -0.0307208   0.2109571
0-6 months (no birth wast)    COHORTS      PHILIPPINES   1                    NA                -0.0473555   -0.5862581   0.3084647
0-6 months (no birth wast)    MAL-ED       INDIA         1                    NA                 0.0905449   -0.2985894   0.3630715
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    1                    NA                 0.2170082   -0.1939289   0.4865054
6-24 months                   COHORTS      GUATEMALA     1                    NA                 0.2399606   -0.3748179   0.5798281
6-24 months                   COHORTS      INDIA         1                    NA                 0.2969139    0.2075717   0.3761833
6-24 months                   COHORTS      PHILIPPINES   1                    NA                 0.4339119    0.1966511   0.6011001
6-24 months                   MAL-ED       BANGLADESH    1                    NA                 0.0329265   -0.0992978   0.1492469
6-24 months                   MAL-ED       INDIA         1                    NA                 0.2692652    0.0080455   0.4616958
6-24 months                   MAL-ED       PERU          1                    NA                -0.1239316   -1.3051391   0.4519974
6-24 months                   NIH-Birth    BANGLADESH    1                    NA                 0.1969642    0.0188315   0.3427566
6-24 months                   NIH-Crypto   BANGLADESH    1                    NA                 0.0287065   -0.0501857   0.1016722
