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

**Outcome Variable:** wasted

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

agecat      studyid                    country      nhh          wasted   n_cell     n
----------  -------------------------  -----------  ----------  -------  -------  ----
Birth       ki1000108-IRC              INDIA        3 or less         0       35   343
Birth       ki1000108-IRC              INDIA        3 or less         1       17   343
Birth       ki1000108-IRC              INDIA        4-5               0       99   343
Birth       ki1000108-IRC              INDIA        4-5               1       32   343
Birth       ki1000108-IRC              INDIA        6-7               0       68   343
Birth       ki1000108-IRC              INDIA        6-7               1       16   343
Birth       ki1000108-IRC              INDIA        8+                0       49   343
Birth       ki1000108-IRC              INDIA        8+                1       27   343
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less         0       63   575
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less         1       41   575
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5               0      175   575
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5               1       69   575
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7               0       95   575
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7               1       35   575
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                0       74   575
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                1       23   575
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less         0       81   532
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less         1       22   532
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5               0      189   532
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5               1       60   532
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7               0       92   532
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7               1       22   532
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                0       53   532
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                1       13   532
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less         0       76   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less         1       27   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5               0      236   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5               1       82   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7               0      131   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7               1       36   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                0       92   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                1       27   707
6 months    ki1000108-IRC              INDIA        3 or less         0       50   408
6 months    ki1000108-IRC              INDIA        3 or less         1        7   408
6 months    ki1000108-IRC              INDIA        4-5               0      140   408
6 months    ki1000108-IRC              INDIA        4-5               1       17   408
6 months    ki1000108-IRC              INDIA        6-7               0       92   408
6 months    ki1000108-IRC              INDIA        6-7               1       15   408
6 months    ki1000108-IRC              INDIA        8+                0       72   408
6 months    ki1000108-IRC              INDIA        8+                1       15   408
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less         0       31   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less         1        2   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5               0      140   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5               1       26   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7               0       86   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7               1       29   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                0       54   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                1       12   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less         0       89   537
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less         1        6   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5               0      208   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5               1       19   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7               0      121   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7               1        7   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                0       84   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                1        3   537
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less         0      100   603
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less         1        5   603
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5               0      281   603
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5               1        8   603
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7               0      122   603
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7               1        8   603
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                0       75   603
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                1        4   603
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less         0      102   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less         1        2   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5               0      314   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5               1       12   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7               0      165   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7               1        5   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                0      113   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                1        2   715
6 months    ki1148112-LCNI-5           MALAWI       3 or less         0      221   816
6 months    ki1148112-LCNI-5           MALAWI       3 or less         1        3   816
6 months    ki1148112-LCNI-5           MALAWI       4-5               0      336   816
6 months    ki1148112-LCNI-5           MALAWI       4-5               1        4   816
6 months    ki1148112-LCNI-5           MALAWI       6-7               0      178   816
6 months    ki1148112-LCNI-5           MALAWI       6-7               1        4   816
6 months    ki1148112-LCNI-5           MALAWI       8+                0       67   816
6 months    ki1148112-LCNI-5           MALAWI       8+                1        3   816
24 months   ki1000108-IRC              INDIA        3 or less         0       55   409
24 months   ki1000108-IRC              INDIA        3 or less         1        3   409
24 months   ki1000108-IRC              INDIA        4-5               0      143   409
24 months   ki1000108-IRC              INDIA        4-5               1       15   409
24 months   ki1000108-IRC              INDIA        6-7               0      100   409
24 months   ki1000108-IRC              INDIA        6-7               1        7   409
24 months   ki1000108-IRC              INDIA        8+                0       80   409
24 months   ki1000108-IRC              INDIA        8+                1        6   409
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less         0       65   428
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less         1        9   428
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5               0      164   428
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5               1       20   428
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7               0       87   428
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7               1       13   428
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                0       59   428
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                1       11   428
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less         0       97   579
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less         1        9   579
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5               0      251   579
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5               1       22   579
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7               0      100   579
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7               1       17   579
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                0       69   579
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                1       14   579
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less         0       64   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less         1        5   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5               0      203   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5               1       29   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7               0      123   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7               1        7   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                0       79   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                1        4   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less         0      150   558
24 months   ki1148112-LCNI-5           MALAWI       3 or less         1        7   558
24 months   ki1148112-LCNI-5           MALAWI       4-5               0      228   558
24 months   ki1148112-LCNI-5           MALAWI       4-5               1        2   558
24 months   ki1148112-LCNI-5           MALAWI       6-7               0      123   558
24 months   ki1148112-LCNI-5           MALAWI       6-7               1        0   558
24 months   ki1148112-LCNI-5           MALAWI       8+                0       47   558
24 months   ki1148112-LCNI-5           MALAWI       8+                1        1   558


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/f7fa6eda-3303-404e-930c-c0f9d4668b08/1c07eec6-157e-4e2a-bd05-b25dbb0ed1ef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f7fa6eda-3303-404e-930c-c0f9d4668b08/1c07eec6-157e-4e2a-bd05-b25dbb0ed1ef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f7fa6eda-3303-404e-930c-c0f9d4668b08/1c07eec6-157e-4e2a-bd05-b25dbb0ed1ef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f7fa6eda-3303-404e-930c-c0f9d4668b08/1c07eec6-157e-4e2a-bd05-b25dbb0ed1ef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        3 or less            NA                0.3277882   0.1952504   0.4603260
Birth       ki1000108-IRC           INDIA        4-5                  NA                0.2418717   0.1683961   0.3153473
Birth       ki1000108-IRC           INDIA        6-7                  NA                0.1906867   0.1052792   0.2760941
Birth       ki1000108-IRC           INDIA        8+                   NA                0.3705188   0.2592865   0.4817511
Birth       ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.3933851   0.2979317   0.4888386
Birth       ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.2790097   0.2223477   0.3356717
Birth       ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.2733966   0.1971075   0.3496857
Birth       ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.2423784   0.1567301   0.3280267
Birth       ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.1993668   0.1243869   0.2743467
Birth       ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.2394336   0.1858652   0.2930019
Birth       ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.1859834   0.1138759   0.2580909
Birth       ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.2106686   0.1122157   0.3091215
Birth       ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.2551881   0.1694717   0.3409045
Birth       ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.2639773   0.2158477   0.3121070
Birth       ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.2146496   0.1495286   0.2797705
Birth       ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.2257884   0.1485576   0.3030191
6 months    ki1000108-IRC           INDIA        3 or less            NA                0.1228070   0.0374965   0.2081176
6 months    ki1000108-IRC           INDIA        4-5                  NA                0.1082803   0.0596149   0.1569456
6 months    ki1000108-IRC           INDIA        6-7                  NA                0.1401869   0.0743234   0.2060504
6 months    ki1000108-IRC           INDIA        8+                   NA                0.1724138   0.0929418   0.2518858
24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.1216216   0.0470650   0.1961783
24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.1086957   0.0636694   0.1537219
24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.1300000   0.0640086   0.1959914
24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.1571429   0.0717874   0.2424983
24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.0849057   0.0317962   0.1380151
24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.0805861   0.0482693   0.1129028
24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.1452991   0.0813891   0.2092092
24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.1686747   0.0880450   0.2493044


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
6 months    ki1000108-IRC           INDIA        NA                   NA                0.1323529   0.0994307   0.1652752
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC           INDIA        4-5                  3 or less         0.7378902   0.4452261   1.2229336
Birth       ki1000108-IRC           INDIA        6-7                  3 or less         0.5817374   0.3177037   1.0652011
Birth       ki1000108-IRC           INDIA        8+                   3 or less         1.1303604   0.6827964   1.8712967
Birth       ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         0.7092533   0.5169579   0.9730776
Birth       ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         0.6949846   0.4803402   1.0055449
Birth       ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.6161351   0.4014480   0.9456331
Birth       ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         1.2009702   0.7756409   1.8595323
Birth       ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         0.9328705   0.5436770   1.6006700
Birth       ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.0566885   0.5804809   1.9235613
Birth       ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         1.0344423   0.7055929   1.5165556
Birth       ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         0.8411427   0.5348778   1.3227713
Birth       ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         0.8847920   0.5474929   1.4298940
6 months    ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC           INDIA        4-5                  3 or less         0.8817106   0.3854765   2.0167604
6 months    ki1000108-IRC           INDIA        6-7                  3 or less         1.1415220   0.4934812   2.6405719
6 months    ki1000108-IRC           INDIA        8+                   3 or less         1.4039409   0.6099352   3.2315727
24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         0.8937198   0.4264662   1.8729153
24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.0688889   0.4822491   2.3691564
24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         1.2920635   0.5696110   2.9308213
24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         0.9491249   0.4514740   1.9953266
24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         1.7113010   0.7965823   3.6763953
24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.9866131   0.9040947   4.3652855


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC           INDIA        3 or less            NA                -0.0595666   -0.1806746    0.0615413
Birth       ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.1012112   -0.1862293   -0.0161932
Birth       ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0205580   -0.0473011    0.0884171
Birth       ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0119066   -0.0910416    0.0672284
6 months    ki1000108-IRC           INDIA        3 or less            NA                 0.0095459   -0.0700043    0.0890961
24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0022102   -0.0657061    0.0701264
24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0221755   -0.0270517    0.0714027


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC           INDIA        3 or less            NA                -0.2220800   -0.7672964    0.1549355
Birth       ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.3464075   -0.6710573   -0.0848300
Birth       ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.0934774   -0.2736166    0.3547641
Birth       ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0489416   -0.4302438    0.2307056
6 months    ki1000108-IRC           INDIA        3 or less            NA                 0.0721248   -0.7730496    0.5144228
24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0178480   -0.7166926    0.4380925
24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                 0.2070907   -0.4121232    0.5547802
