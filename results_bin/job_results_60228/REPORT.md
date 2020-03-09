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

**Outcome Variable:** ever_sstunted

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
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid         country      nhh          ever_sstunted   n_cell     n
------------  --------------  -----------  ----------  --------------  -------  ----
0-24 months   IRC             INDIA        3 or less                0       47   410
0-24 months   IRC             INDIA        3 or less                1       11   410
0-24 months   IRC             INDIA        4-5                      0      114   410
0-24 months   IRC             INDIA        4-5                      1       44   410
0-24 months   IRC             INDIA        6-7                      0       80   410
0-24 months   IRC             INDIA        6-7                      1       27   410
0-24 months   IRC             INDIA        8+                       0       67   410
0-24 months   IRC             INDIA        8+                       1       20   410
0-24 months   LCNI-5          MALAWI       3 or less                0      183   817
0-24 months   LCNI-5          MALAWI       3 or less                1       42   817
0-24 months   LCNI-5          MALAWI       4-5                      0      263   817
0-24 months   LCNI-5          MALAWI       4-5                      1       77   817
0-24 months   LCNI-5          MALAWI       6-7                      0      146   817
0-24 months   LCNI-5          MALAWI       6-7                      1       36   817
0-24 months   LCNI-5          MALAWI       8+                       0       55   817
0-24 months   LCNI-5          MALAWI       8+                       1       15   817
0-24 months   NIH-Birth       BANGLADESH   3 or less                0       87   629
0-24 months   NIH-Birth       BANGLADESH   3 or less                1       30   629
0-24 months   NIH-Birth       BANGLADESH   4-5                      0      172   629
0-24 months   NIH-Birth       BANGLADESH   4-5                      1       92   629
0-24 months   NIH-Birth       BANGLADESH   6-7                      0       98   629
0-24 months   NIH-Birth       BANGLADESH   6-7                      1       44   629
0-24 months   NIH-Birth       BANGLADESH   8+                       0       76   629
0-24 months   NIH-Birth       BANGLADESH   8+                       1       30   629
0-24 months   NIH-Crypto      BANGLADESH   3 or less                0      102   758
0-24 months   NIH-Crypto      BANGLADESH   3 or less                1       12   758
0-24 months   NIH-Crypto      BANGLADESH   4-5                      0      295   758
0-24 months   NIH-Crypto      BANGLADESH   4-5                      1       47   758
0-24 months   NIH-Crypto      BANGLADESH   6-7                      0      153   758
0-24 months   NIH-Crypto      BANGLADESH   6-7                      1       25   758
0-24 months   NIH-Crypto      BANGLADESH   8+                       0      109   758
0-24 months   NIH-Crypto      BANGLADESH   8+                       1       15   758
0-24 months   PROVIDE         BANGLADESH   3 or less                0      117   700
0-24 months   PROVIDE         BANGLADESH   3 or less                1       23   700
0-24 months   PROVIDE         BANGLADESH   4-5                      0      280   700
0-24 months   PROVIDE         BANGLADESH   4-5                      1       42   700
0-24 months   PROVIDE         BANGLADESH   6-7                      0      135   700
0-24 months   PROVIDE         BANGLADESH   6-7                      1       16   700
0-24 months   PROVIDE         BANGLADESH   8+                       0       73   700
0-24 months   PROVIDE         BANGLADESH   8+                       1       14   700
0-24 months   SAS-FoodSuppl   INDIA        3 or less                0       28   418
0-24 months   SAS-FoodSuppl   INDIA        3 or less                1       10   418
0-24 months   SAS-FoodSuppl   INDIA        4-5                      0       97   418
0-24 months   SAS-FoodSuppl   INDIA        4-5                      1       86   418
0-24 months   SAS-FoodSuppl   INDIA        6-7                      0       58   418
0-24 months   SAS-FoodSuppl   INDIA        6-7                      1       69   418
0-24 months   SAS-FoodSuppl   INDIA        8+                       0       34   418
0-24 months   SAS-FoodSuppl   INDIA        8+                       1       36   418
0-6 months    IRC             INDIA        3 or less                0       51   410
0-6 months    IRC             INDIA        3 or less                1        7   410
0-6 months    IRC             INDIA        4-5                      0      127   410
0-6 months    IRC             INDIA        4-5                      1       31   410
0-6 months    IRC             INDIA        6-7                      0       91   410
0-6 months    IRC             INDIA        6-7                      1       16   410
0-6 months    IRC             INDIA        8+                       0       79   410
0-6 months    IRC             INDIA        8+                       1        8   410
0-6 months    LCNI-5          MALAWI       3 or less                0       65   269
0-6 months    LCNI-5          MALAWI       3 or less                1        5   269
0-6 months    LCNI-5          MALAWI       4-5                      0      102   269
0-6 months    LCNI-5          MALAWI       4-5                      1        9   269
0-6 months    LCNI-5          MALAWI       6-7                      0       63   269
0-6 months    LCNI-5          MALAWI       6-7                      1        4   269
0-6 months    LCNI-5          MALAWI       8+                       0       20   269
0-6 months    LCNI-5          MALAWI       8+                       1        1   269
0-6 months    NIH-Birth       BANGLADESH   3 or less                0      105   629
0-6 months    NIH-Birth       BANGLADESH   3 or less                1       12   629
0-6 months    NIH-Birth       BANGLADESH   4-5                      0      236   629
0-6 months    NIH-Birth       BANGLADESH   4-5                      1       28   629
0-6 months    NIH-Birth       BANGLADESH   6-7                      0      132   629
0-6 months    NIH-Birth       BANGLADESH   6-7                      1       10   629
0-6 months    NIH-Birth       BANGLADESH   8+                       0       97   629
0-6 months    NIH-Birth       BANGLADESH   8+                       1        9   629
0-6 months    NIH-Crypto      BANGLADESH   3 or less                0      108   758
0-6 months    NIH-Crypto      BANGLADESH   3 or less                1        6   758
0-6 months    NIH-Crypto      BANGLADESH   4-5                      0      319   758
0-6 months    NIH-Crypto      BANGLADESH   4-5                      1       23   758
0-6 months    NIH-Crypto      BANGLADESH   6-7                      0      168   758
0-6 months    NIH-Crypto      BANGLADESH   6-7                      1       10   758
0-6 months    NIH-Crypto      BANGLADESH   8+                       0      116   758
0-6 months    NIH-Crypto      BANGLADESH   8+                       1        8   758
0-6 months    PROVIDE         BANGLADESH   3 or less                0      133   700
0-6 months    PROVIDE         BANGLADESH   3 or less                1        7   700
0-6 months    PROVIDE         BANGLADESH   4-5                      0      306   700
0-6 months    PROVIDE         BANGLADESH   4-5                      1       16   700
0-6 months    PROVIDE         BANGLADESH   6-7                      0      149   700
0-6 months    PROVIDE         BANGLADESH   6-7                      1        2   700
0-6 months    PROVIDE         BANGLADESH   8+                       0       81   700
0-6 months    PROVIDE         BANGLADESH   8+                       1        6   700
0-6 months    SAS-FoodSuppl   INDIA        3 or less                0       35   416
0-6 months    SAS-FoodSuppl   INDIA        3 or less                1        3   416
0-6 months    SAS-FoodSuppl   INDIA        4-5                      0      163   416
0-6 months    SAS-FoodSuppl   INDIA        4-5                      1       19   416
0-6 months    SAS-FoodSuppl   INDIA        6-7                      0      107   416
0-6 months    SAS-FoodSuppl   INDIA        6-7                      1       19   416
0-6 months    SAS-FoodSuppl   INDIA        8+                       0       61   416
0-6 months    SAS-FoodSuppl   INDIA        8+                       1        9   416


The following strata were considered:

* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/917f1874-ffc4-4240-9b9f-4b6a379316e3/c234d3e0-f4f2-4003-95f3-7cea5a4ab4ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/917f1874-ffc4-4240-9b9f-4b6a379316e3/c234d3e0-f4f2-4003-95f3-7cea5a4ab4ca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/917f1874-ffc4-4240-9b9f-4b6a379316e3/c234d3e0-f4f2-4003-95f3-7cea5a4ab4ca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/917f1874-ffc4-4240-9b9f-4b6a379316e3/c234d3e0-f4f2-4003-95f3-7cea5a4ab4ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                0.1965086   0.0937062   0.2993110
0-24 months   IRC             INDIA        4-5                  NA                0.2760657   0.2059227   0.3462086
0-24 months   IRC             INDIA        6-7                  NA                0.2514798   0.1684901   0.3344695
0-24 months   IRC             INDIA        8+                   NA                0.2315121   0.1415651   0.3214592
0-24 months   LCNI-5          MALAWI       3 or less            NA                0.2009122   0.1451496   0.2566749
0-24 months   LCNI-5          MALAWI       4-5                  NA                0.2234544   0.1764771   0.2704317
0-24 months   LCNI-5          MALAWI       6-7                  NA                0.1868550   0.1266013   0.2471088
0-24 months   LCNI-5          MALAWI       8+                   NA                0.2140832   0.1113393   0.3168271
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.2901794   0.2125501   0.3678087
0-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.3421603   0.2833505   0.4009702
0-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.3209745   0.2419322   0.4000169
0-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.2917922   0.1858380   0.3977465
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.1029617   0.0460810   0.1598424
0-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1348777   0.0985695   0.1711858
0-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.1421600   0.0909459   0.1933742
0-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.1335791   0.0763768   0.1907814
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.1685151   0.1060873   0.2309428
0-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.1288977   0.0923300   0.1654655
0-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.1099745   0.0595231   0.1604260
0-24 months   PROVIDE         BANGLADESH   8+                   NA                0.1613487   0.0839810   0.2387164
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.2076089   0.0801050   0.3351128
0-24 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.4608645   0.3867085   0.5350206
0-24 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.5141314   0.4248203   0.6034424
0-24 months   SAS-FoodSuppl   INDIA        8+                   NA                0.5094730   0.3732863   0.6456597
0-6 months    IRC             INDIA        3 or less            NA                0.1206897   0.0367494   0.2046299
0-6 months    IRC             INDIA        4-5                  NA                0.1962025   0.1342049   0.2582002
0-6 months    IRC             INDIA        6-7                  NA                0.1495327   0.0818803   0.2171851
0-6 months    IRC             INDIA        8+                   NA                0.0919540   0.0311604   0.1527476
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                0.1025641   0.0475467   0.1575815
0-6 months    NIH-Birth       BANGLADESH   4-5                  NA                0.1060606   0.0688880   0.1432332
0-6 months    NIH-Birth       BANGLADESH   6-7                  NA                0.0704225   0.0283064   0.1125386
0-6 months    NIH-Birth       BANGLADESH   8+                   NA                0.0849057   0.0317999   0.1380115
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                0.0526316   0.0116145   0.0936487
0-6 months    NIH-Crypto      BANGLADESH   4-5                  NA                0.0672515   0.0406898   0.0938131
0-6 months    NIH-Crypto      BANGLADESH   6-7                  NA                0.0561798   0.0223297   0.0900298
0-6 months    NIH-Crypto      BANGLADESH   8+                   NA                0.0645161   0.0212472   0.1077851


### Parameter: E(Y)


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC             INDIA        NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   LCNI-5          MALAWI       NA                   NA                0.2080783   0.1802263   0.2359304
0-24 months   NIH-Birth       BANGLADESH   NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   PROVIDE         BANGLADESH   NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.4808612   0.4329065   0.5288160
0-6 months    IRC             INDIA        NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    NIH-Birth       BANGLADESH   NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    NIH-Crypto      BANGLADESH   NA                   NA                0.0620053   0.0448256   0.0791849


### Parameter: RR


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   IRC             INDIA        4-5                  3 or less         1.4048525   0.7854295   2.512779
0-24 months   IRC             INDIA        6-7                  3 or less         1.2797390   0.6894476   2.375426
0-24 months   IRC             INDIA        8+                   3 or less         1.1781270   0.6141170   2.260128
0-24 months   LCNI-5          MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   LCNI-5          MALAWI       4-5                  3 or less         1.1121992   0.7851050   1.575569
0-24 months   LCNI-5          MALAWI       6-7                  3 or less         0.9300332   0.6077047   1.423326
0-24 months   LCNI-5          MALAWI       8+                   3 or less         1.0655558   0.6120647   1.855048
0-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         1.1791338   0.8590914   1.618403
0-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         1.1061243   0.7718978   1.585069
0-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         1.0055580   0.6404175   1.578887
0-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         1.3099791   0.7094821   2.418729
0-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         1.3807079   0.7144427   2.668309
0-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         1.2973668   0.6461827   2.604775
0-24 months   PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         0.7649031   0.4798316   1.219338
0-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         0.6526094   0.3620424   1.176379
0-24 months   PROVIDE         BANGLADESH   8+                   3 or less         0.9574731   0.5225972   1.754228
0-24 months   SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         2.2198691   1.1779570   4.183361
0-24 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         2.4764420   1.3059865   4.695887
0-24 months   SAS-FoodSuppl   INDIA        8+                   3 or less         2.4540037   1.2550738   4.798231
0-6 months    IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    IRC             INDIA        4-5                  3 or less         1.6256781   0.7572995   3.489807
0-6 months    IRC             INDIA        6-7                  3 or less         1.2389853   0.5404161   2.840561
0-6 months    IRC             INDIA        8+                   3 or less         0.7619048   0.2918463   1.989057
0-6 months    NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth       BANGLADESH   4-5                  3 or less         1.0340909   0.5448490   1.962643
0-6 months    NIH-Birth       BANGLADESH   6-7                  3 or less         0.6866197   0.3074793   1.533263
0-6 months    NIH-Birth       BANGLADESH   8+                   3 or less         0.8278302   0.3631514   1.887099
0-6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less         1.2777778   0.5333533   3.061228
0-6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0674157   0.3985813   2.858579
0-6 months    NIH-Crypto      BANGLADESH   8+                   3 or less         1.2258065   0.4384209   3.427304


### Parameter: PAR


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                 0.0522718   -0.0447185   0.1492621
0-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0071661   -0.0423231   0.0566553
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0214263   -0.0501282   0.0929808
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0276452   -0.0256254   0.0809157
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0328008   -0.0876592   0.0220576
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.2732524    0.1475407   0.3989640
0-6 months    IRC             INDIA        3 or less            NA                 0.0305299   -0.0485777   0.1096374
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0087644   -0.0579660   0.0404372
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                 0.0093737   -0.0289863   0.0477337


### Parameter: PAF


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                 0.2101123   -0.2923467   0.5172173
0-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0344395   -0.2350634   0.2451342
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0687609   -0.1910374   0.2718901
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.2116670   -0.3210866   0.5295775
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.2416901   -0.7175000   0.1023031
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.5682562    0.2136068   0.7629649
0-6 months    IRC             INDIA        3 or less            NA                 0.2018910   -0.5343522   0.5848554
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0934376   -0.7659589   0.3229707
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                 0.1511758   -0.7567274   0.5898610
