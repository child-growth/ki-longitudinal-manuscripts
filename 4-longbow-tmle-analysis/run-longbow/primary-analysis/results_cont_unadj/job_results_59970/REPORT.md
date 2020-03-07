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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid      country        hfoodsec                n_cell       n
----------  -----------  -------------  ---------------------  -------  ------
Birth       GMS-Nepal    NEPAL          Food Secure                477     672
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure       106     672
Birth       GMS-Nepal    NEPAL          Food Insecure               89     672
Birth       JiVitA-3     BANGLADESH     Food Secure               6951   14364
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure      4877   14364
Birth       JiVitA-3     BANGLADESH     Food Insecure             2536   14364
Birth       JiVitA-4     BANGLADESH     Food Secure               1433    2810
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure      1018    2810
Birth       JiVitA-4     BANGLADESH     Food Insecure              359    2810
Birth       MAL-ED       BANGLADESH     Food Secure                144     172
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure         4     172
Birth       MAL-ED       BANGLADESH     Food Insecure               24     172
Birth       MAL-ED       BRAZIL         Food Secure                  0      28
Birth       MAL-ED       BRAZIL         Mildly Food Insecure         4      28
Birth       MAL-ED       BRAZIL         Food Insecure               24      28
Birth       MAL-ED       INDIA          Food Secure                 34      37
Birth       MAL-ED       INDIA          Mildly Food Insecure         1      37
Birth       MAL-ED       INDIA          Food Insecure                2      37
Birth       MAL-ED       NEPAL          Food Secure                 10      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure         1      14
Birth       MAL-ED       NEPAL          Food Insecure                3      14
Birth       MAL-ED       PERU           Food Secure                 24      91
Birth       MAL-ED       PERU           Mildly Food Insecure        23      91
Birth       MAL-ED       PERU           Food Insecure               44      91
Birth       MAL-ED       SOUTH AFRICA   Food Secure                 45      88
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      88
Birth       MAL-ED       SOUTH AFRICA   Food Insecure               34      88
Birth       NIH-Birth    BANGLADESH     Food Secure                 90     608
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure       478     608
Birth       NIH-Birth    BANGLADESH     Food Insecure               40     608
Birth       NIH-Crypto   BANGLADESH     Food Secure                439     732
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure       209     732
Birth       NIH-Crypto   BANGLADESH     Food Insecure               84     732
6 months    GMS-Nepal    NEPAL          Food Secure                396     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure        76     546
6 months    GMS-Nepal    NEPAL          Food Insecure               74     546
6 months    JiVitA-3     BANGLADESH     Food Secure               8415   16791
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure      5602   16791
6 months    JiVitA-3     BANGLADESH     Food Insecure             2774   16791
6 months    JiVitA-4     BANGLADESH     Food Secure               2442    4793
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure      1729    4793
6 months    JiVitA-4     BANGLADESH     Food Insecure              622    4793
6 months    MAL-ED       BANGLADESH     Food Secure                160     193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure         4     193
6 months    MAL-ED       BANGLADESH     Food Insecure               29     193
6 months    MAL-ED       BRAZIL         Food Secure                  3     129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure        11     129
6 months    MAL-ED       BRAZIL         Food Insecure              115     129
6 months    MAL-ED       INDIA          Food Secure                190     212
6 months    MAL-ED       INDIA          Mildly Food Insecure         5     212
6 months    MAL-ED       INDIA          Food Insecure               17     212
6 months    MAL-ED       NEPAL          Food Secure                 94     128
6 months    MAL-ED       NEPAL          Mildly Food Insecure        15     128
6 months    MAL-ED       NEPAL          Food Insecure               19     128
6 months    MAL-ED       PERU           Food Secure                 27     111
6 months    MAL-ED       PERU           Mildly Food Insecure        28     111
6 months    MAL-ED       PERU           Food Insecure               56     111
6 months    MAL-ED       SOUTH AFRICA   Food Secure                129     228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure               81     228
6 months    NIH-Birth    BANGLADESH     Food Secure                 80     537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure       417     537
6 months    NIH-Birth    BANGLADESH     Food Insecure               40     537
6 months    NIH-Crypto   BANGLADESH     Food Secure                427     715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715
6 months    NIH-Crypto   BANGLADESH     Food Insecure               84     715
24 months   GMS-Nepal    NEPAL          Food Secure                342     478
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67     478
24 months   GMS-Nepal    NEPAL          Food Insecure               69     478
24 months   JiVitA-3     BANGLADESH     Food Secure               3875    8214
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure      2761    8214
24 months   JiVitA-3     BANGLADESH     Food Insecure             1578    8214
24 months   JiVitA-4     BANGLADESH     Food Secure               2399    4713
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1705    4713
24 months   JiVitA-4     BANGLADESH     Food Insecure              609    4713
24 months   MAL-ED       BANGLADESH     Food Secure                161     194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     194
24 months   MAL-ED       BANGLADESH     Food Insecure               29     194
24 months   MAL-ED       BRAZIL         Food Secure                  3     129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure        11     129
24 months   MAL-ED       BRAZIL         Food Insecure              115     129
24 months   MAL-ED       INDIA          Food Secure                190     212
24 months   MAL-ED       INDIA          Mildly Food Insecure         5     212
24 months   MAL-ED       INDIA          Food Insecure               17     212
24 months   MAL-ED       NEPAL          Food Secure                 94     128
24 months   MAL-ED       NEPAL          Mildly Food Insecure        15     128
24 months   MAL-ED       NEPAL          Food Insecure               19     128
24 months   MAL-ED       PERU           Food Secure                 26     107
24 months   MAL-ED       PERU           Mildly Food Insecure        27     107
24 months   MAL-ED       PERU           Food Insecure               54     107
24 months   MAL-ED       SOUTH AFRICA   Food Secure                129     228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure               81     228
24 months   NIH-Birth    BANGLADESH     Food Secure                 68     429
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       328     429
24 months   NIH-Birth    BANGLADESH     Food Insecure               33     429
24 months   NIH-Crypto   BANGLADESH     Food Secure                334     514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514
24 months   NIH-Crypto   BANGLADESH     Food Insecure               56     514


The following strata were considered:

* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

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
![](/tmp/d03a8235-0d99-40cd-b3a3-ba23522aaab1/c0e5482d-56d4-4c80-ae4b-456d34f0831c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d03a8235-0d99-40cd-b3a3-ba23522aaab1/c0e5482d-56d4-4c80-ae4b-456d34f0831c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d03a8235-0d99-40cd-b3a3-ba23522aaab1/c0e5482d-56d4-4c80-ae4b-456d34f0831c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            NA                -1.0198323   -1.1147037   -0.9249609
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -1.1733962   -1.3699984   -0.9767941
Birth       GMS-Nepal    NEPAL          Food Insecure          NA                -1.2851685   -1.5305036   -1.0398335
Birth       JiVitA-3     BANGLADESH     Food Secure            NA                -1.4861660   -1.5160218   -1.4563102
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -1.5841685   -1.6200261   -1.5483110
Birth       JiVitA-3     BANGLADESH     Food Insecure          NA                -1.5885292   -1.6377550   -1.5393033
Birth       JiVitA-4     BANGLADESH     Food Secure            NA                -1.5434334   -1.6113093   -1.4755574
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.4989391   -1.5841895   -1.4136887
Birth       JiVitA-4     BANGLADESH     Food Insecure          NA                -1.5243175   -1.6442740   -1.4043611
Birth       MAL-ED       PERU           Food Secure            NA                -1.0358333   -1.4468365   -0.6248301
Birth       MAL-ED       PERU           Mildly Food Insecure   NA                -0.8791304   -1.2697827   -0.4884782
Birth       MAL-ED       PERU           Food Insecure          NA                -0.9381818   -1.1902133   -0.6861503
Birth       MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.4535556   -0.7370575   -0.1700536
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0888889   -0.6955550    0.5177773
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.8005882   -1.1433809   -0.4577955
Birth       NIH-Birth    BANGLADESH     Food Secure            NA                -0.7476667   -0.9526135   -0.5427198
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.9538075   -1.0525090   -0.8551061
Birth       NIH-Birth    BANGLADESH     Food Insecure          NA                -1.0712500   -1.5239779   -0.6185221
Birth       NIH-Crypto   BANGLADESH     Food Secure            NA                -0.8490433   -0.9366509   -0.7614356
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.9926316   -1.1307404   -0.8545227
Birth       NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.0185714   -1.2587297   -0.7784132
6 months    GMS-Nepal    NEPAL          Food Secure            NA                -1.3118140   -1.4036500   -1.2199779
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -1.4443421   -1.6584481   -1.2302362
6 months    GMS-Nepal    NEPAL          Food Insecure          NA                -1.3997297   -1.5991754   -1.2002841
6 months    JiVitA-3     BANGLADESH     Food Secure            NA                -1.2085241   -1.2373871   -1.1796610
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -1.3834470   -1.4145136   -1.3523804
6 months    JiVitA-3     BANGLADESH     Food Insecure          NA                -1.4884679   -1.5371084   -1.4398274
6 months    JiVitA-4     BANGLADESH     Food Secure            NA                -1.3516687   -1.4036005   -1.2997369
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.3494563   -1.4092035   -1.2897092
6 months    JiVitA-4     BANGLADESH     Food Insecure          NA                -1.3040354   -1.3938912   -1.2141795
6 months    MAL-ED       INDIA          Food Secure            NA                -1.2287544   -1.3589893   -1.0985195
6 months    MAL-ED       INDIA          Mildly Food Insecure   NA                -0.6360000   -0.9019405   -0.3700595
6 months    MAL-ED       INDIA          Food Insecure          NA                -1.0694118   -1.5456747   -0.5931488
6 months    MAL-ED       NEPAL          Food Secure            NA                -0.5194681   -0.6784051   -0.3605311
6 months    MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.6463333   -1.0577510   -0.2349156
6 months    MAL-ED       NEPAL          Food Insecure          NA                -1.1388596   -1.6144149   -0.6633044
6 months    MAL-ED       PERU           Food Secure            NA                -1.5010494   -1.9103743   -1.0917244
6 months    MAL-ED       PERU           Mildly Food Insecure   NA                -1.1423214   -1.5197567   -0.7648862
6 months    MAL-ED       PERU           Food Insecure          NA                -1.4372619   -1.6697518   -1.2047720
6 months    MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.0117700   -1.1866003   -0.8369397
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.7707407   -1.3286896   -0.2127919
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.1839918   -1.4133758   -0.9546077
6 months    NIH-Birth    BANGLADESH     Food Secure            NA                -1.1268542   -1.3747544   -0.8789539
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -1.4343905   -1.5303921   -1.3383889
6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                -1.6868750   -2.0695528   -1.3041972
6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                -1.1502927   -1.2422659   -1.0583196
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2534804   -1.3885153   -1.1184455
6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.3115476   -1.5163063   -1.1067890
24 months   GMS-Nepal    NEPAL          Food Secure            NA                -1.7925731   -1.8940179   -1.6911283
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -2.1037313   -2.3208239   -1.8866388
24 months   GMS-Nepal    NEPAL          Food Insecure          NA                -2.0672464   -2.3018311   -1.8326616
24 months   JiVitA-3     BANGLADESH     Food Secure            NA                -1.8907019   -1.9289729   -1.8524309
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -2.0537342   -2.0962173   -2.0112510
24 months   JiVitA-3     BANGLADESH     Food Insecure          NA                -2.2261280   -2.2831401   -2.1691160
24 months   JiVitA-4     BANGLADESH     Food Secure            NA                -1.7928345   -1.8422245   -1.7434445
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.7726628   -1.8277405   -1.7175850
24 months   JiVitA-4     BANGLADESH     Food Insecure          NA                -1.7511330   -1.8382558   -1.6640102
24 months   MAL-ED       INDIA          Food Secure            NA                -1.8935000   -2.0301943   -1.7568057
24 months   MAL-ED       INDIA          Mildly Food Insecure   NA                -1.2370000   -1.6132318   -0.8607682
24 months   MAL-ED       INDIA          Food Insecure          NA                -2.0035294   -2.4884028   -1.5186561
24 months   MAL-ED       NEPAL          Food Secure            NA                -1.3070745   -1.4908772   -1.1232718
24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -1.3400000   -1.6955726   -0.9844274
24 months   MAL-ED       NEPAL          Food Insecure          NA                -1.9692105   -2.4098511   -1.5285700
24 months   MAL-ED       PERU           Food Secure            NA                -1.8733974   -2.3040404   -1.4427545
24 months   MAL-ED       PERU           Mildly Food Insecure   NA                -1.6153086   -1.9500077   -1.2806096
24 months   MAL-ED       PERU           Food Insecure          NA                -1.8141975   -2.0338833   -1.5945118
24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.5446318   -1.7266755   -1.3625881
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -1.6427778   -2.1783248   -1.1072307
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.7719342   -1.9948623   -1.5490060
24 months   NIH-Birth    BANGLADESH     Food Secure            NA                -1.5704412   -1.8406299   -1.3002524
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -2.2797104   -2.3875556   -2.1718651
24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -2.9527525   -3.3462898   -2.5592153
24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -1.3982635   -1.5024958   -1.2940312
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.5015323   -1.6719320   -1.3311325
24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.5642857   -1.8057828   -1.3227886


### Parameter: E(Y)


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          NA                   NA                -1.0791964   -1.1604792   -0.9979137
Birth       JiVitA-3     BANGLADESH     NA                   NA                -1.5375132   -1.5596692   -1.5153573
Birth       JiVitA-4     BANGLADESH     NA                   NA                -1.5248719   -1.5743851   -1.4753587
Birth       MAL-ED       PERU           NA                   NA                -0.9490110   -1.1400314   -0.7579906
Birth       MAL-ED       SOUTH AFRICA   NA                   NA                -0.5503409   -0.7616444   -0.3390374
Birth       NIH-Birth    BANGLADESH     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto   BANGLADESH     NA                   NA                -0.9094945   -0.9809370   -0.8380521
6 months    GMS-Nepal    NEPAL          NA                   NA                -1.3421764   -1.4201083   -1.2642445
6 months    JiVitA-3     BANGLADESH     NA                   NA                -1.3131326   -1.3362851   -1.2899801
6 months    JiVitA-4     BANGLADESH     NA                   NA                -1.3446891   -1.3822219   -1.3071564
6 months    MAL-ED       INDIA          NA                   NA                -1.2019969   -1.3256948   -1.0782989
6 months    MAL-ED       NEPAL          NA                   NA                -0.6262760   -0.7758267   -0.4767254
6 months    MAL-ED       PERU           NA                   NA                -1.3783784   -1.5611768   -1.1955799
6 months    MAL-ED       SOUTH AFRICA   NA                   NA                -1.0539254   -1.1902766   -0.9175743
6 months    NIH-Birth    BANGLADESH     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto   BANGLADESH     NA                   NA                -1.1986783   -1.2700937   -1.1272630
24 months   GMS-Nepal    NEPAL          NA                   NA                -1.8758368   -1.9623349   -1.7893388
24 months   JiVitA-3     BANGLADESH     NA                   NA                -2.0099416   -2.0377955   -1.9820876
24 months   JiVitA-4     BANGLADESH     NA                   NA                -1.7801485   -1.8158427   -1.7444543
24 months   MAL-ED       INDIA          NA                   NA                -1.8868396   -2.0164954   -1.7571839
24 months   MAL-ED       NEPAL          NA                   NA                -1.4092187   -1.5701249   -1.2483126
24 months   MAL-ED       PERU           NA                   NA                -1.7783956   -1.9536701   -1.6031212
24 months   MAL-ED       SOUTH AFRICA   NA                   NA                -1.6331323   -1.7704624   -1.4958022
24 months   NIH-Birth    BANGLADESH     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto   BANGLADESH     NA                   NA                -1.4412646   -1.5249156   -1.3576135


### Parameter: ATE


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.1535639   -0.3718596    0.0647317
Birth       GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.2653363   -0.5283759   -0.0022966
Birth       JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0980025   -0.1428043   -0.0532007
Birth       JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.1023632   -0.1590386   -0.0456878
Birth       JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0444943   -0.0637404    0.1527289
Birth       JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0191158   -0.1190102    0.1572418
Birth       MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.1567029   -0.4103358    0.7237415
Birth       MAL-ED       PERU           Food Insecure          Food Secure        0.0976515   -0.3844724    0.5797755
Birth       MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.3646667   -0.3049729    1.0343063
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.3470327   -0.7918699    0.0978046
Birth       NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.2061409   -0.4336165    0.0213348
Birth       NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.3235833   -0.8205399    0.1733732
Birth       NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1435883   -0.3071400    0.0199634
Birth       NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1695281   -0.4251667    0.0861104
6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.1325281   -0.3654986    0.1004423
6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0879158   -0.3074890    0.1316575
6 months    JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.1749229   -0.2112507   -0.1385951
6 months    JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.2799439   -0.3335067   -0.2263810
6 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0022124   -0.0742413    0.0786660
6 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0476333   -0.0558224    0.1510891
6 months    MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.5927544    0.2966371    0.8888717
6 months    MAL-ED       INDIA          Food Insecure          Food Secure        0.1593426   -0.3344058    0.6530910
6 months    MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.1268652   -0.5679157    0.3141852
6 months    MAL-ED       NEPAL          Food Insecure          Food Secure       -0.6193916   -1.1208034   -0.1179798
6 months    MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3587280   -0.1980523    0.9155082
6 months    MAL-ED       PERU           Food Insecure          Food Secure        0.0637875   -0.4069550    0.5345299
6 months    MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.2410293   -0.3436694    0.8257280
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1722217   -0.4606358    0.1161923
6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.3075363   -0.5733762   -0.0416964
6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.5600208   -1.0159779   -0.1040638
6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1031877   -0.2665691    0.0601938
6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1612549   -0.3857213    0.0632115
24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.3111582   -0.5507834   -0.0715330
24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.2746733   -0.5302531   -0.0190934
24 months   JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.1630322   -0.2172746   -0.1087899
24 months   JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.3354261   -0.4003764   -0.2704758
24 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0201718   -0.0510522    0.0913957
24 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0417015   -0.0559001    0.1393031
24 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.6565000    0.2562055    1.0567945
24 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.1100294   -0.6138027    0.3937438
24 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0329255   -0.4331946    0.3673435
24 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.6621361   -1.1395745   -0.1846976
24 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2580888   -0.2873256    0.8035032
24 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0591999   -0.4242411    0.5426409
24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0981460   -0.6637877    0.4674957
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2273024   -0.5151163    0.0605115
24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.7092692   -1.0001860   -0.4183524
24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -1.3823113   -1.8596723   -0.9049504
24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1032688   -0.3030197    0.0964822
24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1660222   -0.4290531    0.0970086


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure          NA                -0.0593641   -0.1125605   -0.0061678
Birth       JiVitA-3     BANGLADESH     Food Secure          NA                -0.0513472   -0.0723455   -0.0303490
Birth       JiVitA-4     BANGLADESH     Food Secure          NA                 0.0185615   -0.0295302    0.0666531
Birth       MAL-ED       PERU           Food Secure          NA                 0.0868223   -0.2542200    0.4278647
Birth       MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0967854   -0.3037214    0.1101506
Birth       NIH-Birth    BANGLADESH     Food Secure          NA                -0.1833531   -0.3768451    0.0101390
Birth       NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0604513   -0.1202275   -0.0006750
6 months    GMS-Nepal    NEPAL          Food Secure          NA                -0.0303625   -0.0780438    0.0173189
6 months    JiVitA-3     BANGLADESH     Food Secure          NA                -0.1046086   -0.1219802   -0.0872369
6 months    JiVitA-4     BANGLADESH     Food Secure          NA                 0.0069796   -0.0275948    0.0415540
6 months    MAL-ED       INDIA          Food Secure          NA                 0.0267575   -0.0163737    0.0698887
6 months    MAL-ED       NEPAL          Food Secure          NA                -0.1068080   -0.2093961   -0.0042198
6 months    MAL-ED       PERU           Food Secure          NA                 0.1226710   -0.2229485    0.4682906
6 months    MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0421554   -0.1628610    0.0785502
6 months    NIH-Birth    BANGLADESH     Food Secure          NA                -0.2805279   -0.5063770   -0.0546788
6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0483856   -0.1071705    0.0103993
24 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0832637   -0.1384621   -0.0280654
24 months   JiVitA-3     BANGLADESH     Food Secure          NA                -0.1192396   -0.1447263   -0.0937529
24 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0126860   -0.0193239    0.0446959
24 months   MAL-ED       INDIA          Food Secure          NA                 0.0066604   -0.0380987    0.0514195
24 months   MAL-ED       NEPAL          Food Secure          NA                -0.1021443   -0.2024179   -0.0018706
24 months   MAL-ED       PERU           Food Secure          NA                 0.0950018   -0.2600301    0.4500336
24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0885005   -0.2089125    0.0319115
24 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.6486167   -0.8943889   -0.4028445
24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0430011   -0.1041764    0.0181742
