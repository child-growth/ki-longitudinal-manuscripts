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

**Outcome Variable:** y_rate_len

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
![](/tmp/eee67a29-c71f-42a7-bae8-6adfdfc2e1e3/bd5462b7-e626-4c09-96ce-4ad1d97b1e62/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/eee67a29-c71f-42a7-bae8-6adfdfc2e1e3/bd5462b7-e626-4c09-96ce-4ad1d97b1e62/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/eee67a29-c71f-42a7-bae8-6adfdfc2e1e3/bd5462b7-e626-4c09-96ce-4ad1d97b1e62/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     IRC              INDIA                          1                    NA                3.1281019   2.8603411   3.3958628
0-3 months     IRC              INDIA                          2+                   NA                3.1410699   3.0207246   3.2614152
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                3.7424999   3.7303531   3.7546467
0-3 months     JiVitA-3         BANGLADESH                     2+                   NA                3.6918837   3.6767925   3.7069749
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                3.1453503   3.1010402   3.1896603
0-3 months     NIH-Crypto       BANGLADESH                     2+                   NA                3.0897906   3.0270203   3.1525608
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.2684594   3.2245413   3.3123775
0-3 months     PROVIDE          BANGLADESH                     2+                   NA                3.2276419   3.1596182   3.2956656
3-6 months     IRC              INDIA                          1                    NA                1.8874100   1.7469248   2.0278952
3-6 months     IRC              INDIA                          2+                   NA                1.8787834   1.8072244   1.9503423
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                1.9410879   1.9284752   1.9537007
3-6 months     JiVitA-3         BANGLADESH                     2+                   NA                1.8824436   1.8662754   1.8986118
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                2.0255186   1.9832633   2.0677739
3-6 months     NIH-Crypto       BANGLADESH                     2+                   NA                1.9579998   1.8873043   2.0286952
3-6 months     PROVIDE          BANGLADESH                     1                    NA                1.9940987   1.9542095   2.0339879
3-6 months     PROVIDE          BANGLADESH                     2+                   NA                1.8907141   1.8279734   1.9534548
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7947853   1.7507979   1.8387727
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                1.7900061   1.7288426   1.8511695
6-9 months     IRC              INDIA                          1                    NA                1.3430412   1.2337180   1.4523645
6-9 months     IRC              INDIA                          2+                   NA                1.3806180   1.3264840   1.4347519
6-9 months     LCNI-5           MALAWI                         1                    NA                1.4891401   1.4341252   1.5441550
6-9 months     LCNI-5           MALAWI                         2+                   NA                1.4373452   1.3890619   1.4856284
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                1.3269777   1.2931008   1.3608545
6-9 months     NIH-Crypto       BANGLADESH                     2+                   NA                1.3314216   1.2729093   1.3899338
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.2995434   1.2701731   1.3289137
6-9 months     PROVIDE          BANGLADESH                     2+                   NA                1.2371204   1.1885813   1.2856595
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3340980   1.2909333   1.3772626
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                1.3037486   1.2348862   1.3726109
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                1.1207730   1.0780290   1.1635170
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+                   NA                1.0773728   1.0321756   1.1225700
9-12 months    IRC              INDIA                          1                    NA                1.1769214   1.0803686   1.2734741
9-12 months    IRC              INDIA                          2+                   NA                1.1083983   1.0660538   1.1507429
9-12 months    LCNI-5           MALAWI                         1                    NA                1.0962020   1.0228236   1.1695804
9-12 months    LCNI-5           MALAWI                         2+                   NA                1.1048132   1.0449554   1.1646711
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                1.1240447   1.0929173   1.1551722
9-12 months    NIH-Crypto       BANGLADESH                     2+                   NA                1.1221133   1.0733047   1.1709219
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0609918   1.0286363   1.0933473
9-12 months    PROVIDE          BANGLADESH                     2+                   NA                1.0202367   0.9723837   1.0680897
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0719541   1.0331289   1.1107792
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                1.1190296   1.0498786   1.1881805
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.9681630   0.9206609   1.0156651
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.9666191   0.9115450   1.0216933
12-15 months   IRC              INDIA                          1                    NA                1.0636763   0.9475334   1.1798192
12-15 months   IRC              INDIA                          2+                   NA                0.9265149   0.8844875   0.9685422
12-15 months   LCNI-5           MALAWI                         1                    NA                1.0817895   0.9434351   1.2201440
12-15 months   LCNI-5           MALAWI                         2+                   NA                0.8704965   0.7397378   1.0012552
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9779565   0.9489591   1.0069540
12-15 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.9551177   0.9090953   1.0011400
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.9750552   0.9438272   1.0062831
12-15 months   PROVIDE          BANGLADESH                     2+                   NA                0.9173082   0.8706553   0.9639612
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9264067   0.8836259   0.9691875
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.9464934   0.8738873   1.0190995
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.9432090   0.8708808   1.0155373
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.9097394   0.8726422   0.9468367
15-18 months   IRC              INDIA                          1                    NA                0.8691409   0.7769657   0.9613161
15-18 months   IRC              INDIA                          2+                   NA                0.8565508   0.8131145   0.8999871
15-18 months   LCNI-5           MALAWI                         1                    NA                0.8504223   0.7368826   0.9639620
15-18 months   LCNI-5           MALAWI                         2+                   NA                0.7966357   0.7047281   0.8885432
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9159101   0.8890069   0.9428133
15-18 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.9220064   0.8782251   0.9657877
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.8513407   0.8226102   0.8800713
15-18 months   PROVIDE          BANGLADESH                     2+                   NA                0.8692893   0.8256476   0.9129309
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9574483   0.9079835   1.0069132
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.8833962   0.8039784   0.9628139
18-21 months   IRC              INDIA                          1                    NA                0.8053304   0.7155419   0.8951190
18-21 months   IRC              INDIA                          2+                   NA                0.7472321   0.7051839   0.7892802
18-21 months   LCNI-5           MALAWI                         1                    NA                0.8331733   0.7727012   0.8936454
18-21 months   LCNI-5           MALAWI                         2+                   NA                0.8076524   0.7362787   0.8790262
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.7965132   0.7693598   0.8236667
18-21 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.8008479   0.7555084   0.8461874
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.8566738   0.8280484   0.8852991
18-21 months   PROVIDE          BANGLADESH                     2+                   NA                0.7928723   0.7500891   0.8356554
21-24 months   IRC              INDIA                          1                    NA                0.7054472   0.6009850   0.8099094
21-24 months   IRC              INDIA                          2+                   NA                0.7092296   0.6656588   0.7528005
21-24 months   LCNI-5           MALAWI                         1                    NA                0.7604801   0.6922731   0.8286872
21-24 months   LCNI-5           MALAWI                         2+                   NA                0.7383703   0.6784903   0.7982503
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.8084059   0.7789375   0.8378743
21-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.7787755   0.7346706   0.8228803
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.7754363   0.7457732   0.8050993
21-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.7305371   0.6818725   0.7792017


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                3.7234105   3.7131018   3.7337192
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
3-6 months     IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                1.9202415   1.9097813   1.9307016
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7933135   1.7575160   1.8291109
6-9 months     IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     LCNI-5           MALAWI                         NA                   NA                1.4616153   1.4251800   1.4980507
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3249931   1.2883838   1.3616025
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                1.0917213   1.0579961   1.1254464
9-12 months    IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    LCNI-5           MALAWI                         NA                   NA                1.1007887   1.0539615   1.1476158
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0855731   1.0514671   1.1196792
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9671413   0.9257414   1.0085412
12-15 months   IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.9583944   0.8610293   1.0557595
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9319267   0.8950348   0.9688186
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9206852   0.8832466   0.9581239
15-18 months   IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.8198824   0.7480865   0.8916783
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9372014   0.8951355   0.9792674
18-21 months   IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.8206832   0.7740479   0.8673186
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.7500561   0.7042548   0.7958575
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          2+                   1                  0.0129680   -0.2805944    0.3065303
0-3 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     2+                   1                 -0.0506162   -0.0682826   -0.0329498
0-3 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     2+                   1                 -0.0555597   -0.1323938    0.0212744
0-3 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0408175   -0.1217868    0.0401518
3-6 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          2+                   1                 -0.0086267   -0.1662870    0.1490337
3-6 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     2+                   1                 -0.0586443   -0.0781182   -0.0391704
3-6 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     2+                   1                 -0.0675189   -0.1498800    0.0148423
3-6 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     2+                   1                 -0.1033847   -0.1777321   -0.0290372
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0047793   -0.0801176    0.0705590
6-9 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          2+                   1                  0.0375767   -0.0844153    0.1595687
6-9 months     LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         2+                   1                 -0.0517949   -0.1249926    0.0214028
6-9 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     2+                   1                  0.0044439   -0.0631677    0.0720555
6-9 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0624230   -0.1191562   -0.0056897
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0303494   -0.1116218    0.0509231
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0434001   -0.1035012    0.0167009
9-12 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          2+                   1                 -0.0685230   -0.1739531    0.0369070
9-12 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         2+                   1                  0.0086112   -0.0860849    0.1033073
9-12 months    NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     2+                   1                 -0.0019315   -0.0598209    0.0559580
9-12 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     2+                   1                 -0.0407551   -0.0985201    0.0170098
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0470755   -0.0322293    0.1263803
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0015438   -0.0702390    0.0671513
12-15 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          2+                   1                 -0.1371615   -0.2606745   -0.0136484
12-15 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         2+                   1                 -0.2112931   -0.4016606   -0.0209255
12-15 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0228389   -0.0772347    0.0315570
12-15 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0577470   -0.1138868   -0.0016071
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0200867   -0.0641857    0.1043592
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0334696   -0.1077981    0.0408589
15-18 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          2+                   1                 -0.0125901   -0.1144870    0.0893068
15-18 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         2+                   1                 -0.0537866   -0.1998628    0.0922896
15-18 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     2+                   1                  0.0060963   -0.0452903    0.0574829
15-18 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     2+                   1                  0.0179485   -0.0343013    0.0701983
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0740522   -0.1676147    0.0195104
18-21 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          2+                   1                 -0.0580984   -0.1572449    0.0410481
18-21 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         2+                   1                 -0.0255208   -0.1190681    0.0680264
18-21 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     2+                   1                  0.0043347   -0.0485139    0.0571834
18-21 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0638015   -0.1152778   -0.0123252
21-24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          2+                   1                  0.0037825   -0.1094022    0.1169671
21-24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         2+                   1                 -0.0221098   -0.1128722    0.0686526
21-24 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0296304   -0.0826740    0.0234132
21-24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0448991   -0.1018916    0.0120933


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    NA                 0.0101474   -0.2195639    0.2398586
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0190894   -0.0257547   -0.0124241
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0161054   -0.0384537    0.0062429
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.0107784   -0.0322048    0.0106481
3-6 months     IRC              INDIA                          1                    NA                -0.0067362   -0.1298468    0.1163744
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0208464   -0.0277805   -0.0139124
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0197213   -0.0438861    0.0044434
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0283530   -0.0490755   -0.0076304
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0014719   -0.0246741    0.0217304
6-9 months     IRC              INDIA                          1                    NA                 0.0293597   -0.0659679    0.1246873
6-9 months     LCNI-5           MALAWI                         1                    NA                -0.0275248   -0.0664827    0.0114331
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                 0.0012918   -0.0183633    0.0209469
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0171249   -0.0328577   -0.0013921
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0091048   -0.0334968    0.0152872
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0290517   -0.0688028    0.0106994
9-12 months    IRC              INDIA                          1                    NA                -0.0534480   -0.1357306    0.0288346
9-12 months    LCNI-5           MALAWI                         1                    NA                 0.0045867   -0.0458539    0.0550272
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0005703   -0.0176624    0.0165219
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0110168   -0.0267029    0.0046692
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0136191   -0.0093595    0.0365976
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0010217   -0.0464856    0.0444422
12-15 months   IRC              INDIA                          1                    NA                -0.1083224   -0.2060241   -0.0106207
12-15 months   LCNI-5           MALAWI                         1                    NA                -0.1233951   -0.2360708   -0.0107195
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0068171   -0.0230730    0.0094389
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0153051   -0.0303414   -0.0002689
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0055200   -0.0176473    0.0286874
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0225238   -0.0735307    0.0284831
15-18 months   IRC              INDIA                          1                    NA                -0.0100193   -0.0911116    0.0710730
15-18 months   LCNI-5           MALAWI                         1                    NA                -0.0305399   -0.1136218    0.0525421
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0018067   -0.0134238    0.0170371
15-18 months   PROVIDE          BANGLADESH                     1                    NA                 0.0047591   -0.0091115    0.0186297
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0202469   -0.0459516    0.0054579
18-21 months   IRC              INDIA                          1                    NA                -0.0455283   -0.1232610    0.0322044
18-21 months   LCNI-5           MALAWI                         1                    NA                -0.0124901   -0.0582872    0.0333071
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0012623   -0.0141286    0.0166532
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0173361   -0.0315265   -0.0031456
21-24 months   IRC              INDIA                          1                    NA                 0.0029657   -0.0857782    0.0917096
21-24 months   LCNI-5           MALAWI                         1                    NA                -0.0104240   -0.0532288    0.0323808
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0090705   -0.0253534    0.0072124
21-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0122972   -0.0280112    0.0034168
