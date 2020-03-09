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

**Outcome Variable:** ever_co

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

agecat        studyid      country        hfoodsec                ever_co   n_cell       n
------------  -----------  -------------  ---------------------  --------  -------  ------
0-24 months   GMS-Nepal    NEPAL          Food Secure                   0      339     663
0-24 months   GMS-Nepal    NEPAL          Food Secure                   1      132     663
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          0       77     663
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          1       28     663
0-24 months   GMS-Nepal    NEPAL          Food Insecure                 0       54     663
0-24 months   GMS-Nepal    NEPAL          Food Insecure                 1       33     663
0-24 months   JiVitA-3     BANGLADESH     Food Secure                   0     7874   17364
0-24 months   JiVitA-3     BANGLADESH     Food Secure                   1      819   17364
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure          0     5137   17364
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure          1      645   17364
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                 0     2449   17364
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                 1      440   17364
0-24 months   JiVitA-4     BANGLADESH     Food Secure                   0     2309    5398
0-24 months   JiVitA-4     BANGLADESH     Food Secure                   1      440    5398
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure          0     1614    5398
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure          1      333    5398
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                 0      603    5398
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                 1       99    5398
0-24 months   MAL-ED       BANGLADESH     Food Secure                   0      135     194
0-24 months   MAL-ED       BANGLADESH     Food Secure                   1       26     194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                 0       24     194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                 1        5     194
0-24 months   MAL-ED       BRAZIL         Food Secure                   0        3     129
0-24 months   MAL-ED       BRAZIL         Food Secure                   1        0     129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
0-24 months   MAL-ED       BRAZIL         Food Insecure                 0      112     129
0-24 months   MAL-ED       BRAZIL         Food Insecure                 1        3     129
0-24 months   MAL-ED       INDIA          Food Secure                   0      143     212
0-24 months   MAL-ED       INDIA          Food Secure                   1       47     212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure          0        5     212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure          1        0     212
0-24 months   MAL-ED       INDIA          Food Insecure                 0       14     212
0-24 months   MAL-ED       INDIA          Food Insecure                 1        3     212
0-24 months   MAL-ED       NEPAL          Food Secure                   0       86     128
0-24 months   MAL-ED       NEPAL          Food Secure                   1        8     128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure          0       13     128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure          1        2     128
0-24 months   MAL-ED       NEPAL          Food Insecure                 0       13     128
0-24 months   MAL-ED       NEPAL          Food Insecure                 1        6     128
0-24 months   MAL-ED       PERU           Food Secure                   0       24     113
0-24 months   MAL-ED       PERU           Food Secure                   1        3     113
0-24 months   MAL-ED       PERU           Mildly Food Insecure          0       29     113
0-24 months   MAL-ED       PERU           Mildly Food Insecure          1        0     113
0-24 months   MAL-ED       PERU           Food Insecure                 0       53     113
0-24 months   MAL-ED       PERU           Food Insecure                 1        4     113
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                   0      118     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                   1       14     233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       19     233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 0       76     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 1        6     233
0-24 months   NIH-Birth    BANGLADESH     Food Secure                   0       81     624
0-24 months   NIH-Birth    BANGLADESH     Food Secure                   1       13     624
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          0      376     624
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          1      112     624
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                 0       30     624
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                 1       12     624
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                   0      414     758
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                   1       39     758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      199     758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       20     758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                 0       74     758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                 1       12     758
0-6 months    GMS-Nepal    NEPAL          Food Secure                   0      448     663
0-6 months    GMS-Nepal    NEPAL          Food Secure                   1       23     663
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure          0       98     663
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure          1        7     663
0-6 months    GMS-Nepal    NEPAL          Food Insecure                 0       84     663
0-6 months    GMS-Nepal    NEPAL          Food Insecure                 1        3     663
0-6 months    JiVitA-3     BANGLADESH     Food Secure                   0     8381   17260
0-6 months    JiVitA-3     BANGLADESH     Food Secure                   1      266   17260
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure          0     5545   17260
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure          1      197   17260
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                 0     2751   17260
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                 1      120   17260
0-6 months    JiVitA-4     BANGLADESH     Food Secure                   0     2502    5055
0-6 months    JiVitA-4     BANGLADESH     Food Secure                   1       72    5055
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure          0     1764    5055
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure          1       48    5055
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                 0      654    5055
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                 1       15    5055
0-6 months    MAL-ED       BANGLADESH     Food Secure                   0      157     194
0-6 months    MAL-ED       BANGLADESH     Food Secure                   1        4     194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                 0       28     194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                 1        1     194
0-6 months    MAL-ED       BRAZIL         Food Secure                   0        3     129
0-6 months    MAL-ED       BRAZIL         Food Secure                   1        0     129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
0-6 months    MAL-ED       BRAZIL         Food Insecure                 0      114     129
0-6 months    MAL-ED       BRAZIL         Food Insecure                 1        1     129
0-6 months    MAL-ED       INDIA          Food Secure                   0      173     212
0-6 months    MAL-ED       INDIA          Food Secure                   1       17     212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure          0        5     212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure          1        0     212
0-6 months    MAL-ED       INDIA          Food Insecure                 0       16     212
0-6 months    MAL-ED       INDIA          Food Insecure                 1        1     212
0-6 months    MAL-ED       NEPAL          Food Secure                   0       92     128
0-6 months    MAL-ED       NEPAL          Food Secure                   1        2     128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure          0       14     128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure          1        1     128
0-6 months    MAL-ED       NEPAL          Food Insecure                 0       18     128
0-6 months    MAL-ED       NEPAL          Food Insecure                 1        1     128
0-6 months    MAL-ED       PERU           Food Secure                   0       27     113
0-6 months    MAL-ED       PERU           Food Secure                   1        0     113
0-6 months    MAL-ED       PERU           Mildly Food Insecure          0       29     113
0-6 months    MAL-ED       PERU           Mildly Food Insecure          1        0     113
0-6 months    MAL-ED       PERU           Food Insecure                 0       56     113
0-6 months    MAL-ED       PERU           Food Insecure                 1        1     113
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                   0      128     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                   1        4     233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       19     233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                 0       82     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                 1        0     233
0-6 months    NIH-Birth    BANGLADESH     Food Secure                   0       88     622
0-6 months    NIH-Birth    BANGLADESH     Food Secure                   1        6     622
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure          0      451     622
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure          1       35     622
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                 0       38     622
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                 1        4     622
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                   0      443     758
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                   1       10     758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      214     758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure          1        5     758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                 0       84     758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                 1        2     758
6-24 months   GMS-Nepal    NEPAL          Food Secure                   0      289     573
6-24 months   GMS-Nepal    NEPAL          Food Secure                   1      125     573
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          0       55     573
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure          1       26     573
6-24 months   GMS-Nepal    NEPAL          Food Insecure                 0       45     573
6-24 months   GMS-Nepal    NEPAL          Food Insecure                 1       33     573
6-24 months   JiVitA-3     BANGLADESH     Food Secure                   0     8015   17217
6-24 months   JiVitA-3     BANGLADESH     Food Secure                   1      614   17217
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure          0     5233   17217
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure          1      507   17217
6-24 months   JiVitA-3     BANGLADESH     Food Insecure                 0     2477   17217
6-24 months   JiVitA-3     BANGLADESH     Food Insecure                 1      371   17217
6-24 months   JiVitA-4     BANGLADESH     Food Secure                   0     2347    5385
6-24 months   JiVitA-4     BANGLADESH     Food Secure                   1      396    5385
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure          0     1638    5385
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure          1      305    5385
6-24 months   JiVitA-4     BANGLADESH     Food Insecure                 0      604    5385
6-24 months   JiVitA-4     BANGLADESH     Food Insecure                 1       95    5385
6-24 months   MAL-ED       BANGLADESH     Food Secure                   0      136     194
6-24 months   MAL-ED       BANGLADESH     Food Secure                   1       25     194
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          0        3     194
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure          1        1     194
6-24 months   MAL-ED       BANGLADESH     Food Insecure                 0       24     194
6-24 months   MAL-ED       BANGLADESH     Food Insecure                 1        5     194
6-24 months   MAL-ED       BRAZIL         Food Secure                   0        3     129
6-24 months   MAL-ED       BRAZIL         Food Secure                   1        0     129
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure          0       11     129
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure          1        0     129
6-24 months   MAL-ED       BRAZIL         Food Insecure                 0      113     129
6-24 months   MAL-ED       BRAZIL         Food Insecure                 1        2     129
6-24 months   MAL-ED       INDIA          Food Secure                   0      149     212
6-24 months   MAL-ED       INDIA          Food Secure                   1       41     212
6-24 months   MAL-ED       INDIA          Mildly Food Insecure          0        5     212
6-24 months   MAL-ED       INDIA          Mildly Food Insecure          1        0     212
6-24 months   MAL-ED       INDIA          Food Insecure                 0       14     212
6-24 months   MAL-ED       INDIA          Food Insecure                 1        3     212
6-24 months   MAL-ED       NEPAL          Food Secure                   0       88     128
6-24 months   MAL-ED       NEPAL          Food Secure                   1        6     128
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure          0       14     128
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure          1        1     128
6-24 months   MAL-ED       NEPAL          Food Insecure                 0       13     128
6-24 months   MAL-ED       NEPAL          Food Insecure                 1        6     128
6-24 months   MAL-ED       PERU           Food Secure                   0       24     111
6-24 months   MAL-ED       PERU           Food Secure                   1        3     111
6-24 months   MAL-ED       PERU           Mildly Food Insecure          0       28     111
6-24 months   MAL-ED       PERU           Mildly Food Insecure          1        0     111
6-24 months   MAL-ED       PERU           Food Insecure                 0       52     111
6-24 months   MAL-ED       PERU           Food Insecure                 1        4     111
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                   0      118     231
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                   1       12     231
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          0       19     231
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure          1        0     231
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 0       76     231
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                 1        6     231
6-24 months   NIH-Birth    BANGLADESH     Food Secure                   0       72     542
6-24 months   NIH-Birth    BANGLADESH     Food Secure                   1        9     542
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          0      327     542
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure          1       94     542
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                 0       29     542
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                 1       11     542
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                   0      402     730
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                   1       36     730
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          0      190     730
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure          1       17     730
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                 0       75     730
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                 1       10     730


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
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
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
![](/tmp/9cd37392-bfe7-4289-acc8-c33a3844e0a8/79ac2c29-ffc5-4984-bda8-97dce8c8f4c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9cd37392-bfe7-4289-acc8-c33a3844e0a8/79ac2c29-ffc5-4984-bda8-97dce8c8f4c0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9cd37392-bfe7-4289-acc8-c33a3844e0a8/79ac2c29-ffc5-4984-bda8-97dce8c8f4c0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9cd37392-bfe7-4289-acc8-c33a3844e0a8/79ac2c29-ffc5-4984-bda8-97dce8c8f4c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.2825735   0.2416267   0.3235203
0-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.2630553   0.1720388   0.3540718
0-24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.3871723   0.2832981   0.4910465
0-24 months   JiVitA-3     BANGLADESH   Food Secure            NA                0.1040156   0.0962582   0.1117730
0-24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.1050738   0.0959268   0.1142207
0-24 months   JiVitA-3     BANGLADESH   Food Insecure          NA                0.1309678   0.1164437   0.1454918
0-24 months   JiVitA-4     BANGLADESH   Food Secure            NA                0.1594172   0.1443604   0.1744740
0-24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.1709692   0.1522701   0.1896684
0-24 months   JiVitA-4     BANGLADESH   Food Insecure          NA                0.1414804   0.1149273   0.1680336
0-24 months   NIH-Birth    BANGLADESH   Food Secure            NA                0.1456747   0.0742182   0.2171312
0-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.2293425   0.1920072   0.2666777
0-24 months   NIH-Birth    BANGLADESH   Food Insecure          NA                0.3057592   0.1630152   0.4485032
0-24 months   NIH-Crypto   BANGLADESH   Food Secure            NA                0.0878753   0.0616980   0.1140526
0-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0915228   0.0528372   0.1302084
0-24 months   NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1292751   0.0554215   0.2031286
0-6 months    JiVitA-3     BANGLADESH   Food Secure            NA                0.0324302   0.0277066   0.0371538
0-6 months    JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.0315368   0.0264130   0.0366605
0-6 months    JiVitA-3     BANGLADESH   Food Insecure          NA                0.0387025   0.0306009   0.0468041
0-6 months    JiVitA-4     BANGLADESH   Food Secure            NA                0.0281287   0.0207100   0.0355473
0-6 months    JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.0264260   0.0168152   0.0360368
0-6 months    JiVitA-4     BANGLADESH   Food Insecure          NA                0.0222075   0.0130102   0.0314047
6-24 months   GMS-Nepal    NEPAL        Food Secure            NA                0.3027335   0.2583958   0.3470711
6-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   NA                0.3138691   0.2083171   0.4194211
6-24 months   GMS-Nepal    NEPAL        Food Insecure          NA                0.4258464   0.3149891   0.5367038
6-24 months   JiVitA-3     BANGLADESH   Food Secure            NA                0.0809611   0.0741361   0.0877860
6-24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   NA                0.0838776   0.0749977   0.0927576
6-24 months   JiVitA-3     BANGLADESH   Food Insecure          NA                0.1054779   0.0925951   0.1183607
6-24 months   JiVitA-4     BANGLADESH   Food Secure            NA                0.1441027   0.1295577   0.1586477
6-24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   NA                0.1572492   0.1397063   0.1747921
6-24 months   JiVitA-4     BANGLADESH   Food Insecure          NA                0.1364463   0.1101453   0.1627474
6-24 months   NIH-Birth    BANGLADESH   Food Secure            NA                0.1111111   0.0426082   0.1796140
6-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   NA                0.2232779   0.1834613   0.2630945
6-24 months   NIH-Birth    BANGLADESH   Food Insecure          NA                0.2750000   0.1364985   0.4135015
6-24 months   NIH-Crypto   BANGLADESH   Food Secure            NA                0.0844642   0.0583013   0.1106270
6-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   NA                0.0770043   0.0408603   0.1131483
6-24 months   NIH-Crypto   BANGLADESH   Food Insecure          NA                0.1147360   0.0474967   0.1819753


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL        NA                   NA                0.2911011   0.2564965   0.3257056
0-24 months   JiVitA-3     BANGLADESH   NA                   NA                0.1096522   0.1044077   0.1148966
0-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.1615413   0.1501758   0.1729068
0-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-6 months    JiVitA-3     BANGLADESH   NA                   NA                0.0337775   0.0308809   0.0366741
0-6 months    JiVitA-4     BANGLADESH   NA                   NA                0.0267062   0.0213205   0.0320920
6-24 months   GMS-Nepal    NEPAL        NA                   NA                0.3211169   0.2828539   0.3593799
6-24 months   JiVitA-3     BANGLADESH   NA                   NA                0.0866585   0.0819882   0.0913288
6-24 months   JiVitA-4     BANGLADESH   NA                   NA                0.1478180   0.1371861   0.1584499
6-24 months   NIH-Birth    BANGLADESH   NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856


### Parameter: RR


agecat        studyid      country      intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -----------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       0.9309271   0.6399576   1.354192
0-24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       1.3701650   1.0100863   1.858606
0-24 months   JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       1.0101736   0.9019414   1.131393
0-24 months   JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.2591171   1.1022785   1.438272
0-24 months   JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.0724638   0.9346962   1.230538
0-24 months   JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.8874853   0.7238803   1.088067
0-24 months   NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       1.5743467   0.9389105   2.639834
0-24 months   NIH-Birth    BANGLADESH   Food Insecure          Food Secure       2.0989179   1.0665433   4.130593
0-24 months   NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       1.0415077   0.6212189   1.746145
0-24 months   NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.4711194   0.7726599   2.800963
0-6 months    JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       0.9724509   0.7839900   1.206215
0-6 months    JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.1934087   0.9205147   1.547204
0-6 months    JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       0.9394692   0.5995582   1.472088
0-6 months    JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.7894953   0.4857041   1.283297
6-24 months   GMS-Nepal    NEPAL        Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal    NEPAL        Mildly Food Insecure   Food Secure       1.0367836   0.7184332   1.496201
6-24 months   GMS-Nepal    NEPAL        Food Insecure          Food Secure       1.4066712   1.0437917   1.895708
6-24 months   JiVitA-3     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3     BANGLADESH   Mildly Food Insecure   Food Secure       1.0360244   0.9066077   1.183915
6-24 months   JiVitA-3     BANGLADESH   Food Insecure          Food Secure       1.3028227   1.1242603   1.509745
6-24 months   JiVitA-4     BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4     BANGLADESH   Mildly Food Insecure   Food Secure       1.0912296   0.9426798   1.263188
6-24 months   JiVitA-4     BANGLADESH   Food Insecure          Food Secure       0.9468686   0.7653151   1.171492
6-24 months   NIH-Birth    BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth    BANGLADESH   Mildly Food Insecure   Food Secure       2.0095012   1.0576908   3.817841
6-24 months   NIH-Birth    BANGLADESH   Food Insecure          Food Secure       2.4750000   1.1164457   5.486720
6-24 months   NIH-Crypto   BANGLADESH   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto   BANGLADESH   Mildly Food Insecure   Food Secure       0.9116803   0.5196704   1.599400
6-24 months   NIH-Crypto   BANGLADESH   Food Insecure          Food Secure       1.3583985   0.7007247   2.633340


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0085276   -0.0142359   0.0312910
0-24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0056366   -0.0008266   0.0120998
0-24 months   JiVitA-4     BANGLADESH   Food Secure          NA                 0.0021241   -0.0077519   0.0120001
0-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.0738766    0.0056177   0.1421355
0-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0057922   -0.0117341   0.0233186
0-6 months    JiVitA-3     BANGLADESH   Food Secure          NA                 0.0013473   -0.0025577   0.0052524
0-6 months    JiVitA-4     BANGLADESH   Food Secure          NA                -0.0014224   -0.0067180   0.0038731
6-24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0183835   -0.0059872   0.0427541
6-24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0056975   -0.0000119   0.0114069
6-24 months   JiVitA-4     BANGLADESH   Food Secure          NA                 0.0037153   -0.0059546   0.0133852
6-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.0992210    0.0323673   0.1660747
6-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0018372   -0.0152564   0.0189308


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0292942   -0.0521303   0.1044171
0-24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0514044   -0.0091107   0.1082904
0-24 months   JiVitA-4     BANGLADESH   Food Secure          NA                 0.0131488   -0.0499281   0.0724362
0-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.3364890   -0.0555253   0.5829121
0-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0618383   -0.1446381   0.2310693
0-6 months    JiVitA-3     BANGLADESH   Food Secure          NA                 0.0398881   -0.0828014   0.1486760
0-6 months    JiVitA-4     BANGLADESH   Food Secure          NA                -0.0532624   -0.2722530   0.1280338
6-24 months   GMS-Nepal    NEPAL        Food Secure          NA                 0.0572485   -0.0217502   0.1301393
6-24 months   JiVitA-3     BANGLADESH   Food Secure          NA                 0.0657463   -0.0020590   0.1289634
6-24 months   JiVitA-4     BANGLADESH   Food Secure          NA                 0.0251343   -0.0426021   0.0884699
6-24 months   NIH-Birth    BANGLADESH   Food Secure          NA                 0.4717349    0.0481092   0.7068319
6-24 months   NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0212880   -0.1981193   0.2005161
