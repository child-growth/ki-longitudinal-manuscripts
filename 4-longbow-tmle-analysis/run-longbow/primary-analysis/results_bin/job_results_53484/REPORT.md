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

**Outcome Variable:** ever_stunted

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
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country      nhh          ever_stunted   n_cell     n
------------  -------------------------  -----------  ----------  -------------  -------  ----
0-24 months   ki1000108-IRC              INDIA        3 or less               0       25   410
0-24 months   ki1000108-IRC              INDIA        3 or less               1       33   410
0-24 months   ki1000108-IRC              INDIA        4-5                     0       52   410
0-24 months   ki1000108-IRC              INDIA        4-5                     1      106   410
0-24 months   ki1000108-IRC              INDIA        6-7                     0       41   410
0-24 months   ki1000108-IRC              INDIA        6-7                     1       66   410
0-24 months   ki1000108-IRC              INDIA        8+                      0       29   410
0-24 months   ki1000108-IRC              INDIA        8+                      1       58   410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0        9   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1       29   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0       35   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1      148   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       16   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1      111   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       12   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      1       58   418
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               0       47   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               1       70   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     0       77   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     1      187   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     0       42   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     1      100   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      0       45   629
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      1       61   629
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0       82   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1       58   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     0      179   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     1      143   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     0       84   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     1       67   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      0       50   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      1       37   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0       60   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       54   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      171   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1      171   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0       99   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       79   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      0       66   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      1       58   758
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less               0       85   817
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less               1      140   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                     0      122   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                     1      218   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                     0       61   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                     1      121   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                      0       28   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                      1       42   817
0-6 months    ki1000108-IRC              INDIA        3 or less               0       36   410
0-6 months    ki1000108-IRC              INDIA        3 or less               1       22   410
0-6 months    ki1000108-IRC              INDIA        4-5                     0       83   410
0-6 months    ki1000108-IRC              INDIA        4-5                     1       75   410
0-6 months    ki1000108-IRC              INDIA        6-7                     0       65   410
0-6 months    ki1000108-IRC              INDIA        6-7                     1       42   410
0-6 months    ki1000108-IRC              INDIA        8+                      0       52   410
0-6 months    ki1000108-IRC              INDIA        8+                      1       35   410
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0       26   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1       12   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0      109   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1       73   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       78   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1       48   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       41   416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                      1       29   416
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less               0       79   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less               1       38   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                     0      166   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                     1       98   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                     0       90   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                     1       52   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                      0       74   629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                      1       32   629
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less               0      108   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less               1       32   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     0      240   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     1       82   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                     0      116   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                     1       35   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                      0       68   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                      1       19   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0       74   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       40   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      244   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       98   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0      129   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       49   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                      0       82   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                      1       42   758
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less               0       48   269
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less               1       22   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                     0       66   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                     1       45   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                     0       43   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                     1       24   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                      0       17   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                      1        4   269
6-24 months   ki1000108-IRC              INDIA        3 or less               0       25   236
6-24 months   ki1000108-IRC              INDIA        3 or less               1       11   236
6-24 months   ki1000108-IRC              INDIA        4-5                     0       52   236
6-24 months   ki1000108-IRC              INDIA        4-5                     1       31   236
6-24 months   ki1000108-IRC              INDIA        6-7                     0       41   236
6-24 months   ki1000108-IRC              INDIA        6-7                     1       24   236
6-24 months   ki1000108-IRC              INDIA        8+                      0       29   236
6-24 months   ki1000108-IRC              INDIA        8+                      1       23   236
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0        9   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1       17   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0       28   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1       75   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       14   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1       63   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      0        8   243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      1       29   243
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               0       30   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               1       32   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     0       55   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     1       89   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     0       30   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     1       48   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      0       32   345
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      1       29   345
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0       58   456
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1       26   456
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     0      150   456
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     1       61   456
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     0       64   456
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     1       32   456
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      0       47   456
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      1       18   456
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0       55   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       14   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      161   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       73   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0       97   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       30   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      0       60   506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      1       16   506
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less               0       78   710
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less               1      118   710
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                     0      118   710
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                     1      173   710
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                     0       60   710
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                     1       97   710
6-24 months   ki1148112-LCNI-5           MALAWI       8+                      0       28   710
6-24 months   ki1148112-LCNI-5           MALAWI       8+                      1       38   710


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




# Results Detail

## Results Plots
![](/tmp/f7a60170-1e25-4afe-be33-0055ba0ba06d/ceda8dd2-9452-46f9-946f-72382954e5a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f7a60170-1e25-4afe-be33-0055ba0ba06d/ceda8dd2-9452-46f9-946f-72382954e5a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f7a60170-1e25-4afe-be33-0055ba0ba06d/ceda8dd2-9452-46f9-946f-72382954e5a2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f7a60170-1e25-4afe-be33-0055ba0ba06d/ceda8dd2-9452-46f9-946f-72382954e5a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.5890764   0.4627649   0.7153880
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.6739557   0.5984356   0.7494758
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.6120922   0.5153604   0.7088240
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.6461939   0.5440882   0.7482997
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.7631579   0.6278220   0.8984938
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.8087432   0.7516931   0.8657933
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.8740157   0.8162349   0.9317966
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.8285714   0.7401768   0.9169660
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.6474208   0.5656718   0.7291698
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.6968745   0.6406528   0.7530963
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.7260124   0.6520110   0.8000138
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.6007940   0.4989207   0.7026674
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.4221100   0.3446231   0.4995969
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.4446154   0.3911418   0.4980890
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.4405046   0.3623441   0.5186652
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.4248390   0.3219892   0.5276889
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.3800574   0.2848131   0.4753018
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.4781144   0.4164253   0.5398036
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.4444566   0.3471595   0.5417536
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.5124797   0.4185939   0.6063655
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.6215548   0.5593913   0.6837183
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.6382041   0.5883800   0.6880281
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.6616234   0.5939540   0.7292929
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.6074372   0.4942105   0.7206638
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                0.3783134   0.2501205   0.5065064
0-6 months    ki1000108-IRC              INDIA        4-5                  NA                0.4862980   0.4056939   0.5669020
0-6 months    ki1000108-IRC              INDIA        6-7                  NA                0.3874767   0.2918516   0.4831019
0-6 months    ki1000108-IRC              INDIA        8+                   NA                0.3748252   0.2726041   0.4770462
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.2793657   0.1180534   0.4406779
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4036724   0.3340337   0.4733110
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.3749642   0.2885516   0.4613768
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.4207908   0.3112566   0.5303250
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.3564879   0.2704675   0.4425084
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3533862   0.2945166   0.4122558
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3778316   0.2947605   0.4609026
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.3036324   0.2015813   0.4056836
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2311871   0.1602510   0.3021231
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2533477   0.2057422   0.3009532
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2325965   0.1643574   0.3008356
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2196766   0.1317658   0.3075874
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.3362741   0.2503744   0.4221739
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2912744   0.2430301   0.3395188
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2722676   0.2047910   0.3397442
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.3568703   0.2697220   0.4440185
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.3021427   0.1559113   0.4483740
6-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.3506856   0.2463589   0.4550123
6-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3590459   0.2391159   0.4789760
6-24 months   ki1000108-IRC              INDIA        8+                   NA                0.4170626   0.2782605   0.5558646
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.6538462   0.4706024   0.8370899
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.7281553   0.6420565   0.8142542
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.8181818   0.7318558   0.9045078
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.7837838   0.6508654   0.9167021
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.5034674   0.3816434   0.6252915
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.6148869   0.5322471   0.6975268
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.6311663   0.5192787   0.7430539
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.5041216   0.3624991   0.6457441
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2973085   0.1986286   0.3959885
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2956083   0.2316704   0.3595462
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.3319431   0.2315643   0.4323220
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2702961   0.1552570   0.3853351
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2191038   0.1152037   0.3230039
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2886269   0.2307462   0.3465075
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2348056   0.1571720   0.3124391
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.1987703   0.1095313   0.2880093
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.5996025   0.5317613   0.6674438
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.5924819   0.5375238   0.6474401
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.6270894   0.5518511   0.7023277
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.6007264   0.4815632   0.7198897


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.6376989   0.6047193   0.6706785
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3021108   0.2694011   0.3348205
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.6000000   0.5639396   0.6360604


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.1440887   0.8983928   1.456978
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.0390709   0.7965069   1.355504
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.0969611   0.8408002   1.431165
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.0597324   0.8756092   1.282573
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.1452620   0.9477874   1.383881
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.0857143   0.8827484   1.335347
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.0763858   0.9273654   1.249353
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.1213918   0.9547414   1.317131
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9279807   0.7516946   1.145609
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.0533164   0.8487029   1.307260
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0435779   0.8109916   1.342868
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.0064653   0.7443546   1.360873
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.2580057   0.9504461   1.665090
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.1694457   0.8398760   1.628339
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.3484270   0.9900829   1.836468
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0267865   0.9058230   1.163903
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         1.0644652   0.9236525   1.226745
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.9772866   0.7917177   1.206351
0-6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        4-5                  3 or less         1.2854366   0.8817110   1.874024
0-6 months    ki1000108-IRC              INDIA        6-7                  3 or less         1.0242214   0.6734838   1.557616
0-6 months    ki1000108-IRC              INDIA        8+                   3 or less         0.9907794   0.6414840   1.530270
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.4449605   0.7917414   2.637112
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.3421984   0.7208412   2.499159
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.5062365   0.8012250   2.831600
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.9912993   0.7413701   1.325484
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.0598721   0.7675278   1.463568
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.8517328   0.5637144   1.286908
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.0958559   0.7646488   1.570525
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0060965   0.6579232   1.538523
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.9502113   0.5738795   1.573329
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         0.8661816   0.6397542   1.172748
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.8096597   0.5674678   1.155218
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.0612482   0.7456462   1.510432
6-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.1606622   0.6555879   2.054853
6-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.1883323   0.6623160   2.132115
6-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.3803496   0.7690119   2.477679
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.1136493   0.8215720   1.509563
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.2513369   0.9275155   1.688213
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.1987281   0.8638907   1.663346
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.2213043   0.9264245   1.610044
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.2536388   0.9296740   1.690496
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         1.0012994   0.6924421   1.447919
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         0.9942813   0.6688971   1.477948
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.1164939   0.7124817   1.749601
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.9091434   0.5297745   1.560177
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.3173065   0.7875291   2.203469
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0716635   0.6009584   1.911052
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9071968   0.4720092   1.743623
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         0.9881245   0.8552584   1.141632
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         1.0458418   0.8879097   1.231865
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         1.0018744   0.7980443   1.257765


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0523870   -0.0644662   0.1692402
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0645933   -0.0630747   0.1922613
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0171261   -0.0561266   0.0903787
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0136043   -0.0553097   0.0825183
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0975151    0.0062824   0.1887478
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0161441   -0.0359970   0.0682852
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0460768   -0.0734471   0.1656007
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1100574   -0.0442057   0.2643205
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0067264   -0.0857358   0.0722830
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0088129   -0.0549422   0.0725681
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0341633   -0.1129020   0.0445754
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0749759   -0.0617382   0.2116901
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1033555   -0.0678495   0.2745605
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0704456   -0.0411244   0.1820156
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0031301   -0.0870920   0.0933521
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0437420   -0.0556031   0.1430871
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0003975   -0.0566591   0.0574541


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0816679   -0.1200330   0.2470455
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0780347   -0.0902029   0.2203102
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0257711   -0.0909329   0.1299905
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0312230   -0.1405505   0.1771264
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.2041891   -0.0109504   0.3735449
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0253162   -0.0600111   0.1037749
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.1085718   -0.2227851   0.3501357
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.2826165   -0.2487695   0.5878831
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0192313   -0.2722291   0.1834549
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0367206   -0.2691703   0.2688867
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1130820   -0.4067873   0.1193042
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.1988126   -0.2584711   0.4899357
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1364967   -0.1231626   0.3361264
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.1227461   -0.0948767   0.2971132
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0104184   -0.3403879   0.2694116
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1664171   -0.3102717   0.4696821
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0006624   -0.0991038   0.0913729
