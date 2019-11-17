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

agecat        studyid                    country      nhh          ever_sstunted   n_cell     n
------------  -------------------------  -----------  ----------  --------------  -------  ----
0-24 months   ki1000108-IRC              INDIA        3 or less                0       47   410
0-24 months   ki1000108-IRC              INDIA        3 or less                1       11   410
0-24 months   ki1000108-IRC              INDIA        4-5                      0      114   410
0-24 months   ki1000108-IRC              INDIA        4-5                      1       44   410
0-24 months   ki1000108-IRC              INDIA        6-7                      0       80   410
0-24 months   ki1000108-IRC              INDIA        6-7                      1       27   410
0-24 months   ki1000108-IRC              INDIA        8+                       0       67   410
0-24 months   ki1000108-IRC              INDIA        8+                       1       20   410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less                0       28   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less                1       10   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                      0       97   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                      1       86   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                      0       58   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                      1       69   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                       0       34   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                       1       36   418
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less                0       87   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less                1       30   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                      0      172   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                      1       92   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                      0       98   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                      1       44   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                       0       76   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                       1       30   629
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less                0      117   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less                1       23   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                      0      280   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                      1       42   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                      0      135   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                      1       16   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                       0       73   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                       1       14   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less                0      102   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less                1       12   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                      0      295   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                      1       47   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                      0      153   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                      1       25   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                       0      109   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                       1       15   758
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less                0      183   817
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less                1       42   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                      0      263   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                      1       77   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                      0      146   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                      1       36   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                       0       55   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                       1       15   817
0-6 months    ki1000108-IRC              INDIA        3 or less                0       51   410
0-6 months    ki1000108-IRC              INDIA        3 or less                1        7   410
0-6 months    ki1000108-IRC              INDIA        4-5                      0      127   410
0-6 months    ki1000108-IRC              INDIA        4-5                      1       31   410
0-6 months    ki1000108-IRC              INDIA        6-7                      0       91   410
0-6 months    ki1000108-IRC              INDIA        6-7                      1       16   410
0-6 months    ki1000108-IRC              INDIA        8+                       0       79   410
0-6 months    ki1000108-IRC              INDIA        8+                       1        8   410
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less                0       35   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less                1        3   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                      0      163   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                      1       19   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                      0      107   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                      1       19   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                       0       61   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                       1        9   416
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less                0      105   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less                1       12   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                      0      236   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                      1       28   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                      0      132   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                      1       10   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                       0       97   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                       1        9   629
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less                0      133   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less                1        7   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                      0      306   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                      1       16   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                      0      149   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                      1        2   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                       0       81   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                       1        6   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less                0      108   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less                1        6   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                      0      319   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                      1       23   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                      0      168   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                      1       10   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                       0      116   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                       1        8   758
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less                0       65   269
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less                1        5   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                      0      102   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                      1        9   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                      0       63   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                      1        4   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                       0       20   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                       1        1   269


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/73c45d00-9465-4e3b-bff8-935c84d42f77/8b96f477-3dbd-4bc0-ac92-1eb840d08465/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73c45d00-9465-4e3b-bff8-935c84d42f77/8b96f477-3dbd-4bc0-ac92-1eb840d08465/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73c45d00-9465-4e3b-bff8-935c84d42f77/8b96f477-3dbd-4bc0-ac92-1eb840d08465/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73c45d00-9465-4e3b-bff8-935c84d42f77/8b96f477-3dbd-4bc0-ac92-1eb840d08465/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.2018536   0.0975007   0.3062064
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.2789550   0.2085176   0.3493925
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.2539799   0.1709370   0.3370229
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.2319076   0.1416307   0.3221846
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.2144596   0.0895056   0.3394137
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4631329   0.3888320   0.5374338
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.5110076   0.4208219   0.6011932
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.5052595   0.3731165   0.6374025
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.3105255   0.2293823   0.3916687
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3454765   0.2863667   0.4045863
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3205201   0.2406050   0.4004351
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.2960771   0.1945057   0.3976485
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.1690299   0.1067249   0.2313349
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1293206   0.0927608   0.1658803
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1071601   0.0574397   0.1568806
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1599036   0.0837518   0.2360554
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.0993714   0.0428426   0.1559003
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1341877   0.0978123   0.1705630
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1380837   0.0865855   0.1895819
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1286901   0.0713434   0.1860367
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.2037399   0.1472808   0.2601991
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.2233333   0.1764706   0.2701960
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.1875671   0.1269297   0.2482046
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.2025363   0.0994257   0.3056470
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                0.1206897   0.0367494   0.2046299
0-6 months    ki1000108-IRC              INDIA        4-5                  NA                0.1962025   0.1342049   0.2582002
0-6 months    ki1000108-IRC              INDIA        6-7                  NA                0.1495327   0.0818803   0.2171851
0-6 months    ki1000108-IRC              INDIA        8+                   NA                0.0919540   0.0311604   0.1527477
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.1025641   0.0475467   0.1575815
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.1060606   0.0688880   0.1432332
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.0704225   0.0283064   0.1125386
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.0849057   0.0317999   0.1380115
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.0526316   0.0116145   0.0936487
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.0672515   0.0406898   0.0938131
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.0561798   0.0223297   0.0900298
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.0645161   0.0212472   0.1077851


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.2080783   0.1802263   0.2359304
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0620053   0.0448256   0.0791849


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.3819673   0.7774031   2.456684
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.2582385   0.6822431   2.320528
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.1488904   0.6011447   2.195726
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         2.1595342   1.1818185   3.946112
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         2.3827681   1.2943038   4.386593
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         2.3559657   1.2431234   4.465023
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.1125544   0.8154013   1.517998
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.0321859   0.7217010   1.476246
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9534712   0.6197408   1.466915
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         0.7650751   0.4810014   1.216920
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         0.6339715   0.3504317   1.146928
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.9460080   0.5182430   1.726856
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.3503645   0.7202825   2.531624
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.3895714   0.7048396   2.739501
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.2950408   0.6299976   2.662123
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0961685   0.7745295   1.551375
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.9206204   0.6013780   1.409333
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.9940926   0.5568758   1.774579
0-6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        4-5                  3 or less         1.6256781   0.7572995   3.489807
0-6 months    ki1000108-IRC              INDIA        6-7                  3 or less         1.2389853   0.5404161   2.840561
0-6 months    ki1000108-IRC              INDIA        8+                   3 or less         0.7619048   0.2918463   1.989057
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.0340909   0.5448490   1.962643
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.6866197   0.3074793   1.533263
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.8278302   0.3631514   1.887099
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.2777778   0.5333533   3.061228
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0674157   0.3985813   2.858579
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.2258064   0.4384209   3.427304


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0469269   -0.0514769   0.1453308
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.2664016    0.1433936   0.3894096
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0010802   -0.0736446   0.0758051
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0333156   -0.0880769   0.0214457
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0312354   -0.0216783   0.0841492
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0043384   -0.0458813   0.0545582
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0305299   -0.0485777   0.1096374
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0087644   -0.0579660   0.0404372
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0093737   -0.0289863   0.0477337


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.1886278   -0.3197423   0.5011716
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.5540093    0.2130705   0.7472357
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0034667   -0.2676240   0.2165826
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.2454834   -0.7201856   0.0982201
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.2391561   -0.2945773   0.5528398
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0208499   -0.2527279   0.2346822
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.2018910   -0.5343522   0.5848554
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0934376   -0.7659589   0.3229707
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1511758   -0.7567274   0.5898610
