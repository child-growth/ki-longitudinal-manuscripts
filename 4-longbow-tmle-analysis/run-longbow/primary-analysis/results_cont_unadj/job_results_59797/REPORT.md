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

**Outcome Variable:** y_rate_haz

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
0-3 months     IRC              INDIA                          1               82     377
0-3 months     IRC              INDIA                          2+             295     377
0-3 months     JiVitA-3         BANGLADESH                     1            12370   19860
0-3 months     JiVitA-3         BANGLADESH                     2+            7490   19860
0-3 months     NIH-Crypto       BANGLADESH                     1              512     721
0-3 months     NIH-Crypto       BANGLADESH                     2+             209     721
0-3 months     PROVIDE          BANGLADESH                     1              471     640
0-3 months     PROVIDE          BANGLADESH                     2+             169     640
3-6 months     IRC              INDIA                          1               87     397
3-6 months     IRC              INDIA                          2+             310     397
3-6 months     JiVitA-3         BANGLADESH                     1             8103   12572
3-6 months     JiVitA-3         BANGLADESH                     2+            4469   12572
3-6 months     NIH-Crypto       BANGLADESH                     1              492     695
3-6 months     NIH-Crypto       BANGLADESH                     2+             203     695
3-6 months     PROVIDE          BANGLADESH                     1              434     598
3-6 months     PROVIDE          BANGLADESH                     2+             164     598
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1146    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             510    1656
6-9 months     IRC              INDIA                          1               89     407
6-9 months     IRC              INDIA                          2+             318     407
6-9 months     LCNI-5           MALAWI                         1              261     557
6-9 months     LCNI-5           MALAWI                         2+             296     557
6-9 months     NIH-Crypto       BANGLADESH                     1              488     688
6-9 months     NIH-Crypto       BANGLADESH                     2+             200     688
6-9 months     PROVIDE          BANGLADESH                     1              410     565
6-9 months     PROVIDE          BANGLADESH                     2+             155     565
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1036    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             444    1480
9-12 months    iLiNS-Zinc       BURKINA FASO                   1              364    1101
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+             737    1101
9-12 months    IRC              INDIA                          1               88     400
9-12 months    IRC              INDIA                          2+             312     400
9-12 months    LCNI-5           MALAWI                         1              179     383
9-12 months    LCNI-5           MALAWI                         2+             204     383
9-12 months    NIH-Crypto       BANGLADESH                     1              475     674
9-12 months    NIH-Crypto       BANGLADESH                     2+             199     674
9-12 months    PROVIDE          BANGLADESH                     1              413     566
9-12 months    PROVIDE          BANGLADESH                     2+             153     566
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              764    1075
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             311    1075
12-15 months   iLiNS-Zinc       BURKINA FASO                   1              324     958
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+             634     958
12-15 months   IRC              INDIA                          1               82     390
12-15 months   IRC              INDIA                          2+             308     390
12-15 months   LCNI-5           MALAWI                         1               52     125
12-15 months   LCNI-5           MALAWI                         2+              73     125
12-15 months   NIH-Crypto       BANGLADESH                     1              463     660
12-15 months   NIH-Crypto       BANGLADESH                     2+             197     660
12-15 months   PROVIDE          BANGLADESH                     1              391     532
12-15 months   PROVIDE          BANGLADESH                     2+             141     532
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              570     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             216     786
15-18 months   iLiNS-Zinc       BURKINA FASO                   1              329    1006
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+             677    1006
15-18 months   IRC              INDIA                          1               78     382
15-18 months   IRC              INDIA                          2+             304     382
15-18 months   LCNI-5           MALAWI                         1               51     118
15-18 months   LCNI-5           MALAWI                         2+              67     118
15-18 months   NIH-Crypto       BANGLADESH                     1              425     604
15-18 months   NIH-Crypto       BANGLADESH                     2+             179     604
15-18 months   PROVIDE          BANGLADESH                     1              388     528
15-18 months   PROVIDE          BANGLADESH                     2+             140     528
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              481     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             181     662
18-21 months   IRC              INDIA                          1               82     379
18-21 months   IRC              INDIA                          2+             297     379
18-21 months   LCNI-5           MALAWI                         1              241     472
18-21 months   LCNI-5           MALAWI                         2+             231     472
18-21 months   NIH-Crypto       BANGLADESH                     1              387     546
18-21 months   NIH-Crypto       BANGLADESH                     2+             159     546
18-21 months   PROVIDE          BANGLADESH                     1              394     541
18-21 months   PROVIDE          BANGLADESH                     2+             147     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                8       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       9
21-24 months   IRC              INDIA                          1               84     389
21-24 months   IRC              INDIA                          2+             305     389
21-24 months   LCNI-5           MALAWI                         1              213     403
21-24 months   LCNI-5           MALAWI                         2+             190     403
21-24 months   NIH-Crypto       BANGLADESH                     1              340     490
21-24 months   NIH-Crypto       BANGLADESH                     2+             150     490
21-24 months   PROVIDE          BANGLADESH                     1              342     471
21-24 months   PROVIDE          BANGLADESH                     2+             129     471


The following strata were considered:

* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/b0bf1e7d-6937-40f6-8c17-5cb04b3ea004/6e235b7f-e91b-4f87-9e4c-f8779182ae43/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b0bf1e7d-6937-40f6-8c17-5cb04b3ea004/6e235b7f-e91b-4f87-9e4c-f8779182ae43/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b0bf1e7d-6937-40f6-8c17-5cb04b3ea004/6e235b7f-e91b-4f87-9e4c-f8779182ae43/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    NA                -0.2606104   -0.3947714   -0.1264493
0-3 months     IRC              INDIA                          2+                   NA                -0.2544975   -0.3145570   -0.1944381
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                 0.0867831    0.0809581    0.0926081
0-3 months     JiVitA-3         BANGLADESH                     2+                   NA                 0.0530993    0.0457085    0.0604901
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.2221284   -0.2432235   -0.2010334
0-3 months     NIH-Crypto       BANGLADESH                     2+                   NA                -0.2536327   -0.2840412   -0.2232242
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.1834612   -0.2037302   -0.1631922
0-3 months     PROVIDE          BANGLADESH                     2+                   NA                -0.2008018   -0.2344406   -0.1671630
3-6 months     IRC              INDIA                          1                    NA                -0.0477002   -0.1144155    0.0190151
3-6 months     IRC              INDIA                          2+                   NA                -0.0530682   -0.0867517   -0.0193846
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                 0.0069592    0.0011057    0.0128128
3-6 months     JiVitA-3         BANGLADESH                     2+                   NA                -0.0222300   -0.0297880   -0.0146720
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                 0.0351356    0.0155221    0.0547491
3-6 months     NIH-Crypto       BANGLADESH                     2+                   NA                 0.0065085   -0.0257871    0.0388041
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0143933   -0.0332955    0.0045089
3-6 months     PROVIDE          BANGLADESH                     2+                   NA                -0.0602249   -0.0889216   -0.0315281
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0850525   -0.1054841   -0.0646210
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0870272   -0.1153180   -0.0587365
6-9 months     IRC              INDIA                          1                    NA                -0.0271259   -0.0761987    0.0219468
6-9 months     IRC              INDIA                          2+                   NA                -0.0132287   -0.0371996    0.0107421
6-9 months     LCNI-5           MALAWI                         1                    NA                 0.0404781    0.0165477    0.0644084
6-9 months     LCNI-5           MALAWI                         2+                   NA                 0.0191651   -0.0019361    0.0402663
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0327946   -0.0475065   -0.0180827
6-9 months     NIH-Crypto       BANGLADESH                     2+                   NA                -0.0278725   -0.0530777   -0.0026673
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0542021   -0.0668739   -0.0415303
6-9 months     PROVIDE          BANGLADESH                     2+                   NA                -0.0805357   -0.1011768   -0.0598947
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0484279   -0.0673998   -0.0294560
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0591837   -0.0894299   -0.0289375
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0378139   -0.0547092   -0.0209186
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+                   NA                -0.0554042   -0.0742821   -0.0365262
9-12 months    IRC              INDIA                          1                    NA                -0.0125936   -0.0539576    0.0287704
9-12 months    IRC              INDIA                          2+                   NA                -0.0427701   -0.0610144   -0.0245259
9-12 months    LCNI-5           MALAWI                         1                    NA                -0.0464251   -0.0765736   -0.0162765
9-12 months    LCNI-5           MALAWI                         2+                   NA                -0.0405843   -0.0655615   -0.0156071
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0350398   -0.0478914   -0.0221882
9-12 months    NIH-Crypto       BANGLADESH                     2+                   NA                -0.0325323   -0.0533142   -0.0117505
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0591561   -0.0723252   -0.0459870
9-12 months    PROVIDE          BANGLADESH                     2+                   NA                -0.0735500   -0.0930391   -0.0540610
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0723549   -0.0886095   -0.0561004
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0503074   -0.0793197   -0.0212951
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0419709   -0.0603406   -0.0236011
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                -0.0434725   -0.0663040   -0.0206410
12-15 months   IRC              INDIA                          1                    NA                -0.0037839   -0.0513049    0.0437371
12-15 months   IRC              INDIA                          2+                   NA                -0.0565453   -0.0733553   -0.0397354
12-15 months   LCNI-5           MALAWI                         1                    NA                 0.0026093   -0.0510097    0.0562282
12-15 months   LCNI-5           MALAWI                         2+                   NA                -0.0702995   -0.1204814   -0.0201176
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0368279   -0.0480417   -0.0256142
12-15 months   NIH-Crypto       BANGLADESH                     2+                   NA                -0.0418647   -0.0596029   -0.0241264
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0359896   -0.0480053   -0.0239738
12-15 months   PROVIDE          BANGLADESH                     2+                   NA                -0.0545574   -0.0728192   -0.0362955
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0671265   -0.0838455   -0.0504075
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0572406   -0.0860349   -0.0284464
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0098294   -0.0313478    0.0116891
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                -0.0217605   -0.0351619   -0.0083592
15-18 months   IRC              INDIA                          1                    NA                -0.0391017   -0.0728197   -0.0053837
15-18 months   IRC              INDIA                          2+                   NA                -0.0383665   -0.0546606   -0.0220725
15-18 months   LCNI-5           MALAWI                         1                    NA                -0.0449398   -0.0869498   -0.0029298
15-18 months   LCNI-5           MALAWI                         2+                   NA                -0.0493112   -0.0819455   -0.0166770
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0187218   -0.0284624   -0.0089811
15-18 months   NIH-Crypto       BANGLADESH                     2+                   NA                -0.0125994   -0.0286649    0.0034661
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0406775   -0.0511652   -0.0301899
15-18 months   PROVIDE          BANGLADESH                     2+                   NA                -0.0292357   -0.0447329   -0.0137386
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0127024   -0.0306153    0.0052105
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0371541   -0.0665008   -0.0078074
18-21 months   IRC              INDIA                          1                    NA                -0.0279886   -0.0589172    0.0029400
18-21 months   IRC              INDIA                          2+                   NA                -0.0434205   -0.0580094   -0.0288315
18-21 months   LCNI-5           MALAWI                         1                    NA                -0.0106793   -0.0315861    0.0102276
18-21 months   LCNI-5           MALAWI                         2+                   NA                -0.0184168   -0.0435244    0.0066908
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0294286   -0.0388894   -0.0199678
18-21 months   NIH-Crypto       BANGLADESH                     2+                   NA                -0.0244155   -0.0395905   -0.0092405
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0061858   -0.0159348    0.0035631
18-21 months   PROVIDE          BANGLADESH                     2+                   NA                -0.0236821   -0.0382740   -0.0090902
21-24 months   IRC              INDIA                          1                    NA                -0.0173810   -0.0523999    0.0176379
21-24 months   IRC              INDIA                          2+                   NA                -0.0129517   -0.0273213    0.0014179
21-24 months   LCNI-5           MALAWI                         1                    NA                 0.0258111    0.0027251    0.0488971
21-24 months   LCNI-5           MALAWI                         2+                   NA                 0.0251003    0.0051844    0.0450162
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0602027    0.0501510    0.0702545
21-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                 0.0554966    0.0412350    0.0697583
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0496631    0.0396110    0.0597152
21-24 months   PROVIDE          BANGLADESH                     2+                   NA                 0.0371436    0.0203163    0.0539709


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                 0.0740796    0.0691417    0.0790174
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
3-6 months     IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                -0.0034167   -0.0082813    0.0014478
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856607   -0.1022688   -0.0690525
6-9 months     IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     LCNI-5           MALAWI                         NA                   NA                 0.0291520    0.0132692    0.0450348
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0516546   -0.0677408   -0.0355685
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0495887   -0.0642303   -0.0349470
9-12 months    IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    LCNI-5           MALAWI                         NA                   NA                -0.0433141   -0.0626948   -0.0239333
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0659765   -0.0802683   -0.0516847
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0429646   -0.0592166   -0.0267126
12-15 months   IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   LCNI-5           MALAWI                         NA                   NA                -0.0399695   -0.0773378   -0.0026011
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0644098   -0.0788912   -0.0499283
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0178586   -0.0309796   -0.0047376
15-18 months   IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   LCNI-5           MALAWI                         NA                   NA                -0.0474219   -0.0733675   -0.0214763
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0193878   -0.0347002   -0.0040754
18-21 months   IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   LCNI-5           MALAWI                         NA                   NA                -0.0144661   -0.0307469    0.0018148
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   LCNI-5           MALAWI                         NA                   NA                 0.0254759    0.0100795    0.0408724
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          2+                   1                  0.0061128   -0.1408781    0.1531037
0-3 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     2+                   1                 -0.0336838   -0.0424247   -0.0249428
0-3 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     2+                   1                 -0.0315043   -0.0685135    0.0055048
0-3 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0173406   -0.0566140    0.0219328
3-6 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          2+                   1                 -0.0053679   -0.0801042    0.0693684
3-6 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     2+                   1                 -0.0291893   -0.0382694   -0.0201091
3-6 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     2+                   1                 -0.0286271   -0.0664120    0.0091578
3-6 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0458316   -0.0801943   -0.0114688
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0019747   -0.0368719    0.0329225
6-9 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          2+                   1                  0.0138972   -0.0407173    0.0685117
6-9 months     LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         2+                   1                 -0.0213129   -0.0532178    0.0105920
6-9 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     2+                   1                  0.0049221   -0.0242625    0.0341067
6-9 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0263336   -0.0505540   -0.0021132
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0107558   -0.0464597    0.0249480
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0175903   -0.0401377    0.0049572
9-12 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          2+                   1                 -0.0301766   -0.0753853    0.0150322
9-12 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         2+                   1                  0.0058408   -0.0333102    0.0449917
9-12 months    NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     2+                   1                  0.0025075   -0.0219271    0.0269421
9-12 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     2+                   1                 -0.0143940   -0.0379152    0.0091273
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0220476   -0.0112079    0.0553030
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0015016   -0.0310117    0.0280085
12-15 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          2+                   1                 -0.0527614   -0.1031680   -0.0023549
12-15 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         2+                   1                 -0.0729087   -0.1463473    0.0005298
12-15 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0050367   -0.0260223    0.0159489
12-15 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0185678   -0.0404281    0.0032925
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0098859   -0.0234103    0.0431820
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0119312   -0.0329738    0.0091114
15-18 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          2+                   1                  0.0007352   -0.0367135    0.0381838
15-18 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         2+                   1                 -0.0043714   -0.0575676    0.0488248
15-18 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     2+                   1                  0.0061223   -0.0126654    0.0249101
15-18 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     2+                   1                  0.0114418   -0.0072705    0.0301542
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0244517   -0.0588334    0.0099300
18-21 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          2+                   1                 -0.0154319   -0.0496286    0.0187649
18-21 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         2+                   1                 -0.0077376   -0.0404100    0.0249348
18-21 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     2+                   1                  0.0050131   -0.0128696    0.0228957
18-21 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0174963   -0.0350452    0.0000527
21-24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          2+                   1                  0.0044293   -0.0334232    0.0422817
21-24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         2+                   1                 -0.0007108   -0.0312003    0.0297787
21-24 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0047061   -0.0221541    0.0127419
21-24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0125195   -0.0321206    0.0070816


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    NA                 0.0047832   -0.1102365    0.1198029
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0127035   -0.0160020   -0.0094050
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0091323   -0.0199110    0.0016464
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.0045790   -0.0149666    0.0058086
3-6 months     IRC              INDIA                          1                    NA                -0.0041916   -0.0625503    0.0541671
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0103760   -0.0136120   -0.0071399
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0083616   -0.0194404    0.0027173
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0125692   -0.0221347   -0.0030036
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0006081   -0.0113556    0.0101393
6-9 months     IRC              INDIA                          1                    NA                 0.0108583   -0.0318171    0.0535336
6-9 months     LCNI-5           MALAWI                         1                    NA                -0.0113261   -0.0283040    0.0056518
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                 0.0014308   -0.0070547    0.0099164
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0072243   -0.0139392   -0.0005093
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0032267   -0.0139408    0.0074874
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0117748   -0.0266703    0.0031208
9-12 months    IRC              INDIA                          1                    NA                -0.0235377   -0.0588219    0.0117464
9-12 months    LCNI-5           MALAWI                         1                    NA                 0.0031110   -0.0177443    0.0239663
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0007403   -0.0064745    0.0079552
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0038909   -0.0102710    0.0024891
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0063784   -0.0032610    0.0160178
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0009938   -0.0205283    0.0185408
12-15 months   IRC              INDIA                          1                    NA                -0.0416680   -0.0815335   -0.0018025
12-15 months   LCNI-5           MALAWI                         1                    NA                -0.0425787   -0.0859307    0.0007733
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0015034   -0.0077697    0.0047630
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0049212   -0.0107567    0.0009144
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0027167   -0.0064386    0.0118720
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0080292   -0.0225050    0.0064466
15-18 months   IRC              INDIA                          1                    NA                 0.0005851   -0.0292170    0.0303871
15-18 months   LCNI-5           MALAWI                         1                    NA                -0.0024821   -0.0326892    0.0277251
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0018144   -0.0037580    0.0073868
15-18 months   PROVIDE          BANGLADESH                     1                    NA                 0.0030338   -0.0019465    0.0080141
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0066854   -0.0161225    0.0027516
18-21 months   IRC              INDIA                          1                    NA                -0.0120930   -0.0388986    0.0147126
18-21 months   LCNI-5           MALAWI                         1                    NA                -0.0037868   -0.0197807    0.0122071
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0014599   -0.0037512    0.0066709
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0047541   -0.0095674    0.0000593
21-24 months   IRC              INDIA                          1                    NA                 0.0034728   -0.0262064    0.0331521
21-24 months   LCNI-5           MALAWI                         1                    NA                -0.0003351   -0.0147098    0.0140396
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0014406   -0.0067853    0.0039040
21-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0034289   -0.0088210    0.0019632
