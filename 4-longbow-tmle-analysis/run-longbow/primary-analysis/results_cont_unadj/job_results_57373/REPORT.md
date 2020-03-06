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

agecat      studyid         country      nhh          n_cell     n
----------  --------------  -----------  ----------  -------  ----
Birth       IRC             INDIA        3 or less        54   388
Birth       IRC             INDIA        4-5             150   388
Birth       IRC             INDIA        6-7             103   388
Birth       IRC             INDIA        8+               81   388
Birth       NIH-Birth       BANGLADESH   3 or less       112   608
Birth       NIH-Birth       BANGLADESH   4-5             255   608
Birth       NIH-Birth       BANGLADESH   6-7             138   608
Birth       NIH-Birth       BANGLADESH   8+              103   608
Birth       NIH-Crypto      BANGLADESH   3 or less       108   732
Birth       NIH-Crypto      BANGLADESH   4-5             328   732
Birth       NIH-Crypto      BANGLADESH   6-7             176   732
Birth       NIH-Crypto      BANGLADESH   8+              120   732
Birth       PROVIDE         BANGLADESH   3 or less       104   539
Birth       PROVIDE         BANGLADESH   4-5             251   539
Birth       PROVIDE         BANGLADESH   6-7             116   539
Birth       PROVIDE         BANGLADESH   8+               68   539
6 months    IRC             INDIA        3 or less        58   407
6 months    IRC             INDIA        4-5             158   407
6 months    IRC             INDIA        6-7             106   407
6 months    IRC             INDIA        8+               85   407
6 months    LCNI-5          MALAWI       3 or less       224   816
6 months    LCNI-5          MALAWI       4-5             340   816
6 months    LCNI-5          MALAWI       6-7             182   816
6 months    LCNI-5          MALAWI       8+               70   816
6 months    NIH-Birth       BANGLADESH   3 or less        95   537
6 months    NIH-Birth       BANGLADESH   4-5             227   537
6 months    NIH-Birth       BANGLADESH   6-7             128   537
6 months    NIH-Birth       BANGLADESH   8+               87   537
6 months    NIH-Crypto      BANGLADESH   3 or less       104   715
6 months    NIH-Crypto      BANGLADESH   4-5             326   715
6 months    NIH-Crypto      BANGLADESH   6-7             170   715
6 months    NIH-Crypto      BANGLADESH   8+              115   715
6 months    PROVIDE         BANGLADESH   3 or less       105   604
6 months    PROVIDE         BANGLADESH   4-5             289   604
6 months    PROVIDE         BANGLADESH   6-7             130   604
6 months    PROVIDE         BANGLADESH   8+               80   604
6 months    SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    SAS-FoodSuppl   INDIA        4-5             166   380
6 months    SAS-FoodSuppl   INDIA        6-7             115   380
6 months    SAS-FoodSuppl   INDIA        8+               66   380
24 months   IRC             INDIA        3 or less        58   409
24 months   IRC             INDIA        4-5             158   409
24 months   IRC             INDIA        6-7             107   409
24 months   IRC             INDIA        8+               86   409
24 months   LCNI-5          MALAWI       3 or less       159   574
24 months   LCNI-5          MALAWI       4-5             237   574
24 months   LCNI-5          MALAWI       6-7             129   574
24 months   LCNI-5          MALAWI       8+               49   574
24 months   NIH-Birth       BANGLADESH   3 or less        75   429
24 months   NIH-Birth       BANGLADESH   4-5             184   429
24 months   NIH-Birth       BANGLADESH   6-7             100   429
24 months   NIH-Birth       BANGLADESH   8+               70   429
24 months   NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   NIH-Crypto      BANGLADESH   4-5             232   514
24 months   NIH-Crypto      BANGLADESH   6-7             130   514
24 months   NIH-Crypto      BANGLADESH   8+               83   514
24 months   PROVIDE         BANGLADESH   3 or less       106   578
24 months   PROVIDE         BANGLADESH   4-5             273   578
24 months   PROVIDE         BANGLADESH   6-7             117   578
24 months   PROVIDE         BANGLADESH   8+               82   578


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH



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




# Results Detail

## Results Plots
![](/tmp/4a18d816-5925-491f-a774-18b83c4db7b2/2d9ac6cd-1271-408b-9580-bc371fea74a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4a18d816-5925-491f-a774-18b83c4db7b2/2d9ac6cd-1271-408b-9580-bc371fea74a2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4a18d816-5925-491f-a774-18b83c4db7b2/2d9ac6cd-1271-408b-9580-bc371fea74a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                 0.0059259   -0.3720952    0.3839471
Birth       IRC             INDIA        4-5                  NA                -0.4374000   -0.7051558   -0.1696442
Birth       IRC             INDIA        6-7                  NA                -0.4412621   -0.7811504   -0.1013739
Birth       IRC             INDIA        8+                   NA                -0.1083951   -0.4070486    0.1902585
Birth       NIH-Birth       BANGLADESH   3 or less            NA                -0.9445536   -1.1796984   -0.7094087
Birth       NIH-Birth       BANGLADESH   4-5                  NA                -0.9593725   -1.0937436   -0.8250015
Birth       NIH-Birth       BANGLADESH   6-7                  NA                -0.8360145   -1.0091715   -0.6628575
Birth       NIH-Birth       BANGLADESH   8+                   NA                -0.9733981   -1.1826745   -0.7641216
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                -1.0491667   -1.2286160   -0.8697174
Birth       NIH-Crypto      BANGLADESH   4-5                  NA                -0.9126524   -1.0178079   -0.8074969
Birth       NIH-Crypto      BANGLADESH   6-7                  NA                -0.8491477   -1.0063776   -0.6919179
Birth       NIH-Crypto      BANGLADESH   8+                   NA                -0.8636667   -1.0287235   -0.6986098
Birth       PROVIDE         BANGLADESH   3 or less            NA                -1.0165385   -1.1726870   -0.8603899
Birth       PROVIDE         BANGLADESH   4-5                  NA                -0.8314741   -0.9444084   -0.7185398
Birth       PROVIDE         BANGLADESH   6-7                  NA                -0.8688793   -1.0333010   -0.7044576
Birth       PROVIDE         BANGLADESH   8+                   NA                -0.9097059   -1.1148247   -0.7045870
6 months    IRC             INDIA        3 or less            NA                -1.0603161   -1.4228026   -0.6978296
6 months    IRC             INDIA        4-5                  NA                -1.3470148   -1.5529446   -1.1410850
6 months    IRC             INDIA        6-7                  NA                -1.2388836   -1.4798291   -0.9979382
6 months    IRC             INDIA        8+                   NA                -1.1382941   -1.4476886   -0.8288996
6 months    LCNI-5          MALAWI       3 or less            NA                -1.5903125   -1.7269478   -1.4536772
6 months    LCNI-5          MALAWI       4-5                  NA                -1.6739706   -1.7800476   -1.5678936
6 months    LCNI-5          MALAWI       6-7                  NA                -1.6618681   -1.8007284   -1.5230078
6 months    LCNI-5          MALAWI       8+                   NA                -1.6085714   -1.8654233   -1.3517195
6 months    NIH-Birth       BANGLADESH   3 or less            NA                -1.3012456   -1.5199922   -1.0824990
6 months    NIH-Birth       BANGLADESH   4-5                  NA                -1.5579919   -1.6941634   -1.4218205
6 months    NIH-Birth       BANGLADESH   6-7                  NA                -1.3121484   -1.4827021   -1.1415948
6 months    NIH-Birth       BANGLADESH   8+                   NA                -1.2704215   -1.4912353   -1.0496076
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -1.3220673   -1.4955380   -1.1485966
6 months    NIH-Crypto      BANGLADESH   4-5                  NA                -1.2045706   -1.3133029   -1.0958382
6 months    NIH-Crypto      BANGLADESH   6-7                  NA                -1.0960294   -1.2448367   -0.9472222
6 months    NIH-Crypto      BANGLADESH   8+                   NA                -1.2221304   -1.3898819   -1.0543789
6 months    PROVIDE         BANGLADESH   3 or less            NA                -1.1125238   -1.2801448   -0.9449029
6 months    PROVIDE         BANGLADESH   4-5                  NA                -1.0937370   -1.2032916   -0.9841824
6 months    PROVIDE         BANGLADESH   6-7                  NA                -1.0688205   -1.2188822   -0.9187589
6 months    PROVIDE         BANGLADESH   8+                   NA                -1.0941250   -1.3203703   -0.8678797
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -1.4636364   -1.7938184   -1.1334544
6 months    SAS-FoodSuppl   INDIA        4-5                  NA                -1.8856627   -2.0492713   -1.7220540
6 months    SAS-FoodSuppl   INDIA        6-7                  NA                -1.9990435   -2.2267810   -1.7713059
6 months    SAS-FoodSuppl   INDIA        8+                   NA                -1.9740909   -2.2268199   -1.7213620
24 months   IRC             INDIA        3 or less            NA                -1.5292816   -1.7897071   -1.2688561
24 months   IRC             INDIA        4-5                  NA                -1.8960970   -2.0410920   -1.7511020
24 months   IRC             INDIA        6-7                  NA                -1.7419315   -1.9386135   -1.5452494
24 months   IRC             INDIA        8+                   NA                -1.8724612   -2.0544624   -1.6904601
24 months   LCNI-5          MALAWI       3 or less            NA                -1.9347799   -2.0855522   -1.7840075
24 months   LCNI-5          MALAWI       4-5                  NA                -1.9142194   -2.0442668   -1.7841720
24 months   LCNI-5          MALAWI       6-7                  NA                -1.7900775   -1.9523653   -1.6277898
24 months   LCNI-5          MALAWI       8+                   NA                -1.8000000   -2.0993243   -1.5006757
24 months   NIH-Birth       BANGLADESH   3 or less            NA                -2.0660000   -2.3089430   -1.8230570
24 months   NIH-Birth       BANGLADESH   4-5                  NA                -2.3611232   -2.5087158   -2.2135306
24 months   NIH-Birth       BANGLADESH   6-7                  NA                -2.1615333   -2.3836873   -1.9393794
24 months   NIH-Birth       BANGLADESH   8+                   NA                -2.0917976   -2.3594231   -1.8241721
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                -1.5079710   -1.7348105   -1.2811315
24 months   NIH-Crypto      BANGLADESH   4-5                  NA                -1.4368966   -1.5625404   -1.3112527
24 months   NIH-Crypto      BANGLADESH   6-7                  NA                -1.4059231   -1.5777531   -1.2340931
24 months   NIH-Crypto      BANGLADESH   8+                   NA                -1.4533735   -1.6450837   -1.2616633
24 months   PROVIDE         BANGLADESH   3 or less            NA                -1.5503302   -1.7506093   -1.3500511
24 months   PROVIDE         BANGLADESH   4-5                  NA                -1.6352564   -1.7572590   -1.5132538
24 months   PROVIDE         BANGLADESH   6-7                  NA                -1.6417949   -1.8165063   -1.4670834
24 months   PROVIDE         BANGLADESH   8+                   NA                -1.5042683   -1.7276170   -1.2809196


### Parameter: E(Y)


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       NIH-Birth       BANGLADESH   NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto      BANGLADESH   NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE         BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    IRC             INDIA        NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    LCNI-5          MALAWI       NA                   NA                -1.6426961   -1.7120603   -1.5733318
6 months    NIH-Birth       BANGLADESH   NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto      BANGLADESH   NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE         BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-FoodSuppl   INDIA        NA                   NA                -1.8986842   -2.0118892   -1.7854792
24 months   IRC             INDIA        NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   LCNI-5          MALAWI       NA                   NA                -1.8822648   -1.9637218   -1.8008078
24 months   NIH-Birth       BANGLADESH   NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto      BANGLADESH   NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE         BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       IRC             INDIA        4-5                  3 or less         -0.4433259   -0.9065680    0.0199161
Birth       IRC             INDIA        6-7                  3 or less         -0.4471881   -0.9555423    0.0611662
Birth       IRC             INDIA        8+                   3 or less         -0.1143210   -0.5960823    0.3674403
Birth       NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0148190   -0.2856486    0.2560106
Birth       NIH-Birth       BANGLADESH   6-7                  3 or less          0.1085391   -0.1834822    0.4005604
Birth       NIH-Birth       BANGLADESH   8+                   3 or less         -0.0288445   -0.3436297    0.2859407
Birth       NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH   4-5                  3 or less          0.1365142   -0.0714755    0.3445040
Birth       NIH-Crypto      BANGLADESH   6-7                  3 or less          0.2000189   -0.0385670    0.4386049
Birth       NIH-Crypto      BANGLADESH   8+                   3 or less          0.1855000   -0.0583151    0.4293151
Birth       PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH   4-5                  3 or less          0.1850644   -0.0076440    0.3777727
Birth       PROVIDE         BANGLADESH   6-7                  3 or less          0.1476592   -0.0790937    0.3744120
Birth       PROVIDE         BANGLADESH   8+                   3 or less          0.1068326   -0.1509582    0.3646234
6 months    IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    IRC             INDIA        4-5                  3 or less         -0.2866987   -0.7035962    0.1301988
6 months    IRC             INDIA        6-7                  3 or less         -0.1785676   -0.6138274    0.2566923
6 months    IRC             INDIA        8+                   3 or less         -0.0779780   -0.5545506    0.3985945
6 months    LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI       4-5                  3 or less         -0.0836581   -0.2566365    0.0893204
6 months    LCNI-5          MALAWI       6-7                  3 or less         -0.0715556   -0.2663668    0.1232555
6 months    LCNI-5          MALAWI       8+                   3 or less         -0.0182589   -0.3091921    0.2726742
6 months    NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH   4-5                  3 or less         -0.2567463   -0.5144142    0.0009216
6 months    NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0109028   -0.2882810    0.2664753
6 months    NIH-Birth       BANGLADESH   8+                   3 or less          0.0308242   -0.2799955    0.3416438
6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less          0.1174968   -0.0872343    0.3222278
6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less          0.2260379   -0.0025134    0.4545892
6 months    NIH-Crypto      BANGLADESH   8+                   3 or less          0.0999369   -0.1413775    0.3412513
6 months    PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH   4-5                  3 or less          0.0187868   -0.1814605    0.2190341
6 months    PROVIDE         BANGLADESH   6-7                  3 or less          0.0437033   -0.1812751    0.2686817
6 months    PROVIDE         BANGLADESH   8+                   3 or less          0.0183988   -0.2631748    0.2999724
6 months    SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.4220263   -0.7905204   -0.0535321
6 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.5354071   -0.9365113   -0.1343030
6 months    SAS-FoodSuppl   INDIA        8+                   3 or less         -0.5104545   -0.9262575   -0.0946516
24 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   IRC             INDIA        4-5                  3 or less         -0.3668154   -0.6648842   -0.0687466
24 months   IRC             INDIA        6-7                  3 or less         -0.2126499   -0.5390014    0.1137016
24 months   IRC             INDIA        8+                   3 or less         -0.3431796   -0.6608994   -0.0254598
24 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI       4-5                  3 or less          0.0205605   -0.1785491    0.2196700
24 months   LCNI-5          MALAWI       6-7                  3 or less          0.1447024   -0.0768143    0.3662190
24 months   LCNI-5          MALAWI       8+                   3 or less          0.1347799   -0.2003728    0.4699326
24 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.2951232   -0.5793852   -0.0108612
24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0955333   -0.4247349    0.2336682
24 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0257976   -0.3872457    0.3356504
24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0710745   -0.1882372    0.3303861
24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.1020479   -0.1825250    0.3866208
24 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0545975   -0.2424025    0.3515975
24 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0849262   -0.3194392    0.1495868
24 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0914647   -0.3572386    0.1743093
24 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0460619   -0.2539320    0.3460558


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                -0.3139672   -0.6730840    0.0451496
Birth       NIH-Birth       BANGLADESH   3 or less            NA                 0.0135338   -0.1933311    0.2203987
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                 0.1396721   -0.0270727    0.3064170
Birth       PROVIDE         BANGLADESH   3 or less            NA                 0.1314364   -0.0121006    0.2749735
6 months    IRC             INDIA        3 or less            NA                -0.1740901   -0.5075942    0.1594139
6 months    LCNI-5          MALAWI       3 or less            NA                -0.0523836   -0.1674090    0.0626418
6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.1061364   -0.3030720    0.0907991
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                 0.1233890   -0.0392092    0.2859872
6 months    PROVIDE         BANGLADESH   3 or less            NA                 0.0208323   -0.1336581    0.1753227
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.4350478   -0.7558289   -0.1142668
24 months   IRC             INDIA        3 or less            NA                -0.2694959   -0.5089736   -0.0300182
24 months   LCNI-5          MALAWI       3 or less            NA                 0.0525151   -0.0769982    0.1820284
24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.1530579   -0.3742576    0.0681418
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0667064   -0.1445720    0.2779849
24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0520920   -0.2319298    0.1277459
