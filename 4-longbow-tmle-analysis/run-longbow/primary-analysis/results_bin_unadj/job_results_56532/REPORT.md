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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        nchldlt5    pers_wast   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  ---------  ----------  -------  ------  -----------------
0-24 months   ki1000108-IRC              INDIA                          1                   0       79     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          1                   1       10     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          2+                  0      283     410  pers_wast        
0-24 months   ki1000108-IRC              INDIA                          2+                  1       38     410  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      460     641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       10     641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  0      166     641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  1        5     641  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      504     730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       16     730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0      200     730  pers_wast        
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1       10     730  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1440    2157  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       38    2157  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0      659    2157  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1       20    2157  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      488    1639  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       62    1639  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  0      958    1639  pers_wast        
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  1      131    1639  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0      337     711  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     711  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                  0      368     711  pers_wast        
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                  1        2     711  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9569   15793  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      596   15793  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  0     5327   15793  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  1      301   15793  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          1                   0       69     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          1                   1       16     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          2+                  0      269     402  pers_wast        
0-6 months    ki1000108-IRC              INDIA                          2+                  1       48     402  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      459     638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        9     638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                  0      165     638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                  1        5     638  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      193     250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        4     250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0       52     250  pers_wast        
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1        1     250  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1372    2053  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       36    2053  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0      629    2053  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1       16    2053  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0       31      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1        1      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                  0       17      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                  1        1      50  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          1                   0       79     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          1                   1       10     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          2+                  0      283     410  pers_wast        
6-24 months   ki1000108-IRC              INDIA                          2+                  1       38     410  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      460     641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       10     641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  0      166     641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  1        5     641  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      504     730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       16     730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0      200     730  pers_wast        
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1       10     730  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1440    2157  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       38    2157  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0      659    2157  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1       20    2157  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      488    1639  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       62    1639  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  0      958    1639  pers_wast        
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  1      131    1639  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0      337     711  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     711  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                  0      368     711  pers_wast        
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                  1        2     711  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9569   15793  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      596   15793  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  0     5327   15793  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  1      301   15793  pers_wast        


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/4b56b055-bbcb-4994-9d5a-581e4051945f/eb345023-e7d6-4a08-9501-40e41ef691e0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4b56b055-bbcb-4994-9d5a-581e4051945f/eb345023-e7d6-4a08-9501-40e41ef691e0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4b56b055-bbcb-4994-9d5a-581e4051945f/eb345023-e7d6-4a08-9501-40e41ef691e0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4b56b055-bbcb-4994-9d5a-581e4051945f/eb345023-e7d6-4a08-9501-40e41ef691e0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1123596   0.0466684   0.1780507
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.1183801   0.0829962   0.1537640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0212766   0.0082203   0.0343329
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0292398   0.0039682   0.0545113
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0307692   0.0159162   0.0456223
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0476190   0.0187965   0.0764416
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0257104   0.0176397   0.0337811
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0294551   0.0167346   0.0421755
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1127273   0.0684688   0.1569857
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1202938   0.0911517   0.1494360
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0586326   0.0532285   0.0640367
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0534826   0.0477628   0.0592023
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1882353   0.1050311   0.2714395
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.1514196   0.1119105   0.1909286
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0192308   0.0067785   0.0316830
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0294118   0.0039937   0.0548298
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0255682   0.0173215   0.0338148
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0248062   0.0128002   0.0368122
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1123596   0.0466684   0.1780507
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.1183801   0.0829962   0.1537640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0212766   0.0082203   0.0343329
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0292398   0.0039682   0.0545113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0307692   0.0159162   0.0456223
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0476190   0.0187965   0.0764416
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0257104   0.0176397   0.0337811
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0294551   0.0167346   0.0421755
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1127273   0.0684688   0.1569857
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1202938   0.0911517   0.1494360
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0586326   0.0532285   0.0640367
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0534826   0.0477628   0.0592023


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234009   0.0116889   0.0351130
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1177547   0.0931926   0.1423168
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567973   0.0526805   0.0609141
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0219436   0.0105669   0.0333202
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253288   0.0185306   0.0321270
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234009   0.0116889   0.0351130
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1177547   0.0931926   0.1423168
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0567973   0.0526805   0.0609141


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0535826   0.5463855   2.031599
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.3742690   0.4761342   3.966561
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.5476190   0.7135681   3.356547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.1456476   0.6717152   1.953966
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0671228   0.6728384   1.692459
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9121653   0.7947657   1.046907
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.8044164   0.4814626   1.344000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.5294117   0.5194431   4.503092
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9701981   0.5423343   1.735616
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0535826   0.5463855   2.031599
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.3742690   0.4761342   3.966561
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.5476190   0.7135681   3.356547
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.1456476   0.6717152   1.953966
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0671228   0.6728384   1.692459
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9121653   0.7947657   1.046907


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0047136   -0.0537047   0.0631319
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0021243   -0.0054689   0.0097175
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0048472   -0.0044968   0.0141912
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0011788   -0.0035640   0.0059216
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0050275   -0.0299461   0.0400010
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0018352   -0.0045691   0.0008986
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0290313   -0.1016787   0.0436161
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0027128   -0.0048372   0.0102628
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0002394   -0.0048155   0.0043367
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0047136   -0.0537047   0.0631319
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0021243   -0.0054689   0.0097175
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0048472   -0.0044968   0.0141912
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0011788   -0.0035640   0.0059216
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0050275   -0.0299461   0.0400010
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0018352   -0.0045691   0.0008986


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0402622   -0.6140371   0.4293212
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0907801   -0.2947917   0.3615338
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1360947   -0.1640215   0.3588328
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0438384   -0.1494600   0.2046308
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0426943   -0.3066569   0.2986421
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0323122   -0.0811223   0.0142942
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.1823529   -0.7377372   0.1955294
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1236264   -0.2892206   0.4042674
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0094515   -0.2072770   0.1559581
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0402622   -0.6140371   0.4293212
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0907801   -0.2947917   0.3615338
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1360947   -0.1640215   0.3588328
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0438384   -0.1494600   0.2046308
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0426943   -0.3066569   0.2986421
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0323122   -0.0811223   0.0142942
