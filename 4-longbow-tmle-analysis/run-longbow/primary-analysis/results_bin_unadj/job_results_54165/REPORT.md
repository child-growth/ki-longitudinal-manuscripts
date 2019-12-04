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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        nchldlt5    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                      0       52     410
0-24 months   ki1000108-IRC              INDIA                          1                      1       37     410
0-24 months   ki1000108-IRC              INDIA                          2+                     0      218     410
0-24 months   ki1000108-IRC              INDIA                          2+                     1      103     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      481     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       31     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0      177     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1       11     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      491     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       50     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0      201     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1       16     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1525    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      112    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      703    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       45    2385
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0     1032    3189
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1       41    3189
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0     2005    3189
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1      111    3189
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      387     812
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        4     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0      417     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1        4     812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    16167   26929
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1057   26929
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     9118   26929
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      587   26929
0-6 months    ki1000108-IRC              INDIA                          1                      0       55     410
0-6 months    ki1000108-IRC              INDIA                          1                      1       34     410
0-6 months    ki1000108-IRC              INDIA                          2+                     0      229     410
0-6 months    ki1000108-IRC              INDIA                          2+                     1       92     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0      488     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1       24     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     0      183     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     1        5     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      502     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       39     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0      206     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1       11     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1580    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       57    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      727    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       21    2385
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0      122     267
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     0      145     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     1        0     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0    16434   26832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      711   26832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     9287   26832
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      400   26832
6-24 months   ki1000108-IRC              INDIA                          1                      0       83     410
6-24 months   ki1000108-IRC              INDIA                          1                      1        6     410
6-24 months   ki1000108-IRC              INDIA                          2+                     0      301     410
6-24 months   ki1000108-IRC              INDIA                          2+                     1       20     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      441     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1        7     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0      161     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1        6     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      505     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       15     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0      205     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        5     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1324    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       59    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      603    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       24    2010
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0     1032    3189
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1       41    3189
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0     2005    3189
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1      111    3189
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      380     800
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        4     800
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0      412     800
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1        4     800
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0    10848   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1      356   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0     5886   17286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      196   17286


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

* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/b1267c8e-226b-4b4a-a566-90c614837b19/c7cc0855-dbbe-4457-8900-940985a58b2e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b1267c8e-226b-4b4a-a566-90c614837b19/c7cc0855-dbbe-4457-8900-940985a58b2e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b1267c8e-226b-4b4a-a566-90c614837b19/c7cc0855-dbbe-4457-8900-940985a58b2e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b1267c8e-226b-4b4a-a566-90c614837b19/c7cc0855-dbbe-4457-8900-940985a58b2e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4157303   0.3132133   0.5182473
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.3208723   0.2697432   0.3720013
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0605469   0.0398737   0.0812200
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0585106   0.0249365   0.0920848
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0924214   0.0680004   0.1168425
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0737327   0.0389388   0.1085266
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0684178   0.0561855   0.0806502
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0601604   0.0431165   0.0772044
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0382106   0.0233347   0.0530865
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0524575   0.0367958   0.0681191
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0613679   0.0571407   0.0655950
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0604843   0.0551001   0.0658685
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.3820225   0.2809544   0.4830906
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.2866044   0.2370785   0.3361303
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0468750   0.0285532   0.0651968
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0265957   0.0035796   0.0496119
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0720887   0.0502804   0.0938971
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0506912   0.0214850   0.0798974
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0348198   0.0259374   0.0437022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0280749   0.0162345   0.0399152
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0414698   0.0379335   0.0450061
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0412925   0.0368006   0.0457844
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.0674157   0.0152593   0.1195722
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.0623053   0.0358313   0.0887793
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0156250   0.0041315   0.0271185
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0359281   0.0076783   0.0641779
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0288462   0.0144505   0.0432418
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0238095   0.0031757   0.0444433
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0426609   0.0320074   0.0533144
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0382775   0.0232558   0.0532992
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0382106   0.0233347   0.0530865
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0524575   0.0367958   0.0681191
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0317744   0.0280634   0.0354854
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0322262   0.0274564   0.0369961


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0658281   0.0558737   0.0757825
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0476638   0.0358801   0.0594476
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0610494   0.0575683   0.0645305
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0327044   0.0255647   0.0398441
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0414058   0.0384232   0.0443883
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0211382   0.0097604   0.0325160
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412935   0.0325931   0.0499940
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0476638   0.0358801   0.0594476
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319334   0.0290403   0.0348265


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.7718279   0.5754567   1.035210
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.9663693   0.4956310   1.884203
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.7977880   0.4645213   1.370154
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8793091   0.6289993   1.229229
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.3728503   0.8471436   2.224792
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9856020   0.8855677   1.096936
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.7502291   0.5469642   1.029032
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.5673759   0.2195194   1.466455
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.7031785   0.3668155   1.347980
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8062905   0.4925295   1.319930
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9957231   0.8768237   1.130745
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.9241952   0.3823225   2.234074
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 2.2994012   0.7834301   6.748842
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.8253968   0.3036345   2.243750
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8972508   0.5635047   1.428664
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.3728503   0.8471436   2.224792
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0142214   0.8377457   1.227873


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0742669   -0.1640388   0.0155049
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0005469   -0.0111364   0.0100427
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0053502   -0.0175345   0.0068341
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0025897   -0.0091712   0.0039917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0094532   -0.0043772   0.0232836
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0003184   -0.0026633   0.0020265
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0747054   -0.1629065   0.0134957
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0054464   -0.0133754   0.0024825
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0061257   -0.0165833   0.0043320
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0021154   -0.0067593   0.0025285
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0000640   -0.0019626   0.0018345
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0040011   -0.0497955   0.0417933
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0055132   -0.0027992   0.0138256
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0014489   -0.0086884   0.0057906
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0013673   -0.0071127   0.0043780
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0094532   -0.0043772   0.0232836
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0001590   -0.0019971   0.0023150


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2174960   -0.5114738   0.0193039
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0091146   -0.2019610   0.1527910
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0614463   -0.2103699   0.0691539
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0393410   -0.1441205   0.0558427
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1983310   -0.1334888   0.4330133
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0052160   -0.0443656   0.0324661
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.2430890   -0.5662110   0.0133703
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1314655   -0.3337876   0.0401663
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0928651   -0.2615595   0.0532718
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0646821   -0.2158372   0.0676811
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0015465   -0.0484653   0.0432727
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0630942   -1.0962703   0.4608666
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.2608173   -0.2163881   0.5508086
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0528846   -0.3520426   0.1800806
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0331129   -0.1818697   0.0969205
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1983310   -0.1334888   0.4330133
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0049788   -0.0649127   0.0702832
