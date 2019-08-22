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

**Intervention Variable:** nhh

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country      nhh          n_cell     n
----------  -------------------------  -----------  ----------  -------  ----
Birth       ki1000108-IRC              INDIA        3 or less        54   388
Birth       ki1000108-IRC              INDIA        4-5             150   388
Birth       ki1000108-IRC              INDIA        6-7             103   388
Birth       ki1000108-IRC              INDIA        8+               81   388
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less         7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5              11    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7               7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                3    28
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less         8    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5               9    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7               7    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                3    27
6 months    ki1000108-IRC              INDIA        3 or less        58   407
6 months    ki1000108-IRC              INDIA        4-5             158   407
6 months    ki1000108-IRC              INDIA        6-7             106   407
6 months    ki1000108-IRC              INDIA        8+               85   407
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             166   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             115   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               66   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        95   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5             227   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7             128   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+               87   537
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       102   583
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5             277   583
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7             126   583
6 months    ki1017093b-PROVIDE         BANGLADESH   8+               78   583
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less       104   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5             326   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7             170   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+              115   715
6 months    ki1148112-LCNI-5           MALAWI       3 or less       224   816
6 months    ki1148112-LCNI-5           MALAWI       4-5             340   816
6 months    ki1148112-LCNI-5           MALAWI       6-7             182   816
6 months    ki1148112-LCNI-5           MALAWI       8+               70   816
24 months   ki1000108-IRC              INDIA        3 or less        58   409
24 months   ki1000108-IRC              INDIA        4-5             158   409
24 months   ki1000108-IRC              INDIA        6-7             107   409
24 months   ki1000108-IRC              INDIA        8+               86   409
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        75   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7             100   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+               70   429
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       105   577
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             273   577
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             117   577
24 months   ki1017093b-PROVIDE         BANGLADESH   8+               82   577
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             232   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             130   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               83   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less       159   574
24 months   ki1148112-LCNI-5           MALAWI       4-5             237   574
24 months   ki1148112-LCNI-5           MALAWI       6-7             129   574
24 months   ki1148112-LCNI-5           MALAWI       8+               49   574


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/0d785b88-fdbd-4510-954e-13a0c21d00c1/0b374b92-cd02-425d-a1a0-0a1acb5d75b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0d785b88-fdbd-4510-954e-13a0c21d00c1/0b374b92-cd02-425d-a1a0-0a1acb5d75b3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0d785b88-fdbd-4510-954e-13a0c21d00c1/0b374b92-cd02-425d-a1a0-0a1acb5d75b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                 0.0059259   -0.3720952    0.3839471
Birth       ki1000108-IRC              INDIA        4-5                  NA                -0.4374000   -0.7051558   -0.1696442
Birth       ki1000108-IRC              INDIA        6-7                  NA                -0.4412621   -0.7811504   -0.1013739
Birth       ki1000108-IRC              INDIA        8+                   NA                -0.1083951   -0.4070486    0.1902585
6 months    ki1000108-IRC              INDIA        3 or less            NA                -1.0603161   -1.4228026   -0.6978296
6 months    ki1000108-IRC              INDIA        4-5                  NA                -1.3470148   -1.5529446   -1.1410850
6 months    ki1000108-IRC              INDIA        6-7                  NA                -1.2388836   -1.4798291   -0.9979382
6 months    ki1000108-IRC              INDIA        8+                   NA                -1.1382941   -1.4476886   -0.8288996
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -1.4636364   -1.7938184   -1.1334544
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -1.8856627   -2.0492713   -1.7220540
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -1.9990435   -2.2267810   -1.7713059
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -1.9740909   -2.2268199   -1.7213620
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -1.3012456   -1.5199922   -1.0824990
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -1.5579919   -1.6941634   -1.4218205
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -1.3121484   -1.4827021   -1.1415948
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -1.2704215   -1.4912353   -1.0496076
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -1.1177941   -1.2891832   -0.9464050
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -1.0816968   -1.1945921   -0.9688014
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.0682275   -1.2219089   -0.9145461
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.0966667   -1.3286429   -0.8646905
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.3220673   -1.4955380   -1.1485966
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -1.2045706   -1.3133029   -1.0958382
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -1.0960294   -1.2448367   -0.9472222
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.2221304   -1.3898819   -1.0543789
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -1.5903125   -1.7269478   -1.4536772
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                -1.6739706   -1.7800476   -1.5678936
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                -1.6618681   -1.8007284   -1.5230078
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                -1.6085714   -1.8654233   -1.3517195
24 months   ki1000108-IRC              INDIA        3 or less            NA                -1.5172701   -1.7794683   -1.2550720
24 months   ki1000108-IRC              INDIA        4-5                  NA                -1.8821097   -2.0276386   -1.7365808
24 months   ki1000108-IRC              INDIA        6-7                  NA                -1.7259969   -1.9225450   -1.5294488
24 months   ki1000108-IRC              INDIA        8+                   NA                -1.8485659   -2.0338543   -1.6632775
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -2.0221556   -2.2650065   -1.7793046
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -2.3257699   -2.4734648   -2.1780751
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -2.1340167   -2.3575847   -1.9104486
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -2.0365119   -2.3022591   -1.7707647
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -1.5329524   -1.7360559   -1.3298489
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -1.6156410   -1.7372098   -1.4940723
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.6294872   -1.8034033   -1.4555711
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.4940244   -1.7160449   -1.2720039
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.4827536   -1.7080531   -1.2574542
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -1.4277155   -1.5528992   -1.3025319
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -1.3974615   -1.5690694   -1.2258537
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.4406024   -1.6297342   -1.2514706
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -1.9227673   -2.0732560   -1.7722786
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -1.9023629   -2.0324129   -1.7723128
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -1.7818605   -1.9441978   -1.6195231
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -1.7914286   -2.0899325   -1.4929246


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        NA                   NA                -0.3080412   -0.4687931   -0.1472894
6 months    ki1000108-IRC              INDIA        NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                -1.6426961   -1.7120603   -1.5733318
24 months   ki1000108-IRC              INDIA        NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                -1.8714634   -1.9528558   -1.7900711


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        4-5                  3 or less         -0.4433259   -0.9065680    0.0199161
Birth       ki1000108-IRC              INDIA        6-7                  3 or less         -0.4471881   -0.9555423    0.0611662
Birth       ki1000108-IRC              INDIA        8+                   3 or less         -0.1143210   -0.5960823    0.3674403
6 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         -0.2866987   -0.7035962    0.1301988
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.1785676   -0.6138274    0.2566923
6 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.0779780   -0.5545506    0.3985945
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.4220263   -0.7905204   -0.0535321
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.5354071   -0.9365113   -0.1343030
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.5104545   -0.9262575   -0.0946516
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.2567463   -0.5144142    0.0009216
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0109028   -0.2882810    0.2664753
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0308242   -0.2799955    0.3416438
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0360974   -0.1691332    0.2413279
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0495666   -0.1806338    0.2797670
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less          0.0211275   -0.2672944    0.3095493
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.1174968   -0.0872343    0.3222278
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.2260379   -0.0025134    0.4545892
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0999369   -0.1413775    0.3412513
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0836581   -0.2566365    0.0893204
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0715556   -0.2663668    0.1232555
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0182589   -0.3091921    0.2726742
24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.3648396   -0.6647171   -0.0649621
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.2087268   -0.5364141    0.1189606
24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.3312958   -0.6523560   -0.0102356
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.3036144   -0.5878508   -0.0193779
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.1118611   -0.4419509    0.2182287
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0143563   -0.3743538    0.3456411
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0826886   -0.3193952    0.1540179
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0965348   -0.3639256    0.1708560
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less          0.0389280   -0.2619775    0.3398335
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0550381   -0.2027036    0.3127798
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0852921   -0.1979200    0.3685042
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0421512   -0.2520097    0.3363122
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0204044   -0.1784922    0.2193010
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.1409068   -0.0804532    0.3622669
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.1313387   -0.2029537    0.4656312


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                -0.3139672   -0.6730840    0.0451496
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.1740901   -0.5075942    0.1594139
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.4350478   -0.7558289   -0.1142668
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1061364   -0.3030720    0.0907991
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0306901   -0.1272351    0.1886152
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1233890   -0.0392092    0.2859872
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0523836   -0.1674090    0.0626418
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.2652075   -0.5062494   -0.0241656
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1586389   -0.3798230    0.0625451
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0531655   -0.2352864    0.1289555
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0532205   -0.1566855    0.2631266
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0513039   -0.0780215    0.1806292
