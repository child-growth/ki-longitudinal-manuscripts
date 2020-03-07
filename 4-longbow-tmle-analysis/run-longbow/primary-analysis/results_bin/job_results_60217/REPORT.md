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

**Outcome Variable:** ever_stunted

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
* delta_sex
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

agecat        studyid      country        hfoodsec                ever_stunted   n_cell       n
------------  -----------  -------------  ---------------------  -------------  -------  ------
0-24 months   GMS-Nepal    NEPAL          Food Secure                        0      181     674
0-24 months   GMS-Nepal    NEPAL          Food Secure                        1      298     674
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               0       38     674
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               1       68     674
0-24 months   GMS-Nepal    NEPAL          Food Insecure                      0       26     674
0-24 months   GMS-Nepal    NEPAL          Food Insecure                      1       63     674
0-24 months   JiVitA-3     BANGLADESH     Food Secure                        0     4441   17380
0-24 months   JiVitA-3     BANGLADESH     Food Secure                        1     4258   17380
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure               0     2618   17380
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure               1     3167   17380
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                      0     1212   17380
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                      1     1684   17380
0-24 months   JiVitA-4     BANGLADESH     Food Secure                        0     1143    5398
0-24 months   JiVitA-4     BANGLADESH     Food Secure                        1     1606    5398
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure               0      812    5398
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure               1     1135    5398
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                      0      305    5398
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                      1      397    5398
0-24 months   MAL-ED       BANGLADESH     Food Secure                        0       61     194
0-24 months   MAL-ED       BANGLADESH     Food Secure                        1      100     194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               0        1     194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               1        3     194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                      0       10     194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                      1       19     194
0-24 months   MAL-ED       BRAZIL         Food Secure                        0        3     129
0-24 months   MAL-ED       BRAZIL         Food Secure                        1        0     129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               0        7     129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               1        4     129
0-24 months   MAL-ED       BRAZIL         Food Insecure                      0       84     129
0-24 months   MAL-ED       BRAZIL         Food Insecure                      1       31     129
0-24 months   MAL-ED       INDIA          Food Secure                        0       66     212
0-24 months   MAL-ED       INDIA          Food Secure                        1      124     212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure               0        4     212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure               1        1     212
0-24 months   MAL-ED       INDIA          Food Insecure                      0        7     212
0-24 months   MAL-ED       INDIA          Food Insecure                      1       10     212
0-24 months   MAL-ED       NEPAL          Food Secure                        0       63     128
0-24 months   MAL-ED       NEPAL          Food Secure                        1       31     128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure               0        9     128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure               1        6     128
0-24 months   MAL-ED       NEPAL          Food Insecure                      0        9     128
0-24 months   MAL-ED       NEPAL          Food Insecure                      1       10     128
0-24 months   MAL-ED       PERU           Food Secure                        0        6     113
0-24 months   MAL-ED       PERU           Food Secure                        1       21     113
0-24 months   MAL-ED       PERU           Mildly Food Insecure               0        8     113
0-24 months   MAL-ED       PERU           Mildly Food Insecure               1       21     113
0-24 months   MAL-ED       PERU           Food Insecure                      0       17     113
0-24 months   MAL-ED       PERU           Food Insecure                      1       40     113
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        0       55     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        1       77     233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       10     233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        9     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      0       25     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      1       57     233
0-24 months   NIH-Birth    BANGLADESH     Food Secure                        0       44     629
0-24 months   NIH-Birth    BANGLADESH     Food Secure                        1       51     629
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               0      159     629
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               1      333     629
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                      0        8     629
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                      1       34     629
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                        0      243     758
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                        1      210     758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      113     758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               1      106     758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      0       40     758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      1       46     758
0-6 months    GMS-Nepal    NEPAL          Food Secure                        0      337     674
0-6 months    GMS-Nepal    NEPAL          Food Secure                        1      142     674
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure               0       66     674
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure               1       40     674
0-6 months    GMS-Nepal    NEPAL          Food Insecure                      0       58     674
0-6 months    GMS-Nepal    NEPAL          Food Insecure                      1       31     674
0-6 months    JiVitA-3     BANGLADESH     Food Secure                        0     5485   17317
0-6 months    JiVitA-3     BANGLADESH     Food Secure                        1     3186   17317
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure               0     3352   17317
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure               1     2409   17317
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                      0     1631   17317
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                      1     1254   17317
0-6 months    JiVitA-4     BANGLADESH     Food Secure                        0     1662    5092
0-6 months    JiVitA-4     BANGLADESH     Food Secure                        1      933    5092
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure               0     1189    5092
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure               1      636    5092
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                      0      467    5092
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                      1      205    5092
0-6 months    MAL-ED       BANGLADESH     Food Secure                        0      109     194
0-6 months    MAL-ED       BANGLADESH     Food Secure                        1       52     194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure               0        2     194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure               1        2     194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                      0       20     194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                      1        9     194
0-6 months    MAL-ED       BRAZIL         Food Secure                        0        3     129
0-6 months    MAL-ED       BRAZIL         Food Secure                        1        0     129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure               0        7     129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure               1        4     129
0-6 months    MAL-ED       BRAZIL         Food Insecure                      0       91     129
0-6 months    MAL-ED       BRAZIL         Food Insecure                      1       24     129
0-6 months    MAL-ED       INDIA          Food Secure                        0      122     212
0-6 months    MAL-ED       INDIA          Food Secure                        1       68     212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure               0        5     212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure               1        0     212
0-6 months    MAL-ED       INDIA          Food Insecure                      0       13     212
0-6 months    MAL-ED       INDIA          Food Insecure                      1        4     212
0-6 months    MAL-ED       NEPAL          Food Secure                        0       81     128
0-6 months    MAL-ED       NEPAL          Food Secure                        1       13     128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure               0       12     128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure               1        3     128
0-6 months    MAL-ED       NEPAL          Food Insecure                      0       12     128
0-6 months    MAL-ED       NEPAL          Food Insecure                      1        7     128
0-6 months    MAL-ED       PERU           Food Secure                        0       13     113
0-6 months    MAL-ED       PERU           Food Secure                        1       14     113
0-6 months    MAL-ED       PERU           Mildly Food Insecure               0       17     113
0-6 months    MAL-ED       PERU           Mildly Food Insecure               1       12     113
0-6 months    MAL-ED       PERU           Food Insecure                      0       32     113
0-6 months    MAL-ED       PERU           Food Insecure                      1       25     113
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                        0       80     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                        1       52     233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       16     233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        3     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                      0       49     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                      1       33     233
0-6 months    NIH-Birth    BANGLADESH     Food Secure                        0       65     629
0-6 months    NIH-Birth    BANGLADESH     Food Secure                        1       30     629
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure               0      320     629
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure               1      172     629
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                      0       24     629
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                      1       18     629
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                        0      325     758
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                        1      128     758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      146     758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       73     758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                      0       58     758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                      1       28     758
6-24 months   GMS-Nepal    NEPAL          Food Secure                        0      132     387
6-24 months   GMS-Nepal    NEPAL          Food Secure                        1      156     387
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               0       20     387
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure               1       28     387
6-24 months   GMS-Nepal    NEPAL          Food Insecure                      0       19     387
6-24 months   GMS-Nepal    NEPAL          Food Insecure                      1       32     387
6-24 months   JiVitA-3     BANGLADESH     Food Secure                        0     4411   10458
6-24 months   JiVitA-3     BANGLADESH     Food Secure                        1     1072   10458
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure               0     2594   10458
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure               1      758   10458
6-24 months   JiVitA-3     BANGLADESH     Food Insecure                      0     1193   10458
6-24 months   JiVitA-3     BANGLADESH     Food Insecure                      1      430   10458
6-24 months   JiVitA-4     BANGLADESH     Food Secure                        0     1137    3615
6-24 months   JiVitA-4     BANGLADESH     Food Secure                        1      673    3615
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure               0      811    3615
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure               1      499    3615
6-24 months   JiVitA-4     BANGLADESH     Food Insecure                      0      303    3615
6-24 months   JiVitA-4     BANGLADESH     Food Insecure                      1      192    3615
6-24 months   MAL-ED       BANGLADESH     Food Secure                        0       61     131
6-24 months   MAL-ED       BANGLADESH     Food Secure                        1       48     131
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               0        1     131
6-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure               1        1     131
6-24 months   MAL-ED       BANGLADESH     Food Insecure                      0       10     131
6-24 months   MAL-ED       BANGLADESH     Food Insecure                      1       10     131
6-24 months   MAL-ED       BRAZIL         Food Secure                        0        3     101
6-24 months   MAL-ED       BRAZIL         Food Secure                        1        0     101
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               0        7     101
6-24 months   MAL-ED       BRAZIL         Mildly Food Insecure               1        0     101
6-24 months   MAL-ED       BRAZIL         Food Insecure                      0       84     101
6-24 months   MAL-ED       BRAZIL         Food Insecure                      1        7     101
6-24 months   MAL-ED       INDIA          Food Secure                        0       66     140
6-24 months   MAL-ED       INDIA          Food Secure                        1       56     140
6-24 months   MAL-ED       INDIA          Mildly Food Insecure               0        4     140
6-24 months   MAL-ED       INDIA          Mildly Food Insecure               1        1     140
6-24 months   MAL-ED       INDIA          Food Insecure                      0        7     140
6-24 months   MAL-ED       INDIA          Food Insecure                      1        6     140
6-24 months   MAL-ED       NEPAL          Food Secure                        0       63     105
6-24 months   MAL-ED       NEPAL          Food Secure                        1       18     105
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure               0        9     105
6-24 months   MAL-ED       NEPAL          Mildly Food Insecure               1        3     105
6-24 months   MAL-ED       NEPAL          Food Insecure                      0        9     105
6-24 months   MAL-ED       NEPAL          Food Insecure                      1        3     105
6-24 months   MAL-ED       PERU           Food Secure                        0        6      61
6-24 months   MAL-ED       PERU           Food Secure                        1        7      61
6-24 months   MAL-ED       PERU           Mildly Food Insecure               0        7      61
6-24 months   MAL-ED       PERU           Mildly Food Insecure               1        9      61
6-24 months   MAL-ED       PERU           Food Insecure                      0       17      61
6-24 months   MAL-ED       PERU           Food Insecure                      1       15      61
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        0       54     144
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure                        1       25     144
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               0       10     144
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure               1        6     144
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      0       25     144
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                      1       24     144
6-24 months   NIH-Birth    BANGLADESH     Food Secure                        0       35     345
6-24 months   NIH-Birth    BANGLADESH     Food Secure                        1       21     345
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               0      106     345
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure               1      161     345
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                      0        6     345
6-24 months   NIH-Birth    BANGLADESH     Food Insecure                      1       16     345
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                        0      232     506
6-24 months   NIH-Crypto   BANGLADESH     Food Secure                        1       82     506
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               0      101     506
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure               1       33     506
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      0       40     506
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure                      1       18     506


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
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/a2a16f19-1566-4121-a685-e7d52379d0c5/c6cb16cf-a52a-456d-9a44-475ab7f1ed6e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a2a16f19-1566-4121-a685-e7d52379d0c5/c6cb16cf-a52a-456d-9a44-475ab7f1ed6e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a2a16f19-1566-4121-a685-e7d52379d0c5/c6cb16cf-a52a-456d-9a44-475ab7f1ed6e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a2a16f19-1566-4121-a685-e7d52379d0c5/c6cb16cf-a52a-456d-9a44-475ab7f1ed6e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure            NA                0.6251971   0.5816137   0.6687805
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.6409220   0.5456654   0.7361787
0-24 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.6918234   0.5947851   0.7888617
0-24 months   JiVitA-3     BANGLADESH     Food Secure            NA                0.5239789   0.5110256   0.5369322
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                0.5220457   0.5058595   0.5382318
0-24 months   JiVitA-3     BANGLADESH     Food Insecure          NA                0.5348548   0.5115446   0.5581651
0-24 months   JiVitA-4     BANGLADESH     Food Secure            NA                0.5835651   0.5612713   0.6058589
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.5833284   0.5577798   0.6088771
0-24 months   JiVitA-4     BANGLADESH     Food Insecure          NA                0.5680240   0.5251220   0.6109259
0-24 months   MAL-ED       NEPAL          Food Secure            NA                0.3297872   0.2343736   0.4252009
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                0.4000000   0.1511078   0.6488922
0-24 months   MAL-ED       NEPAL          Food Insecure          NA                0.5263158   0.3009219   0.7517096
0-24 months   MAL-ED       PERU           Food Secure            NA                0.7777778   0.6202642   0.9352913
0-24 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.7241379   0.5607440   0.8875319
0-24 months   MAL-ED       PERU           Food Insecure          NA                0.7017544   0.5824599   0.8210489
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.5833333   0.4990488   0.6676179
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.4736842   0.2486892   0.6986792
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.6951220   0.5952672   0.7949767
0-24 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.5368421   0.4364916   0.6371926
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.6768293   0.6354706   0.7181879
0-24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.8095238   0.6906725   0.9283752
0-24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.4721978   0.4263493   0.5180462
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.4693459   0.4038944   0.5347973
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.5262521   0.4213885   0.6311156
0-6 months    GMS-Nepal    NEPAL          Food Secure            NA                0.3066437   0.2645681   0.3487193
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.3643758   0.2527659   0.4759856
0-6 months    GMS-Nepal    NEPAL          Food Insecure          NA                0.2977437   0.1966954   0.3987920
0-6 months    JiVitA-3     BANGLADESH     Food Secure            NA                0.3992408   0.3858901   0.4125915
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                0.3943155   0.3784604   0.4101706
0-6 months    JiVitA-3     BANGLADESH     Food Insecure          NA                0.4079387   0.3851033   0.4307742
0-6 months    JiVitA-4     BANGLADESH     Food Secure            NA                0.3589331   0.3377474   0.3801187
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.3476149   0.3224895   0.3727403
0-6 months    JiVitA-4     BANGLADESH     Food Insecure          NA                0.3071832   0.2695143   0.3448521
0-6 months    MAL-ED       PERU           Food Secure            NA                0.5171178   0.3270607   0.7071750
0-6 months    MAL-ED       PERU           Mildly Food Insecure   NA                0.4264148   0.2406572   0.6121723
0-6 months    MAL-ED       PERU           Food Insecure          NA                0.4416829   0.3111655   0.5722003
0-6 months    NIH-Birth    BANGLADESH     Food Secure            NA                0.3206900   0.2258722   0.4155078
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.3505035   0.3082518   0.3927552
0-6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                0.4334496   0.2807087   0.5861905
0-6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                0.2820353   0.2405316   0.3235390
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.3356674   0.2728951   0.3984398
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3282995   0.2278764   0.4287226
6-24 months   GMS-Nepal    NEPAL          Food Secure            NA                0.5437074   0.4858990   0.6015158
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.5834294   0.4401328   0.7267259
6-24 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.6374394   0.5014450   0.7734337
6-24 months   JiVitA-3     BANGLADESH     Food Secure            NA                0.2122326   0.1990018   0.2254633
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                0.2135776   0.1960113   0.2311439
6-24 months   JiVitA-3     BANGLADESH     Food Insecure          NA                0.2266074   0.2019338   0.2512811
6-24 months   JiVitA-4     BANGLADESH     Food Secure            NA                0.3709683   0.3449607   0.3969760
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.3821268   0.3510035   0.4132500
6-24 months   JiVitA-4     BANGLADESH     Food Insecure          NA                0.3897717   0.3419117   0.4376318
6-24 months   MAL-ED       PERU           Food Secure            NA                0.5384615   0.2652198   0.8117033
6-24 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.5625000   0.3174088   0.8075912
6-24 months   MAL-ED       PERU           Food Insecure          NA                0.4687500   0.2944158   0.6430842
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.3164557   0.2135386   0.4193728
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.3750000   0.1369561   0.6130439
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.4897959   0.3493391   0.6302527
6-24 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.3750000   0.2480186   0.5019814
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.6029963   0.5442233   0.6617692
6-24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.7272727   0.5409010   0.9136444
6-24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.2623502   0.2136572   0.3110431
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.2411886   0.1678423   0.3145349
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.3098621   0.1880826   0.4316415


### Parameter: E(Y)


agecat        studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL          NA                   NA                0.6364985   0.6001579   0.6728391
0-24 months   JiVitA-3     BANGLADESH     NA                   NA                0.5241082   0.5145463   0.5336700
0-24 months   JiVitA-4     BANGLADESH     NA                   NA                0.5813264   0.5653125   0.5973403
0-24 months   MAL-ED       NEPAL          NA                   NA                0.3671875   0.2833521   0.4510229
0-24 months   MAL-ED       PERU           NA                   NA                0.7256637   0.6430317   0.8082957
0-24 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.6137339   0.5510815   0.6763863
0-24 months   NIH-Birth    BANGLADESH     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   NIH-Crypto   BANGLADESH     NA                   NA                0.4775726   0.4419904   0.5131548
0-6 months    GMS-Nepal    NEPAL          NA                   NA                0.3160237   0.2808984   0.3511491
0-6 months    JiVitA-3     BANGLADESH     NA                   NA                0.3955073   0.3867171   0.4042976
0-6 months    JiVitA-4     BANGLADESH     NA                   NA                0.3483896   0.3331073   0.3636720
0-6 months    MAL-ED       PERU           NA                   NA                0.4513274   0.3591676   0.5434872
0-6 months    NIH-Birth    BANGLADESH     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    NIH-Crypto   BANGLADESH     NA                   NA                0.3021108   0.2694011   0.3348205
6-24 months   GMS-Nepal    NEPAL          NA                   NA                0.5581395   0.5085981   0.6076809
6-24 months   JiVitA-3     BANGLADESH     NA                   NA                0.2161025   0.2066983   0.2255067
6-24 months   JiVitA-4     BANGLADESH     NA                   NA                0.3773167   0.3586399   0.3959936
6-24 months   MAL-ED       PERU           NA                   NA                0.5081967   0.3816986   0.6346949
6-24 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.3819444   0.3023113   0.4615776
6-24 months   NIH-Birth    BANGLADESH     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   NIH-Crypto   BANGLADESH     NA                   NA                0.2628458   0.2244546   0.3012371


### Parameter: RR


agecat        studyid      country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.0251520   0.8699457   1.2080486
0-24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       1.1065686   0.9460810   1.2942803
0-24 months   JiVitA-3     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       0.9963105   0.9607517   1.0331853
0-24 months   JiVitA-3     BANGLADESH     Food Insecure          Food Secure       1.0207565   0.9737446   1.0700381
0-24 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       0.9995944   0.9430553   1.0595233
0-24 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure       0.9733687   0.8943554   1.0593626
0-24 months   MAL-ED       NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       1.2129032   0.6106769   2.4090222
0-24 months   MAL-ED       NEPAL          Food Insecure          Food Secure       1.5959253   0.9518332   2.6758654
0-24 months   MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.9310345   0.6875281   1.2607852
0-24 months   MAL-ED       PERU           Food Insecure          Food Secure       0.9022556   0.6926259   1.1753317
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       0.8120301   0.4942582   1.3341060
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.1916376   0.9719830   1.4609312
0-24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.2607604   1.0356748   1.5347643
0-24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       1.5079365   1.1889272   1.9125414
0-24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       0.9939603   0.8398062   1.1764109
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1144738   0.8939358   1.3894197
0-6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.1882709   0.8494836   1.6621717
0-6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       0.9709762   0.6734735   1.3998990
0-6 months    JiVitA-3     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       0.9876634   0.9386252   1.0392636
0-6 months    JiVitA-3     BANGLADESH     Food Insecure          Food Secure       1.0217863   0.9588220   1.0888853
0-6 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       0.9684672   0.8835268   1.0615736
0-6 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure       0.8558230   0.7467393   0.9808415
0-6 months    MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.8245989   0.4676775   1.4539151
0-6 months    MAL-ED       PERU           Food Insecure          Food Secure       0.8541244   0.5311929   1.3733775
0-6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.0929668   0.7940441   1.5044208
0-6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       1.3516156   0.8532988   2.1409438
0-6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1901612   0.9381226   1.5099130
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1640370   0.8288834   1.6347078
6-24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.0730576   0.8213464   1.4019085
6-24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       1.1723941   0.9233429   1.4886213
6-24 months   JiVitA-3     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       1.0063375   0.9093653   1.1136506
6-24 months   JiVitA-3     BANGLADESH     Food Insecure          Food Secure       1.0677317   0.9491234   1.2011621
6-24 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       1.0300792   0.9249647   1.1471390
6-24 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure       1.0506873   0.9130433   1.2090817
6-24 months   MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure       1.0446429   0.5351702   2.0391245
6-24 months   MAL-ED       PERU           Food Insecure          Food Secure       0.8705357   0.4640367   1.6331303
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       1.1850000   0.5807115   2.4181113
6-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.5477551   1.0032193   2.3878586
6-24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.6079900   1.1304540   2.2872508
6-24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       1.9393939   1.2683556   2.9654529
6-24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       0.9193385   0.6440980   1.3121967
6-24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.1811011   0.7649701   1.8236005


### Parameter: PAR


agecat        studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0113014   -0.0118356   0.0344385
0-24 months   JiVitA-3     BANGLADESH     Food Secure          NA                 0.0001293   -0.0092776   0.0095362
0-24 months   JiVitA-4     BANGLADESH     Food Secure          NA                -0.0022387   -0.0180340   0.0135566
0-24 months   MAL-ED       NEPAL          Food Secure          NA                 0.0374003   -0.0151449   0.0899454
0-24 months   MAL-ED       PERU           Food Secure          NA                -0.0521141   -0.1927633   0.0885352
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0304006   -0.0241903   0.0849915
0-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.1277048    0.0360971   0.2193125
0-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0053748   -0.0232663   0.0340159
0-6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0093801   -0.0146398   0.0333999
0-6 months    JiVitA-3     BANGLADESH     Food Secure          NA                -0.0037335   -0.0138583   0.0063914
0-6 months    JiVitA-4     BANGLADESH     Food Secure          NA                -0.0105435   -0.0251794   0.0040925
0-6 months    MAL-ED       PERU           Food Secure          NA                -0.0657904   -0.2319931   0.1004124
0-6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.0290715   -0.0587271   0.1168702
0-6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0200755   -0.0070584   0.0472095
6-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0144321   -0.0149243   0.0437885
6-24 months   JiVitA-3     BANGLADESH     Food Secure          NA                 0.0038699   -0.0060866   0.0138264
6-24 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0063484   -0.0121853   0.0248821
6-24 months   MAL-ED       PERU           Food Secure          NA                -0.0302648   -0.2728345   0.2123049
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0654887   -0.0073924   0.1383699
6-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.1989130    0.0822062   0.3156198
6-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0004957   -0.0295827   0.0305741


### Parameter: PAF


agecat        studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0177556   -0.0193178   0.0534807
0-24 months   JiVitA-3     BANGLADESH     Food Secure          NA                 0.0002467   -0.0178634   0.0180346
0-24 months   JiVitA-4     BANGLADESH     Food Secure          NA                -0.0038510   -0.0313953   0.0229577
0-24 months   MAL-ED       NEPAL          Food Secure          NA                 0.1018560   -0.0533699   0.2342077
0-24 months   MAL-ED       PERU           Food Secure          NA                -0.0718157   -0.2852318   0.1061621
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0495338   -0.0440285   0.1347113
0-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.1921682    0.0407818   0.3196624
0-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0112544   -0.0505871   0.0694556
0-6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0296815   -0.0493731   0.1027805
0-6 months    JiVitA-3     BANGLADESH     Food Secure          NA                -0.0094397   -0.0353694   0.0158406
0-6 months    JiVitA-4     BANGLADESH     Food Secure          NA                -0.0302634   -0.0731605   0.0109190
0-6 months    MAL-ED       PERU           Food Secure          NA                -0.1457708   -0.5817373   0.1700323
0-6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.0831181   -0.2056429   0.3027186
0-6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0664509   -0.0277701   0.1520341
6-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0258575   -0.0282594   0.0771263
6-24 months   JiVitA-3     BANGLADESH     Food Secure          NA                 0.0179079   -0.0292153   0.0628734
6-24 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0168251   -0.0335296   0.0647265
6-24 months   MAL-ED       PERU           Food Secure          NA                -0.0595533   -0.6629489   0.3249021
6-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.1714614   -0.0432176   0.3419627
6-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.3465909    0.1055065   0.5226981
6-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0018859   -0.1193652   0.1100029
