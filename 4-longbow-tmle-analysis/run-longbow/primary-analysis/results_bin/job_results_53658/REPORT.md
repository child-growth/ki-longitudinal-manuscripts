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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country      nhh          wast_rec90d   n_cell     n
------------  -------------------------  -----------  ----------  ------------  -------  ----
0-24 months   ki1000108-IRC              INDIA        3 or less              0       17   395
0-24 months   ki1000108-IRC              INDIA        3 or less              1       32   395
0-24 months   ki1000108-IRC              INDIA        4-5                    0       61   395
0-24 months   ki1000108-IRC              INDIA        4-5                    1       75   395
0-24 months   ki1000108-IRC              INDIA        6-7                    0       47   395
0-24 months   ki1000108-IRC              INDIA        6-7                    1       60   395
0-24 months   ki1000108-IRC              INDIA        8+                     0       37   395
0-24 months   ki1000108-IRC              INDIA        8+                     1       66   395
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0       17   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1        1   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0       96   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1        3   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       69   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1        6   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       39   234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     1        3   234
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              0       39   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              1       40   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    0       88   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    1       91   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    0       45   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    1       55   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     0       30   421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     1       33   421
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              0       20   308
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              1       27   308
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    0       54   308
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1       88   308
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0       37   308
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1       38   308
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     0       18   308
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     1       26   308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       19   310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       29   310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0       63   310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       87   310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0       23   310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       46   310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     0       12   310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       31   310
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less              0       16    78
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less              1        5    78
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                    0       30    78
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                    1        4    78
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                    0        9    78
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                    1        2    78
0-24 months   ki1148112-LCNI-5           MALAWI       8+                     0       10    78
0-24 months   ki1148112-LCNI-5           MALAWI       8+                     1        2    78
0-6 months    ki1000108-IRC              INDIA        3 or less              0       12   240
0-6 months    ki1000108-IRC              INDIA        3 or less              1       26   240
0-6 months    ki1000108-IRC              INDIA        4-5                    0       31   240
0-6 months    ki1000108-IRC              INDIA        4-5                    1       50   240
0-6 months    ki1000108-IRC              INDIA        6-7                    0       24   240
0-6 months    ki1000108-IRC              INDIA        6-7                    1       41   240
0-6 months    ki1000108-IRC              INDIA        8+                     0       20   240
0-6 months    ki1000108-IRC              INDIA        8+                     1       36   240
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0        3    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1        0    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0       31    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1        0    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       27    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1        0    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       17    78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                     1        0    78
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less              0       14   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less              1       34   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                    0       27   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                    1       61   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                    0       13   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                    1       40   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                     0       10   223
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                     1       24   223
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              0        9   185
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              1       24   185
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    0       17   185
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    1       73   185
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    0        8   185
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    1       31   185
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     0        6   185
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     1       17   185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0        3   197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       27   197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0       11   197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       81   197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0        5   197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       41   197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     0        2   197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       27   197
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less              0        0     4
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less              1        0     4
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                    0        2     4
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                    1        0     4
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                    0        2     4
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                    1        0     4
0-6 months    ki1148112-LCNI-5           MALAWI       8+                     0        0     4
0-6 months    ki1148112-LCNI-5           MALAWI       8+                     1        0     4
6-24 months   ki1000108-IRC              INDIA        3 or less              0        5   155
6-24 months   ki1000108-IRC              INDIA        3 or less              1        6   155
6-24 months   ki1000108-IRC              INDIA        4-5                    0       30   155
6-24 months   ki1000108-IRC              INDIA        4-5                    1       25   155
6-24 months   ki1000108-IRC              INDIA        6-7                    0       23   155
6-24 months   ki1000108-IRC              INDIA        6-7                    1       19   155
6-24 months   ki1000108-IRC              INDIA        8+                     0       17   155
6-24 months   ki1000108-IRC              INDIA        8+                     1       30   155
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0       14   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1        1   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0       65   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1        3   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       42   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1        6   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       22   156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     1        3   156
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              0       25   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              1        6   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    0       61   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    1       30   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    0       32   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    1       15   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     0       20   198
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     1        9   198
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              0       11   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              1        3   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    0       37   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1       15   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0       29   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1        7   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     0       12   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     1        9   123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       16   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1        2   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0       52   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1        6   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0       18   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1        5   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     0       10   113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     1        4   113
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less              0       16    74
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less              1        5    74
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                    0       28    74
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                    1        4    74
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                    0        7    74
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                    1        2    74
6-24 months   ki1148112-LCNI-5           MALAWI       8+                     0       10    74
6-24 months   ki1148112-LCNI-5           MALAWI       8+                     1        2    74


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/e69d59ba-bc31-4f2c-a5f6-61ccd764811d/41e74a5d-1ba6-42a2-aa40-34b87349686c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e69d59ba-bc31-4f2c-a5f6-61ccd764811d/41e74a5d-1ba6-42a2-aa40-34b87349686c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e69d59ba-bc31-4f2c-a5f6-61ccd764811d/41e74a5d-1ba6-42a2-aa40-34b87349686c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e69d59ba-bc31-4f2c-a5f6-61ccd764811d/41e74a5d-1ba6-42a2-aa40-34b87349686c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                0.6669017   0.5059235   0.8278799
0-24 months   ki1000108-IRC           INDIA        4-5                  NA                0.5598470   0.4662356   0.6534583
0-24 months   ki1000108-IRC           INDIA        6-7                  NA                0.5665134   0.4724939   0.6605329
0-24 months   ki1000108-IRC           INDIA        8+                   NA                0.6518774   0.5484329   0.7553219
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.5098698   0.3899196   0.6298200
0-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.5105930   0.4308535   0.5903325
0-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.5489887   0.4467726   0.6512048
0-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.5247110   0.3986412   0.6507808
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.5971628   0.4286702   0.7656555
0-24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.6242340   0.5449406   0.7035275
0-24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.5006513   0.3878133   0.6134893
0-24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.5805278   0.4145727   0.7464829
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.6166789   0.4672465   0.7661113
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.5730392   0.4952286   0.6508498
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.6661438   0.5502389   0.7820486
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.7187492   0.5803294   0.8571690
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                0.6696533   0.5243189   0.8149877
0-6 months    ki1000108-IRC           INDIA        4-5                  NA                0.6137130   0.5024445   0.7249815
0-6 months    ki1000108-IRC           INDIA        6-7                  NA                0.6266051   0.5050661   0.7481441
0-6 months    ki1000108-IRC           INDIA        8+                   NA                0.6389249   0.5062273   0.7716225
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.6940734   0.5499611   0.8381857
0-6 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.7228417   0.6297418   0.8159417
0-6 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.7519991   0.6302470   0.8737512
0-6 months    ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.6827441   0.5142358   0.8512523
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.7272727   0.5715327   0.8830128
0-6 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.8111111   0.7338113   0.8884109
0-6 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.7948718   0.6711274   0.9186162
0-6 months    ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.7391304   0.5552004   0.9230605
6-24 months   ki1000108-IRC           INDIA        3 or less            NA                0.5454545   0.2197802   0.8711289
6-24 months   ki1000108-IRC           INDIA        4-5                  NA                0.4545455   0.3122734   0.5968175
6-24 months   ki1000108-IRC           INDIA        6-7                  NA                0.4523810   0.3012030   0.6035589
6-24 months   ki1000108-IRC           INDIA        8+                   NA                0.6382979   0.4831935   0.7934023
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.1935484   0.0330016   0.3540952
6-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.3296703   0.2363549   0.4229858
6-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.3191489   0.1718814   0.4664164
6-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.3103448   0.1515470   0.4691427


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-6 months    ki1000108-IRC           INDIA        NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
6-24 months   ki1000108-IRC           INDIA        NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3030303   0.2377927   0.3682679


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC           INDIA        4-5                  3 or less         0.8394745   0.6253930   1.126839
0-24 months   ki1000108-IRC           INDIA        6-7                  3 or less         0.8494706   0.6333747   1.139295
0-24 months   ki1000108-IRC           INDIA        8+                   3 or less         0.9774716   0.7315224   1.306113
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.0014184   0.7549327   1.328382
0-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.0767232   0.7974556   1.453790
0-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         1.0291077   0.7351624   1.440583
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.0453330   0.7672022   1.424294
0-24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         0.8383832   0.5840392   1.203492
0-24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         0.9721432   0.6502398   1.453406
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         0.9292343   0.7037274   1.227004
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         1.0802117   0.8017376   1.455410
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         1.1655161   0.8551168   1.588587
0-6 months    ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC           INDIA        4-5                  3 or less         0.9164638   0.6905025   1.216369
0-6 months    ki1000108-IRC           INDIA        6-7                  3 or less         0.9357156   0.6990289   1.252543
0-6 months    ki1000108-IRC           INDIA        8+                   3 or less         0.9541129   0.7062112   1.289036
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.0414486   0.8151425   1.330583
0-6 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.0834576   0.8315901   1.411609
0-6 months    ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.9836770   0.7115437   1.359889
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.1152778   0.8822429   1.409866
0-6 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         1.0929487   0.8387260   1.424228
0-6 months    ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.0163043   0.7318877   1.411247
6-24 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC           INDIA        4-5                  3 or less         0.8333333   0.4246670   1.635268
6-24 months   ki1000108-IRC           INDIA        6-7                  3 or less         0.8293651   0.4183925   1.644022
6-24 months   ki1000108-IRC           INDIA        8+                   3 or less         1.1702128   0.6142262   2.229468
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.7032967   0.7092180   4.090730
6-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.6489362   0.6381154   4.260970
6-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         1.6034483   0.6051792   4.248405


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.0770283   -0.2268784   0.0728218
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0103202   -0.0974997   0.1181400
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.0159940   -0.1694402   0.1374522
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                 0.0059017   -0.1305119   0.1423154
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                -0.0321533   -0.1685752   0.1042686
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0189311   -0.1107129   0.1485751
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0565111   -0.0814157   0.1944378
6-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.0293255   -0.3424212   0.2837702
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.1094819   -0.0388530   0.2578168


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.1305844   -0.4150734   0.0967104
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0198393   -0.2110314   0.2066968
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.0275204   -0.3282663   0.2051306
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                 0.0094795   -0.2358122   0.2060841
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                -0.0504366   -0.2883468   0.1435404
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0265511   -0.1734575   0.1924695
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0721003   -0.1224963   0.2329616
6-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.0568182   -0.8760558   0.4046741
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.3612903   -0.3836061   0.7051545
