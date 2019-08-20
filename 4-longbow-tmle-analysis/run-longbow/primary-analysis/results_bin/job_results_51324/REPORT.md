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
* impsan
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
* delta_impsan
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              0       20   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              1       27   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    0       54   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1       87   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0       36   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1       39   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     0       18   307
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     1       26   307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       19   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       29   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0       63   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       88   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0       23   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       46   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     0       12   311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       31   311
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              0        9   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              1       24   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    0       17   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    1       73   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    0        7   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    1       31   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     0        6   184
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     1       17   184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0        3   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       27   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0       11   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       82   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0        5   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       41   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     0        2   198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       27   198
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1       14   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0       29   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1        8   123
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
![](/tmp/579aa729-074a-4291-824e-0259402c87b0/3c7cada0-ad9e-4278-b4a3-abf57b527f62/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/579aa729-074a-4291-824e-0259402c87b0/3c7cada0-ad9e-4278-b4a3-abf57b527f62/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/579aa729-074a-4291-824e-0259402c87b0/3c7cada0-ad9e-4278-b4a3-abf57b527f62/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/579aa729-074a-4291-824e-0259402c87b0/3c7cada0-ad9e-4278-b4a3-abf57b527f62/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                0.6507943   0.4922611   0.8093275
0-24 months   ki1000108-IRC           INDIA        4-5                  NA                0.5498028   0.4572424   0.6423632
0-24 months   ki1000108-IRC           INDIA        6-7                  NA                0.5573562   0.4629420   0.6517703
0-24 months   ki1000108-IRC           INDIA        8+                   NA                0.6385876   0.5372267   0.7399485
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.5150220   0.3941970   0.6358469
0-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.5118897   0.4323949   0.5913845
0-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.5556430   0.4547801   0.6565058
0-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.5320205   0.4072023   0.6568386
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.5990257   0.4348719   0.7631795
0-24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.6259161   0.5458151   0.7060171
0-24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.5151414   0.4049683   0.6253146
0-24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.5903555   0.4270474   0.7536636
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.6324256   0.4804503   0.7844008
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.5795931   0.5022494   0.6569368
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.6809444   0.5651821   0.7967068
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.7374575   0.5961333   0.8787817
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                0.6849028   0.5421600   0.8276457
0-6 months    ki1000108-IRC           INDIA        4-5                  NA                0.6148585   0.5029759   0.7267412
0-6 months    ki1000108-IRC           INDIA        6-7                  NA                0.6310148   0.5080900   0.7539395
0-6 months    ki1000108-IRC           INDIA        8+                   NA                0.6439607   0.5115745   0.7763468
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.7111482   0.5781556   0.8441407
0-6 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.7074945   0.6106276   0.8043614
0-6 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.7403076   0.6133526   0.8672626
0-6 months    ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.6911899   0.5319115   0.8504684
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.7272727   0.5723745   0.8821709
0-6 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.8111111   0.7342291   0.8879931
0-6 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.8157895   0.6901446   0.9414344
0-6 months    ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.7391304   0.5561946   0.9220662
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
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-6 months    ki1000108-IRC           INDIA        NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
6-24 months   ki1000108-IRC           INDIA        NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3030303   0.2377927   0.3682679


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC           INDIA        4-5                  3 or less         0.8448181   0.6281687   1.136188
0-24 months   ki1000108-IRC           INDIA        6-7                  3 or less         0.8564245   0.6364726   1.152387
0-24 months   ki1000108-IRC           INDIA        8+                   3 or less         0.9812434   0.7336378   1.312417
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         0.9939182   0.7501834   1.316842
0-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.0788724   0.8019787   1.451367
0-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         1.0330054   0.7408902   1.440295
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.0448902   0.7721056   1.414049
0-24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         0.8599655   0.6067098   1.218936
0-24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         0.9855262   0.6683140   1.453302
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         0.9164605   0.6955420   1.207547
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         1.0767187   0.8024261   1.444772
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         1.1660779   0.8573901   1.585903
0-6 months    ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC           INDIA        4-5                  3 or less         0.8977311   0.6807024   1.183955
0-6 months    ki1000108-IRC           INDIA        6-7                  3 or less         0.9213201   0.6925977   1.225576
0-6 months    ki1000108-IRC           INDIA        8+                   3 or less         0.9402220   0.7015383   1.260113
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         0.9948623   0.7889967   1.254442
0-6 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.0410034   0.8074016   1.342192
0-6 months    ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.9719352   0.7220479   1.308304
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.1152778   0.8833614   1.408081
0-6 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         1.1217105   0.8624459   1.458914
0-6 months    ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.0163043   0.7331876   1.408745
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
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.0609209   -0.2080370   0.0861953
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0051681   -0.1033951   0.1137312
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.0159638   -0.1653493   0.1334217
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0086314   -0.1474208   0.1301580
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                -0.0474028   -0.1812583   0.0864526
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0018563   -0.1168773   0.1205900
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0607708   -0.0763575   0.1978990
6-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.0293255   -0.3424212   0.2837702
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.1094819   -0.0388530   0.2578168


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.1032778   -0.3827572   0.1197139
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0099350   -0.2224209   0.1981250
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.0273793   -0.3180987   0.1992192
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0138369   -0.2625434   0.1858773
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                -0.0743574   -0.3071586   0.1169826
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0026035   -0.1786322   0.1559711
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0771160   -0.1152573   0.2363063
6-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.0568182   -0.8760558   0.4046741
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.3612903   -0.3836061   0.7051545
