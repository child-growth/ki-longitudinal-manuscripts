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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_brthmon
* delta_W_parity

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
0-24 months   JiVitA-3         BANGLADESH                     0                  0      939   15765
0-24 months   JiVitA-3         BANGLADESH                     0                  1       57   15765
0-24 months   JiVitA-3         BANGLADESH                     1                  0    13931   15765
0-24 months   JiVitA-3         BANGLADESH                     1                  1      838   15765
0-24 months   JiVitA-4         BANGLADESH                     0                  0      341    4443
0-24 months   JiVitA-4         BANGLADESH                     0                  1       19    4443
0-24 months   JiVitA-4         BANGLADESH                     1                  0     3752    4443
0-24 months   JiVitA-4         BANGLADESH                     1                  1      331    4443
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
0-6 months    JiVitA-3         BANGLADESH                     0                  0        0      50
0-6 months    JiVitA-3         BANGLADESH                     0                  1        0      50
0-6 months    JiVitA-3         BANGLADESH                     1                  0       48      50
0-6 months    JiVitA-3         BANGLADESH                     1                  1        2      50
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
6-24 months   JiVitA-3         BANGLADESH                     0                  0      939   15765
6-24 months   JiVitA-3         BANGLADESH                     0                  1       57   15765
6-24 months   JiVitA-3         BANGLADESH                     1                  0    13931   15765
6-24 months   JiVitA-3         BANGLADESH                     1                  1      838   15765
6-24 months   JiVitA-4         BANGLADESH                     0                  0      341    4443
6-24 months   JiVitA-4         BANGLADESH                     0                  1       19    4443
6-24 months   JiVitA-4         BANGLADESH                     1                  0     3752    4443
6-24 months   JiVitA-4         BANGLADESH                     1                  1      331    4443
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
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/1dd60150-4946-49a3-b4be-8e837309696c/97e921b3-0346-47e2-8cd7-e3315646dac3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1dd60150-4946-49a3-b4be-8e837309696c/97e921b3-0346-47e2-8cd7-e3315646dac3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1dd60150-4946-49a3-b4be-8e837309696c/97e921b3-0346-47e2-8cd7-e3315646dac3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1dd60150-4946-49a3-b4be-8e837309696c/97e921b3-0346-47e2-8cd7-e3315646dac3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC              INDIA                          0                    NA                0.1142857   0.0396628   0.1889086
0-24 months   IRC              INDIA                          1                    NA                0.1176471   0.0833584   0.1519357
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0603377   0.0444747   0.0762008
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0566253   0.0524386   0.0608120
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0520222   0.0255592   0.0784852
0-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.0811451   0.0715631   0.0907272
0-24 months   PROBIT           BELARUS                        0                    NA                0.0070483   0.0024877   0.0116088
0-24 months   PROBIT           BELARUS                        1                    NA                0.0082388   0.0043604   0.0121172
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0303030   0.0064206   0.0541854
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0267765   0.0195951   0.0339579
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0109489   0.0038346   0.0180632
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0179668   0.0151637   0.0207700
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.2800000   0.1037493   0.4562507
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.1291291   0.0930611   0.1651972
0-6 months    IRC              INDIA                          0                    NA                0.1475098   0.0571367   0.2378828
0-6 months    IRC              INDIA                          1                    NA                0.1580832   0.1187856   0.1973807
0-6 months    PROBIT           BELARUS                        0                    NA                0.0762265   0.0516683   0.1007848
0-6 months    PROBIT           BELARUS                        1                    NA                0.0819022   0.0556967   0.1081077
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0267380   0.0036113   0.0498646
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0254329   0.0182532   0.0326126
6-24 months   IRC              INDIA                          0                    NA                0.1142857   0.0396628   0.1889086
6-24 months   IRC              INDIA                          1                    NA                0.1176471   0.0833584   0.1519357
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0596050   0.0437988   0.0754112
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.0567049   0.0525084   0.0609014
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0512092   0.0252663   0.0771521
6-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.0811767   0.0715869   0.0907664
6-24 months   PROBIT           BELARUS                        0                    NA                0.0071106   0.0025813   0.0116399
6-24 months   PROBIT           BELARUS                        1                    NA                0.0082368   0.0043469   0.0121266
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0303030   0.0064206   0.0541854
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0267765   0.0195951   0.0339579
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0109489   0.0038346   0.0180632
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0179668   0.0151637   0.0207700


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0567713   0.0526559   0.0608868
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0787756   0.0696990   0.0878522
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0080806   0.0045539   0.0116073
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0271028   0.0202213   0.0339843
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0173563   0.0147230   0.0199897
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0810551   0.0555982   0.1065120
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0255528   0.0186952   0.0324104
6-24 months   IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0567713   0.0526559   0.0608868
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0787756   0.0696990   0.0878522
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0080806   0.0045539   0.0116073
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0271028   0.0202213   0.0339843
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0173563   0.0147230   0.0199897


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          1                    0                 1.0294118   0.5035574   2.1044047
0-24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     1                    0                 0.9384731   0.7183726   1.2260097
0-24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     1                    0                 1.5598175   0.9250429   2.6301814
0-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        1                    0                 1.1689116   0.5658796   2.4145672
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8836251   0.3843408   2.0315133
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.6409721   0.8411810   3.2012011
0-6 months    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0                 0.4611755   0.2316258   0.9182174
0-6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          1                    0                 1.0716794   0.5529919   2.0768781
0-6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        1                    0                 1.0744581   0.8753601   1.3188403
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9511905   0.3829381   2.3626880
6-24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          1                    0                 1.0294118   0.5035574   2.1044047
6-24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     1                    0                 0.9513444   0.7273589   1.2443047
6-24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     1                    0                 1.5851976   0.9418539   2.6679842
6-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        1                    0                 1.1583810   0.5625937   2.3851076
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8836251   0.3843408   2.0315133
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.6409721   0.8411810   3.2012011


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC              INDIA                          0                    NA                 0.0027875   -0.0653152   0.0708901
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0035664   -0.0187134   0.0115807
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0267534    0.0009131   0.0525937
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0010323   -0.0037363   0.0058009
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032002   -0.0258316   0.0194312
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0064074   -0.0005741   0.0133889
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.1403352   -0.3077229   0.0270526
0-6 months    IRC              INDIA                          0                    NA                 0.0116942   -0.0707165   0.0941050
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0048286   -0.0096032   0.0192604
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0011851   -0.0231755   0.0208052
6-24 months   IRC              INDIA                          0                    NA                 0.0027875   -0.0653152   0.0708901
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0028337   -0.0178515   0.0121842
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0275664    0.0021966   0.0529363
6-24 months   PROBIT           BELARUS                        0                    NA                 0.0009700   -0.0037985   0.0057384
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032002   -0.0258316   0.0194312
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0064074   -0.0005741   0.0133889


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   IRC              INDIA                          0                    NA                 0.0238095   -0.7714072    0.4620391
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0628202   -0.3659076    0.1730139
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.3396152   -0.0822232    0.5970258
0-24 months   PROBIT           BELARUS                        0                    NA                 0.1277496   -0.6738475    0.5454659
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1180773   -1.3584262    0.4699445
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.3691695   -0.1863150    0.6645519
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.0048000   -2.6272555   -0.1080617
0-6 months    IRC              INDIA                          0                    NA                 0.0734544   -0.6208566    0.4703499
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0595717   -0.1297598    0.2171741
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0463801   -1.3814109    0.5402258
6-24 months   IRC              INDIA                          0                    NA                 0.0238095   -0.7714072    0.4620391
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0499138   -0.3505108    0.1837762
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.3499360   -0.0633968    0.6026100
6-24 months   PROBIT           BELARUS                        0                    NA                 0.1200373   -0.6803648    0.5391868
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1180773   -1.3584262    0.4699445
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.3691695   -0.1863150    0.6645519
