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

**Outcome Variable:** ever_sstunted

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

agecat        studyid                 country        hfoodsec                ever_sstunted   n_cell       n
------------  ----------------------  -------------  ---------------------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                         0      132     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                         1       29     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure                0        2     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure                1        2     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                       0       17     194
0-24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure                       1       12     194
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                         0        3     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                         1        0     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure                0        9     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure                1        2     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                       0      108     129
0-24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure                       1        7     129
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                         0      145     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Secure                         1       45     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure                0        5     212
0-24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure                1        0     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                       0       13     212
0-24 months   ki0047075b-MAL-ED       INDIA          Food Insecure                       1        4     212
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                         0       86     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                         1        8     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure                0       15     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure                1        0     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                       0       13     128
0-24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure                       1        6     128
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                         0       18     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure                         1        9     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure                0       24     113
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure                1        5     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                       0       39     113
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure                       1       18     113
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                         0       97     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                         1       35     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure                0       14     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure                1        5     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                       0       58     233
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                       1       24     233
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                         0       77     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                         1       18     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure                0      339     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure                1      153     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                       0       17     629
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure                       1       25     629
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                         0      400     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                         1       53     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure                0      191     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure                1       28     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                       0       68     758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                       1       18     758
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                         0      322     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                         1      101     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure                0       55     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure                1       27     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                       0       58     584
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure                       1       21     584
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                         0     7234   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                         1     1465   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure                0     4647   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure                1     1139   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                       0     2226   17381
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                       1      670   17381
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                         0     2193    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                         1      556    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure                0     1529    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure                1      418    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                       0      580    5398
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                       1      122    5398
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                         0      152     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                         1        9     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure                0        3     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure                1        1     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                       0       27     194
0-6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure                       1        2     194
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                         0        3     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                         1        0     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure                0        9     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure                1        2     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                       0      108     129
0-6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure                       1        7     129
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                         0      176     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Secure                         1       14     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure                0        5     212
0-6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure                1        0     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                       0       15     212
0-6 months    ki0047075b-MAL-ED       INDIA          Food Insecure                       1        2     212
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                         0       92     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                         1        2     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure                0       15     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure                1        0     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                       0       16     128
0-6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure                       1        3     128
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                         0       24     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Secure                         1        3     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure                0       27     113
0-6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure                1        2     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                       0       46     113
0-6 months    ki0047075b-MAL-ED       PERU           Food Insecure                       1       11     113
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                         0      117     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                         1       15     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure                0       17     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure                1        2     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                       0       76     233
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure                       1        6     233
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                         0       89     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                         1        6     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure                0      444     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure                1       48     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                       0       37     629
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure                       1        5     629
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                         0      430     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                         1       23     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure                0      203     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure                1       16     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                       0       78     758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                       1        8     758
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                         0      396     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                         1       27     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure                0       75     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure                1        7     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                       0       74     584
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure                       1        5     584
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                         0     7669   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                         1     1002   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure                0     4973   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure                1      789   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                       0     2417   17318
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure                       1      468   17318
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                         0     2324    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                         1      271    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure                0     1639    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure                1      186    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                       0      612    5092
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure                       1       60    5092


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/c5afbf7c-bf68-4f93-8f1d-157a8b3ac47e/3484ee5d-2a27-4eed-a746-6f8bfd6a9706/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c5afbf7c-bf68-4f93-8f1d-157a8b3ac47e/3484ee5d-2a27-4eed-a746-6f8bfd6a9706/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c5afbf7c-bf68-4f93-8f1d-157a8b3ac47e/3484ee5d-2a27-4eed-a746-6f8bfd6a9706/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c5afbf7c-bf68-4f93-8f1d-157a8b3ac47e/3484ee5d-2a27-4eed-a746-6f8bfd6a9706/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                0.3333333   0.1547298   0.5119369
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                0.1724138   0.0343207   0.3105069
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                0.3157895   0.1945806   0.4369984
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                0.2651515   0.1896873   0.3406157
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.2631579   0.0647309   0.4615849
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2926829   0.1939912   0.3913747
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.1800710   0.0997733   0.2603688
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.3100408   0.2690589   0.3510226
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.5640928   0.4129268   0.7152589
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.1163921   0.0867236   0.1460606
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1310347   0.0860486   0.1760207
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.2044967   0.1179490   0.2910445
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.2382996   0.1974790   0.2791202
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.3301854   0.2218317   0.4385390
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.2844276   0.1836575   0.3851977
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.1740748   0.1646177   0.1835320
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.1933622   0.1818362   0.2048882
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.2354167   0.2176408   0.2531926
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.2023438   0.1855455   0.2191422
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.2148771   0.1951424   0.2346118
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.1732087   0.1453361   0.2010812
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                0.0631579   0.0142050   0.1121108
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                0.0975610   0.0713213   0.1238006
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                0.1190476   0.0210297   0.2170655
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                0.0507726   0.0305431   0.0710021
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.0730594   0.0385707   0.1075480
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                0.0930233   0.0315934   0.1544531
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                0.0638298   0.0405146   0.0871450
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                0.0853659   0.0248347   0.1458970
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                0.0632911   0.0095533   0.1170290
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                0.1169722   0.1089371   0.1250074
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                0.1330446   0.1234821   0.1426072
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                0.1687051   0.1524726   0.1849377
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                0.1045157   0.0914603   0.1175712
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                0.1018334   0.0866180   0.1170487
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                0.0892459   0.0693090   0.1091828


### Parameter: E(Y)


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.2831858   0.1997451   0.3666266
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.2746781   0.2172425   0.3321138
0-24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.2551370   0.2197504   0.2905236
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.1883666   0.1814510   0.1952822
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.2030382   0.1911640   0.2149123
0-6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.0667808   0.0465165   0.0870451
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.1304423   0.1246194   0.1362652
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.1015318   0.0925643   0.1104993


### Parameter: RR


agecat        studyid                 country        intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -------------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.5172414   0.1973289   1.355801
0-24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure       0.9473684   0.4900879   1.831318
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       0.9924812   0.4433061   2.221984
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.1038328   0.7100190   1.716076
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.7217692   1.0810895   2.742131
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       3.1326128   1.8633153   5.266560
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.1258041   0.7341081   1.726496
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.7569644   1.0718304   2.880049
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.3855892   0.9564330   2.007310
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       1.1935714   0.8053926   1.768843
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.1107990   1.0291546   1.198920
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.3523880   1.2333528   1.482912
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       1.0619406   0.9395299   1.200300
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.8560116   0.7115990   1.029731
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       1.5447154   0.6800516   3.508772
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       1.8849206   0.6084161   5.839632
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.4389518   0.7758332   2.668850
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.8321537   0.8472446   3.962005
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       1.3373984   0.6023565   2.969395
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       0.9915612   0.3934620   2.498827
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       1.1374034   1.0337081   1.251501
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       1.4422664   1.2819079   1.622685
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       0.9743353   0.7999087   1.186797
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       0.8538996   0.6593599   1.105837


### Parameter: PAR


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.0501475   -0.2038280   0.1035331
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0095266   -0.0408834   0.0599366
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.1315347    0.0549715   0.2080979
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0142148   -0.0059222   0.0343518
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0168374   -0.0060176   0.0396923
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0142918    0.0073256   0.0212579
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0006943   -0.0109903   0.0123790
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.0306418   -0.0161820   0.0774656
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0112327   -0.0034383   0.0259036
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0029510   -0.0099628   0.0158649
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0134701    0.0076362   0.0193040
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0029839   -0.0120917   0.0061238


### Parameter: PAF


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                -0.1770833   -0.8662521   0.2575895
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0346828   -0.1674004   0.2017843
0-24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.4221190    0.1182549   0.6212664
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.1088364   -0.0585288   0.2497393
0-24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0659935   -0.0278624   0.1512793
0-24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.0758721    0.0382394   0.1120323
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0034197   -0.0558274   0.0593422
0-6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                 0.3266726   -0.4017699   0.6765733
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                 0.1811564   -0.0867976   0.3830453
0-6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0441899   -0.1696451   0.2189314
0-6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                 0.1032646    0.0573978   0.1468995
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0293889   -0.1230351   0.0564484
