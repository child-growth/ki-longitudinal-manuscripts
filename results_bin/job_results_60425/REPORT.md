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

agecat        studyid      country        hfoodsec                ever_wasted   n_cell       n
------------  -----------  -------------  ---------------------  ------------  -------  ------
0-24 months   GMS-Nepal    NEPAL          Food Secure                       0      188     663
0-24 months   GMS-Nepal    NEPAL          Food Secure                       1      283     663
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              0       55     663
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              1       50     663
0-24 months   GMS-Nepal    NEPAL          Food Insecure                     0       28     663
0-24 months   GMS-Nepal    NEPAL          Food Insecure                     1       59     663
0-24 months   JiVitA-3     BANGLADESH     Food Secure                       0     6332   17375
0-24 months   JiVitA-3     BANGLADESH     Food Secure                       1     2364   17375
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure              0     4087   17375
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure              1     1697   17375
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                     0     1924   17375
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                     1      971   17375
0-24 months   JiVitA-4     BANGLADESH     Food Secure                       0     1896    5399
0-24 months   JiVitA-4     BANGLADESH     Food Secure                       1      853    5399
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure              0     1333    5399
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure              1      615    5399
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                     0      494    5399
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                     1      208    5399
0-24 months   MAL-ED       BANGLADESH     Food Secure                       0      105     194
0-24 months   MAL-ED       BANGLADESH     Food Secure                       1       56     194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              0        3     194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                     0       19     194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                     1       10     194
0-24 months   MAL-ED       BRAZIL         Food Secure                       0        3     129
0-24 months   MAL-ED       BRAZIL         Food Secure                       1        0     129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              0       11     129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              1        0     129
0-24 months   MAL-ED       BRAZIL         Food Insecure                     0      103     129
0-24 months   MAL-ED       BRAZIL         Food Insecure                     1       12     129
0-24 months   MAL-ED       INDIA          Food Secure                       0       97     212
0-24 months   MAL-ED       INDIA          Food Secure                       1       93     212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure              0        1     212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure              1        4     212
0-24 months   MAL-ED       INDIA          Food Insecure                     0       10     212
0-24 months   MAL-ED       INDIA          Food Insecure                     1        7     212
0-24 months   MAL-ED       NEPAL          Food Secure                       0       64     128
0-24 months   MAL-ED       NEPAL          Food Secure                       1       30     128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure              0       10     128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure              1        5     128
0-24 months   MAL-ED       NEPAL          Food Insecure                     0       10     128
0-24 months   MAL-ED       NEPAL          Food Insecure                     1        9     128
0-24 months   MAL-ED       PERU           Food Secure                       0       22     113
0-24 months   MAL-ED       PERU           Food Secure                       1        5     113
0-24 months   MAL-ED       PERU           Mildly Food Insecure              0       29     113
0-24 months   MAL-ED       PERU           Mildly Food Insecure              1        0     113
0-24 months   MAL-ED       PERU           Food Insecure                     0       49     113
0-24 months   MAL-ED       PERU           Food Insecure                     1        8     113
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       0      100     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       1       32     233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       17     233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        2     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     0       64     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     1       18     233
0-24 months   NIH-Birth    BANGLADESH     Food Secure                       0       56     624
0-24 months   NIH-Birth    BANGLADESH     Food Secure                       1       38     624
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              0      247     624
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              1      241     624
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                     0       23     624
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                     1       19     624
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                       0      308     758
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                       1      145     758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      149     758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       70     758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     0       51     758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     1       35     758
0-6 months    GMS-Nepal    NEPAL          Food Secure                       0      276     663
0-6 months    GMS-Nepal    NEPAL          Food Secure                       1      195     663
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure              0       81     663
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure              1       24     663
0-6 months    GMS-Nepal    NEPAL          Food Insecure                     0       57     663
0-6 months    GMS-Nepal    NEPAL          Food Insecure                     1       30     663
0-6 months    JiVitA-3     BANGLADESH     Food Secure                       0     7325   17281
0-6 months    JiVitA-3     BANGLADESH     Food Secure                       1     1331   17281
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure              0     4801   17281
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure              1      945   17281
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                     0     2338   17281
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                     1      541   17281
0-6 months    JiVitA-4     BANGLADESH     Food Secure                       0     2315    5059
0-6 months    JiVitA-4     BANGLADESH     Food Secure                       1      263    5059
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure              0     1595    5059
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure              1      217    5059
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                     0      600    5059
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                     1       69    5059
0-6 months    MAL-ED       BANGLADESH     Food Secure                       0      124     194
0-6 months    MAL-ED       BANGLADESH     Food Secure                       1       37     194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure              0        3     194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                     0       22     194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                     1        7     194
0-6 months    MAL-ED       BRAZIL         Food Secure                       0        3     129
0-6 months    MAL-ED       BRAZIL         Food Secure                       1        0     129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure              0       11     129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure              1        0     129
0-6 months    MAL-ED       BRAZIL         Food Insecure                     0      106     129
0-6 months    MAL-ED       BRAZIL         Food Insecure                     1        9     129
0-6 months    MAL-ED       INDIA          Food Secure                       0      128     212
0-6 months    MAL-ED       INDIA          Food Secure                       1       62     212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure              0        2     212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure              1        3     212
0-6 months    MAL-ED       INDIA          Food Insecure                     0       13     212
0-6 months    MAL-ED       INDIA          Food Insecure                     1        4     212
0-6 months    MAL-ED       NEPAL          Food Secure                       0       74     128
0-6 months    MAL-ED       NEPAL          Food Secure                       1       20     128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure              0       11     128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure              1        4     128
0-6 months    MAL-ED       NEPAL          Food Insecure                     0       15     128
0-6 months    MAL-ED       NEPAL          Food Insecure                     1        4     128
0-6 months    MAL-ED       PERU           Food Secure                       0       25     113
0-6 months    MAL-ED       PERU           Food Secure                       1        2     113
0-6 months    MAL-ED       PERU           Mildly Food Insecure              0       29     113
0-6 months    MAL-ED       PERU           Mildly Food Insecure              1        0     113
0-6 months    MAL-ED       PERU           Food Insecure                     0       53     113
0-6 months    MAL-ED       PERU           Food Insecure                     1        4     113
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                       0      119     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                       1       13     233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       18     233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        1     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                     0       71     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                     1       11     233
0-6 months    NIH-Birth    BANGLADESH     Food Secure                       0       67     622
0-6 months    NIH-Birth    BANGLADESH     Food Secure                       1       27     622
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure              0      303     622
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure              1      183     622
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                     0       30     622
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                     1       12     622
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                       0      339     758
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                       1      114     758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      165     758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       54     758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                     0       59     758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                     1       27     758
6-24 months   GMS-Nepal    NEPAL          Food Secure                       0      233     573
6-24 months   GMS-Nepal    NEPAL          Food Secure                       1      181     573
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              0       39     573
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure              1       42     573
6-24 months   GMS-Nepal    NEPAL          Food Insecure                     0       31     573
6-24 months   GMS-Nepal    NEPAL          Food Insecure                     1       47     573
6-24 months   JiVitA-3     BANGLADESH     Food Secure                       0     7329   17235
6-24 months   JiVitA-3     BANGLADESH     Food Secure                       1     1304   17235
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure              0     4790   17235
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure              1      953   17235
6-24 months   JiVitA-3     BANGLADESH     Food Insecure                     0     2290   17235
6-24 months   JiVitA-3     BANGLADESH     Food Insecure                     1      569   17235
6-24 months   JiVitA-4     BANGLADESH     Food Secure                       0     2065    5386
6-24 months   JiVitA-4     BANGLADESH     Food Secure                       1      678    5386
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure              0     1463    5386
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure              1      481    5386
6-24 months   JiVitA-4     BANGLADESH     Food Insecure                     0      526    5386
6-24 months   JiVitA-4     BANGLADESH     Food Insecure                     1      173    5386
6-24 months   MAL-ED       BANGLADESH     Food Secure                       0      131     194
6-24 months   MAL-ED       BANGLADESH     Food Secure                       1       30     194
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              0        3     194
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure              1        1     194
6-24 months   MAL-ED       BANGLADESH     Food Insecure                     0       24     194
6-24 months   MAL-ED       BANGLADESH     Food Insecure                     1        5     194
6-24 months   MAL-ED       BRAZIL         Food Secure                       0        3     129
6-24 months   MAL-ED       BRAZIL         Food Secure                       1        0     129
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              0       11     129
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure              1        0     129
6-24 months   MAL-ED       BRAZIL         Food Insecure                     0      111     129
6-24 months   MAL-ED       BRAZIL         Food Insecure                     1        4     129
6-24 months   MAL-ED       INDIA          Food Secure                       0      137     212
6-24 months   MAL-ED       INDIA          Food Secure                       1       53     212
6-24 months   MAL-ED       INDIA          Mildly Food Insecure              0        4     212
6-24 months   MAL-ED       INDIA          Mildly Food Insecure              1        1     212
6-24 months   MAL-ED       INDIA          Food Insecure                     0       13     212
6-24 months   MAL-ED       INDIA          Food Insecure                     1        4     212
6-24 months   MAL-ED       NEPAL          Food Secure                       0       77     128
6-24 months   MAL-ED       NEPAL          Food Secure                       1       17     128
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure              0       13     128
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure              1        2     128
6-24 months   MAL-ED       NEPAL          Food Insecure                     0       13     128
6-24 months   MAL-ED       NEPAL          Food Insecure                     1        6     128
6-24 months   MAL-ED       PERU           Food Secure                       0       23     111
6-24 months   MAL-ED       PERU           Food Secure                       1        4     111
6-24 months   MAL-ED       PERU           Mildly Food Insecure              0       28     111
6-24 months   MAL-ED       PERU           Mildly Food Insecure              1        0     111
6-24 months   MAL-ED       PERU           Food Insecure                     0       51     111
6-24 months   MAL-ED       PERU           Food Insecure                     1        5     111
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       0      107     231
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                       1       23     231
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              0       17     231
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure              1        2     231
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     0       73     231
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                     1        9     231
6-24 months   NIH-Birth    BANGLADESH     Food Secure                       0       62     542
6-24 months   NIH-Birth    BANGLADESH     Food Secure                       1       19     542
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              0      295     542
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure              1      126     542
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                     0       26     542
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                     1       14     542
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                       0      382     730
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                       1       56     730
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              0      179     730
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure              1       28     730
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     0       73     730
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                     1       12     730


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
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/deda359c-d883-40e1-9c98-697712d70825/41f44975-e2a5-4506-9306-be7b69588abc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/deda359c-d883-40e1-9c98-697712d70825/41f44975-e2a5-4506-9306-be7b69588abc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/deda359c-d883-40e1-9c98-697712d70825/41f44975-e2a5-4506-9306-be7b69588abc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/deda359c-d883-40e1-9c98-697712d70825/41f44975-e2a5-4506-9306-be7b69588abc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.6018193   0.5573820   0.6462565
0-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.4869044   0.3879630   0.5858457
0-24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.6721733   0.5699474   0.7743991
0-24 months   JiVitA-3     BANGLADESH   Food Secure            NA                0.2830368   0.2709074   0.2951662
0-24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.2867219   0.2714841   0.3019598
0-24 months   JiVitA-3     BANGLADESH   Food Insecure          NA                0.2983341   0.2771305   0.3195377
0-24 months   JiVitA-4     BANGLADESH   Food Secure            NA                0.3097746   0.2899523   0.3295969
0-24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.3167005   0.2927320   0.3406691
0-24 months   JiVitA-4     BANGLADESH   Food Insecure          NA                0.2966869   0.2557191   0.3376547
0-24 months   MAL-ED       NEPAL        Food Secure            NA                0.3191489   0.2245448   0.4137531
0-24 months   MAL-ED       NEPAL        Mildly Food Insecure   NA                0.3333333   0.0938367   0.5728299
0-24 months   MAL-ED       NEPAL        Food Insecure          NA                0.4736842   0.2482904   0.6990781
0-24 months   NIH-Birth    BANGLADESH   Food Secure            NA                0.3976121   0.2975373   0.4976869
0-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.4937805   0.4493503   0.5382107
0-24 months   NIH-Birth    BANGLADESH   Food Insecure          NA                0.4477968   0.2863502   0.6092434
0-24 months   NIH-Crypto   BANGLADESH   Food Secure            NA                0.3205066   0.2774504   0.3635628
0-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.3203749   0.2584354   0.3823144
0-24 months   NIH-Crypto   BANGLADESH   Food Insecure          NA                0.4011874   0.2943528   0.5080220
0-6 months    GMS-Nepal    NEPAL        Food Secure            NA                0.4151694   0.3703362   0.4600025
0-6 months    GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.2376378   0.1520130   0.3232626
0-6 months    GMS-Nepal    NEPAL        Food Insecure          NA                0.3595025   0.2559582   0.4630468
0-6 months    JiVitA-3     BANGLADESH   Food Secure            NA                0.1565610   0.1466462   0.1664758
0-6 months    JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.1639041   0.1520516   0.1757566
0-6 months    JiVitA-3     BANGLADESH   Food Insecure          NA                0.1623351   0.1452378   0.1794325
0-6 months    JiVitA-4     BANGLADESH   Food Secure            NA                0.1020358   0.0888378   0.1152338
0-6 months    JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.1197178   0.1017127   0.1377230
0-6 months    JiVitA-4     BANGLADESH   Food Insecure          NA                0.1033304   0.0767990   0.1298618
0-6 months    NIH-Birth    BANGLADESH   Food Secure            NA                0.2773376   0.1861102   0.3685650
0-6 months    NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.3774079   0.3342684   0.4205473
0-6 months    NIH-Birth    BANGLADESH   Food Insecure          NA                0.3007058   0.1550132   0.4463983
0-6 months    NIH-Crypto   BANGLADESH   Food Secure            NA                0.2507606   0.2106923   0.2908290
0-6 months    NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.2483812   0.1909394   0.3058229
0-6 months    NIH-Crypto   BANGLADESH   Food Insecure          NA                0.3159570   0.2166434   0.4152706
6-24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.4433517   0.3950420   0.4916614
6-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.4932068   0.3789966   0.6074171
6-24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.5979414   0.4840317   0.7118511
6-24 months   JiVitA-3     BANGLADESH   Food Secure            NA                0.1617600   0.1522927   0.1712273
6-24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.1596262   0.1480695   0.1711830
6-24 months   JiVitA-3     BANGLADESH   Food Insecure          NA                0.1795147   0.1625555   0.1964739
6-24 months   JiVitA-4     BANGLADESH   Food Secure            NA                0.2470510   0.2281331   0.2659689
6-24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.2471965   0.2252086   0.2691845
6-24 months   JiVitA-4     BANGLADESH   Food Insecure          NA                0.2466330   0.2073441   0.2859220
6-24 months   NIH-Birth    BANGLADESH   Food Secure            NA                0.2435144   0.1499500   0.3370788
6-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.2993908   0.2556574   0.3431242
6-24 months   NIH-Birth    BANGLADESH   Food Insecure          NA                0.3428878   0.1921749   0.4936008
6-24 months   NIH-Crypto   BANGLADESH   Food Secure            NA                0.1278605   0.0964850   0.1592361
6-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.1386721   0.0912685   0.1860757
6-24 months   NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1381113   0.0645527   0.2116698


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        NA                   NA                0.5912519   0.5538035   0.6287003
0-24 months   JiVitA-3     BANGLADESH   NA                   NA                0.2896115   0.2819717   0.2972513
0-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.3104279   0.2959885   0.3248672
0-24 months   MAL-ED       NEPAL        NA                   NA                0.3437500   0.2611458   0.4263542
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.3298153   0.2963239   0.3633067
0-6 months    GMS-Nepal    NEPAL        NA                   NA                0.3755656   0.3386759   0.4124553
0-6 months    JiVitA-3     BANGLADESH   NA                   NA                0.1630114   0.1568185   0.1692043
0-6 months    JiVitA-4     BANGLADESH   NA                   NA                0.1085195   0.0986291   0.1184098
0-6 months    NIH-Birth    BANGLADESH   NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    NIH-Crypto   BANGLADESH   NA                   NA                0.2572559   0.2261171   0.2883948
6-24 months   GMS-Nepal    NEPAL        NA                   NA                0.4712042   0.4302971   0.5121113
6-24 months   JiVitA-3     BANGLADESH   NA                   NA                0.1639687   0.1578505   0.1700868
6-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.2473078   0.2336663   0.2609494
6-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393


### Parameter: RR


agecat        studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.8090541   0.6517204   1.0043702
0-24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       1.1169022   0.9430621   1.3227872
0-24 months   JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       1.0130199   0.9463022   1.0844416
0-24 months   JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.0540470   0.9734837   1.1412776
0-24 months   JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.0223580   0.9281670   1.1261075
0-24 months   JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.9577510   0.8215945   1.1164715
0-24 months   MAL-ED       NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED       NEPAL        Mildly Food Insecure   Food Secure       1.0444444   0.4801047   2.2721381
0-24 months   MAL-ED       NEPAL        Food Insecure          Food Secure       1.4842105   0.8472771   2.5999533
0-24 months   NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       1.2418648   0.9505656   1.6224322
0-24 months   NIH-Birth    BANGLADESH   Food Insecure          Food Secure       1.1262152   0.7253081   1.7487198
0-24 months   NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9995892   0.7901225   1.2645868
0-24 months   NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2517290   0.9289494   1.6866640
0-6 months    GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.5723876   0.3928983   0.8338737
0-6 months    GMS-Nepal    NEPAL        Food Insecure          Food Secure       0.8659178   0.6365179   1.1779930
0-6 months    JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       1.0469025   0.9513005   1.1521121
0-6 months    JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.0368810   0.9209333   1.1674268
0-6 months    JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.1732923   0.9609650   1.4325336
0-6 months    JiVitA-4     BANGLADESH   Food Insecure          Food Secure       1.0126874   0.7576083   1.3536490
0-6 months    NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       1.3608247   0.9606138   1.9277713
0-6 months    NIH-Birth    BANGLADESH   Food Insecure          Food Secure       1.0842588   0.6037791   1.9470982
0-6 months    NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9905110   0.7477029   1.3121684
0-6 months    NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.2599946   0.8855867   1.7926944
6-24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       1.1124505   0.8615759   1.4363750
6-24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       1.3486842   1.0828110   1.6798397
6-24 months   JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       0.9868092   0.9003340   1.0815901
6-24 months   JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.1097593   0.9965409   1.2358406
6-24 months   JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.0005892   0.8925862   1.1216607
6-24 months   JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.9983084   0.8362565   1.1917630
6-24 months   NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       1.2294585   0.8147765   1.8551938
6-24 months   NIH-Birth    BANGLADESH   Food Insecure          Food Secure       1.4080805   0.7848189   2.5263034
6-24 months   NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0845575   0.7121421   1.6517278
6-24 months   NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.0801712   0.6008461   1.9418778


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0105674   -0.0348235    0.0136887
0-24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0065747   -0.0026039    0.0157533
0-24 months   JiVitA-4     BANGLADESH   Food Secure          NA                 0.0006533   -0.0130694    0.0143759
0-24 months   MAL-ED       NEPAL        Food Secure          NA                 0.0246011   -0.0266646    0.0758668
0-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.0799520   -0.0126321    0.1725361
0-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0093087   -0.0182893    0.0369067
0-6 months    GMS-Nepal    NEPAL        Food Secure          NA                -0.0396037   -0.0630929   -0.0161146
0-6 months    JiVitA-3     BANGLADESH   Food Secure          NA                 0.0064504   -0.0010813    0.0139821
0-6 months    JiVitA-4     BANGLADESH   Food Secure          NA                 0.0064837   -0.0034521    0.0164194
0-6 months    NIH-Birth    BANGLADESH   Food Secure          NA                 0.0795756   -0.0054461    0.1645973
0-6 months    NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0064953   -0.0192017    0.0321923
6-24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0278525    0.0018206    0.0538844
6-24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0022087   -0.0052105    0.0096278
6-24 months   JiVitA-4     BANGLADESH   Food Secure          NA                 0.0002569   -0.0125717    0.0130854
6-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.0498436   -0.0376702    0.1373573
6-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0036463   -0.0165484    0.0238410


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   GMS-Nepal    NEPAL        Food Secure          NA                -0.0178729   -0.0597625    0.0223609
0-24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0227018   -0.0095362    0.0539103
0-24 months   JiVitA-4     BANGLADESH   Food Secure          NA                 0.0021044   -0.0430942    0.0453444
0-24 months   MAL-ED       NEPAL        Food Secure          NA                 0.0715667   -0.0901841    0.2093186
0-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.1674163   -0.0512685    0.3406103
0-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0282240   -0.0591651    0.1084029
0-6 months    GMS-Nepal    NEPAL        Food Secure          NA                -0.1054509   -0.1700882   -0.0443843
0-6 months    JiVitA-3     BANGLADESH   Food Secure          NA                 0.0395701   -0.0078429    0.0847527
0-6 months    JiVitA-4     BANGLADESH   Food Secure          NA                 0.0597466   -0.0359117    0.1465716
0-6 months    NIH-Birth    BANGLADESH   Food Secure          NA                 0.2229550   -0.0557611    0.4280913
0-6 months    NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0252484   -0.0799380    0.1201897
6-24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0591092    0.0020012    0.1129493
6-24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0134701   -0.0328175    0.0576832
6-24 months   JiVitA-4     BANGLADESH   Food Secure          NA                 0.0010386   -0.0522059    0.0515888
6-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.1699070   -0.1884584    0.4202116
6-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0277271   -0.1385764    0.1697399
