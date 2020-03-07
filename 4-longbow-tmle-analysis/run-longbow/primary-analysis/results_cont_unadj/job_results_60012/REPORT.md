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

agecat      studyid      country        hfoodsec                n_cell       n
----------  -----------  -------------  ---------------------  -------  ------
Birth       GMS-Nepal    NEPAL          Food Secure                442     620
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure       100     620
Birth       GMS-Nepal    NEPAL          Food Insecure               78     620
Birth       JiVitA-3     BANGLADESH     Food Secure               5797   11763
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure      3947   11763
Birth       JiVitA-3     BANGLADESH     Food Insecure             2019   11763
Birth       JiVitA-4     BANGLADESH     Food Secure               1205    2383
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure       870    2383
Birth       JiVitA-4     BANGLADESH     Food Insecure              308    2383
Birth       MAL-ED       BANGLADESH     Food Secure                138     162
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure         3     162
Birth       MAL-ED       BANGLADESH     Food Insecure               21     162
Birth       MAL-ED       BRAZIL         Food Secure                  0      26
Birth       MAL-ED       BRAZIL         Mildly Food Insecure         4      26
Birth       MAL-ED       BRAZIL         Food Insecure               22      26
Birth       MAL-ED       INDIA          Food Secure                 32      35
Birth       MAL-ED       INDIA          Mildly Food Insecure         1      35
Birth       MAL-ED       INDIA          Food Insecure                2      35
Birth       MAL-ED       NEPAL          Food Secure                 10      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure         1      14
Birth       MAL-ED       NEPAL          Food Insecure                3      14
Birth       MAL-ED       PERU           Food Secure                 23      89
Birth       MAL-ED       PERU           Mildly Food Insecure        22      89
Birth       MAL-ED       PERU           Food Insecure               44      89
Birth       MAL-ED       SOUTH AFRICA   Food Secure                 45      87
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      87
Birth       MAL-ED       SOUTH AFRICA   Food Insecure               33      87
Birth       NIH-Birth    BANGLADESH     Food Secure                 86     575
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure       453     575
Birth       NIH-Birth    BANGLADESH     Food Insecure               36     575
Birth       NIH-Crypto   BANGLADESH     Food Secure                429     707
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure       199     707
Birth       NIH-Crypto   BANGLADESH     Food Insecure               79     707
6 months    GMS-Nepal    NEPAL          Food Secure                396     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure        76     546
6 months    GMS-Nepal    NEPAL          Food Insecure               74     546
6 months    JiVitA-3     BANGLADESH     Food Secure               8396   16764
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure      5590   16764
6 months    JiVitA-3     BANGLADESH     Food Insecure             2778   16764
6 months    JiVitA-4     BANGLADESH     Food Secure               2445    4795
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure      1728    4795
6 months    JiVitA-4     BANGLADESH     Food Insecure              622    4795
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
24 months   GMS-Nepal    NEPAL          Food Secure                341     477
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67     477
24 months   GMS-Nepal    NEPAL          Food Insecure               69     477
24 months   JiVitA-3     BANGLADESH     Food Secure               3857    8190
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure      2753    8190
24 months   JiVitA-3     BANGLADESH     Food Insecure             1580    8190
24 months   JiVitA-4     BANGLADESH     Food Secure               2389    4696
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1699    4696
24 months   JiVitA-4     BANGLADESH     Food Insecure              608    4696
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
24 months   NIH-Birth    BANGLADESH     Food Secure                 68     428
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       327     428
24 months   NIH-Birth    BANGLADESH     Food Insecure               33     428
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
![](/tmp/768f3814-e2d8-4444-857e-e5d9d691d175/f61c9824-0ed4-4812-ad49-4913cb72a0dd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/768f3814-e2d8-4444-857e-e5d9d691d175/f61c9824-0ed4-4812-ad49-4913cb72a0dd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/768f3814-e2d8-4444-857e-e5d9d691d175/f61c9824-0ed4-4812-ad49-4913cb72a0dd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            NA                -1.1786425   -1.2829329   -1.0743521
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.8876000   -1.1172935   -0.6579065
Birth       GMS-Nepal    NEPAL          Food Insecure          NA                -1.0579487   -1.3039500   -0.8119474
Birth       JiVitA-3     BANGLADESH     Food Secure            NA                -0.7097740   -0.7396027   -0.6799453
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -0.7821890   -0.8189849   -0.7453931
Birth       JiVitA-3     BANGLADESH     Food Insecure          NA                -0.8077415   -0.8554328   -0.7600501
Birth       JiVitA-4     BANGLADESH     Food Secure            NA                -0.6799917   -0.7469909   -0.6129925
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -0.7162414   -0.8042279   -0.6282549
Birth       JiVitA-4     BANGLADESH     Food Insecure          NA                -0.6536039   -0.8220178   -0.4851900
Birth       MAL-ED       PERU           Food Secure            NA                -0.3360870   -0.8044655    0.1322916
Birth       MAL-ED       PERU           Mildly Food Insecure   NA                 0.0177273   -0.2707152    0.3061698
Birth       MAL-ED       PERU           Food Insecure          NA                 0.0690909   -0.2074637    0.3456455
Birth       MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0800000   -0.4003913    0.2403913
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.2611111   -1.0678216    0.5455994
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.2157576   -0.6840291    0.2525139
Birth       NIH-Birth    BANGLADESH     Food Secure            NA                -1.1176744   -1.3559750   -0.8793739
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -1.4123510   -1.5189852   -1.3057168
Birth       NIH-Birth    BANGLADESH     Food Insecure          NA                -1.1191667   -1.4810756   -0.7572577
Birth       NIH-Crypto   BANGLADESH     Food Secure            NA                -1.2546270   -1.3636642   -1.1455899
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2136181   -1.3731301   -1.0541060
Birth       NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.2641772   -1.4930804   -1.0352740
6 months    GMS-Nepal    NEPAL          Food Secure            NA                -0.5936153   -0.6983811   -0.4888495
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.4469079   -0.6566443   -0.2371715
6 months    GMS-Nepal    NEPAL          Food Insecure          NA                -0.8052703   -1.0315344   -0.5790062
6 months    JiVitA-3     BANGLADESH     Food Secure            NA                -0.5461279   -0.5738473   -0.5184085
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -0.6116959   -0.6417186   -0.5816732
6 months    JiVitA-3     BANGLADESH     Food Insecure          NA                -0.6984305   -0.7418746   -0.6549864
6 months    JiVitA-4     BANGLADESH     Food Secure            NA                -0.3841391   -0.4325457   -0.3357325
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -0.4003935   -0.4584618   -0.3423253
6 months    JiVitA-4     BANGLADESH     Food Insecure          NA                -0.3807154   -0.4897478   -0.2716830
6 months    MAL-ED       INDIA          Food Secure            NA                -0.7025789   -0.8453715   -0.5597864
6 months    MAL-ED       INDIA          Mildly Food Insecure   NA                -1.5420000   -2.3989104   -0.6850896
6 months    MAL-ED       INDIA          Food Insecure          NA                -0.6978922   -1.1435259   -0.2522584
6 months    MAL-ED       NEPAL          Food Secure            NA                 0.1774468   -0.0422755    0.3971691
6 months    MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.2483333   -0.4452208    0.9418875
6 months    MAL-ED       NEPAL          Food Insecure          NA                -0.2131579   -0.6322034    0.2058876
6 months    MAL-ED       PERU           Food Secure            NA                 0.9401235    0.5128964    1.3673505
6 months    MAL-ED       PERU           Mildly Food Insecure   NA                 0.9528571    0.6978859    1.2078284
6 months    MAL-ED       PERU           Food Insecure          NA                 1.0166369    0.6674831    1.3657907
6 months    MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.6417313    0.4274668    0.8559957
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.5123148   -0.0861454    1.1107750
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.3923045    0.1261781    0.6584309
6 months    NIH-Birth    BANGLADESH     Food Secure            NA                -0.3605625   -0.5544734   -0.1666516
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.4405056   -0.5453329   -0.3356783
6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                -0.6930000   -1.0413117   -0.3446883
6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0772014   -0.0274914    0.1818942
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0163725   -0.1308515    0.1635966
6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.1788690   -0.3732511    0.0155130
24 months   GMS-Nepal    NEPAL          Food Secure            NA                -1.1287928   -1.2335041   -1.0240815
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -1.1330597   -1.3765529   -0.8895665
24 months   GMS-Nepal    NEPAL          Food Insecure          NA                -1.1364493   -1.3887075   -0.8841910
24 months   JiVitA-3     BANGLADESH     Food Secure            NA                -1.2598418   -1.2934515   -1.2262322
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -1.3052234   -1.3457662   -1.2646806
24 months   JiVitA-3     BANGLADESH     Food Insecure          NA                -1.3828924   -1.4302599   -1.3355249
24 months   JiVitA-4     BANGLADESH     Food Secure            NA                -1.2127585   -1.2572363   -1.1682806
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.2339023   -1.2895279   -1.1782766
24 months   JiVitA-4     BANGLADESH     Food Insecure          NA                -1.2432730   -1.3240021   -1.1625440
24 months   MAL-ED       INDIA          Food Secure            NA                -0.9256316   -1.0440690   -0.8071941
24 months   MAL-ED       INDIA          Mildly Food Insecure   NA                -2.3840000   -3.4554070   -1.3125930
24 months   MAL-ED       INDIA          Food Insecure          NA                -0.9111765   -1.3418053   -0.4805476
24 months   MAL-ED       NEPAL          Food Secure            NA                -0.2137766   -0.4104542   -0.0170990
24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.2906667   -0.7322845    0.1509512
24 months   MAL-ED       NEPAL          Food Insecure          NA                -0.5523684   -0.8908812   -0.2138556
24 months   MAL-ED       PERU           Food Secure            NA                -0.0702564   -0.4657229    0.3252101
24 months   MAL-ED       PERU           Mildly Food Insecure   NA                 0.2582407    0.0077747    0.5087068
24 months   MAL-ED       PERU           Food Insecure          NA                 0.0992901   -0.1654887    0.3640690
24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.3939470    0.2286188    0.5592753
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.1058333   -0.2939661    0.5056327
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.4975926    0.2840794    0.7111057
24 months   NIH-Birth    BANGLADESH     Food Secure            NA                -0.7864461   -1.0193808   -0.5535114
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.9180505   -1.0321622   -0.8039387
24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -1.1053030   -1.4148575   -0.7957485
24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -0.6024850   -0.7257444   -0.4792256
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.5987903   -0.7700446   -0.4275361
24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.6828571   -0.9480378   -0.4176765


### Parameter: E(Y)


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          NA                   NA                -1.1165161   -1.2055683   -1.0274639
Birth       JiVitA-3     BANGLADESH     NA                   NA                -0.7508875   -0.7730765   -0.7286985
Birth       JiVitA-4     BANGLADESH     NA                   NA                -0.6898154   -0.7422632   -0.6373675
Birth       MAL-ED       PERU           NA                   NA                -0.0483146   -0.2475806    0.1509514
Birth       MAL-ED       SOUTH AFRICA   NA                   NA                -0.1502299   -0.4075620    0.1071022
Birth       NIH-Birth    BANGLADESH     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto   BANGLADESH     NA                   NA                -1.2441513   -1.3281130   -1.1601897
6 months    GMS-Nepal    NEPAL          NA                   NA                -0.6018803   -0.6892284   -0.5145323
6 months    JiVitA-3     BANGLADESH     NA                   NA                -0.5932301   -0.6127836   -0.5736767
6 months    JiVitA-4     BANGLADESH     NA                   NA                -0.3895527   -0.4270314   -0.3520739
6 months    MAL-ED       INDIA          NA                   NA                -0.7220008   -0.8576809   -0.5863207
6 months    MAL-ED       NEPAL          NA                   NA                 0.1277734   -0.0649431    0.3204900
6 months    MAL-ED       PERU           NA                   NA                 0.9819369    0.7674415    1.1964324
6 months    MAL-ED       SOUTH AFRICA   NA                   NA                 0.5429020    0.3813518    0.7044523
6 months    NIH-Birth    BANGLADESH     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto   BANGLADESH     NA                   NA                 0.0297622   -0.0491685    0.1086930
24 months   GMS-Nepal    NEPAL          NA                   NA                -1.1304997   -1.2205265   -1.0404728
24 months   JiVitA-3     BANGLADESH     NA                   NA                -1.2988352   -1.3224626   -1.2752078
24 months   JiVitA-4     BANGLADESH     NA                   NA                -1.2243590   -1.2566569   -1.1920612
24 months   MAL-ED       INDIA          NA                   NA                -0.9588679   -1.0774868   -0.8402491
24 months   MAL-ED       NEPAL          NA                   NA                -0.2730469   -0.4358169   -0.1102769
24 months   MAL-ED       PERU           NA                   NA                 0.0982009   -0.0794754    0.2758773
24 months   MAL-ED       SOUTH AFRICA   NA                   NA                 0.4080227    0.2828348    0.5332106
24 months   NIH-Birth    BANGLADESH     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto   BANGLADESH     NA                   NA                -0.6103502   -0.7050157   -0.5156847


### Parameter: ATE


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.2910425    0.0387816    0.5433035
Birth       GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.1206938   -0.1465011    0.3878888
Birth       JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0724150   -0.1178891   -0.0269409
Birth       JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0979674   -0.1522528   -0.0436821
Birth       JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0362497   -0.1458337    0.0733343
Birth       JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0263878   -0.1536597    0.2064353
Birth       MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3538142   -0.1962562    0.9038847
Birth       MAL-ED       PERU           Food Insecure          Food Secure        0.4051779   -0.1387531    0.9491088
Birth       MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1811111   -1.0491159    0.6868937
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1357576   -0.7031452    0.4316301
Birth       NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.2946766   -0.5557475   -0.0336057
Birth       NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0014922   -0.4348111    0.4318266
Birth       NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0410089   -0.1522090    0.2342269
Birth       NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0095502   -0.2630966    0.2439962
6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.1467074   -0.0877392    0.3811541
6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.2116550   -0.4609967    0.0376868
6 months    JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0655680   -0.1054453   -0.0256907
6 months    JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.1523026   -0.2018357   -0.1027695
6 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0162545   -0.0877010    0.0551921
6 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0034236   -0.1123099    0.1191572
6 months    MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.8394211   -1.7081472    0.0293051
6 months    MAL-ED       INDIA          Food Insecure          Food Secure        0.0046868   -0.4632653    0.4726389
6 months    MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0708865   -0.6566403    0.7984133
6 months    MAL-ED       NEPAL          Food Insecure          Food Secure       -0.3906047   -0.8637612    0.0825518
6 months    MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.0127337   -0.4847935    0.5102608
6 months    MAL-ED       PERU           Food Insecure          Food Secure        0.0765134   -0.4752395    0.6282664
6 months    MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1294165   -0.7650766    0.5062437
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2494267   -0.5910881    0.0922347
6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0799431   -0.3003749    0.1404887
6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.3324375   -0.7310883    0.0662133
6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0608289   -0.2414819    0.1198242
6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.2560705   -0.4768531   -0.0352878
24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.0042669   -0.2693205    0.2607866
24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0076565   -0.2807841    0.2654711
24 months   JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0453815   -0.0971887    0.0064256
24 months   JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.1230506   -0.1798804   -0.0662207
24 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0211438   -0.0916223    0.0493346
24 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0305145   -0.1229812    0.0619521
24 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -1.4583684   -2.5363018   -0.3804350
24 months   MAL-ED       INDIA          Food Insecure          Food Secure        0.0144551   -0.4321640    0.4610742
24 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0768901   -0.5603241    0.4065439
24 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.3385918   -0.7300928    0.0529091
24 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.3284972   -0.1396129    0.7966072
24 months   MAL-ED       PERU           Food Insecure          Food Secure        0.1695465   -0.3063753    0.6454684
24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.2881137   -0.7207486    0.1445212
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.1036456   -0.1663939    0.3736850
24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.1316044   -0.3909884    0.1277796
24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.3188570   -0.7062619    0.0685479
24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0036947   -0.2073051    0.2146945
24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0803721   -0.3727993    0.2120551


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure          NA                 0.0621264    0.0046894    0.1195635
Birth       JiVitA-3     BANGLADESH     Food Secure          NA                -0.0411135   -0.0614869   -0.0207401
Birth       JiVitA-4     BANGLADESH     Food Secure          NA                -0.0098237   -0.0604597    0.0408124
Birth       MAL-ED       PERU           Food Secure          NA                 0.2877723   -0.0939327    0.6694774
Birth       MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0702299   -0.3205899    0.1801302
Birth       NIH-Birth    BANGLADESH     Food Secure          NA                -0.2322473   -0.4530153   -0.0114793
Birth       NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0104757   -0.0566831    0.0776345
6 months    GMS-Nepal    NEPAL          Food Secure          NA                -0.0082650   -0.0600773    0.0435472
6 months    JiVitA-3     BANGLADESH     Food Secure          NA                -0.0471022   -0.0652966   -0.0289079
6 months    JiVitA-4     BANGLADESH     Food Secure          NA                -0.0054136   -0.0375357    0.0267085
6 months    MAL-ED       INDIA          Food Secure          NA                -0.0194218   -0.0668687    0.0280250
6 months    MAL-ED       NEPAL          Food Secure          NA                -0.0496734   -0.1701283    0.0707816
6 months    MAL-ED       PERU           Food Secure          NA                 0.0418135   -0.3319997    0.4156266
6 months    MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0988292   -0.2404548    0.0427963
6 months    NIH-Birth    BANGLADESH     Food Secure          NA                -0.0868413   -0.2727782    0.0990956
6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0474392   -0.1114647    0.0165864
24 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0017069   -0.0599533    0.0565395
24 months   JiVitA-3     BANGLADESH     Food Secure          NA                -0.0389933   -0.0628759   -0.0151107
24 months   JiVitA-4     BANGLADESH     Food Secure          NA                -0.0116006   -0.0428434    0.0196423
24 months   MAL-ED       INDIA          Food Secure          NA                -0.0332363   -0.0875904    0.0211177
24 months   MAL-ED       NEPAL          Food Secure          NA                -0.0592703   -0.1507135    0.0321729
24 months   MAL-ED       PERU           Food Secure          NA                 0.1684573   -0.1661442    0.5030589
24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0140756   -0.0958130    0.1239642
24 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.1251330   -0.3410183    0.0907523
24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0078652   -0.0742700    0.0585397
