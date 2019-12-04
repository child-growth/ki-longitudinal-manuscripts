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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        nchldlt5    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   ki1000108-IRC              INDIA                          1                     0       39    395
0-24 months   ki1000108-IRC              INDIA                          1                     1       56    395
0-24 months   ki1000108-IRC              INDIA                          2+                    0      123    395
0-24 months   ki1000108-IRC              INDIA                          2+                    1      177    395
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       87    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      138    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0       42    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1       41    308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       73    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      136    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0       44    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1       57    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      186    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      315    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       80    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1      130    711
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      241    787
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       10    787
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      512    787
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1       24    787
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       25     78
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        6     78
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       40     78
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        7     78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     2739   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2148   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0     1629   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1     1046   7562
0-6 months    ki1000108-IRC              INDIA                          1                     0       20    240
0-6 months    ki1000108-IRC              INDIA                          1                     1       37    240
0-6 months    ki1000108-IRC              INDIA                          2+                    0       67    240
0-6 months    ki1000108-IRC              INDIA                          2+                    1      116    240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0       25    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      115    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    0       15    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    1       30    185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       14    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      124    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        7    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1       52    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0       66    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      170    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       35    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       68    339
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    0        3      4
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0      952   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2148   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      584   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    1     1046   4730
6-24 months   ki1000108-IRC              INDIA                          1                     0       19    155
6-24 months   ki1000108-IRC              INDIA                          1                     1       19    155
6-24 months   ki1000108-IRC              INDIA                          2+                    0       56    155
6-24 months   ki1000108-IRC              INDIA                          2+                    1       61    155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       62    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       23    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0       27    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1       11    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       59    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       12    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0       37    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        5    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      120    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      145    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       45    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       62    372
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      241    787
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       10    787
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      512    787
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1       24    787
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       24     74
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        6     74
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       37     74
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        7     74
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1787   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0     1045   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1        0   2832


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
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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

* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/9fc9e7f1-f834-45b2-8ff7-9c3db1b7ce06/cc91a3bf-63f7-4cc8-8d23-4ed0248ab790/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9fc9e7f1-f834-45b2-8ff7-9c3db1b7ce06/cc91a3bf-63f7-4cc8-8d23-4ed0248ab790/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9fc9e7f1-f834-45b2-8ff7-9c3db1b7ce06/cc91a3bf-63f7-4cc8-8d23-4ed0248ab790/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9fc9e7f1-f834-45b2-8ff7-9c3db1b7ce06/cc91a3bf-63f7-4cc8-8d23-4ed0248ab790/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5894737   0.4891290   0.6898183
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.5900000   0.5290875   0.6509125
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.6133333   0.5472271   0.6794396
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.4939759   0.3886688   0.5992831
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.6507177   0.5852924   0.7161430
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.5643564   0.4689899   0.6597230
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6287425   0.5842394   0.6732457
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6190476   0.5480292   0.6900660
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0398406   0.0146536   0.0650277
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0447761   0.0276905   0.0618617
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1935484   0.0643859   0.3227109
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.1489362   0.0421700   0.2557024
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4395335   0.4256234   0.4534435
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.3910280   0.3725648   0.4094913
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6491228   0.5229840   0.7752616
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.6338798   0.5621518   0.7056077
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8214286   0.7593450   0.8835121
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.6666667   0.5292770   0.8040564
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8985507   0.8475715   0.9495299
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.8813559   0.7977824   0.9649295
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7203390   0.6623642   0.7783138
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6601942   0.5668889   0.7534995
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6929032   0.6766629   0.7091435
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.6417178   0.6184440   0.6649916
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5000000   0.3298550   0.6701450
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.5213675   0.4249456   0.6177894
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2705882   0.1738315   0.3673450
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.2894737   0.1394666   0.4394808
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1690141   0.0805585   0.2574696
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1190476   0.0331409   0.2049543
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5471698   0.4853724   0.6089672
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.5794392   0.4815130   0.6773655
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0398406   0.0146536   0.0650277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0447761   0.0276905   0.0618617
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.2000000   0.0680734   0.3319266
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.1590909   0.0462498   0.2719320


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6258790   0.5881498   0.6636083
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0432020   0.0290622   0.0573419
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1666667   0.0842830   0.2490503
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4223750   0.4112475   0.4335026
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6752643   0.6619190   0.6886095
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1504425   0.0860251   0.2148599
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0432020   0.0290622   0.0573419
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1756757   0.0897916   0.2615597


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0008929   0.8201978   1.2213963
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.8053955   0.6342665   1.0226962
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.8672831   0.7122359   1.0560825
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9845805   0.8604126   1.1266674
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1238806   0.5370664   2.3518650
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.7695035   0.2889550   2.0492314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8896434   0.8404846   0.9416775
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.9765175   0.7798511   1.2227801
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.8115942   0.6516379   1.0108146
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.9808639   0.8782515   1.0954652
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9165049   0.7789331   1.0783739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9261290   0.8869879   0.9669974
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0427350   0.7078288   1.5361008
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.0697941   0.5699484   2.0080052
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.7043651   0.2888063   1.7178646
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0589752   0.8641817   1.2976767
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1238806   0.5370664   2.3518650
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.7954545   0.3019242   2.0957182


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0003997   -0.0887607    0.0895602
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0321645   -0.0661697    0.0018407
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0281371   -0.0657790    0.0095048
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0028635   -0.0276255    0.0218985
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0033614   -0.0173674    0.0240902
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0268817   -0.1281436    0.0743802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0171584   -0.0253580   -0.0089589
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0116228   -0.1223037    0.0990581
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0376448   -0.0754820    0.0001924
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0051497   -0.0344911    0.0241917
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0182741   -0.0518091    0.0152609
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0176390   -0.0274433   -0.0078346
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0161290   -0.1314835    0.1637416
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0058345   -0.0492950    0.0609641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0185716   -0.0649036    0.0277604
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0092818   -0.0240444    0.0426080
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0033614   -0.0173674    0.0240902
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0243243   -0.1278155    0.0791669


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0006777   -0.1624997    0.1409502
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0553445   -0.1157599    0.0017996
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0451942   -0.1076406    0.0137315
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0045751   -0.0449377    0.0342284
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0778064   -0.5530935    0.4524213
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1612903   -0.9712387    0.3158641
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0406237   -0.0602343   -0.0213757
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0182319   -0.2075746    0.1414227
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0480296   -0.0984114    0.0000414
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0057642   -0.0391686    0.0265665
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0260291   -0.0750795    0.0207835
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0261216   -0.0407743   -0.0116751
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0312500   -0.3015416    0.2789500
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0211073   -0.1999704    0.2014545
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1234466   -0.4658052    0.1389496
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0166803   -0.0450811    0.0747918
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0778064   -0.5530935    0.4524213
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1384615   -0.9209109    0.3252708
