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
Birth       ki1000108-IRC              INDIA        3 or less        52   343
Birth       ki1000108-IRC              INDIA        4-5             131   343
Birth       ki1000108-IRC              INDIA        6-7              84   343
Birth       ki1000108-IRC              INDIA        8+               76   343
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less         7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5              11    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7               7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                3    28
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less         8    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5               7    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7               5    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                3    23
6 months    ki1000108-IRC              INDIA        3 or less        57   408
6 months    ki1000108-IRC              INDIA        4-5             157   408
6 months    ki1000108-IRC              INDIA        6-7             107   408
6 months    ki1000108-IRC              INDIA        8+               87   408
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             166   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             115   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               66   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        95   536
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5             227   536
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7             127   536
6 months    ki1017093-NIH-Birth        BANGLADESH   8+               87   536
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       102   582
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5             277   582
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7             126   582
6 months    ki1017093b-PROVIDE         BANGLADESH   8+               77   582
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
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        74   428
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   428
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7             100   428
24 months   ki1017093-NIH-Birth        BANGLADESH   8+               70   428
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       105   578
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             273   578
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             117   578
24 months   ki1017093b-PROVIDE         BANGLADESH   8+               83   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             232   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             130   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               83   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less       157   558
24 months   ki1148112-LCNI-5           MALAWI       4-5             230   558
24 months   ki1148112-LCNI-5           MALAWI       6-7             123   558
24 months   ki1148112-LCNI-5           MALAWI       8+               48   558


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
![](/tmp/4bb74f0f-8931-4182-bfd4-b1302bab3791/a45e7296-cfff-4152-a1b7-5b020a65a9d1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4bb74f0f-8931-4182-bfd4-b1302bab3791/a45e7296-cfff-4152-a1b7-5b020a65a9d1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4bb74f0f-8931-4182-bfd4-b1302bab3791/a45e7296-cfff-4152-a1b7-5b020a65a9d1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                -1.2501923   -1.7553866   -0.7449980
Birth       ki1000108-IRC              INDIA        4-5                  NA                -0.9866412   -1.2906453   -0.6826371
Birth       ki1000108-IRC              INDIA        6-7                  NA                -0.8254762   -1.1713949   -0.4795575
Birth       ki1000108-IRC              INDIA        8+                   NA                -1.0925000   -1.4994234   -0.6855766
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.5154386   -0.8555810   -0.1752962
6 months    ki1000108-IRC              INDIA        4-5                  NA                -0.5811677   -0.7868221   -0.3755133
6 months    ki1000108-IRC              INDIA        6-7                  NA                -0.5393769   -0.8095791   -0.2691748
6 months    ki1000108-IRC              INDIA        8+                   NA                -0.7589272   -1.0822316   -0.4356228
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.5057576   -0.8139467   -0.1975684
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -0.9942169   -1.1635351   -0.8248986
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -1.1646087   -1.3932289   -0.9359885
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -1.0448485   -1.3121213   -0.7775757
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.4380702   -0.6344243   -0.2417160
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.4771769   -0.6170734   -0.3372804
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.3770144   -0.5544094   -0.1996195
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.4303352   -0.6631297   -0.1975408
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0881373   -0.2901132    0.1138386
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.1943863   -0.3115068   -0.0772657
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.2371164   -0.4209141   -0.0533187
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.3709091   -0.6264376   -0.1153806
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1815385   -0.0163587    0.3794357
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0237577   -0.1456473    0.0981320
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.0028824   -0.1508866    0.1451219
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.0924783   -0.1084867    0.2934432
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.5304464    0.3897965    0.6710963
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                 0.4627059    0.3552092    0.5702026
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                 0.3857143    0.2360212    0.5354073
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                 0.2025714   -0.0484502    0.4535931
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.6209770   -0.8730190   -0.3689350
24 months   ki1000108-IRC              INDIA        4-5                  NA                -0.8305802   -0.9756749   -0.6854855
24 months   ki1000108-IRC              INDIA        6-7                  NA                -0.6561682   -0.8217662   -0.4905702
24 months   ki1000108-IRC              INDIA        8+                   NA                -0.7858140   -0.9939620   -0.5776660
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.9077477   -1.1399785   -0.6755170
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.9133243   -1.0599469   -0.7667017
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.9146917   -1.1151591   -0.7142242
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.9065952   -1.1666898   -0.6465007
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.7712381   -0.9665883   -0.5758879
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.8972161   -1.0146305   -0.7798017
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.9501709   -1.1435776   -0.7567643
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.9173494   -1.1360763   -0.6986225
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.6136232   -0.8297405   -0.3975059
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.6484483   -0.7929739   -0.5039227
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.5323077   -0.7295402   -0.3350752
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.6233735   -0.8517043   -0.3950427
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0380892   -0.2047858    0.1286074
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0329565   -0.1604411    0.0945281
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -0.0556911   -0.2204413    0.1090592
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -0.1312500   -0.3891485    0.1266485


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        NA                   NA                -1.0105831   -1.1973019   -0.8238643
6 months    ki1000108-IRC              INDIA        NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                 0.4418137    0.3703100    0.5133174
24 months   ki1000108-IRC              INDIA        NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                -0.0478674   -0.1301904    0.0344557


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        4-5                  3 or less          0.2635511   -0.3260588    0.8531609
Birth       ki1000108-IRC              INDIA        6-7                  3 or less          0.4247161   -0.1875592    1.0369914
Birth       ki1000108-IRC              INDIA        8+                   3 or less          0.1576923   -0.4910048    0.8063894
6 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         -0.0657291   -0.4632094    0.3317512
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.0239384   -0.4583414    0.4104647
6 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.2434886   -0.7127674    0.2257901
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.4884593   -0.8400972   -0.1368214
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.6588511   -1.0425799   -0.2751224
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.5390909   -0.9470312   -0.1311506
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0391068   -0.2802001    0.2019865
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0610557   -0.2035646    0.3256761
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0077349   -0.2968110    0.3122809
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.1062490   -0.3397260    0.1272279
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.1489791   -0.4220649    0.1241066
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.2827718   -0.6084850    0.0429414
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.2052961   -0.4377190    0.0271267
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1844208   -0.4315414    0.0626997
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0890602   -0.3711067    0.1929863
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0677405   -0.2447658    0.1092847
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.1447321   -0.3501352    0.0606709
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.3278750   -0.6156149   -0.0401351
24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.2096032   -0.5004255    0.0812192
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0351912   -0.3367669    0.2663844
24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.1648369   -0.4917173    0.1620434
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.0055765   -0.2802205    0.2690675
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0069439   -0.3137310    0.2998432
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0011525   -0.3475312    0.3498362
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.1259780   -0.3538987    0.1019427
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.1789328   -0.4538289    0.0959632
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.1461113   -0.4393742    0.1471516
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0348251   -0.2948142    0.2251640
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0813155   -0.2112719    0.3739029
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0097503   -0.3241412    0.3046406
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0051327   -0.2047246    0.2149899
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0176019   -0.2519743    0.2167705
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0931608   -0.4002429    0.2139212


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                 0.2396092   -0.2215852    0.7008037
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0834911   -0.4024508    0.2354685
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.5064003   -0.8095723   -0.2032283
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0008400   -0.1819890    0.1803091
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.1202333   -0.3036003    0.0631337
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1517762   -0.3361682    0.0326158
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0886327   -0.2070989    0.0298335
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.1248380   -0.3567643    0.1070883
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0038313   -0.2156590    0.2079964
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.1167031   -0.2932635    0.0598573
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0032730   -0.2044006    0.2109466
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0097782   -0.1473573    0.1278009
