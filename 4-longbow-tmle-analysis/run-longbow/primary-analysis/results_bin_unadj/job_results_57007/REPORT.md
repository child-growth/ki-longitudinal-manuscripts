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

**Outcome Variable:** ever_wasted

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

agecat        studyid          country                        nchldlt5    ever_wasted   n_cell      n
------------  ---------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                     0      838   3189
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                     1      235   3189
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                    0     1624   3189
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                    1      492   3189
0-24 months   IRC              INDIA                          1                     0       25    410
0-24 months   IRC              INDIA                          1                     1       64    410
0-24 months   IRC              INDIA                          2+                    0      116    410
0-24 months   IRC              INDIA                          2+                    1      205    410
0-24 months   LCNI-5           MALAWI                         1                     0      366    812
0-24 months   LCNI-5           MALAWI                         1                     1       25    812
0-24 months   LCNI-5           MALAWI                         2+                    0      380    812
0-24 months   LCNI-5           MALAWI                         2+                    1       41    812
0-24 months   NIH-Crypto       BANGLADESH                     1                     0      369    758
0-24 months   NIH-Crypto       BANGLADESH                     1                     1      172    758
0-24 months   NIH-Crypto       BANGLADESH                     2+                    0      139    758
0-24 months   NIH-Crypto       BANGLADESH                     2+                    1       78    758
0-24 months   PROVIDE          BANGLADESH                     1                     0      327    700
0-24 months   PROVIDE          BANGLADESH                     1                     1      185    700
0-24 months   PROVIDE          BANGLADESH                     2+                    0      127    700
0-24 months   PROVIDE          BANGLADESH                     2+                    1       61    700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1242   2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      395   2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0      579   2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1      169   2385
0-6 months    IRC              INDIA                          1                     0       37    410
0-6 months    IRC              INDIA                          1                     1       52    410
0-6 months    IRC              INDIA                          2+                    0      150    410
0-6 months    IRC              INDIA                          2+                    1      171    410
0-6 months    LCNI-5           MALAWI                         1                     0      121    267
0-6 months    LCNI-5           MALAWI                         1                     1        1    267
0-6 months    LCNI-5           MALAWI                         2+                    0      142    267
0-6 months    LCNI-5           MALAWI                         2+                    1        3    267
0-6 months    NIH-Crypto       BANGLADESH                     1                     0      405    758
0-6 months    NIH-Crypto       BANGLADESH                     1                     1      136    758
0-6 months    NIH-Crypto       BANGLADESH                     2+                    0      158    758
0-6 months    NIH-Crypto       BANGLADESH                     2+                    1       59    758
0-6 months    PROVIDE          BANGLADESH                     1                     0      375    700
0-6 months    PROVIDE          BANGLADESH                     1                     1      137    700
0-6 months    PROVIDE          BANGLADESH                     2+                    0      144    700
0-6 months    PROVIDE          BANGLADESH                     2+                    1       44    700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1407   2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      230   2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0      646   2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1      102   2385
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                     0      838   3189
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                     1      235   3189
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                    0     1624   3189
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                    1      492   3189
6-24 months   IRC              INDIA                          1                     0       56    410
6-24 months   IRC              INDIA                          1                     1       33    410
6-24 months   IRC              INDIA                          2+                    0      227    410
6-24 months   IRC              INDIA                          2+                    1       94    410
6-24 months   LCNI-5           MALAWI                         1                     0      360    800
6-24 months   LCNI-5           MALAWI                         1                     1       24    800
6-24 months   LCNI-5           MALAWI                         2+                    0      377    800
6-24 months   LCNI-5           MALAWI                         2+                    1       39    800
6-24 months   NIH-Crypto       BANGLADESH                     1                     0      460    730
6-24 months   NIH-Crypto       BANGLADESH                     1                     1       60    730
6-24 months   NIH-Crypto       BANGLADESH                     2+                    0      174    730
6-24 months   NIH-Crypto       BANGLADESH                     2+                    1       36    730
6-24 months   PROVIDE          BANGLADESH                     1                     0      380    615
6-24 months   PROVIDE          BANGLADESH                     1                     1       68    615
6-24 months   PROVIDE          BANGLADESH                     2+                    0      136    615
6-24 months   PROVIDE          BANGLADESH                     2+                    1       31    615
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1154   2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      229   2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0      533   2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       94   2010


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/d97d663b-b899-458e-a9ae-1a983943cca4/376bd071-71b9-4bc7-8756-72630ace110b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d97d663b-b899-458e-a9ae-1a983943cca4/376bd071-71b9-4bc7-8756-72630ace110b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d97d663b-b899-458e-a9ae-1a983943cca4/376bd071-71b9-4bc7-8756-72630ace110b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d97d663b-b899-458e-a9ae-1a983943cca4/376bd071-71b9-4bc7-8756-72630ace110b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2190121   0.1690368   0.2689874
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2325142   0.2052238   0.2598046
0-24 months   IRC              INDIA                          1                    NA                0.7191011   0.6256137   0.8125886
0-24 months   IRC              INDIA                          2+                   NA                0.6386293   0.5860122   0.6912464
0-24 months   LCNI-5           MALAWI                         1                    NA                0.0639386   0.0396747   0.0882025
0-24 months   LCNI-5           MALAWI                         2+                   NA                0.0973872   0.0690487   0.1257256
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.3179298   0.2786638   0.3571957
0-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.3594470   0.2955619   0.4233321
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.3613281   0.3196879   0.4029684
0-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.3244681   0.2574968   0.3914394
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2412951   0.2205638   0.2620263
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2259358   0.1959601   0.2559115
0-6 months    IRC              INDIA                          1                    NA                0.5842697   0.4817527   0.6867867
0-6 months    IRC              INDIA                          2+                   NA                0.5327103   0.4780635   0.5873571
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.2513863   0.2148070   0.2879657
0-6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.2718894   0.2126515   0.3311273
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.2675781   0.2292048   0.3059515
0-6 months    PROVIDE          BANGLADESH                     2+                   NA                0.2340426   0.1734765   0.2946086
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1405009   0.1236634   0.1573384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1363636   0.1117654   0.1609618
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2190121   0.1690368   0.2689874
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2325142   0.2052238   0.2598046
6-24 months   IRC              INDIA                          1                    NA                0.3707865   0.2703147   0.4712584
6-24 months   IRC              INDIA                          2+                   NA                0.2928349   0.2429926   0.3426771
6-24 months   LCNI-5           MALAWI                         1                    NA                0.0625000   0.0382741   0.0867259
6-24 months   LCNI-5           MALAWI                         2+                   NA                0.0937500   0.0657226   0.1217774
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1153846   0.0879060   0.1428633
6-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1714286   0.1204201   0.2224371
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1517857   0.1185327   0.1850387
6-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.1856287   0.1266118   0.2446457
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1655821   0.1459871   0.1851770
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1499203   0.1219702   0.1778703


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2279712   0.2010014   0.2549409
0-24 months   IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0812808   0.0624736   0.1000879
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2364780   0.2194210   0.2535349
0-6 months    IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1392034   0.1253080   0.1530987
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2279712   0.2010014   0.2549409
6-24 months   IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0787500   0.0600738   0.0974262
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1606965   0.1446374   0.1767556


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0616498   0.8361137   1.348023
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          2+                   1                 0.8880938   0.7614028   1.035865
0-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         2+                   1                 1.5231354   0.9441795   2.457098
0-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.1305862   0.9105613   1.403777
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     2+                   1                 0.8979873   0.7089323   1.137459
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9363467   0.7994490   1.096687
0-6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          2+                   1                 0.9117541   0.7440600   1.117243
0-6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     2+                   1                 1.0815600   0.8322743   1.405513
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     2+                   1                 0.8746700   0.6506580   1.175806
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9705534   0.7815668   1.205238
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0616498   0.8361137   1.348023
6-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA                          2+                   1                 0.7897668   0.5734933   1.087601
6-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         2+                   1                 1.5000000   0.9193889   2.447278
6-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.4857143   1.0148881   2.174966
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.2229658   0.8312510   1.799270
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9054136   0.7260159   1.129140


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0089590   -0.0256958   0.0436139
0-24 months   IRC              INDIA                          1                    NA                -0.0630036   -0.1470555   0.0210484
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.0173422   -0.0020346   0.0367190
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0118855   -0.0096234   0.0333945
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0098996   -0.0311140   0.0113149
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0048171   -0.0162512   0.0066170
0-6 months    IRC              INDIA                          1                    NA                -0.0403672   -0.1313450   0.0506105
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0058696   -0.0140726   0.0258118
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0090067   -0.0282945   0.0102811
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0012976   -0.0106468   0.0080516
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0089590   -0.0256958   0.0436139
6-24 months   IRC              INDIA                          1                    NA                -0.0610304   -0.1488951   0.0268343
6-24 months   LCNI-5           MALAWI                         1                    NA                 0.0162500   -0.0030445   0.0355445
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0161222   -0.0006466   0.0328911
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0091899   -0.0092432   0.0276229
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0048856   -0.0155382   0.0057671


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0392990   -0.1271369   0.1811585
0-24 months   IRC              INDIA                          1                    NA                -0.0960277   -0.2325565   0.0253779
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.2133612   -0.0591012   0.4157305
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0360370   -0.0314293   0.0990902
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0281695   -0.0903511   0.0304660
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0203700   -0.0698770   0.0268460
0-6 months    IRC              INDIA                          1                    NA                -0.0742178   -0.2554488   0.0808515
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0228162   -0.0578432   0.0973255
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0348325   -0.1121423   0.0371031
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0093213   -0.0787638   0.0556509
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0392990   -0.1271369   0.1811585
6-24 months   IRC              INDIA                          1                    NA                -0.1970273   -0.5172488   0.0556101
6-24 months   LCNI-5           MALAWI                         1                    NA                 0.2063492   -0.0749032   0.4140109
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.1225962   -0.0128980   0.2399654
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0570887   -0.0643280   0.1646545
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0304023   -0.0988268   0.0337613
