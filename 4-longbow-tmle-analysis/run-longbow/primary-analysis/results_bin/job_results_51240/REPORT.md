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
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less         0        5    28
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less         1        2    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5               0       10    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5               1        1    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7               0        5    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7               1        2    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                0        1    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                1        2    28
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less         0        6    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less         1        2    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5               0        7    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5               1        0    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7               0        4    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7               1        1    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                0        3    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                1        0    23
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
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less         0       89   536
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less         1        6   536
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5               0      208   536
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5               1       19   536
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7               0      121   536
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7               1        6   536
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                0       84   536
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                1        3   536
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less         0       97   582
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less         1        5   582
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5               0      269   582
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5               1        8   582
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7               0      119   582
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7               1        7   582
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                0       73   582
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                1        4   582
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
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less         0       96   578
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less         1        9   578
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5               0      249   578
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5               1       24   578
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7               0       99   578
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7               1       18   578
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                0       69   578
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                1       14   578
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/3448dcc6-76c6-4191-811b-e56958b2a3ce/5d072b74-70ac-4da9-917c-7158c2e47e2a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3448dcc6-76c6-4191-811b-e56958b2a3ce/5d072b74-70ac-4da9-917c-7158c2e47e2a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3448dcc6-76c6-4191-811b-e56958b2a3ce/5d072b74-70ac-4da9-917c-7158c2e47e2a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3448dcc6-76c6-4191-811b-e56958b2a3ce/5d072b74-70ac-4da9-917c-7158c2e47e2a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC         INDIA        3 or less            NA                0.3357568   0.2073368   0.4641768
Birth       ki1000108-IRC         INDIA        4-5                  NA                0.2412197   0.1678979   0.3145415
Birth       ki1000108-IRC         INDIA        6-7                  NA                0.1912851   0.1068488   0.2757213
Birth       ki1000108-IRC         INDIA        8+                   NA                0.3723763   0.2634279   0.4813247
6 months    ki1000108-IRC         INDIA        3 or less            NA                0.1228070   0.0374965   0.2081176
6 months    ki1000108-IRC         INDIA        4-5                  NA                0.1082803   0.0596149   0.1569456
6 months    ki1000108-IRC         INDIA        6-7                  NA                0.1401869   0.0743234   0.2060504
6 months    ki1000108-IRC         INDIA        8+                   NA                0.1724138   0.0929418   0.2518858
24 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                0.1216216   0.0470650   0.1961783
24 months   ki1017093-NIH-Birth   BANGLADESH   4-5                  NA                0.1086957   0.0636694   0.1537219
24 months   ki1017093-NIH-Birth   BANGLADESH   6-7                  NA                0.1300000   0.0640086   0.1959914
24 months   ki1017093-NIH-Birth   BANGLADESH   8+                   NA                0.1571429   0.0717874   0.2424983
24 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            NA                0.0857143   0.0321226   0.1393059
24 months   ki1017093b-PROVIDE    BANGLADESH   4-5                  NA                0.0879121   0.0542930   0.1215311
24 months   ki1017093b-PROVIDE    BANGLADESH   6-7                  NA                0.1538462   0.0884128   0.2192795
24 months   ki1017093b-PROVIDE    BANGLADESH   8+                   NA                0.1686747   0.0880449   0.2493045


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC         INDIA        NA                   NA                0.2682216   0.2212677   0.3151755
6 months    ki1000108-IRC         INDIA        NA                   NA                0.1323529   0.0994307   0.1652752
24 months   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1124567   0.0866788   0.1382347


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC         INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC         INDIA        4-5                  3 or less         0.7184358   0.4407178   1.171158
Birth       ki1000108-IRC         INDIA        6-7                  3 or less         0.5697131   0.3173075   1.022898
Birth       ki1000108-IRC         INDIA        8+                   3 or less         1.1090656   0.6855683   1.794171
6 months    ki1000108-IRC         INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC         INDIA        4-5                  3 or less         0.8817106   0.3854765   2.016760
6 months    ki1000108-IRC         INDIA        6-7                  3 or less         1.1415220   0.4934812   2.640572
6 months    ki1000108-IRC         INDIA        8+                   3 or less         1.4039409   0.6099352   3.231573
24 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth   BANGLADESH   4-5                  3 or less         0.8937198   0.4264662   1.872915
24 months   ki1017093-NIH-Birth   BANGLADESH   6-7                  3 or less         1.0688889   0.4822491   2.369156
24 months   ki1017093-NIH-Birth   BANGLADESH   8+                   3 or less         1.2920635   0.5696110   2.930821
24 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   4-5                  3 or less         1.0256410   0.4928277   2.134498
24 months   ki1017093b-PROVIDE    BANGLADESH   6-7                  3 or less         1.7948718   0.8426106   3.823314
24 months   ki1017093b-PROVIDE    BANGLADESH   8+                   3 or less         1.9678715   0.8957612   4.323159


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC         INDIA        3 or less            NA                -0.0675352   -0.1849219   0.0498514
6 months    ki1000108-IRC         INDIA        3 or less            NA                 0.0095459   -0.0700043   0.0890961
24 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                 0.0022102   -0.0657061   0.0701264
24 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            NA                 0.0267425   -0.0231883   0.0766732


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC         INDIA        3 or less            NA                -0.2517889   -0.7759655   0.1176768
6 months    ki1000108-IRC         INDIA        3 or less            NA                 0.0721248   -0.7730496   0.5144228
24 months   ki1017093-NIH-Birth   BANGLADESH   3 or less            NA                 0.0178480   -0.7166926   0.4380925
24 months   ki1017093b-PROVIDE    BANGLADESH   3 or less            NA                 0.2378022   -0.3599166   0.5728080
