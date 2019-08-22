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

agecat      studyid                 country        hfoodsec                n_cell       n
----------  ----------------------  -------------  ---------------------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                157     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     188
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure               27     188
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0     105
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     105
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure               94     105
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                154     170
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         2     170
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure               14     170
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                 76      98
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         9      98
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure               13      98
Birth       ki0047075b-MAL-ED       PERU           Food Secure                 27     107
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure        25     107
Birth       ki0047075b-MAL-ED       PERU           Food Insecure               55     107
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                107     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     195
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               71     195
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                  3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure        21      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                4      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                 14      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         9      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                4      27
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               5997   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      4335   12605
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2273   12605
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                396     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       309     819
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              114     819
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                160     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     193
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     193
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129
6 months    ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                190     212
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     212
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure               17     212
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128
6 months    ki0047075b-MAL-ED       PERU           Food Secure                 27     111
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        28     111
6 months    ki0047075b-MAL-ED       PERU           Food Insecure               56     111
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81     228
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 80     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       417     537
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               40     537
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                427     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                395     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        76     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               74     545
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure               8415   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      5602   16791
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2774   16791
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2442    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1729    4793
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              622    4793
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                161     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         4     194
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Insecure               29     194
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  3     129
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     129
24 months   ki0047075b-MAL-ED       BRAZIL         Food Insecure              115     129
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                190     212
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         5     212
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure               17     212
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 94     128
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        15     128
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure               19     128
24 months   ki0047075b-MAL-ED       PERU           Food Secure                 26     107
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        27     107
24 months   ki0047075b-MAL-ED       PERU           Food Insecure               54     107
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                129     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               81     228
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       328     429
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33     429
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                334     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               56     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                349     488
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        69     488
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               70     488
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3875    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2761    8214
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1578    8214
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2399    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1705    4713
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              609    4713


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL

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
![](/tmp/56ac8240-2432-438f-a158-5faa83006de7/331e2fe6-14ff-46df-88c9-489e6cbbb04b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/56ac8240-2432-438f-a158-5faa83006de7/331e2fe6-14ff-46df-88c9-489e6cbbb04b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/56ac8240-2432-438f-a158-5faa83006de7/331e2fe6-14ff-46df-88c9-489e6cbbb04b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.5764474   -0.7891541   -0.3637406
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.5644444   -1.0737762   -0.0551126
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -1.3684615   -1.9425417   -0.7943814
Birth       ki0047075b-MAL-ED       PERU           Food Secure            NA                -1.0718519   -1.4522274   -0.6914763
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -0.9152000   -1.3029555   -0.5274445
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          NA                -0.8841818   -1.1124025   -0.6559612
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.7064486   -0.9005011   -0.5123961
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.1258824   -0.5421722    0.2904075
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.7309859   -0.9574441   -0.5045277
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.4869568   -1.5185110   -1.4554027
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.5573933   -1.5949365   -1.5198501
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.5804795   -1.6313521   -1.5296070
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.4592172   -1.5910598   -1.3273745
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.5527184   -1.6838270   -1.4216099
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.4992982   -1.6859558   -1.3126407
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                -1.2392193   -1.3694179   -1.1090207
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -0.6360000   -0.9019405   -0.3700595
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -1.0620588   -1.5420342   -0.5820835
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.5152660   -0.6738897   -0.3566422
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.6500000   -1.0624500   -0.2375500
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -1.1502632   -1.6292612   -0.6712652
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                -1.5070370   -1.9126067   -1.1014673
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -1.1319643   -1.5097115   -0.7542171
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                -1.4411905   -1.6732546   -1.2091264
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.0127907   -1.1878124   -0.8377690
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.7707407   -1.3286896   -0.2127919
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.1825206   -1.4123288   -0.9527123
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -1.1268542   -1.3747544   -0.8789539
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -1.4343905   -1.5303921   -1.3383889
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.6868750   -2.0695528   -1.3041972
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -1.1502927   -1.2422659   -1.0583196
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2534804   -1.3885153   -1.1184455
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.3115476   -1.5163063   -1.1067890
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.2937511   -1.3854100   -1.2020921
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -1.4271711   -1.6431345   -1.2112076
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.3767568   -1.5761078   -1.1774057
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.2085241   -1.2373871   -1.1796610
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.3834470   -1.4145136   -1.3523804
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.4884679   -1.5371084   -1.4398274
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.3516687   -1.4036005   -1.2997369
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.3494563   -1.4092035   -1.2897092
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.3040354   -1.3938912   -1.2141795
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -1.8536842   -1.9918894   -1.7154790
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -1.2150000   -1.5912720   -0.8387280
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -1.9661765   -2.4561419   -1.4762110
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -1.2695745   -1.4551661   -1.0839828
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -1.3040000   -1.6710505   -0.9369495
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -1.9702632   -2.4051384   -1.5353879
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -1.8719231   -2.2957189   -1.4481273
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                -1.6107407   -1.9426264   -1.2788550
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                -1.8125926   -2.0335673   -1.5916179
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.5236822   -1.7051934   -1.3421710
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -1.6183333   -2.1576472   -1.0790195
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.7479630   -1.9747248   -1.5212012
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -1.5254412   -1.7953122   -1.2555702
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -2.2435976   -2.3514068   -2.1357884
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -2.9069949   -3.3056999   -2.5082900
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -1.3854192   -1.4890285   -1.2818098
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.4891935   -1.6593517   -1.3190354
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.5605357   -1.8000689   -1.3210025
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.7870965   -1.8865868   -1.6876061
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -2.0848551   -2.2974013   -1.8723089
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -2.0436429   -2.2759121   -1.8113736
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.8898194   -1.9280989   -1.8515398
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -2.0525570   -2.0950697   -2.0100443
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -2.2251521   -2.2822053   -2.1680989
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.7712047   -1.8203852   -1.7220241
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.7505806   -1.8057415   -1.6954198
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.7243678   -1.8112862   -1.6374494


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.6804082   -0.8755126   -0.4853037
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                -0.9387850   -1.1159974   -0.7615727
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -0.6647692   -0.8062103   -0.5233282
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.5280452   -1.5507110   -1.5053794
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.5000733   -1.5844715   -1.4156751
6 months    ki0047075b-MAL-ED       INDIA          NA                   NA                -1.2107862   -1.3345960   -1.0869764
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.6253125   -0.7752118   -0.4754132
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                -1.3792042   -1.5615886   -1.1968198
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -1.0539803   -1.1904887   -0.9174718
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.3236269   -1.4015413   -1.2457125
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.3131326   -1.3362851   -1.2899801
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.3446891   -1.3822219   -1.3071564
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                -1.8476415   -1.9786652   -1.7166178
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -1.3776172   -1.5402475   -1.2149868
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                -1.7760748   -1.9504595   -1.6016900
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                -1.6108333   -1.7488019   -1.4728648
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.8659973   -1.9508504   -1.7811442
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -2.0089421   -2.0368231   -1.9810610
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.7576915   -1.7933270   -1.7220560


### Parameter: ATE


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0120029   -0.5399600    0.5639658
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.7920142   -1.4042332   -0.1797951
Birth       ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.1566519   -0.3865239    0.6998276
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.1876700   -0.2559179    0.6312579
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.5805662    0.1212694    1.0398631
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.0245373   -0.3227649    0.2736902
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0704365   -0.1181225   -0.0227505
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.0935227   -0.1530196   -0.0340259
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0935013   -0.2783726    0.0913701
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0400811   -0.2694269    0.1892647
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.6032193    0.3071180    0.8993206
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.1771605   -0.3201603    0.6744813
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.1347340   -0.5766351    0.3071670
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.6349972   -1.1395768   -0.1304176
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3750728   -0.1791652    0.9293107
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0658466   -0.4014227    0.5331158
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.2420500   -0.3427060    0.8268059
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1697299   -0.4585974    0.1191376
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.3075363   -0.5733762   -0.0416964
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.5600208   -1.0159779   -0.1040638
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1031877   -0.2665691    0.0601938
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1612549   -0.3857213    0.0632115
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.1334200   -0.3680294    0.1011894
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.0830057   -0.3024190    0.1364076
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.1749229   -0.2112507   -0.1385951
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.2799439   -0.3335067   -0.2263810
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0022124   -0.0742412    0.0786660
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0476333   -0.0558224    0.1510891
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.6386842    0.2378335    1.0395349
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.1124923   -0.6215766    0.3965921
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0344255   -0.4457288    0.3768777
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.7006887   -1.1735108   -0.2278666
24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2611823   -0.2771029    0.7994676
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0593305   -0.4186158    0.5372768
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0946512   -0.6636905    0.4743882
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2242808   -0.5147412    0.0661796
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.7181564   -1.0087647   -0.4275481
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -1.3815538   -1.8630058   -0.9001018
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1037744   -0.3029946    0.0954458
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1751166   -0.4360975    0.0858644
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure       -0.2977586   -0.5324376   -0.0630796
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.2565464   -0.5092267   -0.0038661
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.1627377   -0.2169875   -0.1084878
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.3353327   -0.4003028   -0.2703627
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure        0.0206240   -0.0505168    0.0917648
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0468369   -0.0503004    0.1439741


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.1039608   -0.2185701    0.0106485
Birth       ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.1330668   -0.1879798    0.4541134
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0416794   -0.0861349    0.1694936
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0410884   -0.0635686   -0.0186083
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0408561   -0.1280586    0.0463464
6 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0284331   -0.0151039    0.0719701
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.1100465   -0.2133681   -0.0067250
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.1278328   -0.2152856    0.4709513
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0411896   -0.1620364    0.0796573
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.2805279   -0.5063770   -0.0546788
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0483856   -0.1071705    0.0103993
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0298759   -0.0777704    0.0180187
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.1046086   -0.1219802   -0.0872369
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0069796   -0.0275948    0.0415540
24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                 0.0060427   -0.0390220    0.0511074
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.1080427   -0.2095458   -0.0065396
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0958483   -0.2544791    0.4461757
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0871512   -0.2083959    0.0340935
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.6553533   -0.9009320   -0.4097746
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0441139   -0.1050444    0.0168166
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0789008   -0.1331274   -0.0246742
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.1191227   -0.1446149   -0.0936305
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                 0.0135132   -0.0183671    0.0453935
