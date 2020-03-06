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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        vagbrth    pers_wast   n_cell       n
------------  ---------------  -----------------------------  --------  ----------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          0                  0       24     373
0-24 months   CMC-V-BCS-2002   INDIA                          0                  1        1     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                  0      326     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                  1       22     373
0-24 months   IRC              INDIA                          0                  0       62     410
0-24 months   IRC              INDIA                          0                  1        8     410
0-24 months   IRC              INDIA                          1                  0      300     410
0-24 months   IRC              INDIA                          1                  1       40     410
0-24 months   NIH-Crypto       BANGLADESH                     0                  0      191     472
0-24 months   NIH-Crypto       BANGLADESH                     0                  1        3     472
0-24 months   NIH-Crypto       BANGLADESH                     1                  0      261     472
0-24 months   NIH-Crypto       BANGLADESH                     1                  1       17     472
0-24 months   PROBIT           BELARUS                        0                  0     1904   16583
0-24 months   PROBIT           BELARUS                        0                  1       14   16583
0-24 months   PROBIT           BELARUS                        1                  0    14545   16583
0-24 months   PROBIT           BELARUS                        1                  1      120   16583
0-24 months   PROVIDE          BANGLADESH                     0                  0      146     641
0-24 months   PROVIDE          BANGLADESH                     0                  1        2     641
0-24 months   PROVIDE          BANGLADESH                     1                  0      480     641
0-24 months   PROVIDE          BANGLADESH                     1                  1       13     641
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0      192    2140
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        6    2140
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1890    2140
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       52    2140
0-24 months   ZVITAMBO         ZIMBABWE                       0                  0      813    9449
0-24 months   ZVITAMBO         ZIMBABWE                       0                  1        9    9449
0-24 months   ZVITAMBO         ZIMBABWE                       1                  0     8472    9449
0-24 months   ZVITAMBO         ZIMBABWE                       1                  1      155    9449
0-6 months    CMC-V-BCS-2002   INDIA                          0                  0       18     358
0-6 months    CMC-V-BCS-2002   INDIA                          0                  1        7     358
0-6 months    CMC-V-BCS-2002   INDIA                          1                  0      290     358
0-6 months    CMC-V-BCS-2002   INDIA                          1                  1       43     358
0-6 months    IRC              INDIA                          0                  0       57     402
0-6 months    IRC              INDIA                          0                  1       11     402
0-6 months    IRC              INDIA                          1                  0      281     402
0-6 months    IRC              INDIA                          1                  1       53     402
0-6 months    NIH-Crypto       BANGLADESH                     0                  0       96     249
0-6 months    NIH-Crypto       BANGLADESH                     0                  1        0     249
0-6 months    NIH-Crypto       BANGLADESH                     1                  0      148     249
0-6 months    NIH-Crypto       BANGLADESH                     1                  1        5     249
0-6 months    PROBIT           BELARUS                        0                  0     1417   13534
0-6 months    PROBIT           BELARUS                        0                  1      114   13534
0-6 months    PROBIT           BELARUS                        1                  0    11020   13534
0-6 months    PROBIT           BELARUS                        1                  1      983   13534
0-6 months    PROVIDE          BANGLADESH                     0                  0      144     638
0-6 months    PROVIDE          BANGLADESH                     0                  1        4     638
0-6 months    PROVIDE          BANGLADESH                     1                  0      480     638
0-6 months    PROVIDE          BANGLADESH                     1                  1       10     638
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0      182    2035
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        5    2035
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1801    2035
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       47    2035
0-6 months    ZVITAMBO         ZIMBABWE                       0                  0       49     629
0-6 months    ZVITAMBO         ZIMBABWE                       0                  1        0     629
0-6 months    ZVITAMBO         ZIMBABWE                       1                  0      566     629
0-6 months    ZVITAMBO         ZIMBABWE                       1                  1       14     629
6-24 months   CMC-V-BCS-2002   INDIA                          0                  0       24     373
6-24 months   CMC-V-BCS-2002   INDIA                          0                  1        1     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                  0      326     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                  1       22     373
6-24 months   IRC              INDIA                          0                  0       62     410
6-24 months   IRC              INDIA                          0                  1        8     410
6-24 months   IRC              INDIA                          1                  0      300     410
6-24 months   IRC              INDIA                          1                  1       40     410
6-24 months   NIH-Crypto       BANGLADESH                     0                  0      191     472
6-24 months   NIH-Crypto       BANGLADESH                     0                  1        3     472
6-24 months   NIH-Crypto       BANGLADESH                     1                  0      261     472
6-24 months   NIH-Crypto       BANGLADESH                     1                  1       17     472
6-24 months   PROBIT           BELARUS                        0                  0     1904   16583
6-24 months   PROBIT           BELARUS                        0                  1       14   16583
6-24 months   PROBIT           BELARUS                        1                  0    14545   16583
6-24 months   PROBIT           BELARUS                        1                  1      120   16583
6-24 months   PROVIDE          BANGLADESH                     0                  0      146     641
6-24 months   PROVIDE          BANGLADESH                     0                  1        2     641
6-24 months   PROVIDE          BANGLADESH                     1                  0      480     641
6-24 months   PROVIDE          BANGLADESH                     1                  1       13     641
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0      192    2140
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        6    2140
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1890    2140
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       52    2140
6-24 months   ZVITAMBO         ZIMBABWE                       0                  0      813    9449
6-24 months   ZVITAMBO         ZIMBABWE                       0                  1        9    9449
6-24 months   ZVITAMBO         ZIMBABWE                       1                  0     8472    9449
6-24 months   ZVITAMBO         ZIMBABWE                       1                  1      155    9449


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/a216646b-3e93-4ee6-adc8-2eb98ab5817f/651cdeda-aae2-495f-a0e2-20e5839efa53/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a216646b-3e93-4ee6-adc8-2eb98ab5817f/651cdeda-aae2-495f-a0e2-20e5839efa53/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a216646b-3e93-4ee6-adc8-2eb98ab5817f/651cdeda-aae2-495f-a0e2-20e5839efa53/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a216646b-3e93-4ee6-adc8-2eb98ab5817f/651cdeda-aae2-495f-a0e2-20e5839efa53/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC              INDIA                          0                    NA                0.1142857   0.0396628   0.1889086
0-24 months   IRC              INDIA                          1                    NA                0.1176471   0.0833584   0.1519357
0-24 months   PROBIT           BELARUS                        0                    NA                0.0072993   0.0026058   0.0119928
0-24 months   PROBIT           BELARUS                        1                    NA                0.0081827   0.0043557   0.0120097
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0303030   0.0064206   0.0541854
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0267765   0.0195951   0.0339579
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0109489   0.0038346   0.0180632
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0179668   0.0151637   0.0207700
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.2800000   0.1037493   0.4562507
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.1291291   0.0930611   0.1651972
0-6 months    IRC              INDIA                          0                    NA                0.1617647   0.0741334   0.2493960
0-6 months    IRC              INDIA                          1                    NA                0.1586826   0.1194488   0.1979164
0-6 months    PROBIT           BELARUS                        0                    NA                0.0744611   0.0507656   0.0981567
0-6 months    PROBIT           BELARUS                        1                    NA                0.0818962   0.0557469   0.1080454
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0267380   0.0036113   0.0498646
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0254329   0.0182532   0.0326126
6-24 months   IRC              INDIA                          0                    NA                0.1142857   0.0396628   0.1889086
6-24 months   IRC              INDIA                          1                    NA                0.1176471   0.0833584   0.1519357
6-24 months   PROBIT           BELARUS                        0                    NA                0.0072993   0.0026058   0.0119928
6-24 months   PROBIT           BELARUS                        1                    NA                0.0081827   0.0043557   0.0120097
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0303030   0.0064206   0.0541854
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0267765   0.0195951   0.0339579
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0109489   0.0038346   0.0180632
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0179668   0.0151637   0.0207700


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0080806   0.0045539   0.0116073
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0271028   0.0202213   0.0339843
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0173563   0.0147230   0.0199897
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0810551   0.0555982   0.1065120
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0255528   0.0186952   0.0324104
6-24 months   IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0080806   0.0045539   0.0116073
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0271028   0.0202213   0.0339843
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0173563   0.0147230   0.0199897


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          1                    0                 1.0294118   0.5035574   2.1044047
0-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        1                    0                 1.1210365   0.5435056   2.3122536
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8836251   0.3843408   2.0315133
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.6409721   0.8411810   3.2012011
0-6 months    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0                 0.4611755   0.2316258   0.9182174
0-6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          1                    0                 0.9809472   0.5407959   1.7793357
0-6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        1                    0                 1.0998515   0.9043075   1.3376792
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9511905   0.3829381   2.3626880
6-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          1                    0                 1.0294118   0.5035574   2.1044047
6-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        1                    0                 1.1210365   0.5435056   2.3122536
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8836251   0.3843408   2.0315133
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.6409721   0.8411810   3.2012011


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC              INDIA                          0                    NA                 0.0027875   -0.0653152   0.0708901
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0007813   -0.0040840   0.0056466
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032002   -0.0258316   0.0194312
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0064074   -0.0005741   0.0133889
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.1403352   -0.3077229   0.0270526
0-6 months    IRC              INDIA                          0                    NA                -0.0025607   -0.0823330   0.0772115
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0065940   -0.0071321   0.0203201
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0011851   -0.0231755   0.0208052
6-24 months   IRC              INDIA                          0                    NA                 0.0027875   -0.0653152   0.0708901
6-24 months   PROBIT           BELARUS                        0                    NA                 0.0007813   -0.0040840   0.0056466
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032002   -0.0258316   0.0194312
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0064074   -0.0005741   0.0133889


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   IRC              INDIA                          0                    NA                 0.0238095   -0.7714072    0.4620391
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0966881   -0.7282295    0.5278565
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1180773   -1.3584262    0.4699445
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.3691695   -0.1863150    0.6645519
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.0048000   -2.6272555   -0.1080617
0-6 months    IRC              INDIA                          0                    NA                -0.0160846   -0.6637702    0.3794649
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0813518   -0.0946325    0.2290432
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0463801   -1.3814109    0.5402258
6-24 months   IRC              INDIA                          0                    NA                 0.0238095   -0.7714072    0.4620391
6-24 months   PROBIT           BELARUS                        0                    NA                 0.0966881   -0.7282295    0.5278565
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1180773   -1.3584262    0.4699445
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.3691695   -0.1863150    0.6645519
