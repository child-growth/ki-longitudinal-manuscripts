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
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                      0      281   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                      1       41   700
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
![](/tmp/c755ded9-45d0-415c-bd02-699b543137d2/e8e9cd30-d5e7-4f4b-9439-c8b820dd79e7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c755ded9-45d0-415c-bd02-699b543137d2/e8e9cd30-d5e7-4f4b-9439-c8b820dd79e7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c755ded9-45d0-415c-bd02-699b543137d2/e8e9cd30-d5e7-4f4b-9439-c8b820dd79e7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c755ded9-45d0-415c-bd02-699b543137d2/e8e9cd30-d5e7-4f4b-9439-c8b820dd79e7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.1961565   0.0935436   0.2987693
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.2784968   0.2082369   0.3487567
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.2495791   0.1672453   0.3319128
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.2307859   0.1407337   0.3208381
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.2106988   0.0739585   0.3474390
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4639616   0.3891308   0.5387924
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.5060695   0.4168168   0.5953222
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.5179601   0.3852491   0.6506710
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.2808360   0.2017194   0.3599527
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3424675   0.2835283   0.4014066
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3230261   0.2444972   0.4015549
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.2980810   0.1988307   0.3973313
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.1935013   0.1251139   0.2618887
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1313484   0.0929229   0.1697739
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1067836   0.0533911   0.1601760
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.1782997   0.0821287   0.2744707
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1018529   0.0449812   0.1587247
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1354300   0.0991184   0.1717415
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1418669   0.0907609   0.1929729
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1310510   0.0741479   0.1879541
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.2007426   0.1448550   0.2566301
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.2225179   0.1761834   0.2688524
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.1878853   0.1269952   0.2487754
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.2152642   0.1150641   0.3154643
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1342857   0.1090095   0.1595619
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.2080783   0.1802263   0.2359304
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0620053   0.0448256   0.0791849


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.4197684   0.7944474   2.537289
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.2723468   0.6857223   2.360819
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.1765398   0.6123962   2.260376
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         2.2020136   1.1295982   4.292556
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         2.4018625   1.2243364   4.711894
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         2.4582965   1.2230915   4.940940
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.2194571   0.8777828   1.694127
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.1502301   0.7961896   1.661701
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         1.0614058   0.6868024   1.640330
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         0.6787987   0.4289986   1.074054
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         0.5518493   0.2987643   1.019324
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.9214390   0.4844200   1.752714
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.3296621   0.7170620   2.465619
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.3928603   0.7174522   2.704096
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.2866692   0.6356121   2.604604
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.1084739   0.7830817   1.569076
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.9359514   0.6105938   1.434677
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         1.0723394   0.6235416   1.844162
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
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0526240   -0.0441714   0.1494194
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.2701625    0.1358420   0.4044829
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0307697   -0.0421625   0.1037019
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0592156   -0.1210510   0.0026198
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0287539   -0.0244875   0.0819954
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0073357   -0.0423308   0.0570023
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0305299   -0.0485777   0.1096374
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0087644   -0.0579660   0.0404372
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0093737   -0.0289863   0.0477337


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.2115279   -0.2898847    0.5180280
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.5618304    0.1739914    0.7675659
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0987456   -0.1678267    0.3044692
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.4409673   -0.9859836   -0.0455205
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.2201564   -0.3139777    0.5371641
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0352547   -0.2353577    0.2465879
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.2018910   -0.5343522    0.5848554
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0934376   -0.7659589    0.3229707
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1511758   -0.7567274    0.5898610
