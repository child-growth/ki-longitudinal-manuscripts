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

**Outcome Variable:** y_rate_wtkg

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

agecat         studyid          country                        nchldlt5    n_cell       n
-------------  ---------------  -----------------------------  ---------  -------  ------
0-3 months     IRC              INDIA                          1               87     394
0-3 months     IRC              INDIA                          2+             307     394
0-3 months     JiVitA-3         BANGLADESH                     1            12682   20269
0-3 months     JiVitA-3         BANGLADESH                     2+            7587   20269
0-3 months     NIH-Crypto       BANGLADESH                     1              516     725
0-3 months     NIH-Crypto       BANGLADESH                     2+             209     725
0-3 months     PROVIDE          BANGLADESH                     1              471     640
0-3 months     PROVIDE          BANGLADESH                     2+             169     640
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1380    2014
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             634    2014
3-6 months     IRC              INDIA                          1               87     399
3-6 months     IRC              INDIA                          2+             312     399
3-6 months     JiVitA-3         BANGLADESH                     1             8194   12711
3-6 months     JiVitA-3         BANGLADESH                     2+            4517   12711
3-6 months     NIH-Crypto       BANGLADESH                     1              498     702
3-6 months     NIH-Crypto       BANGLADESH                     2+             204     702
3-6 months     PROVIDE          BANGLADESH                     1              437     601
3-6 months     PROVIDE          BANGLADESH                     2+             164     601
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1151    1659
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             508    1659
6-9 months     IRC              INDIA                          1               89     410
6-9 months     IRC              INDIA                          2+             321     410
6-9 months     LCNI-5           MALAWI                         1              260     554
6-9 months     LCNI-5           MALAWI                         2+             294     554
6-9 months     NIH-Crypto       BANGLADESH                     1              491     693
6-9 months     NIH-Crypto       BANGLADESH                     2+             202     693
6-9 months     PROVIDE          BANGLADESH                     1              417     576
6-9 months     PROVIDE          BANGLADESH                     2+             159     576
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1040    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             448    1488
9-12 months    iLiNS-Zinc       BURKINA FASO                   1              365    1102
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+             737    1102
9-12 months    IRC              INDIA                          1               88     403
9-12 months    IRC              INDIA                          2+             315     403
9-12 months    LCNI-5           MALAWI                         1              179     380
9-12 months    LCNI-5           MALAWI                         2+             201     380
9-12 months    NIH-Crypto       BANGLADESH                     1              482     683
9-12 months    NIH-Crypto       BANGLADESH                     2+             201     683
9-12 months    PROVIDE          BANGLADESH                     1              416     569
9-12 months    PROVIDE          BANGLADESH                     2+             153     569
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              766    1077
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             311    1077
12-15 months   iLiNS-Zinc       BURKINA FASO                   1              325     962
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+             637     962
12-15 months   IRC              INDIA                          1               82     392
12-15 months   IRC              INDIA                          2+             310     392
12-15 months   LCNI-5           MALAWI                         1               51     124
12-15 months   LCNI-5           MALAWI                         2+              73     124
12-15 months   NIH-Crypto       BANGLADESH                     1              469     666
12-15 months   NIH-Crypto       BANGLADESH                     2+             197     666
12-15 months   PROVIDE          BANGLADESH                     1              394     537
12-15 months   PROVIDE          BANGLADESH                     2+             143     537
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              570     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             216     786
15-18 months   iLiNS-Zinc       BURKINA FASO                   1              337    1038
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+             701    1038
15-18 months   IRC              INDIA                          1               78     383
15-18 months   IRC              INDIA                          2+             305     383
15-18 months   LCNI-5           MALAWI                         1               50     117
15-18 months   LCNI-5           MALAWI                         2+              67     117
15-18 months   NIH-Crypto       BANGLADESH                     1              426     605
15-18 months   NIH-Crypto       BANGLADESH                     2+             179     605
15-18 months   PROVIDE          BANGLADESH                     1              391     533
15-18 months   PROVIDE          BANGLADESH                     2+             142     533
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              481     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             181     662
18-21 months   IRC              INDIA                          1               82     380
18-21 months   IRC              INDIA                          2+             298     380
18-21 months   LCNI-5           MALAWI                         1              231     450
18-21 months   LCNI-5           MALAWI                         2+             219     450
18-21 months   NIH-Crypto       BANGLADESH                     1              388     547
18-21 months   NIH-Crypto       BANGLADESH                     2+             159     547
18-21 months   PROVIDE          BANGLADESH                     1              394     542
18-21 months   PROVIDE          BANGLADESH                     2+             148     542
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                9      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               2      11
21-24 months   IRC              INDIA                          1               84     389
21-24 months   IRC              INDIA                          2+             305     389
21-24 months   LCNI-5           MALAWI                         1              205     380
21-24 months   LCNI-5           MALAWI                         2+             175     380
21-24 months   NIH-Crypto       BANGLADESH                     1              342     493
21-24 months   NIH-Crypto       BANGLADESH                     2+             151     493
21-24 months   PROVIDE          BANGLADESH                     1              353     485
21-24 months   PROVIDE          BANGLADESH                     2+             132     485


The following strata were considered:

* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/8adebafe-06b5-44a0-9076-5aaa445e0f82/4cad6285-b81c-4a81-b163-539d086e3603/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8adebafe-06b5-44a0-9076-5aaa445e0f82/4cad6285-b81c-4a81-b163-539d086e3603/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8adebafe-06b5-44a0-9076-5aaa445e0f82/4cad6285-b81c-4a81-b163-539d086e3603/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     IRC              INDIA                          1                    NA                0.7623842   0.7182261   0.8065422
0-3 months     IRC              INDIA                          2+                   NA                0.7695793   0.7479959   0.7911628
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                0.8767764   0.8729584   0.8805943
0-3 months     JiVitA-3         BANGLADESH                     2+                   NA                0.8614653   0.8568617   0.8660689
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                0.8909659   0.8735327   0.9083991
0-3 months     NIH-Crypto       BANGLADESH                     2+                   NA                0.8686124   0.8423922   0.8948327
0-3 months     PROVIDE          BANGLADESH                     1                    NA                0.9175253   0.9006810   0.9343696
0-3 months     PROVIDE          BANGLADESH                     2+                   NA                0.8573951   0.8281007   0.8866894
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9220727   0.9097088   0.9344366
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.9230422   0.9051731   0.9409114
3-6 months     IRC              INDIA                          1                    NA                0.4902756   0.4505537   0.5299975
3-6 months     IRC              INDIA                          2+                   NA                0.4593225   0.4398430   0.4788020
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                0.4486518   0.4449985   0.4523050
3-6 months     JiVitA-3         BANGLADESH                     2+                   NA                0.4282593   0.4236800   0.4328385
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                0.5044218   0.4910510   0.5177925
3-6 months     NIH-Crypto       BANGLADESH                     2+                   NA                0.4825105   0.4630666   0.5019543
3-6 months     PROVIDE          BANGLADESH                     1                    NA                0.4971091   0.4828397   0.5113786
3-6 months     PROVIDE          BANGLADESH                     2+                   NA                0.4676161   0.4388356   0.4963966
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4270522   0.4164486   0.4376559
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.4026731   0.3877219   0.4176243
6-9 months     IRC              INDIA                          1                    NA                0.2636122   0.2363993   0.2908250
6-9 months     IRC              INDIA                          2+                   NA                0.2623590   0.2463341   0.2783838
6-9 months     LCNI-5           MALAWI                         1                    NA                0.2907508   0.2713864   0.3101153
6-9 months     LCNI-5           MALAWI                         2+                   NA                0.2805666   0.2640657   0.2970675
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                0.2671991   0.2545569   0.2798413
6-9 months     NIH-Crypto       BANGLADESH                     2+                   NA                0.2682645   0.2490906   0.2874385
6-9 months     PROVIDE          BANGLADESH                     1                    NA                0.2553604   0.2433230   0.2673977
6-9 months     PROVIDE          BANGLADESH                     2+                   NA                0.2329180   0.2029063   0.2629297
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2559082   0.2449260   0.2668904
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2557224   0.2408347   0.2706102
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2452915   0.2308462   0.2597369
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2404745   0.2200597   0.2608893
9-12 months    IRC              INDIA                          1                    NA                0.2248619   0.1893202   0.2604036
9-12 months    IRC              INDIA                          2+                   NA                0.2099733   0.1947293   0.2252174
9-12 months    LCNI-5           MALAWI                         1                    NA                0.2023456   0.1790675   0.2256238
9-12 months    LCNI-5           MALAWI                         2+                   NA                0.2021775   0.1802832   0.2240719
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                0.1965114   0.1839700   0.2090528
9-12 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.2010427   0.1825170   0.2195683
9-12 months    PROVIDE          BANGLADESH                     1                    NA                0.1817669   0.1706390   0.1928947
9-12 months    PROVIDE          BANGLADESH                     2+                   NA                0.1660161   0.1491282   0.1829039
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2099189   0.1977940   0.2220438
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1915615   0.1734091   0.2097138
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1806052   0.1676781   0.1935324
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1981075   0.1812916   0.2149234
12-15 months   IRC              INDIA                          1                    NA                0.2007463   0.1665767   0.2349159
12-15 months   IRC              INDIA                          2+                   NA                0.1772216   0.1638548   0.1905884
12-15 months   LCNI-5           MALAWI                         1                    NA                0.1794509   0.1242967   0.2346051
12-15 months   LCNI-5           MALAWI                         2+                   NA                0.1346088   0.0923183   0.1768994
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1652554   0.1524810   0.1780299
12-15 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1612149   0.1426493   0.1797805
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.1888552   0.1748298   0.2028806
12-15 months   PROVIDE          BANGLADESH                     2+                   NA                0.1557234   0.1352997   0.1761470
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1744690   0.1609216   0.1880164
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1717784   0.1512091   0.1923478
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1716215   0.1560212   0.1872218
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1766835   0.1627437   0.1906233
15-18 months   IRC              INDIA                          1                    NA                0.1449462   0.1070442   0.1828481
15-18 months   IRC              INDIA                          2+                   NA                0.1644257   0.1504496   0.1784019
15-18 months   LCNI-5           MALAWI                         1                    NA                0.1246751   0.0775896   0.1717605
15-18 months   LCNI-5           MALAWI                         2+                   NA                0.2081467   0.1674640   0.2488295
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1662049   0.1538329   0.1785770
15-18 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1492796   0.1293617   0.1691975
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.1523326   0.1380417   0.1666234
15-18 months   PROVIDE          BANGLADESH                     2+                   NA                0.1674175   0.1474546   0.1873804
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1681900   0.1509938   0.1853862
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1755857   0.1503662   0.2008051
18-21 months   IRC              INDIA                          1                    NA                0.1486303   0.1219299   0.1753307
18-21 months   IRC              INDIA                          2+                   NA                0.1618268   0.1464417   0.1772119
18-21 months   LCNI-5           MALAWI                         1                    NA                0.1862504   0.1577511   0.2147498
18-21 months   LCNI-5           MALAWI                         2+                   NA                0.1768906   0.1481490   0.2056323
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1432709   0.1306870   0.1558548
18-21 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1411724   0.1207035   0.1616413
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.1310511   0.1172958   0.1448065
18-21 months   PROVIDE          BANGLADESH                     2+                   NA                0.1363138   0.1159403   0.1566873
21-24 months   IRC              INDIA                          1                    NA                0.1975024   0.1675372   0.2274677
21-24 months   IRC              INDIA                          2+                   NA                0.1722896   0.1567754   0.1878039
21-24 months   LCNI-5           MALAWI                         1                    NA                0.1762591   0.1387163   0.2138019
21-24 months   LCNI-5           MALAWI                         2+                   NA                0.1783734   0.1401271   0.2166197
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1733349   0.1588633   0.1878064
21-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1789348   0.1543100   0.2035595
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1399697   0.1263777   0.1535617
21-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.1473210   0.1262607   0.1683814


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8710452   0.8679657   0.8741247
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9223779   0.9122086   0.9325472
3-6 months     IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4414051   0.4384353   0.4443748
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4195871   0.4109053   0.4282689
6-9 months     IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     LCNI-5           MALAWI                         NA                   NA                0.2853462   0.2727187   0.2979736
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2558522   0.2469636   0.2647409
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2420700   0.2289407   0.2551993
9-12 months    IRC              INDIA                          NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    LCNI-5           MALAWI                         NA                   NA                0.2022567   0.1863082   0.2182053
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2046179   0.1945139   0.2147219
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1921946   0.1813846   0.2030045
12-15 months   IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.1530519   0.1191456   0.1869583
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1737296   0.1623947   0.1850645
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1750401   0.1647066   0.1853735
15-18 months   IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.1724751   0.1407874   0.2041628
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1702121   0.1559390   0.1844852
18-21 months   IRC              INDIA                          NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.1816953   0.1614502   0.2019405
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   IRC              INDIA                          NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.1772328   0.1503917   0.2040738
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          2+                   1                  0.0071952   -0.0419554    0.0563457
0-3 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     2+                   1                 -0.0153111   -0.0210446   -0.0095776
0-3 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     2+                   1                 -0.0223535   -0.0538403    0.0091333
0-3 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0601303   -0.0939221   -0.0263384
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0009696   -0.0207600    0.0226991
3-6 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          2+                   1                 -0.0309531   -0.0751942    0.0132880
3-6 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     2+                   1                 -0.0203925   -0.0260618   -0.0147232
3-6 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     2+                   1                 -0.0219113   -0.0455088    0.0016862
3-6 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0294930   -0.0616168    0.0026307
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0243792   -0.0427088   -0.0060495
6-9 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          2+                   1                 -0.0012532   -0.0328338    0.0303274
6-9 months     LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         2+                   1                 -0.0101843   -0.0356256    0.0152571
6-9 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     2+                   1                  0.0010654   -0.0219012    0.0240320
6-9 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0224424   -0.0547781    0.0098933
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0001857   -0.0186858    0.0183144
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0048170   -0.0329094    0.0232754
9-12 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          2+                   1                 -0.0148886   -0.0535615    0.0237844
9-12 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         2+                   1                 -0.0001681   -0.0321249    0.0317887
9-12 months    NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     2+                   1                  0.0045313   -0.0178402    0.0269029
9-12 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     2+                   1                 -0.0157508   -0.0359752    0.0044736
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0183574   -0.0401868    0.0034719
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                  0.0175023   -0.0061847    0.0411892
12-15 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          2+                   1                 -0.0235247   -0.0602157    0.0131664
12-15 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         2+                   1                 -0.0448420   -0.1143436    0.0246596
12-15 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0040406   -0.0265765    0.0184954
12-15 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0331318   -0.0579075   -0.0083561
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0026905   -0.0273204    0.0219393
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                  0.0050620   -0.0165945    0.0267184
15-18 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          2+                   1                  0.0194796   -0.0209170    0.0598762
15-18 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         2+                   1                  0.0834717    0.0212453    0.1456981
15-18 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0169253   -0.0403729    0.0065222
15-18 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     2+                   1                  0.0150849   -0.0094660    0.0396358
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0073957   -0.0231286    0.0379199
18-21 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          2+                   1                  0.0131965   -0.0176193    0.0440123
18-21 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         2+                   1                 -0.0093598   -0.0498356    0.0311161
18-21 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0020985   -0.0261262    0.0219292
18-21 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     2+                   1                  0.0052627   -0.0193196    0.0298449
21-24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          2+                   1                 -0.0252128   -0.0589561    0.0085305
21-24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         2+                   1                  0.0021143   -0.0514790    0.0557076
21-24 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     2+                   1                  0.0055999   -0.0229624    0.0341622
21-24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     2+                   1                  0.0073513   -0.0177142    0.0324169


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    NA                 0.0056064   -0.0326923    0.0439051
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0057312   -0.0078838   -0.0035786
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0064440   -0.0155508    0.0026628
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.0158781   -0.0250349   -0.0067214
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0003052   -0.0065352    0.0071456
3-6 months     IRC              INDIA                          1                    NA                -0.0242039   -0.0588213    0.0104134
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0072467   -0.0092635   -0.0052300
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0063674   -0.0132642    0.0005294
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0080480   -0.0168767    0.0007807
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0074651   -0.0131038   -0.0018264
6-9 months     IRC              INDIA                          1                    NA                -0.0009812   -0.0257065    0.0237442
6-9 months     LCNI-5           MALAWI                         1                    NA                -0.0054046   -0.0189127    0.0081034
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                 0.0003106   -0.0063840    0.0070051
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0061950   -0.0151586    0.0027686
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0000559   -0.0056258    0.0055140
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0032215   -0.0219522    0.0155091
9-12 months    IRC              INDIA                          1                    NA                -0.0116375   -0.0418717    0.0185967
9-12 months    LCNI-5           MALAWI                         1                    NA                -0.0000889   -0.0169924    0.0168146
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0013335   -0.0052520    0.0079191
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0042353   -0.0097037    0.0012332
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0053010   -0.0116241    0.0010221
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0115893   -0.0041121    0.0272908
12-15 months   IRC              INDIA                          1                    NA                -0.0186037   -0.0476350    0.0104277
12-15 months   LCNI-5           MALAWI                         1                    NA                -0.0263989   -0.0675006    0.0147027
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0011952   -0.0078627    0.0054723
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0088228   -0.0155359   -0.0021097
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0007394   -0.0075084    0.0060296
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0034185   -0.0111565    0.0179936
15-18 months   IRC              INDIA                          1                    NA                 0.0155125   -0.0166668    0.0476917
15-18 months   LCNI-5           MALAWI                         1                    NA                 0.0478000    0.0113824    0.0842177
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0050077   -0.0119723    0.0019570
15-18 months   PROVIDE          BANGLADESH                     1                    NA                 0.0040189   -0.0025464    0.0105841
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0020221   -0.0063275    0.0103716
18-21 months   IRC              INDIA                          1                    NA                 0.0103488   -0.0138234    0.0345211
18-21 months   LCNI-5           MALAWI                         1                    NA                -0.0045551   -0.0242581    0.0151479
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0006100   -0.0075947    0.0063748
18-21 months   PROVIDE          BANGLADESH                     1                    NA                 0.0014370   -0.0052784    0.0081524
21-24 months   IRC              INDIA                          1                    NA                -0.0197684   -0.0462453    0.0067086
21-24 months   LCNI-5           MALAWI                         1                    NA                 0.0009737   -0.0237077    0.0256551
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0017152   -0.0070361    0.0104664
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0020008   -0.0048274    0.0088290
