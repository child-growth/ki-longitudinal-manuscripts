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

**Outcome Variable:** sstunted

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

agecat      studyid                    country      nhh          sstunted   n_cell     n
----------  -------------------------  -----------  ----------  ---------  -------  ----
Birth       ki1000108-IRC              INDIA        3 or less           0       53   388
Birth       ki1000108-IRC              INDIA        3 or less           1        1   388
Birth       ki1000108-IRC              INDIA        4-5                 0      142   388
Birth       ki1000108-IRC              INDIA        4-5                 1        8   388
Birth       ki1000108-IRC              INDIA        6-7                 0       97   388
Birth       ki1000108-IRC              INDIA        6-7                 1        6   388
Birth       ki1000108-IRC              INDIA        8+                  0       80   388
Birth       ki1000108-IRC              INDIA        8+                  1        1   388
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less           0        7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less           1        0    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                 0       11    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                 1        0    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                 0        7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                 1        0    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                  0        3    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                  1        0    28
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less           0        8    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less           1        0    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                 0        9    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                 1        0    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                 0        6    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                 1        1    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                  0        3    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                  1        0    27
6 months    ki1000108-IRC              INDIA        3 or less           0       55   407
6 months    ki1000108-IRC              INDIA        3 or less           1        3   407
6 months    ki1000108-IRC              INDIA        4-5                 0      145   407
6 months    ki1000108-IRC              INDIA        4-5                 1       13   407
6 months    ki1000108-IRC              INDIA        6-7                 0       98   407
6 months    ki1000108-IRC              INDIA        6-7                 1        8   407
6 months    ki1000108-IRC              INDIA        8+                  0       80   407
6 months    ki1000108-IRC              INDIA        8+                  1        5   407
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less           0       31   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less           1        2   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                 0      145   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                 1       21   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                 0       94   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                 1       21   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                  0       56   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                  1       10   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less           0       89   537
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less           1        6   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                 0      211   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                 1       16   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                 0      119   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                 1        9   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                  0       83   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                  1        4   537
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less           0       99   583
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less           1        3   583
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                 0      268   583
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                 1        9   583
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                 0      125   583
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                 1        1   583
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                  0       77   583
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                  1        1   583
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less           0       99   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less           1        5   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                 0      319   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                 1        7   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                 0      163   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                 1        7   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                  0      111   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                  1        4   715
6 months    ki1148112-LCNI-5           MALAWI       3 or less           0      206   816
6 months    ki1148112-LCNI-5           MALAWI       3 or less           1       18   816
6 months    ki1148112-LCNI-5           MALAWI       4-5                 0      313   816
6 months    ki1148112-LCNI-5           MALAWI       4-5                 1       27   816
6 months    ki1148112-LCNI-5           MALAWI       6-7                 0      169   816
6 months    ki1148112-LCNI-5           MALAWI       6-7                 1       13   816
6 months    ki1148112-LCNI-5           MALAWI       8+                  0       63   816
6 months    ki1148112-LCNI-5           MALAWI       8+                  1        7   816
24 months   ki1000108-IRC              INDIA        3 or less           0       54   409
24 months   ki1000108-IRC              INDIA        3 or less           1        4   409
24 months   ki1000108-IRC              INDIA        4-5                 0      142   409
24 months   ki1000108-IRC              INDIA        4-5                 1       16   409
24 months   ki1000108-IRC              INDIA        6-7                 0       94   409
24 months   ki1000108-IRC              INDIA        6-7                 1       13   409
24 months   ki1000108-IRC              INDIA        8+                  0       78   409
24 months   ki1000108-IRC              INDIA        8+                  1        8   409
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less           0       64   429
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less           1       11   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                 0      140   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                 1       44   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                 0       75   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                 1       25   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                  0       57   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                  1       13   429
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less           0       97   577
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less           1        8   577
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                 0      249   577
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                 1       24   577
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                 0      108   577
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                 1        9   577
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                  0       74   577
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                  1        8   577
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less           0       63   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less           1        6   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                 0      216   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                 1       16   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                 0      121   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                 1        9   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                  0       79   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                  1        4   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less           0      143   574
24 months   ki1148112-LCNI-5           MALAWI       3 or less           1       16   574
24 months   ki1148112-LCNI-5           MALAWI       4-5                 0      207   574
24 months   ki1148112-LCNI-5           MALAWI       4-5                 1       30   574
24 months   ki1148112-LCNI-5           MALAWI       6-7                 0      115   574
24 months   ki1148112-LCNI-5           MALAWI       6-7                 1       14   574
24 months   ki1148112-LCNI-5           MALAWI       8+                  0       43   574
24 months   ki1148112-LCNI-5           MALAWI       8+                  1        6   574


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

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
![](/tmp/ad02bb68-a10e-4cda-bfae-c94508fd0cac/a87bdfc3-d3c0-4747-b75c-b9f918f3164c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ad02bb68-a10e-4cda-bfae-c94508fd0cac/a87bdfc3-d3c0-4747-b75c-b9f918f3164c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ad02bb68-a10e-4cda-bfae-c94508fd0cac/a87bdfc3-d3c0-4747-b75c-b9f918f3164c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ad02bb68-a10e-4cda-bfae-c94508fd0cac/a87bdfc3-d3c0-4747-b75c-b9f918f3164c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1148112-LCNI-5      MALAWI       3 or less            NA                0.0803571   0.0447356   0.1159786
6 months    ki1148112-LCNI-5      MALAWI       4-5                  NA                0.0794118   0.0506543   0.1081692
6 months    ki1148112-LCNI-5      MALAWI       6-7                  NA                0.0714286   0.0339897   0.1088674
6 months    ki1148112-LCNI-5      MALAWI       8+                   NA                0.1000000   0.0296787   0.1703213
24 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                0.1842453   0.0825672   0.2859233
24 months   ki1017093-NIH-Birth   BANGLADESH   4-5                  NA                0.2295876   0.1663783   0.2927969
24 months   ki1017093-NIH-Birth   BANGLADESH   6-7                  NA                0.2464511   0.1558076   0.3370946
24 months   ki1017093-NIH-Birth   BANGLADESH   8+                   NA                0.1843878   0.0770672   0.2917084
24 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            NA                0.0761905   0.0254012   0.1269797
24 months   ki1017093b-PROVIDE    BANGLADESH   4-5                  NA                0.0879121   0.0542930   0.1215312
24 months   ki1017093b-PROVIDE    BANGLADESH   6-7                  NA                0.0769231   0.0285973   0.1252489
24 months   ki1017093b-PROVIDE    BANGLADESH   8+                   NA                0.0975610   0.0332826   0.1618393
24 months   ki1148112-LCNI-5      MALAWI       3 or less            NA                0.1006289   0.0538275   0.1474304
24 months   ki1148112-LCNI-5      MALAWI       4-5                  NA                0.1265823   0.0842131   0.1689515
24 months   ki1148112-LCNI-5      MALAWI       6-7                  NA                0.1085271   0.0548048   0.1622495
24 months   ki1148112-LCNI-5      MALAWI       8+                   NA                0.1224490   0.0305856   0.2143124


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.0796569   0.0610679   0.0982459
24 months   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.1149826   0.0888632   0.1411019


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
6 months    ki1148112-LCNI-5      MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5      MALAWI       4-5                  3 or less         0.9882353   0.5575312   1.751667
6 months    ki1148112-LCNI-5      MALAWI       6-7                  3 or less         0.8888889   0.4474248   1.765936
6 months    ki1148112-LCNI-5      MALAWI       8+                   3 or less         1.2444444   0.5419491   2.857541
24 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth   BANGLADESH   4-5                  3 or less         1.2460976   0.6723624   2.309408
24 months   ki1017093-NIH-Birth   BANGLADESH   6-7                  3 or less         1.3376252   0.6886713   2.598106
24 months   ki1017093-NIH-Birth   BANGLADESH   8+                   3 or less         1.0007735   0.4484885   2.233162
24 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   4-5                  3 or less         1.1538462   0.5350416   2.488332
24 months   ki1017093b-PROVIDE    BANGLADESH   6-7                  3 or less         1.0096154   0.4039656   2.523292
24 months   ki1017093b-PROVIDE    BANGLADESH   8+                   3 or less         1.2804878   0.5015670   3.269053
24 months   ki1148112-LCNI-5      MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5      MALAWI       4-5                  3 or less         1.2579114   0.7092413   2.231034
24 months   ki1148112-LCNI-5      MALAWI       6-7                  3 or less         1.0784884   0.5468044   2.127154
24 months   ki1148112-LCNI-5      MALAWI       8+                   3 or less         1.2168367   0.5033692   2.941562


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1148112-LCNI-5      MALAWI       3 or less            NA                -0.0007003   -0.0309954   0.0295949
24 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                 0.0325380   -0.0646756   0.1297515
24 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            NA                 0.0087315   -0.0377333   0.0551964
24 months   ki1148112-LCNI-5      MALAWI       3 or less            NA                 0.0143536   -0.0263786   0.0550859


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1148112-LCNI-5      MALAWI       3 or less            NA                -0.0087912   -0.4707235   0.3080551
24 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                 0.1500944   -0.4380560   0.4976973
24 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            NA                 0.1028183   -0.6498906   0.5121282
24 months   ki1148112-LCNI-5      MALAWI       3 or less            NA                 0.1248332   -0.3105309   0.4155675
