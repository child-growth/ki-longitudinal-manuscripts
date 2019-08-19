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
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0       83   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1       57   700
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     0      241   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     1       81   700
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0       59   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1       25   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     0      150   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     1       62   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     0       64   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     1       32   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      0       47   457
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      1       18   457
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
![](/tmp/048603d5-8972-4eef-874a-fcc66c144206/787aa938-7b4f-460f-86e1-b0e88f4464ec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/048603d5-8972-4eef-874a-fcc66c144206/787aa938-7b4f-460f-86e1-b0e88f4464ec/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/048603d5-8972-4eef-874a-fcc66c144206/787aa938-7b4f-460f-86e1-b0e88f4464ec/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/048603d5-8972-4eef-874a-fcc66c144206/787aa938-7b4f-460f-86e1-b0e88f4464ec/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.5892445   0.4622033   0.7162856
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.6767103   0.6019834   0.7514371
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.6207187   0.5252162   0.7162212
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.6526089   0.5517914   0.7534264
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.7631579   0.6278220   0.8984938
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.8087432   0.7516931   0.8657933
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.8740157   0.8162349   0.9317966
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.8285714   0.7401768   0.9169660
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.6593196   0.5785699   0.7400693
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.7050427   0.6493056   0.7607798
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.7180154   0.6406739   0.7953569
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.6197773   0.5231380   0.7164166
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.4013464   0.3230052   0.4796876
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.4362915   0.3826256   0.4899573
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.4366574   0.3556289   0.5176860
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.4232693   0.3151138   0.5314249
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.3983082   0.3057495   0.4908669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.4739816   0.4136973   0.5342659
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.4457579   0.3507794   0.5407364
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.5236938   0.4347920   0.6125956
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.6210168   0.5584407   0.6835930
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.6410998   0.5911177   0.6910818
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.6688348   0.6015163   0.7361534
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.6289645   0.5156080   0.7423210
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                0.3880047   0.2589796   0.5170298
0-6 months    ki1000108-IRC              INDIA        4-5                  NA                0.4866883   0.4061810   0.5671956
0-6 months    ki1000108-IRC              INDIA        6-7                  NA                0.3884039   0.2919295   0.4848784
0-6 months    ki1000108-IRC              INDIA        8+                   NA                0.3722545   0.2694413   0.4750678
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.2954614   0.1376692   0.4532536
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4015670   0.3319756   0.4711583
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.3713244   0.2858073   0.4568416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.4063240   0.2955395   0.5171085
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.3698464   0.2852962   0.4543966
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3544391   0.2948159   0.4140623
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3854804   0.3029485   0.4680123
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.3169594   0.2164428   0.4174760
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2243627   0.1566860   0.2920394
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2540160   0.2064662   0.3015658
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2268429   0.1577794   0.2959065
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2227963   0.1367428   0.3088499
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.3406107   0.2542214   0.4270001
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2889677   0.2413560   0.3365794
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2701999   0.2023852   0.3380145
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.3535029   0.2677612   0.4392447
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.3398831   0.1904767   0.4892895
6-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.3788301   0.2733472   0.4843129
6-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3751502   0.2537754   0.4965250
6-24 months   ki1000108-IRC              INDIA        8+                   NA                0.4524874   0.3130155   0.5919593
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.6538462   0.4706024   0.8370899
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.7281553   0.6420565   0.8142542
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.8181818   0.7318558   0.9045078
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.7837838   0.6508654   0.9167021
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.4993078   0.3866194   0.6119963
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.6160729   0.5323339   0.6998119
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.6261856   0.5130125   0.7393587
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.4911603   0.3516018   0.6307188
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2833234   0.1845312   0.3821156
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2983267   0.2346031   0.3620504
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.3307275   0.2307112   0.4307437
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2774020   0.1577514   0.3970527
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2114359   0.1132434   0.3096284
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2943513   0.2362584   0.3524441
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2316064   0.1556537   0.3075591
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2224230   0.1221048   0.3227411
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.5966029   0.5287557   0.6644502
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.5890116   0.5340194   0.6440039
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.6263736   0.5509011   0.7018461
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.5868303   0.4695530   0.7041075


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.6376989   0.6047193   0.6706785
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3021108   0.2694011   0.3348205
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.6000000   0.5639396   0.6360604


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.1484372   0.9014121   1.463158
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.0534146   0.8083070   1.372847
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.1075351   0.8500326   1.443043
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.0597324   0.8756092   1.282573
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.1452620   0.9477874   1.383881
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.0857143   0.8827484   1.335347
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.0693489   0.9248696   1.236398
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.0890248   0.9264950   1.280066
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9400256   0.7715194   1.145335
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.0870697   0.8652831   1.365704
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0879815   0.8332817   1.420532
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.0546235   0.7657477   1.452477
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.1899871   0.9147786   1.547991
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.1191282   0.8180496   1.531017
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.3147954   0.9876466   1.750309
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.0323388   0.9102400   1.170816
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         1.0769995   0.9351031   1.240428
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         1.0127979   0.8247904   1.243661
0-6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        4-5                  3 or less         1.2543361   0.8653782   1.818117
0-6 months    ki1000108-IRC              INDIA        6-7                  3 or less         1.0010289   0.6612634   1.515370
0-6 months    ki1000108-IRC              INDIA        8+                   3 or less         0.9594072   0.6228591   1.477801
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.3591184   0.7766842   2.378319
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.2567613   0.7029018   2.247041
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.3752187   0.7570773   2.498063
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.9583414   0.7232617   1.269829
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.0422716   0.7647826   1.420443
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.8570028   0.5805009   1.265207
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.1321665   0.7954835   1.611348
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0110544   0.6596733   1.549602
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.9930184   0.6099209   1.616743
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         0.8483811   0.6278644   1.146347
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.7932805   0.5553332   1.133183
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.0378502   0.7310885   1.473328
6-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.1145893   0.6616220   1.877672
6-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.1037624   0.6402101   1.902956
6-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.3313029   0.7804413   2.270981
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.1136493   0.8215720   1.509563
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.2513369   0.9275155   1.688213
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.1987281   0.8638907   1.663346
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.2338540   0.9483628   1.605288
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         1.2541073   0.9409146   1.671549
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.9836824   0.6855710   1.411424
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.0529547   0.6994786   1.585057
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.1673143   0.7357322   1.852063
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         0.9791002   0.5621175   1.705404
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.3921536   0.8405405   2.305768
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0953977   0.6201402   1.934879
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.0519641   0.5506915   2.009525
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         0.9872759   0.8538578   1.141541
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         1.0499003   0.8906479   1.237628
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.9836195   0.7824938   1.236441


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0522189   -0.0653149   0.1697528
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0645933   -0.0630747   0.1922613
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0052273   -0.0674684   0.0779231
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0329393   -0.0371226   0.1030013
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0792644   -0.0090563   0.1675850
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0166821   -0.0357883   0.0691524
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0363855   -0.0840061   0.1567772
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0939617   -0.0566304   0.2445538
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0200849   -0.0972234   0.0570536
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0142087   -0.0465026   0.0749200
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0384999   -0.1176799   0.0406801
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0372355   -0.1018285   0.1762996
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1033555   -0.0678495   0.2745605
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0746052   -0.0284511   0.1776616
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0164578   -0.0741684   0.1070839
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0514099   -0.0422575   0.1450774
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0033971   -0.0536248   0.0604190


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0814060   -0.1215983   0.2476674
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0780347   -0.0902029   0.2203102
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0078660   -0.1077734   0.1114339
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0758472   -0.1003890   0.2238577
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1659734   -0.0403590   0.3313843
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0261598   -0.0597409   0.1050975
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0857360   -0.2469483   0.3296605
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.2412844   -0.2649680   0.5449297
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0574245   -0.3030132   0.1418762
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0595574   -0.2325589   0.2824422
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1274364   -0.4225358   0.1064458
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0987369   -0.3562122   0.4010708
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1364967   -0.1231626   0.3361264
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.1299940   -0.0690462   0.2919759
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0548992   -0.3011796   0.3135341
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1955897   -0.2508086   0.4826739
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0056618   -0.0940699   0.0963023
