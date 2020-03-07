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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid         country      nhh          pers_wast   n_cell     n
------------  --------------  -----------  ----------  ----------  -------  ----
0-24 months   IRC             INDIA        3 or less            0       49   410
0-24 months   IRC             INDIA        3 or less            1        9   410
0-24 months   IRC             INDIA        4-5                  0      140   410
0-24 months   IRC             INDIA        4-5                  1       18   410
0-24 months   IRC             INDIA        6-7                  0       98   410
0-24 months   IRC             INDIA        6-7                  1        9   410
0-24 months   IRC             INDIA        8+                   0       75   410
0-24 months   IRC             INDIA        8+                   1       12   410
0-24 months   LCNI-5          MALAWI       3 or less            0      191   715
0-24 months   LCNI-5          MALAWI       3 or less            1        3   715
0-24 months   LCNI-5          MALAWI       4-5                  0      297   715
0-24 months   LCNI-5          MALAWI       4-5                  1        2   715
0-24 months   LCNI-5          MALAWI       6-7                  0      161   715
0-24 months   LCNI-5          MALAWI       6-7                  1        0   715
0-24 months   LCNI-5          MALAWI       8+                   0       60   715
0-24 months   LCNI-5          MALAWI       8+                   1        1   715
0-24 months   NIH-Birth       BANGLADESH   3 or less            0       84   534
0-24 months   NIH-Birth       BANGLADESH   3 or less            1        9   534
0-24 months   NIH-Birth       BANGLADESH   4-5                  0      207   534
0-24 months   NIH-Birth       BANGLADESH   4-5                  1       22   534
0-24 months   NIH-Birth       BANGLADESH   6-7                  0      117   534
0-24 months   NIH-Birth       BANGLADESH   6-7                  1        8   534
0-24 months   NIH-Birth       BANGLADESH   8+                   0       79   534
0-24 months   NIH-Birth       BANGLADESH   8+                   1        8   534
0-24 months   NIH-Crypto      BANGLADESH   3 or less            0      103   730
0-24 months   NIH-Crypto      BANGLADESH   3 or less            1        4   730
0-24 months   NIH-Crypto      BANGLADESH   4-5                  0      314   730
0-24 months   NIH-Crypto      BANGLADESH   4-5                  1       16   730
0-24 months   NIH-Crypto      BANGLADESH   6-7                  0      172   730
0-24 months   NIH-Crypto      BANGLADESH   6-7                  1        4   730
0-24 months   NIH-Crypto      BANGLADESH   8+                   0      115   730
0-24 months   NIH-Crypto      BANGLADESH   8+                   1        2   730
0-24 months   PROVIDE         BANGLADESH   3 or less            0      117   641
0-24 months   PROVIDE         BANGLADESH   3 or less            1        3   641
0-24 months   PROVIDE         BANGLADESH   4-5                  0      293   641
0-24 months   PROVIDE         BANGLADESH   4-5                  1        6   641
0-24 months   PROVIDE         BANGLADESH   6-7                  0      133   641
0-24 months   PROVIDE         BANGLADESH   6-7                  1        4   641
0-24 months   PROVIDE         BANGLADESH   8+                   0       83   641
0-24 months   PROVIDE         BANGLADESH   8+                   1        2   641
0-24 months   SAS-FoodSuppl   INDIA        3 or less            0       27   375
0-24 months   SAS-FoodSuppl   INDIA        3 or less            1        4   375
0-24 months   SAS-FoodSuppl   INDIA        4-5                  0      143   375
0-24 months   SAS-FoodSuppl   INDIA        4-5                  1       23   375
0-24 months   SAS-FoodSuppl   INDIA        6-7                  0       87   375
0-24 months   SAS-FoodSuppl   INDIA        6-7                  1       27   375
0-24 months   SAS-FoodSuppl   INDIA        8+                   0       53   375
0-24 months   SAS-FoodSuppl   INDIA        8+                   1       11   375
0-6 months    IRC             INDIA        3 or less            0       44   402
0-6 months    IRC             INDIA        3 or less            1       12   402
0-6 months    IRC             INDIA        4-5                  0      130   402
0-6 months    IRC             INDIA        4-5                  1       26   402
0-6 months    IRC             INDIA        6-7                  0       90   402
0-6 months    IRC             INDIA        6-7                  1       13   402
0-6 months    IRC             INDIA        8+                   0       74   402
0-6 months    IRC             INDIA        8+                   1       13   402
0-6 months    NIH-Birth       BANGLADESH   3 or less            0       23   169
0-6 months    NIH-Birth       BANGLADESH   3 or less            1        3   169
0-6 months    NIH-Birth       BANGLADESH   4-5                  0       76   169
0-6 months    NIH-Birth       BANGLADESH   4-5                  1        7   169
0-6 months    NIH-Birth       BANGLADESH   6-7                  0       37   169
0-6 months    NIH-Birth       BANGLADESH   6-7                  1        0   169
0-6 months    NIH-Birth       BANGLADESH   8+                   0       22   169
0-6 months    NIH-Birth       BANGLADESH   8+                   1        1   169
0-6 months    NIH-Crypto      BANGLADESH   3 or less            0       45   250
0-6 months    NIH-Crypto      BANGLADESH   3 or less            1        1   250
0-6 months    NIH-Crypto      BANGLADESH   4-5                  0      108   250
0-6 months    NIH-Crypto      BANGLADESH   4-5                  1        2   250
0-6 months    NIH-Crypto      BANGLADESH   6-7                  0       50   250
0-6 months    NIH-Crypto      BANGLADESH   6-7                  1        2   250
0-6 months    NIH-Crypto      BANGLADESH   8+                   0       42   250
0-6 months    NIH-Crypto      BANGLADESH   8+                   1        0   250
0-6 months    PROVIDE         BANGLADESH   3 or less            0      117   638
0-6 months    PROVIDE         BANGLADESH   3 or less            1        3   638
0-6 months    PROVIDE         BANGLADESH   4-5                  0      293   638
0-6 months    PROVIDE         BANGLADESH   4-5                  1        5   638
0-6 months    PROVIDE         BANGLADESH   6-7                  0      133   638
0-6 months    PROVIDE         BANGLADESH   6-7                  1        3   638
0-6 months    PROVIDE         BANGLADESH   8+                   0       81   638
0-6 months    PROVIDE         BANGLADESH   8+                   1        3   638
6-24 months   IRC             INDIA        3 or less            0       49   410
6-24 months   IRC             INDIA        3 or less            1        9   410
6-24 months   IRC             INDIA        4-5                  0      140   410
6-24 months   IRC             INDIA        4-5                  1       18   410
6-24 months   IRC             INDIA        6-7                  0       98   410
6-24 months   IRC             INDIA        6-7                  1        9   410
6-24 months   IRC             INDIA        8+                   0       75   410
6-24 months   IRC             INDIA        8+                   1       12   410
6-24 months   LCNI-5          MALAWI       3 or less            0      191   715
6-24 months   LCNI-5          MALAWI       3 or less            1        3   715
6-24 months   LCNI-5          MALAWI       4-5                  0      297   715
6-24 months   LCNI-5          MALAWI       4-5                  1        2   715
6-24 months   LCNI-5          MALAWI       6-7                  0      161   715
6-24 months   LCNI-5          MALAWI       6-7                  1        0   715
6-24 months   LCNI-5          MALAWI       8+                   0       60   715
6-24 months   LCNI-5          MALAWI       8+                   1        1   715
6-24 months   NIH-Birth       BANGLADESH   3 or less            0       84   534
6-24 months   NIH-Birth       BANGLADESH   3 or less            1        9   534
6-24 months   NIH-Birth       BANGLADESH   4-5                  0      207   534
6-24 months   NIH-Birth       BANGLADESH   4-5                  1       22   534
6-24 months   NIH-Birth       BANGLADESH   6-7                  0      117   534
6-24 months   NIH-Birth       BANGLADESH   6-7                  1        8   534
6-24 months   NIH-Birth       BANGLADESH   8+                   0       79   534
6-24 months   NIH-Birth       BANGLADESH   8+                   1        8   534
6-24 months   NIH-Crypto      BANGLADESH   3 or less            0      103   730
6-24 months   NIH-Crypto      BANGLADESH   3 or less            1        4   730
6-24 months   NIH-Crypto      BANGLADESH   4-5                  0      314   730
6-24 months   NIH-Crypto      BANGLADESH   4-5                  1       16   730
6-24 months   NIH-Crypto      BANGLADESH   6-7                  0      172   730
6-24 months   NIH-Crypto      BANGLADESH   6-7                  1        4   730
6-24 months   NIH-Crypto      BANGLADESH   8+                   0      115   730
6-24 months   NIH-Crypto      BANGLADESH   8+                   1        2   730
6-24 months   PROVIDE         BANGLADESH   3 or less            0      117   641
6-24 months   PROVIDE         BANGLADESH   3 or less            1        3   641
6-24 months   PROVIDE         BANGLADESH   4-5                  0      293   641
6-24 months   PROVIDE         BANGLADESH   4-5                  1        6   641
6-24 months   PROVIDE         BANGLADESH   6-7                  0      133   641
6-24 months   PROVIDE         BANGLADESH   6-7                  1        4   641
6-24 months   PROVIDE         BANGLADESH   8+                   0       83   641
6-24 months   PROVIDE         BANGLADESH   8+                   1        2   641
6-24 months   SAS-FoodSuppl   INDIA        3 or less            0       27   375
6-24 months   SAS-FoodSuppl   INDIA        3 or less            1        4   375
6-24 months   SAS-FoodSuppl   INDIA        4-5                  0      143   375
6-24 months   SAS-FoodSuppl   INDIA        4-5                  1       23   375
6-24 months   SAS-FoodSuppl   INDIA        6-7                  0       87   375
6-24 months   SAS-FoodSuppl   INDIA        6-7                  1       27   375
6-24 months   SAS-FoodSuppl   INDIA        8+                   0       53   375
6-24 months   SAS-FoodSuppl   INDIA        8+                   1       11   375


The following strata were considered:

* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/77996704-be25-49e8-a9e1-6372948eabb3/423890fc-de1e-4551-b650-45f5b7e12b5f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/77996704-be25-49e8-a9e1-6372948eabb3/423890fc-de1e-4551-b650-45f5b7e12b5f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/77996704-be25-49e8-a9e1-6372948eabb3/423890fc-de1e-4551-b650-45f5b7e12b5f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/77996704-be25-49e8-a9e1-6372948eabb3/423890fc-de1e-4551-b650-45f5b7e12b5f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC         INDIA        3 or less            NA                0.1551724   0.0618780   0.2484668
0-24 months   IRC         INDIA        4-5                  NA                0.1139241   0.0643228   0.1635253
0-24 months   IRC         INDIA        6-7                  NA                0.0841121   0.0314575   0.1367668
0-24 months   IRC         INDIA        8+                   NA                0.1379310   0.0653838   0.2104782
0-24 months   NIH-Birth   BANGLADESH   3 or less            NA                0.0967742   0.0366303   0.1569181
0-24 months   NIH-Birth   BANGLADESH   4-5                  NA                0.0960699   0.0578668   0.1342730
0-24 months   NIH-Birth   BANGLADESH   6-7                  NA                0.0640000   0.0210535   0.1069465
0-24 months   NIH-Birth   BANGLADESH   8+                   NA                0.0919540   0.0311777   0.1527304
0-6 months    IRC         INDIA        3 or less            NA                0.2053007   0.0937846   0.3168169
0-6 months    IRC         INDIA        4-5                  NA                0.1645871   0.1057980   0.2233762
0-6 months    IRC         INDIA        6-7                  NA                0.1264494   0.0618297   0.1910691
0-6 months    IRC         INDIA        8+                   NA                0.1462459   0.0711227   0.2213692
6-24 months   IRC         INDIA        3 or less            NA                0.1551724   0.0618780   0.2484668
6-24 months   IRC         INDIA        4-5                  NA                0.1139241   0.0643228   0.1635253
6-24 months   IRC         INDIA        6-7                  NA                0.0841121   0.0314575   0.1367668
6-24 months   IRC         INDIA        8+                   NA                0.1379310   0.0653838   0.2104782
6-24 months   NIH-Birth   BANGLADESH   3 or less            NA                0.0967742   0.0366303   0.1569181
6-24 months   NIH-Birth   BANGLADESH   4-5                  NA                0.0960699   0.0578668   0.1342730
6-24 months   NIH-Birth   BANGLADESH   6-7                  NA                0.0640000   0.0210535   0.1069465
6-24 months   NIH-Birth   BANGLADESH   8+                   NA                0.0919540   0.0311777   0.1527304


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC         INDIA        NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   NIH-Birth   BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673
0-6 months    IRC         INDIA        NA                   NA                0.1592040   0.1233945   0.1950135
6-24 months   IRC         INDIA        NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   NIH-Birth   BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   IRC         INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   IRC         INDIA        4-5                  3 or less         0.7341772   0.3494737   1.542365
0-24 months   IRC         INDIA        6-7                  3 or less         0.5420561   0.2275581   1.291208
0-24 months   IRC         INDIA        8+                   3 or less         0.8888889   0.3998735   1.975934
0-24 months   NIH-Birth   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth   BANGLADESH   4-5                  3 or less         0.9927220   0.4746749   2.076151
0-24 months   NIH-Birth   BANGLADESH   6-7                  3 or less         0.6613333   0.2649742   1.650583
0-24 months   NIH-Birth   BANGLADESH   8+                   3 or less         0.9501916   0.3835307   2.354086
0-6 months    IRC         INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    IRC         INDIA        4-5                  3 or less         0.8016879   0.4184811   1.535801
0-6 months    IRC         INDIA        6-7                  3 or less         0.6159227   0.2920745   1.298849
0-6 months    IRC         INDIA        8+                   3 or less         0.7123498   0.3371395   1.505140
6-24 months   IRC         INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   IRC         INDIA        4-5                  3 or less         0.7341772   0.3494737   1.542365
6-24 months   IRC         INDIA        6-7                  3 or less         0.5420561   0.2275581   1.291208
6-24 months   IRC         INDIA        8+                   3 or less         0.8888889   0.3998735   1.975934
6-24 months   NIH-Birth   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth   BANGLADESH   4-5                  3 or less         0.9927220   0.4746749   2.076151
6-24 months   NIH-Birth   BANGLADESH   6-7                  3 or less         0.6613333   0.2649742   1.650583
6-24 months   NIH-Birth   BANGLADESH   8+                   3 or less         0.9501916   0.3835307   2.354086


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC         INDIA        3 or less            NA                -0.0380992   -0.1230236   0.0468252
0-24 months   NIH-Birth   BANGLADESH   3 or less            NA                -0.0087592   -0.0629427   0.0454242
0-6 months    IRC         INDIA        3 or less            NA                -0.0460968   -0.1480472   0.0558536
6-24 months   IRC         INDIA        3 or less            NA                -0.0380992   -0.1230236   0.0468252
6-24 months   NIH-Birth   BANGLADESH   3 or less            NA                -0.0087592   -0.0629427   0.0454242


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC         INDIA        3 or less            NA                -0.3254310   -1.2852889   0.2312712
0-24 months   NIH-Birth   BANGLADESH   3 or less            NA                -0.0995196   -0.9238695   0.3716085
0-6 months    IRC         INDIA        3 or less            NA                -0.2895453   -1.1131644   0.2130631
6-24 months   IRC         INDIA        3 or less            NA                -0.3254310   -1.2852889   0.2312712
6-24 months   NIH-Birth   BANGLADESH   3 or less            NA                -0.0995196   -0.9238695   0.3716085
