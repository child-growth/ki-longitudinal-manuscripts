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

**Outcome Variable:** whz

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
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                151     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         3     178
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Insecure               24     178
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  0     102
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        11     102
Birth       ki0047075b-MAL-ED       BRAZIL         Food Insecure               91     102
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                151     167
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         2     167
Birth       ki0047075b-MAL-ED       INDIA          Food Insecure               14     167
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                 75      96
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         9      96
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure               12      96
Birth       ki0047075b-MAL-ED       PERU           Food Secure                 26     105
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure        24     105
Birth       ki0047075b-MAL-ED       PERU           Food Insecure               55     105
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                106     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        17     193
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure               70     193
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                  3      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure        21      28
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Insecure                4      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                 14      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         6      23
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure                3      23
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure               4974   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      3502   10289
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1813   10289
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                334     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure       250     680
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure               96     680
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
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 80     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       416     536
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure               40     536
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                427     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               84     715
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                395     545
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        76     545
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure               74     545
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure               8396   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      5590   16764
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             2778   16764
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2445    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1728    4795
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              622    4795
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
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 68     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure       327     428
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure               33     428
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                334     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure               56     514
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                348     487
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        69     487
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure               70     487
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure               3857    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure      2753    8190
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure             1580    8190
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure               2389    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure      1699    4696
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure              608    4696


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
![](/tmp/8c4dbb63-7a16-4ab0-830c-6a54e65cbdf5/7b702ba8-0a40-42ba-8ec0-bda1fa9983a4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8c4dbb63-7a16-4ab0-830c-6a54e65cbdf5/7b702ba8-0a40-42ba-8ec0-bda1fa9983a4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8c4dbb63-7a16-4ab0-830c-6a54e65cbdf5/7b702ba8-0a40-42ba-8ec0-bda1fa9983a4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.9589333   -1.1679562   -0.7499105
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.6700000   -1.5216911    0.1816911
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -1.1066667   -1.5431611   -0.6701723
Birth       ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.3700000   -0.7971079    0.0571079
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.0091667   -0.2577715    0.2761048
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.0954545   -0.1613595    0.3522686
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0086792   -0.2296074    0.2122490
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0200000   -0.5307773    0.4907773
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.0281429   -0.2597067    0.3159924
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.6459530   -0.6788099   -0.6130961
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.7456568   -0.7846968   -0.7066167
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.7558687   -0.8060171   -0.7057203
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.3593713   -0.4749953   -0.2437473
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.4081600   -0.5374997   -0.2788203
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.2936458   -0.5362401   -0.0510515
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.6943421   -0.8349961   -0.5536881
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -1.5420000   -2.3989104   -0.6850896
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.7090196   -1.1598311   -0.2582081
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            NA                 0.1744858   -0.0459177    0.3948894
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.2512222   -0.4390110    0.9414555
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.1931579   -0.6112605    0.2249447
6 months    ki0047075b-MAL-ED       PERU           Food Secure            NA                 0.9400000    0.5127971    1.3672029
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.9332143    0.6768811    1.1895475
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          NA                 1.0208929    0.6717324    1.3700533
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.6421964    0.4279639    0.8564289
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.5123148   -0.0861454    1.1107750
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.3897119    0.1232743    0.6561495
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.3605625   -0.5544737   -0.1666513
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.4295453   -0.5323959   -0.3266947
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -0.6930000   -1.0413123   -0.3446877
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0772014   -0.0274914    0.1818942
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0163725   -0.1308515    0.1635966
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.1788690   -0.3732511    0.0155130
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -0.5962194   -0.7011920   -0.4912469
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -0.4403289   -0.6485970   -0.2320609
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -0.8052703   -1.0315347   -0.5790058
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -0.5461279   -0.5738473   -0.5184085
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -0.6116959   -0.6417186   -0.5816732
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -0.6984305   -0.7418746   -0.6549864
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -0.3841391   -0.4325457   -0.3357325
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -0.4003935   -0.4584618   -0.3423253
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -0.3807154   -0.4897478   -0.2716830
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            NA                -0.9263947   -1.0447734   -0.8080160
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   NA                -2.3840000   -3.4554070   -1.3125930
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          NA                -0.9111765   -1.3418053   -0.4805476
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            NA                -0.2137766   -0.4104542   -0.0170990
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.2906667   -0.7322845    0.1509512
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          NA                -0.5707895   -0.8927455   -0.2488334
24 months   ki0047075b-MAL-ED       PERU           Food Secure            NA                -0.0650000   -0.4644175    0.3344175
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   NA                 0.2540741    0.0038590    0.5042891
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          NA                 0.0984259   -0.1657321    0.3625840
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.4135659    0.2501149    0.5770169
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.0797222   -0.3228365    0.4822809
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.5240741    0.3171606    0.7309876
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            NA                -0.7864461   -1.0193808   -0.5535114
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   NA                -0.9180505   -1.0321622   -0.8039387
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          NA                -1.1053030   -1.4148575   -0.7957485
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            NA                -0.6024850   -0.7257444   -0.4792256
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.5987903   -0.7700446   -0.4275361
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.6828571   -0.9480378   -0.4176765
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            NA                -1.1264655   -1.2298887   -1.0230423
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   NA                -1.1261594   -1.3657302   -0.8865886
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          NA                -1.1220000   -1.3707063   -0.8732937
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            NA                -1.2598418   -1.2934515   -1.2262322
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   NA                -1.3052234   -1.3457662   -1.2646806
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          NA                -1.3828924   -1.4302599   -1.3355249
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            NA                -1.2127585   -1.2572363   -1.1682806
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   NA                -1.2339023   -1.2895279   -1.1782766
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          NA                -1.2432730   -1.3240021   -1.1625440


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.9503125   -1.1412124   -0.7594126
Birth       ki0047075b-MAL-ED       PERU           NA                   NA                -0.0395238   -0.2249300    0.1458824
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                 0.0036788   -0.1626160    0.1699735
Birth       kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.6992565   -0.7232731   -0.6752399
Birth       kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.3680294   -0.4489214   -0.2871374
6 months    ki0047075b-MAL-ED       INDIA          NA                   NA                -0.7155110   -0.8495147   -0.5815073
6 months    ki0047075b-MAL-ED       NEPAL          NA                   NA                 0.1289063   -0.0638567    0.3216692
6 months    ki0047075b-MAL-ED       PERU           NA                   NA                 0.9790991    0.7644567    1.1937415
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                 0.5422442    0.3806254    0.7038629
6 months    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                -0.6028654   -0.6902793   -0.5154516
6 months    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -0.5932301   -0.6127836   -0.5736767
6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -0.3895527   -0.4270314   -0.3520739
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                -0.9595519   -1.0781202   -0.8409836
24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                -0.2757812   -0.4379560   -0.1136065
24 months   ki0047075b-MAL-ED       PERU           NA                   NA                 0.0979907   -0.0798724    0.2758537
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                 0.4264693    0.3032402    0.5496984
24 months   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                -1.1257803   -1.2146168   -1.0369438
24 months   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                -1.2988352   -1.3224626   -1.2752078
24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                -1.2243590   -1.2566569   -1.1920612


### Parameter: ATE


agecat      studyid                 country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.2889333   -0.5880320    1.1658987
Birth       ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.1477333   -0.6316940    0.3362273
Birth       ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3791667   -0.1244971    0.8828304
Birth       ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.4654545   -0.0329174    0.9638265
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0113208   -0.5678302    0.5451887
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0368221   -0.3260368    0.3996810
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0997038   -0.1484792   -0.0509285
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1099158   -0.1674794   -0.0523521
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0487887   -0.2237274    0.1261499
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0657254   -0.2023740    0.3338249
6 months    ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.8476579   -1.7160351    0.0207193
6 months    ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure       -0.0146775   -0.4869217    0.4575667
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0767364   -0.6478322    0.8013050
6 months    ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.3676437   -0.8402826    0.1049952
6 months    ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0067857   -0.5049915    0.4914201
6 months    ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.0808929   -0.4708456    0.6326313
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1298816   -0.7655310    0.5057678
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2524844   -0.5943683    0.0893994
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0689828   -0.2884818    0.1505162
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.3324375   -0.7310890    0.0662140
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0608289   -0.2414819    0.1198242
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.2560705   -0.4768531   -0.0352878
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.1558905   -0.0773365    0.3891174
6 months    ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure       -0.2090509   -0.4584799    0.0403782
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0655680   -0.1054453   -0.0256907
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1523026   -0.2018357   -0.1027695
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0162545   -0.0877010    0.0551921
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure        0.0034236   -0.1123099    0.1191572
24 months   ki0047075b-MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -1.4576053   -2.5355322   -0.3796783
24 months   ki0047075b-MAL-ED       INDIA          Food Insecure          Food Secure        0.0152183   -0.4313853    0.4618218
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0768901   -0.5603241    0.4065439
24 months   ki0047075b-MAL-ED       NEPAL          Food Insecure          Food Secure       -0.3570129   -0.7342897    0.0202639
24 months   ki0047075b-MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3190741   -0.1522452    0.7903934
24 months   ki0047075b-MAL-ED       PERU           Food Insecure          Food Secure        0.1634259   -0.3154413    0.6422931
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.3338437   -0.7683201    0.1006327
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.1105082   -0.1531762    0.3741925
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure   Food Secure       -0.1316044   -0.3909884    0.1277796
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Insecure          Food Secure       -0.3188570   -0.7062619    0.0685479
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0036947   -0.2073051    0.2146945
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0803721   -0.3727993    0.2120551
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure   Food Secure        0.0003061   -0.2606355    0.2612477
24 months   ki1113344-GMS-Nepal     NEPAL          Food Insecure          Food Secure        0.0044655   -0.2648878    0.2738188
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0453815   -0.0971887    0.0064256
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Insecure          Food Secure       -0.1230506   -0.1798804   -0.0662207
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure   Food Secure       -0.0211438   -0.0916223    0.0493346
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Insecure          Food Secure       -0.0305145   -0.1229812    0.0619521


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure          NA                 0.0086208   -0.1003141    0.1175558
Birth       ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.3304762   -0.0251285    0.6860809
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0123580   -0.1388004    0.1635164
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0533035   -0.0755743   -0.0310328
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0086582   -0.0919971    0.0746808
6 months    ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0211689   -0.0689128    0.0265750
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0455796   -0.1655243    0.0743652
6 months    ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.0390991   -0.3347842    0.4129824
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0999522   -0.2416623    0.0417578
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.0783476   -0.2635613    0.1068660
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0474392   -0.1114647    0.0165864
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                -0.0066460   -0.0584879    0.0451958
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0471022   -0.0652966   -0.0289079
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0054136   -0.0375357    0.0267085
24 months   ki0047075b-MAL-ED       INDIA          Food Secure          NA                -0.0331571   -0.0875022    0.0211879
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure          NA                -0.0620047   -0.1523839    0.0283746
24 months   ki0047075b-MAL-ED       PERU           Food Secure          NA                 0.1629907   -0.1741130    0.5000943
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0129034   -0.0951249    0.1209317
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure          NA                -0.1251330   -0.3410183    0.0907523
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0078652   -0.0742700    0.0585397
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure          NA                 0.0006852   -0.0567734    0.0581438
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure          NA                -0.0389933   -0.0628759   -0.0151107
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure          NA                -0.0116006   -0.0428434    0.0196423
