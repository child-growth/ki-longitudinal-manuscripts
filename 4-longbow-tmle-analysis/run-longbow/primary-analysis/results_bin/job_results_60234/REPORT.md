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

agecat        studyid      country        hfoodsec                ever_sstunted   n_cell       n
------------  -----------  -------------  ---------------------  --------------  -------  ------
0-24 months   GMS-Nepal    NEPAL          Food Secure                         0      368     674
0-24 months   GMS-Nepal    NEPAL          Food Secure                         1      111     674
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure                0       77     674
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure                1       29     674
0-24 months   GMS-Nepal    NEPAL          Food Insecure                       0       66     674
0-24 months   GMS-Nepal    NEPAL          Food Insecure                       1       23     674
0-24 months   JiVitA-3     BANGLADESH     Food Secure                         0     7235   17380
0-24 months   JiVitA-3     BANGLADESH     Food Secure                         1     1464   17380
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure                0     4642   17380
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure                1     1143   17380
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                       0     2222   17380
0-24 months   JiVitA-3     BANGLADESH     Food Insecure                       1      674   17380
0-24 months   JiVitA-4     BANGLADESH     Food Secure                         0     2193    5398
0-24 months   JiVitA-4     BANGLADESH     Food Secure                         1      556    5398
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure                0     1528    5398
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure                1      419    5398
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                       0      580    5398
0-24 months   JiVitA-4     BANGLADESH     Food Insecure                       1      122    5398
0-24 months   MAL-ED       BANGLADESH     Food Secure                         0      131     194
0-24 months   MAL-ED       BANGLADESH     Food Secure                         1       30     194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure                0        2     194
0-24 months   MAL-ED       BANGLADESH     Mildly Food Insecure                1        2     194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                       0       17     194
0-24 months   MAL-ED       BANGLADESH     Food Insecure                       1       12     194
0-24 months   MAL-ED       BRAZIL         Food Secure                         0        3     129
0-24 months   MAL-ED       BRAZIL         Food Secure                         1        0     129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure                0        9     129
0-24 months   MAL-ED       BRAZIL         Mildly Food Insecure                1        2     129
0-24 months   MAL-ED       BRAZIL         Food Insecure                       0      104     129
0-24 months   MAL-ED       BRAZIL         Food Insecure                       1       11     129
0-24 months   MAL-ED       INDIA          Food Secure                         0      143     212
0-24 months   MAL-ED       INDIA          Food Secure                         1       47     212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure                0        4     212
0-24 months   MAL-ED       INDIA          Mildly Food Insecure                1        1     212
0-24 months   MAL-ED       INDIA          Food Insecure                       0       13     212
0-24 months   MAL-ED       INDIA          Food Insecure                       1        4     212
0-24 months   MAL-ED       NEPAL          Food Secure                         0       86     128
0-24 months   MAL-ED       NEPAL          Food Secure                         1        8     128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure                0       15     128
0-24 months   MAL-ED       NEPAL          Mildly Food Insecure                1        0     128
0-24 months   MAL-ED       NEPAL          Food Insecure                       0       13     128
0-24 months   MAL-ED       NEPAL          Food Insecure                       1        6     128
0-24 months   MAL-ED       PERU           Food Secure                         0       18     113
0-24 months   MAL-ED       PERU           Food Secure                         1        9     113
0-24 months   MAL-ED       PERU           Mildly Food Insecure                0       24     113
0-24 months   MAL-ED       PERU           Mildly Food Insecure                1        5     113
0-24 months   MAL-ED       PERU           Food Insecure                       0       39     113
0-24 months   MAL-ED       PERU           Food Insecure                       1       18     113
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                         0       97     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure                         1       35     233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure                0       14     233
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure                1        5     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                       0       58     233
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure                       1       24     233
0-24 months   NIH-Birth    BANGLADESH     Food Secure                         0       77     629
0-24 months   NIH-Birth    BANGLADESH     Food Secure                         1       18     629
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure                0      339     629
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure                1      153     629
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                       0       17     629
0-24 months   NIH-Birth    BANGLADESH     Food Insecure                       1       25     629
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                         0      400     758
0-24 months   NIH-Crypto   BANGLADESH     Food Secure                         1       53     758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure                0      191     758
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure                1       28     758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                       0       68     758
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure                       1       18     758
0-6 months    GMS-Nepal    NEPAL          Food Secure                         0      441     674
0-6 months    GMS-Nepal    NEPAL          Food Secure                         1       38     674
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure                0       97     674
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure                1        9     674
0-6 months    GMS-Nepal    NEPAL          Food Insecure                       0       80     674
0-6 months    GMS-Nepal    NEPAL          Food Insecure                       1        9     674
0-6 months    JiVitA-3     BANGLADESH     Food Secure                         0     7670   17317
0-6 months    JiVitA-3     BANGLADESH     Food Secure                         1     1001   17317
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure                0     4968   17317
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure                1      793   17317
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                       0     2412   17317
0-6 months    JiVitA-3     BANGLADESH     Food Insecure                       1      473   17317
0-6 months    JiVitA-4     BANGLADESH     Food Secure                         0     2324    5092
0-6 months    JiVitA-4     BANGLADESH     Food Secure                         1      271    5092
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure                0     1639    5092
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure                1      186    5092
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                       0      612    5092
0-6 months    JiVitA-4     BANGLADESH     Food Insecure                       1       60    5092
0-6 months    MAL-ED       BANGLADESH     Food Secure                         0      152     194
0-6 months    MAL-ED       BANGLADESH     Food Secure                         1        9     194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure                0        3     194
0-6 months    MAL-ED       BANGLADESH     Mildly Food Insecure                1        1     194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                       0       27     194
0-6 months    MAL-ED       BANGLADESH     Food Insecure                       1        2     194
0-6 months    MAL-ED       BRAZIL         Food Secure                         0        3     129
0-6 months    MAL-ED       BRAZIL         Food Secure                         1        0     129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure                0        9     129
0-6 months    MAL-ED       BRAZIL         Mildly Food Insecure                1        2     129
0-6 months    MAL-ED       BRAZIL         Food Insecure                       0      106     129
0-6 months    MAL-ED       BRAZIL         Food Insecure                       1        9     129
0-6 months    MAL-ED       INDIA          Food Secure                         0      175     212
0-6 months    MAL-ED       INDIA          Food Secure                         1       15     212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure                0        5     212
0-6 months    MAL-ED       INDIA          Mildly Food Insecure                1        0     212
0-6 months    MAL-ED       INDIA          Food Insecure                       0       15     212
0-6 months    MAL-ED       INDIA          Food Insecure                       1        2     212
0-6 months    MAL-ED       NEPAL          Food Secure                         0       92     128
0-6 months    MAL-ED       NEPAL          Food Secure                         1        2     128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure                0       15     128
0-6 months    MAL-ED       NEPAL          Mildly Food Insecure                1        0     128
0-6 months    MAL-ED       NEPAL          Food Insecure                       0       16     128
0-6 months    MAL-ED       NEPAL          Food Insecure                       1        3     128
0-6 months    MAL-ED       PERU           Food Secure                         0       24     113
0-6 months    MAL-ED       PERU           Food Secure                         1        3     113
0-6 months    MAL-ED       PERU           Mildly Food Insecure                0       27     113
0-6 months    MAL-ED       PERU           Mildly Food Insecure                1        2     113
0-6 months    MAL-ED       PERU           Food Insecure                       0       46     113
0-6 months    MAL-ED       PERU           Food Insecure                       1       11     113
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                         0      117     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Secure                         1       15     233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure                0       17     233
0-6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure                1        2     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                       0       76     233
0-6 months    MAL-ED       SOUTH AFRICA   Food Insecure                       1        6     233
0-6 months    NIH-Birth    BANGLADESH     Food Secure                         0       89     629
0-6 months    NIH-Birth    BANGLADESH     Food Secure                         1        6     629
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure                0      444     629
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure                1       48     629
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                       0       37     629
0-6 months    NIH-Birth    BANGLADESH     Food Insecure                       1        5     629
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                         0      430     758
0-6 months    NIH-Crypto   BANGLADESH     Food Secure                         1       23     758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure                0      203     758
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure                1       16     758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                       0       78     758
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure                       1        8     758


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/12544c88-583b-449b-b52a-ad5da475fb34/aae95f10-4006-4ecf-b069-09fd65c0e694/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/12544c88-583b-449b-b52a-ad5da475fb34/aae95f10-4006-4ecf-b069-09fd65c0e694/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/12544c88-583b-449b-b52a-ad5da475fb34/aae95f10-4006-4ecf-b069-09fd65c0e694/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/12544c88-583b-449b-b52a-ad5da475fb34/aae95f10-4006-4ecf-b069-09fd65c0e694/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country        intervention_level     baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure            NA                0.2370200   0.1984126   0.2756274
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.2842550   0.1716875   0.3968224
0-24 months   GMS-Nepal    NEPAL          Food Insecure          NA                0.2293785   0.1389558   0.3198011
0-24 months   JiVitA-3     BANGLADESH     Food Secure            NA                0.1888266   0.1782727   0.1993806
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                0.1831679   0.1715381   0.1947976
0-24 months   JiVitA-3     BANGLADESH     Food Insecure          NA                0.2187963   0.1994832   0.2381093
0-24 months   JiVitA-4     BANGLADESH     Food Secure            NA                0.2016626   0.1848713   0.2184539
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.2156674   0.1960379   0.2352969
0-24 months   JiVitA-4     BANGLADESH     Food Insecure          NA                0.1733354   0.1455222   0.2011486
0-24 months   MAL-ED       PERU           Food Secure            NA                0.3333333   0.1547298   0.5119369
0-24 months   MAL-ED       PERU           Mildly Food Insecure   NA                0.1724138   0.0343207   0.3105069
0-24 months   MAL-ED       PERU           Food Insecure          NA                0.3157895   0.1945806   0.4369984
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                0.2651515   0.1896873   0.3406157
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                0.2631579   0.0647309   0.4615849
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                0.2926829   0.1939912   0.3913747
0-24 months   NIH-Birth    BANGLADESH     Food Secure            NA                0.1852229   0.1059785   0.2644674
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.3099313   0.2689261   0.3509365
0-24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                0.5580970   0.4046654   0.7115287
0-24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                0.1199100   0.0899180   0.1499021
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.1226034   0.0790828   0.1661240
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                0.2076477   0.1207440   0.2945513
0-6 months    GMS-Nepal    NEPAL          Food Secure            NA                0.0793319   0.0551117   0.1035522
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                0.0849057   0.0318027   0.1380086
0-6 months    GMS-Nepal    NEPAL          Food Insecure          NA                0.1011236   0.0384403   0.1638069
0-6 months    JiVitA-3     BANGLADESH     Food Secure            NA                0.1277109   0.1183649   0.1370568
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                0.1260213   0.1166249   0.1354177
0-6 months    JiVitA-3     BANGLADESH     Food Insecure          NA                0.1530444   0.1366469   0.1694418
0-6 months    JiVitA-4     BANGLADESH     Food Secure            NA                0.1043738   0.0912923   0.1174552
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                0.1014088   0.0861391   0.1166786
0-6 months    JiVitA-4     BANGLADESH     Food Insecure          NA                0.0910966   0.0708983   0.1112949
0-6 months    NIH-Birth    BANGLADESH     Food Secure            NA                0.0631579   0.0142050   0.1121108
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                0.0975610   0.0713213   0.1238006
0-6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                0.1190476   0.0210297   0.2170655
0-6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                0.0507726   0.0305431   0.0710021
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                0.0730594   0.0385707   0.1075480
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                0.0930233   0.0315934   0.1544531


### Parameter: E(Y)


agecat        studyid      country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal    NEPAL          NA                   NA                0.2418398   0.2094890   0.2741906
0-24 months   JiVitA-3     BANGLADESH     NA                   NA                0.1887802   0.1818268   0.1957336
0-24 months   JiVitA-4     BANGLADESH     NA                   NA                0.2032234   0.1913541   0.2150928
0-24 months   MAL-ED       PERU           NA                   NA                0.2831858   0.1997451   0.3666266
0-24 months   MAL-ED       SOUTH AFRICA   NA                   NA                0.2746781   0.2172425   0.3321138
0-24 months   NIH-Birth    BANGLADESH     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   NIH-Crypto   BANGLADESH     NA                   NA                0.1306069   0.1066024   0.1546113
0-6 months    GMS-Nepal    NEPAL          NA                   NA                0.0830861   0.0622330   0.1039391
0-6 months    JiVitA-3     BANGLADESH     NA                   NA                0.1309118   0.1250608   0.1367629
0-6 months    JiVitA-4     BANGLADESH     NA                   NA                0.1015318   0.0925643   0.1104993
0-6 months    NIH-Birth    BANGLADESH     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    NIH-Crypto   BANGLADESH     NA                   NA                0.0620053   0.0448256   0.0791849


### Parameter: RR


agecat        studyid      country        intervention_level     baseline_level     estimate    ci_lower   ci_upper
------------  -----------  -------------  ---------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.1992870   0.7815635   1.840272
0-24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       0.9677600   0.6321251   1.481605
0-24 months   JiVitA-3     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       0.9700320   0.8949258   1.051441
0-24 months   JiVitA-3     BANGLADESH     Food Insecure          Food Secure       1.1587152   1.0458323   1.283782
0-24 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       1.0694465   0.9469221   1.207825
0-24 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure       0.8595316   0.7148990   1.033425
0-24 months   MAL-ED       PERU           Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure       0.5172414   0.1973289   1.355801
0-24 months   MAL-ED       PERU           Food Insecure          Food Secure       0.9473684   0.4900879   1.831318
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       0.9924812   0.4433061   2.221984
0-24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       1.1038328   0.7100190   1.716076
0-24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.6732878   1.0688787   2.619467
0-24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       3.0131095   1.8117314   5.011134
0-24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.0224615   0.6630083   1.576794
0-24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.7316952   1.0637154   2.819145
0-6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       1.0702582   0.5336190   2.146574
0-6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       1.2746895   0.6387309   2.543846
0-6 months    JiVitA-3     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       0.9867700   0.8931143   1.090247
0-6 months    JiVitA-3     BANGLADESH     Food Insecure          Food Secure       1.1983659   1.0540362   1.362459
0-6 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       0.9715930   0.7969390   1.184524
0-6 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure       0.8727922   0.6748774   1.128748
0-6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       1.5447154   0.6800516   3.508772
0-6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       1.8849206   0.6084161   5.839632
0-6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure       1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       1.4389518   0.7758332   2.668850
0-6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       1.8321537   0.8472446   3.962005


### Parameter: PAR


agecat        studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0048198   -0.0168250   0.0264646
0-24 months   JiVitA-3     BANGLADESH     Food Secure          NA                -0.0000464   -0.0083490   0.0082562
0-24 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0015608   -0.0100513   0.0131729
0-24 months   MAL-ED       PERU           Food Secure          NA                -0.0501475   -0.2038280   0.1035331
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0095266   -0.0408834   0.0599366
0-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.1263828    0.0508103   0.2019553
0-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0106968   -0.0096188   0.0310124
0-6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0037541   -0.0099451   0.0174533
0-6 months    JiVitA-3     BANGLADESH     Food Secure          NA                 0.0032009   -0.0040731   0.0104750
0-6 months    JiVitA-4     BANGLADESH     Food Secure          NA                -0.0028420   -0.0119338   0.0062499
0-6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.0306418   -0.0161820   0.0774656
0-6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0112327   -0.0034383   0.0259036


### Parameter: PAF


agecat        studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal    NEPAL          Food Secure          NA                 0.0199297   -0.0737771   0.1054589
0-24 months   JiVitA-3     BANGLADESH     Food Secure          NA                -0.0002459   -0.0452078   0.0427818
0-24 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0076801   -0.0511491   0.0632169
0-24 months   MAL-ED       PERU           Food Secure          NA                -0.1770833   -0.8662521   0.2575895
0-24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0346828   -0.1674004   0.2017843
0-24 months   NIH-Birth    BANGLADESH     Food Secure          NA                 0.4055855    0.1088527   0.6035128
0-24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0819008   -0.0868270   0.2244340
0-6 months    GMS-Nepal    NEPAL          Food Secure          NA                 0.0451834   -0.1344042   0.1963405
0-6 months    JiVitA-3     BANGLADESH     Food Secure          NA                 0.0244510   -0.0327403   0.0784752
0-6 months    JiVitA-4     BANGLADESH     Food Secure          NA                -0.0279908   -0.1214579   0.0576864
0-6 months    NIH-Birth    BANGLADESH     Food Secure          NA                 0.3266726   -0.4017699   0.6765733
0-6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                 0.1811564   -0.0867976   0.3830453
