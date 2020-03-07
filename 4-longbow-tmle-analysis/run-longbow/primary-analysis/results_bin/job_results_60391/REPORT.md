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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid      country        hfoodsec                wast_rec90d   n_cell      n
------------  -----------  -------------  ---------------------  ------------  -------  -----
0-24 months   GMS-Nepal    NEPAL          Food Secure                       0      201    624
0-24 months   GMS-Nepal    NEPAL          Food Secure                       1      251    624
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              0       37    624
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              1       42    624
0-24 months   GMS-Nepal    NEPAL          Food Insecure                     0       46    624
0-24 months   GMS-Nepal    NEPAL          Food Insecure                     1       47    624
0-24 months   JiVitA-3     BANGLADESH     Food Secure                       0     1604   5644
0-24 months   JiVitA-3     BANGLADESH     Food Secure                       1     1031   5644
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure              0     1185   5644
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure              1      714   5644
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                     0      729   5644
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                     1      381   5644
0-24 months   JiVitA-4     BANGLADESH     Food Secure                       0      763   2053
0-24 months   JiVitA-4     BANGLADESH     Food Secure                       1      265   2053
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure              0      561   2053
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure              1      204   2053
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                     0      200   2053
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                     1       60   2053
0-24 months   MAL-ED       BANGLADESH     Food Secure                       0       31    100
0-24 months   MAL-ED       BANGLADESH     Food Secure                       1       49    100
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              0        1    100
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              1        2    100
0-24 months   MAL-ED       BANGLADESH     Food Insecure                     0        6    100
0-24 months   MAL-ED       BANGLADESH     Food Insecure                     1       11    100
0-24 months   MAL-ED       BRAZIL         Food Secure                       0        0     15
0-24 months   MAL-ED       BRAZIL         Food Secure                       1        0     15
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              0        0     15
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              1        0     15
0-24 months   MAL-ED       BRAZIL         Food Insecure                     0        3     15
0-24 months   MAL-ED       BRAZIL         Food Insecure                     1       12     15
0-24 months   MAL-ED       INDIA          Food Secure                       0       54    161
0-24 months   MAL-ED       INDIA          Food Secure                       1       90    161
0-24 months   MAL-ED       INDIA          Mildly Food Insecure              0        3    161
0-24 months   MAL-ED       INDIA          Mildly Food Insecure              1        2    161
0-24 months   MAL-ED       INDIA          Food Insecure                     0        5    161
0-24 months   MAL-ED       INDIA          Food Insecure                     1        7    161
0-24 months   MAL-ED       NEPAL          Food Secure                       0        9     64
0-24 months   MAL-ED       NEPAL          Food Secure                       1       36     64
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure              0        1     64
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure              1        6     64
0-24 months   MAL-ED       NEPAL          Food Insecure                     0        1     64
0-24 months   MAL-ED       NEPAL          Food Insecure                     1       11     64
0-24 months   MAL-ED       PERU           Food Secure                       0        2     18
0-24 months   MAL-ED       PERU           Food Secure                       1        6     18
0-24 months   MAL-ED       PERU           Mildly Food Insecure              0        0     18
0-24 months   MAL-ED       PERU           Mildly Food Insecure              1        0     18
0-24 months   MAL-ED       PERU           Food Insecure                     0        2     18
0-24 months   MAL-ED       PERU           Food Insecure                     1        8     18
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       0        7     73
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       1       38     73
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        2     73
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     73
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     0        4     73
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     1       21     73
0-24 months   NIH-Birth    BANGLADESH     Food Secure                       0       21    421
0-24 months   NIH-Birth    BANGLADESH     Food Secure                       1       26    421
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              0      161    421
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              1      186    421
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                     0       20    421
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                     1        7    421
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                       0       65    310
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                       1      116    310
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       37    310
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       49    310
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     0       15    310
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     1       28    310
0-6 months    GMS-Nepal    NEPAL          Food Secure                       0       76    254
0-6 months    GMS-Nepal    NEPAL          Food Secure                       1      123    254
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure              0        9    254
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure              1       15    254
0-6 months    GMS-Nepal    NEPAL          Food Insecure                     0       14    254
0-6 months    GMS-Nepal    NEPAL          Food Insecure                     1       17    254
0-6 months    JiVitA-3     BANGLADESH     Food Secure                       0      300   2818
0-6 months    JiVitA-3     BANGLADESH     Food Secure                       1     1031   2818
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure              0      232   2818
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure              1      714   2818
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                     0      160   2818
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                     1      381   2818
0-6 months    JiVitA-4     BANGLADESH     Food Secure                       0      120    549
0-6 months    JiVitA-4     BANGLADESH     Food Secure                       1      143    549
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure              0       89    549
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure              1      128    549
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                     0       35    549
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                     1       34    549
0-6 months    MAL-ED       BANGLADESH     Food Secure                       0        8     48
0-6 months    MAL-ED       BANGLADESH     Food Secure                       1       31     48
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure              0        0     48
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     48
0-6 months    MAL-ED       BANGLADESH     Food Insecure                     0        2     48
0-6 months    MAL-ED       BANGLADESH     Food Insecure                     1        6     48
0-6 months    MAL-ED       BRAZIL         Food Secure                       0        0      9
0-6 months    MAL-ED       BRAZIL         Food Secure                       1        0      9
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure              0        0      9
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure              1        0      9
0-6 months    MAL-ED       BRAZIL         Food Insecure                     0        0      9
0-6 months    MAL-ED       BRAZIL         Food Insecure                     1        9      9
0-6 months    MAL-ED       INDIA          Food Secure                       0       19     73
0-6 months    MAL-ED       INDIA          Food Secure                       1       47     73
0-6 months    MAL-ED       INDIA          Mildly Food Insecure              0        2     73
0-6 months    MAL-ED       INDIA          Mildly Food Insecure              1        1     73
0-6 months    MAL-ED       INDIA          Food Insecure                     0        1     73
0-6 months    MAL-ED       INDIA          Food Insecure                     1        3     73
0-6 months    MAL-ED       NEPAL          Food Secure                       0        4     28
0-6 months    MAL-ED       NEPAL          Food Secure                       1       16     28
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure              0        1     28
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure              1        3     28
0-6 months    MAL-ED       NEPAL          Food Insecure                     0        0     28
0-6 months    MAL-ED       NEPAL          Food Insecure                     1        4     28
0-6 months    MAL-ED       PERU           Food Secure                       0        0      6
0-6 months    MAL-ED       PERU           Food Secure                       1        2      6
0-6 months    MAL-ED       PERU           Mildly Food Insecure              0        0      6
0-6 months    MAL-ED       PERU           Mildly Food Insecure              1        0      6
0-6 months    MAL-ED       PERU           Food Insecure                     0        0      6
0-6 months    MAL-ED       PERU           Food Insecure                     1        4      6
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                       0        2     26
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                       1       11     26
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1     26
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        0     26
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                     0        1     26
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                     1       11     26
0-6 months    NIH-Birth    BANGLADESH     Food Secure                       0        7    223
0-6 months    NIH-Birth    BANGLADESH     Food Secure                       1       20    223
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure              0       51    223
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure              1      133    223
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                     0        6    223
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                     1        6    223
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                       0       10    197
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                       1      105    197
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure              0        8    197
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       46    197
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                     0        3    197
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                     1       25    197
6-24 months   GMS-Nepal    NEPAL          Food Secure                       0      125    370
6-24 months   GMS-Nepal    NEPAL          Food Secure                       1      128    370
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              0       28    370
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              1       27    370
6-24 months   GMS-Nepal    NEPAL          Food Insecure                     0       32    370
6-24 months   GMS-Nepal    NEPAL          Food Insecure                     1       30    370
6-24 months   JiVitA-3     BANGLADESH     Food Secure                       0     1304   2826
6-24 months   JiVitA-3     BANGLADESH     Food Secure                       1        0   2826
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure              0      953   2826
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure              1        0   2826
6-24 months   JiVitA-3     BANGLADESH     Food Insecure                     0      569   2826
6-24 months   JiVitA-3     BANGLADESH     Food Insecure                     1        0   2826
6-24 months   JiVitA-4     BANGLADESH     Food Secure                       0      643   1504
6-24 months   JiVitA-4     BANGLADESH     Food Secure                       1      122   1504
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure              0      472   1504
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure              1       76   1504
6-24 months   JiVitA-4     BANGLADESH     Food Insecure                     0      165   1504
6-24 months   JiVitA-4     BANGLADESH     Food Insecure                     1       26   1504
6-24 months   MAL-ED       BANGLADESH     Food Secure                       0       23     52
6-24 months   MAL-ED       BANGLADESH     Food Secure                       1       18     52
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              0        1     52
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     52
6-24 months   MAL-ED       BANGLADESH     Food Insecure                     0        4     52
6-24 months   MAL-ED       BANGLADESH     Food Insecure                     1        5     52
6-24 months   MAL-ED       BRAZIL         Food Secure                       0        0      6
6-24 months   MAL-ED       BRAZIL         Food Secure                       1        0      6
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              0        0      6
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              1        0      6
6-24 months   MAL-ED       BRAZIL         Food Insecure                     0        3      6
6-24 months   MAL-ED       BRAZIL         Food Insecure                     1        3      6
6-24 months   MAL-ED       INDIA          Food Secure                       0       35     88
6-24 months   MAL-ED       INDIA          Food Secure                       1       43     88
6-24 months   MAL-ED       INDIA          Mildly Food Insecure              0        1     88
6-24 months   MAL-ED       INDIA          Mildly Food Insecure              1        1     88
6-24 months   MAL-ED       INDIA          Food Insecure                     0        4     88
6-24 months   MAL-ED       INDIA          Food Insecure                     1        4     88
6-24 months   MAL-ED       NEPAL          Food Secure                       0        5     36
6-24 months   MAL-ED       NEPAL          Food Secure                       1       20     36
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure              0        0     36
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure              1        3     36
6-24 months   MAL-ED       NEPAL          Food Insecure                     0        1     36
6-24 months   MAL-ED       NEPAL          Food Insecure                     1        7     36
6-24 months   MAL-ED       PERU           Food Secure                       0        2     12
6-24 months   MAL-ED       PERU           Food Secure                       1        4     12
6-24 months   MAL-ED       PERU           Mildly Food Insecure              0        0     12
6-24 months   MAL-ED       PERU           Mildly Food Insecure              1        0     12
6-24 months   MAL-ED       PERU           Food Insecure                     0        2     12
6-24 months   MAL-ED       PERU           Food Insecure                     1        4     12
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       0        5     47
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       1       27     47
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0        1     47
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     47
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     0        3     47
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     1       10     47
6-24 months   NIH-Birth    BANGLADESH     Food Secure                       0       14    198
6-24 months   NIH-Birth    BANGLADESH     Food Secure                       1        6    198
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              0      110    198
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              1       53    198
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                     0       14    198
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                     1        1    198
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                       0       55    113
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                       1       11    113
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              0       29    113
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              1        3    113
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     0       12    113
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     1        3    113


The following strata were considered:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/8d971396-8436-4074-bb76-321517a17397/d20305f3-625a-4e02-a300-595da0ba00aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8d971396-8436-4074-bb76-321517a17397/d20305f3-625a-4e02-a300-595da0ba00aa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8d971396-8436-4074-bb76-321517a17397/d20305f3-625a-4e02-a300-595da0ba00aa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8d971396-8436-4074-bb76-321517a17397/d20305f3-625a-4e02-a300-595da0ba00aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.5577457   0.5074023   0.6080890
0-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.5311900   0.4009058   0.6614742
0-24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.4865788   0.3813671   0.5917905
0-24 months   JiVitA-3     BANGLADESH   Food Secure            NA                0.3801037   0.3592484   0.4009590
0-24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.3783986   0.3536096   0.4031875
0-24 months   JiVitA-3     BANGLADESH   Food Insecure          NA                0.3400390   0.3075743   0.3725038
0-24 months   JiVitA-4     BANGLADESH   Food Secure            NA                0.2580987   0.2301789   0.2860186
0-24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.2668722   0.2353998   0.2983446
0-24 months   JiVitA-4     BANGLADESH   Food Insecure          NA                0.2270008   0.1753782   0.2786233
0-24 months   NIH-Birth    BANGLADESH   Food Secure            NA                0.5531915   0.3813656   0.7250173
0-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.5360231   0.4817521   0.5902940
0-24 months   NIH-Birth    BANGLADESH   Food Insecure          NA                0.2592593   0.0762417   0.4422768
0-24 months   NIH-Crypto   BANGLADESH   Food Secure            NA                0.6437457   0.5738405   0.7136509
0-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.5642860   0.4553354   0.6732366
0-24 months   NIH-Crypto   BANGLADESH   Food Insecure          NA                0.6465400   0.5004969   0.7925831
0-6 months    GMS-Nepal    NEPAL        Food Secure            NA                0.6180905   0.5500694   0.6861115
0-6 months    GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.6250000   0.4270268   0.8229732
0-6 months    GMS-Nepal    NEPAL        Food Insecure          NA                0.5483871   0.3717297   0.7250445
0-6 months    JiVitA-3     BANGLADESH   Food Secure            NA                0.7701893   0.7446031   0.7957755
0-6 months    JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.7530596   0.7210751   0.7850441
0-6 months    JiVitA-3     BANGLADESH   Food Insecure          NA                0.7106451   0.6692668   0.7520235
0-6 months    JiVitA-4     BANGLADESH   Food Secure            NA                0.5423757   0.4823264   0.6024250
0-6 months    JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.5830337   0.5176351   0.6484324
0-6 months    JiVitA-4     BANGLADESH   Food Insecure          NA                0.4640004   0.3488036   0.5791972
0-6 months    NIH-Birth    BANGLADESH   Food Secure            NA                0.7407407   0.5743234   0.9071581
0-6 months    NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.7228261   0.6582010   0.7874512
0-6 months    NIH-Birth    BANGLADESH   Food Insecure          NA                0.5000000   0.2151871   0.7848129
6-24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.5092771   0.4421969   0.5763573
6-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.4877426   0.3362840   0.6392012
6-24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.4940334   0.3616899   0.6263769
6-24 months   JiVitA-4     BANGLADESH   Food Secure            NA                0.1593238   0.1335910   0.1850566
6-24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.1391164   0.1108343   0.1673985
6-24 months   JiVitA-4     BANGLADESH   Food Insecure          NA                0.1351362   0.0864750   0.1837974


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        NA                   NA                0.5448718   0.5019351   0.5878085
0-24 months   JiVitA-3     BANGLADESH   NA                   NA                0.3766832   0.3641564   0.3892100
0-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.2576717   0.2382743   0.2770691
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-6 months    GMS-Nepal    NEPAL        NA                   NA                0.6102362   0.5496896   0.6707828
0-6 months    JiVitA-3     BANGLADESH   NA                   NA                0.7544358   0.7385442   0.7703274
0-6 months    JiVitA-4     BANGLADESH   NA                   NA                0.5555556   0.5139520   0.5971591
0-6 months    NIH-Birth    BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
6-24 months   GMS-Nepal    NEPAL        NA                   NA                0.5000000   0.4445928   0.5554072
6-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.1489362   0.1312684   0.1666040


### Parameter: RR


agecat        studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.9523875   0.7333657   1.2368209
0-24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       0.8724027   0.6903923   1.1023970
0-24 months   JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       0.9955140   0.9140613   1.0842251
0-24 months   JiVitA-3     BANGLADESH   Food Insecure          Food Secure       0.8945955   0.8013061   0.9987458
0-24 months   JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.0339929   0.8813678   1.2130477
0-24 months   JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.8795113   0.6836665   1.1314583
0-24 months   NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       0.9689648   0.6988560   1.3434709
0-24 months   NIH-Birth    BANGLADESH   Food Insecure          Food Secure       0.4686610   0.2166940   1.0136097
0-24 months   NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.8765667   0.7019897   1.0945590
0-24 months   NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.0043407   0.7811158   1.2913582
0-6 months    GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       1.0111789   0.7230962   1.4140341
0-6 months    GMS-Nepal    NEPAL        Food Insecure          Food Secure       0.8872279   0.6312344   1.2470381
0-6 months    JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       0.9777591   0.9264068   1.0319580
0-6 months    JiVitA-3     BANGLADESH   Food Insecure          Food Secure       0.9226889   0.8628682   0.9866568
0-6 months    JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.0749628   0.9188824   1.2575549
0-6 months    JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.8554963   0.6518380   1.1227849
0-6 months    NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       0.9758152   0.7662232   1.2427389
0-6 months    NIH-Birth    BANGLADESH   Food Insecure          Food Secure       0.6750000   0.3659085   1.2451884
6-24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.9577155   0.6840388   1.3408874
6-24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       0.9700680   0.7195317   1.3078393
6-24 months   JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       0.8731677   0.6733351   1.1323067
6-24 months   JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.8481860   0.5715530   1.2587100


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0128739   -0.0393227   0.0135750
0-24 months   JiVitA-3     BANGLADESH   Food Secure          NA                -0.0034205   -0.0199484   0.0131074
0-24 months   JiVitA-4     BANGLADESH   Food Secure          NA                -0.0004270   -0.0197566   0.0189026
0-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                -0.0330015   -0.1926012   0.1265982
0-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0211650   -0.0673409   0.0250108
0-6 months    GMS-Nepal    NEPAL        Food Secure          NA                -0.0078542   -0.0401588   0.0244504
0-6 months    JiVitA-3     BANGLADESH   Food Secure          NA                -0.0157535   -0.0363348   0.0048277
0-6 months    JiVitA-4     BANGLADESH   Food Secure          NA                 0.0131798   -0.0299635   0.0563232
0-6 months    NIH-Birth    BANGLADESH   Food Secure          NA                -0.0277363   -0.1843204   0.1288479
6-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0092771   -0.0469830   0.0284288
6-24 months   JiVitA-4     BANGLADESH   Food Secure          NA                -0.0103876   -0.0278799   0.0071046


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0236273   -0.0733830   0.0238219
0-24 months   JiVitA-3     BANGLADESH   Food Secure          NA                -0.0090806   -0.0539233   0.0338542
0-24 months   JiVitA-4     BANGLADESH   Food Secure          NA                -0.0016572   -0.0795490   0.0706145
0-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                -0.0634412   -0.4184141   0.2026961
0-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                -0.0339957   -0.1110632   0.0377261
0-6 months    GMS-Nepal    NEPAL        Food Secure          NA                -0.0128708   -0.0672611   0.0387476
0-6 months    JiVitA-3     BANGLADESH   Food Secure          NA                -0.0208812   -0.0485478   0.0060553
0-6 months    JiVitA-4     BANGLADESH   Food Secure          NA                 0.0237237   -0.0571359   0.0983984
0-6 months    NIH-Birth    BANGLADESH   Food Secure          NA                -0.0389005   -0.2835555   0.1591214
6-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0185542   -0.0968538   0.0541560
6-24 months   JiVitA-4     BANGLADESH   Food Secure          NA                -0.0697455   -0.1935502   0.0412171
