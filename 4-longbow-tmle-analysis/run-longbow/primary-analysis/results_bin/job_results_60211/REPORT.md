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

agecat        studyid         country      nhh          ever_stunted   n_cell     n
------------  --------------  -----------  ----------  -------------  -------  ----
0-24 months   IRC             INDIA        3 or less               0       25   410
0-24 months   IRC             INDIA        3 or less               1       33   410
0-24 months   IRC             INDIA        4-5                     0       52   410
0-24 months   IRC             INDIA        4-5                     1      106   410
0-24 months   IRC             INDIA        6-7                     0       41   410
0-24 months   IRC             INDIA        6-7                     1       66   410
0-24 months   IRC             INDIA        8+                      0       29   410
0-24 months   IRC             INDIA        8+                      1       58   410
0-24 months   LCNI-5          MALAWI       3 or less               0       85   817
0-24 months   LCNI-5          MALAWI       3 or less               1      140   817
0-24 months   LCNI-5          MALAWI       4-5                     0      122   817
0-24 months   LCNI-5          MALAWI       4-5                     1      218   817
0-24 months   LCNI-5          MALAWI       6-7                     0       61   817
0-24 months   LCNI-5          MALAWI       6-7                     1      121   817
0-24 months   LCNI-5          MALAWI       8+                      0       28   817
0-24 months   LCNI-5          MALAWI       8+                      1       42   817
0-24 months   NIH-Birth       BANGLADESH   3 or less               0       47   629
0-24 months   NIH-Birth       BANGLADESH   3 or less               1       70   629
0-24 months   NIH-Birth       BANGLADESH   4-5                     0       77   629
0-24 months   NIH-Birth       BANGLADESH   4-5                     1      187   629
0-24 months   NIH-Birth       BANGLADESH   6-7                     0       42   629
0-24 months   NIH-Birth       BANGLADESH   6-7                     1      100   629
0-24 months   NIH-Birth       BANGLADESH   8+                      0       45   629
0-24 months   NIH-Birth       BANGLADESH   8+                      1       61   629
0-24 months   NIH-Crypto      BANGLADESH   3 or less               0       60   758
0-24 months   NIH-Crypto      BANGLADESH   3 or less               1       54   758
0-24 months   NIH-Crypto      BANGLADESH   4-5                     0      171   758
0-24 months   NIH-Crypto      BANGLADESH   4-5                     1      171   758
0-24 months   NIH-Crypto      BANGLADESH   6-7                     0       99   758
0-24 months   NIH-Crypto      BANGLADESH   6-7                     1       79   758
0-24 months   NIH-Crypto      BANGLADESH   8+                      0       66   758
0-24 months   NIH-Crypto      BANGLADESH   8+                      1       58   758
0-24 months   PROVIDE         BANGLADESH   3 or less               0       82   700
0-24 months   PROVIDE         BANGLADESH   3 or less               1       58   700
0-24 months   PROVIDE         BANGLADESH   4-5                     0      179   700
0-24 months   PROVIDE         BANGLADESH   4-5                     1      143   700
0-24 months   PROVIDE         BANGLADESH   6-7                     0       84   700
0-24 months   PROVIDE         BANGLADESH   6-7                     1       67   700
0-24 months   PROVIDE         BANGLADESH   8+                      0       50   700
0-24 months   PROVIDE         BANGLADESH   8+                      1       37   700
0-24 months   SAS-FoodSuppl   INDIA        3 or less               0        9   418
0-24 months   SAS-FoodSuppl   INDIA        3 or less               1       29   418
0-24 months   SAS-FoodSuppl   INDIA        4-5                     0       35   418
0-24 months   SAS-FoodSuppl   INDIA        4-5                     1      148   418
0-24 months   SAS-FoodSuppl   INDIA        6-7                     0       16   418
0-24 months   SAS-FoodSuppl   INDIA        6-7                     1      111   418
0-24 months   SAS-FoodSuppl   INDIA        8+                      0       12   418
0-24 months   SAS-FoodSuppl   INDIA        8+                      1       58   418
0-6 months    IRC             INDIA        3 or less               0       36   410
0-6 months    IRC             INDIA        3 or less               1       22   410
0-6 months    IRC             INDIA        4-5                     0       83   410
0-6 months    IRC             INDIA        4-5                     1       75   410
0-6 months    IRC             INDIA        6-7                     0       65   410
0-6 months    IRC             INDIA        6-7                     1       42   410
0-6 months    IRC             INDIA        8+                      0       52   410
0-6 months    IRC             INDIA        8+                      1       35   410
0-6 months    LCNI-5          MALAWI       3 or less               0       48   269
0-6 months    LCNI-5          MALAWI       3 or less               1       22   269
0-6 months    LCNI-5          MALAWI       4-5                     0       66   269
0-6 months    LCNI-5          MALAWI       4-5                     1       45   269
0-6 months    LCNI-5          MALAWI       6-7                     0       43   269
0-6 months    LCNI-5          MALAWI       6-7                     1       24   269
0-6 months    LCNI-5          MALAWI       8+                      0       17   269
0-6 months    LCNI-5          MALAWI       8+                      1        4   269
0-6 months    NIH-Birth       BANGLADESH   3 or less               0       79   629
0-6 months    NIH-Birth       BANGLADESH   3 or less               1       38   629
0-6 months    NIH-Birth       BANGLADESH   4-5                     0      166   629
0-6 months    NIH-Birth       BANGLADESH   4-5                     1       98   629
0-6 months    NIH-Birth       BANGLADESH   6-7                     0       90   629
0-6 months    NIH-Birth       BANGLADESH   6-7                     1       52   629
0-6 months    NIH-Birth       BANGLADESH   8+                      0       74   629
0-6 months    NIH-Birth       BANGLADESH   8+                      1       32   629
0-6 months    NIH-Crypto      BANGLADESH   3 or less               0       74   758
0-6 months    NIH-Crypto      BANGLADESH   3 or less               1       40   758
0-6 months    NIH-Crypto      BANGLADESH   4-5                     0      244   758
0-6 months    NIH-Crypto      BANGLADESH   4-5                     1       98   758
0-6 months    NIH-Crypto      BANGLADESH   6-7                     0      129   758
0-6 months    NIH-Crypto      BANGLADESH   6-7                     1       49   758
0-6 months    NIH-Crypto      BANGLADESH   8+                      0       82   758
0-6 months    NIH-Crypto      BANGLADESH   8+                      1       42   758
0-6 months    PROVIDE         BANGLADESH   3 or less               0      108   700
0-6 months    PROVIDE         BANGLADESH   3 or less               1       32   700
0-6 months    PROVIDE         BANGLADESH   4-5                     0      240   700
0-6 months    PROVIDE         BANGLADESH   4-5                     1       82   700
0-6 months    PROVIDE         BANGLADESH   6-7                     0      116   700
0-6 months    PROVIDE         BANGLADESH   6-7                     1       35   700
0-6 months    PROVIDE         BANGLADESH   8+                      0       68   700
0-6 months    PROVIDE         BANGLADESH   8+                      1       19   700
0-6 months    SAS-FoodSuppl   INDIA        3 or less               0       26   416
0-6 months    SAS-FoodSuppl   INDIA        3 or less               1       12   416
0-6 months    SAS-FoodSuppl   INDIA        4-5                     0      109   416
0-6 months    SAS-FoodSuppl   INDIA        4-5                     1       73   416
0-6 months    SAS-FoodSuppl   INDIA        6-7                     0       78   416
0-6 months    SAS-FoodSuppl   INDIA        6-7                     1       48   416
0-6 months    SAS-FoodSuppl   INDIA        8+                      0       41   416
0-6 months    SAS-FoodSuppl   INDIA        8+                      1       29   416
6-24 months   IRC             INDIA        3 or less               0       25   236
6-24 months   IRC             INDIA        3 or less               1       11   236
6-24 months   IRC             INDIA        4-5                     0       52   236
6-24 months   IRC             INDIA        4-5                     1       31   236
6-24 months   IRC             INDIA        6-7                     0       41   236
6-24 months   IRC             INDIA        6-7                     1       24   236
6-24 months   IRC             INDIA        8+                      0       29   236
6-24 months   IRC             INDIA        8+                      1       23   236
6-24 months   LCNI-5          MALAWI       3 or less               0       78   710
6-24 months   LCNI-5          MALAWI       3 or less               1      118   710
6-24 months   LCNI-5          MALAWI       4-5                     0      118   710
6-24 months   LCNI-5          MALAWI       4-5                     1      173   710
6-24 months   LCNI-5          MALAWI       6-7                     0       60   710
6-24 months   LCNI-5          MALAWI       6-7                     1       97   710
6-24 months   LCNI-5          MALAWI       8+                      0       28   710
6-24 months   LCNI-5          MALAWI       8+                      1       38   710
6-24 months   NIH-Birth       BANGLADESH   3 or less               0       30   345
6-24 months   NIH-Birth       BANGLADESH   3 or less               1       32   345
6-24 months   NIH-Birth       BANGLADESH   4-5                     0       55   345
6-24 months   NIH-Birth       BANGLADESH   4-5                     1       89   345
6-24 months   NIH-Birth       BANGLADESH   6-7                     0       30   345
6-24 months   NIH-Birth       BANGLADESH   6-7                     1       48   345
6-24 months   NIH-Birth       BANGLADESH   8+                      0       32   345
6-24 months   NIH-Birth       BANGLADESH   8+                      1       29   345
6-24 months   NIH-Crypto      BANGLADESH   3 or less               0       55   506
6-24 months   NIH-Crypto      BANGLADESH   3 or less               1       14   506
6-24 months   NIH-Crypto      BANGLADESH   4-5                     0      161   506
6-24 months   NIH-Crypto      BANGLADESH   4-5                     1       73   506
6-24 months   NIH-Crypto      BANGLADESH   6-7                     0       97   506
6-24 months   NIH-Crypto      BANGLADESH   6-7                     1       30   506
6-24 months   NIH-Crypto      BANGLADESH   8+                      0       60   506
6-24 months   NIH-Crypto      BANGLADESH   8+                      1       16   506
6-24 months   PROVIDE         BANGLADESH   3 or less               0       58   456
6-24 months   PROVIDE         BANGLADESH   3 or less               1       26   456
6-24 months   PROVIDE         BANGLADESH   4-5                     0      150   456
6-24 months   PROVIDE         BANGLADESH   4-5                     1       61   456
6-24 months   PROVIDE         BANGLADESH   6-7                     0       64   456
6-24 months   PROVIDE         BANGLADESH   6-7                     1       32   456
6-24 months   PROVIDE         BANGLADESH   8+                      0       47   456
6-24 months   PROVIDE         BANGLADESH   8+                      1       18   456
6-24 months   SAS-FoodSuppl   INDIA        3 or less               0        9   243
6-24 months   SAS-FoodSuppl   INDIA        3 or less               1       17   243
6-24 months   SAS-FoodSuppl   INDIA        4-5                     0       28   243
6-24 months   SAS-FoodSuppl   INDIA        4-5                     1       75   243
6-24 months   SAS-FoodSuppl   INDIA        6-7                     0       14   243
6-24 months   SAS-FoodSuppl   INDIA        6-7                     1       63   243
6-24 months   SAS-FoodSuppl   INDIA        8+                      0        8   243
6-24 months   SAS-FoodSuppl   INDIA        8+                      1       29   243


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
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/726dcf3d-2850-4a06-9ee2-eb40583575ae/8db7c663-4aa5-4436-86d3-ec0d9f8dfaf3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/726dcf3d-2850-4a06-9ee2-eb40583575ae/8db7c663-4aa5-4436-86d3-ec0d9f8dfaf3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/726dcf3d-2850-4a06-9ee2-eb40583575ae/8db7c663-4aa5-4436-86d3-ec0d9f8dfaf3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/726dcf3d-2850-4a06-9ee2-eb40583575ae/8db7c663-4aa5-4436-86d3-ec0d9f8dfaf3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                0.5666289   0.4411504   0.6921073
0-24 months   IRC             INDIA        4-5                  NA                0.6704829   0.5955204   0.7454455
0-24 months   IRC             INDIA        6-7                  NA                0.6183828   0.5261766   0.7105889
0-24 months   IRC             INDIA        8+                   NA                0.6689526   0.5724187   0.7654864
0-24 months   LCNI-5          MALAWI       3 or less            NA                0.6190339   0.5561513   0.6819165
0-24 months   LCNI-5          MALAWI       4-5                  NA                0.6375703   0.5873462   0.6877944
0-24 months   LCNI-5          MALAWI       6-7                  NA                0.6631425   0.5956232   0.7306618
0-24 months   LCNI-5          MALAWI       8+                   NA                0.5901953   0.4717892   0.7086014
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.6299989   0.5481151   0.7118827
0-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.6967559   0.6399685   0.7535433
0-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.7275873   0.6503432   0.8048315
0-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.6141729   0.5158083   0.7125375
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.4677108   0.3787829   0.5566386
0-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.4888907   0.4369059   0.5408754
0-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.4493326   0.3739178   0.5247474
0-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.4992458   0.4108375   0.5876542
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.4244969   0.3419108   0.5070830
0-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.4401650   0.3862583   0.4940716
0-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.4431411   0.3630435   0.5232388
0-24 months   PROVIDE         BANGLADESH   8+                   NA                0.4195919   0.3131629   0.5260210
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.7631579   0.6278220   0.8984938
0-24 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.8087432   0.7516931   0.8657933
0-24 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.8740157   0.8162349   0.9317966
0-24 months   SAS-FoodSuppl   INDIA        8+                   NA                0.8285714   0.7401768   0.9169660
0-6 months    IRC             INDIA        3 or less            NA                0.3802674   0.2530002   0.5075347
0-6 months    IRC             INDIA        4-5                  NA                0.4734859   0.3952531   0.5517186
0-6 months    IRC             INDIA        6-7                  NA                0.3969087   0.3044147   0.4894026
0-6 months    IRC             INDIA        8+                   NA                0.3906760   0.2837323   0.4976197
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                0.3575410   0.2784638   0.4366182
0-6 months    NIH-Birth       BANGLADESH   4-5                  NA                0.3543448   0.2956574   0.4130322
0-6 months    NIH-Birth       BANGLADESH   6-7                  NA                0.3647682   0.2832877   0.4462486
0-6 months    NIH-Birth       BANGLADESH   8+                   NA                0.3188804   0.2152594   0.4225014
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                0.3360494   0.2513994   0.4206994
0-6 months    NIH-Crypto      BANGLADESH   4-5                  NA                0.2895450   0.2416719   0.3374181
0-6 months    NIH-Crypto      BANGLADESH   6-7                  NA                0.2705642   0.2020816   0.3390468
0-6 months    NIH-Crypto      BANGLADESH   8+                   NA                0.3603652   0.2752229   0.4455074
0-6 months    PROVIDE         BANGLADESH   3 or less            NA                0.2327787   0.1618489   0.3037086
0-6 months    PROVIDE         BANGLADESH   4-5                  NA                0.2524882   0.2048346   0.3001417
0-6 months    PROVIDE         BANGLADESH   6-7                  NA                0.2273992   0.1589474   0.2958510
0-6 months    PROVIDE         BANGLADESH   8+                   NA                0.2192992   0.1297043   0.3088941
0-6 months    SAS-FoodSuppl   INDIA        3 or less            NA                0.2973745   0.1384620   0.4562870
0-6 months    SAS-FoodSuppl   INDIA        4-5                  NA                0.4043987   0.3345817   0.4742158
0-6 months    SAS-FoodSuppl   INDIA        6-7                  NA                0.3766053   0.2904565   0.4627541
0-6 months    SAS-FoodSuppl   INDIA        8+                   NA                0.4243605   0.3135303   0.5351908
6-24 months   IRC             INDIA        3 or less            NA                0.2879957   0.1307717   0.4452197
6-24 months   IRC             INDIA        4-5                  NA                0.3608524   0.2550125   0.4666923
6-24 months   IRC             INDIA        6-7                  NA                0.3807436   0.2618236   0.4996635
6-24 months   IRC             INDIA        8+                   NA                0.4556541   0.3223039   0.5890043
6-24 months   LCNI-5          MALAWI       3 or less            NA                0.6015284   0.5334256   0.6696311
6-24 months   LCNI-5          MALAWI       4-5                  NA                0.5926692   0.5373549   0.6479835
6-24 months   LCNI-5          MALAWI       6-7                  NA                0.6410712   0.5651212   0.7170211
6-24 months   LCNI-5          MALAWI       8+                   NA                0.6032766   0.4852590   0.7212942
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.5229019   0.4135248   0.6322790
6-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.6208222   0.5380052   0.7036392
6-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.6160168   0.4957229   0.7363106
6-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.4789964   0.3344127   0.6235801
6-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.2073420   0.1119050   0.3027790
6-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.2979354   0.2391958   0.3566750
6-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.2331075   0.1564161   0.3097990
6-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.2258802   0.1226480   0.3291123
6-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.2939246   0.1960542   0.3917951
6-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.2968798   0.2325896   0.3611700
6-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.3315977   0.2310659   0.4321295
6-24 months   PROVIDE         BANGLADESH   8+                   NA                0.2754500   0.1568204   0.3940797
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.6538462   0.4706024   0.8370899
6-24 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.7281553   0.6420565   0.8142542
6-24 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.8181818   0.7318558   0.9045078
6-24 months   SAS-FoodSuppl   INDIA        8+                   NA                0.7837838   0.6508654   0.9167021


### Parameter: E(Y)


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   IRC             INDIA        NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   LCNI-5          MALAWI       NA                   NA                0.6376989   0.6047193   0.6706785
0-24 months   NIH-Birth       BANGLADESH   NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   PROVIDE         BANGLADESH   NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.8277512   0.7915095   0.8639929
0-6 months    IRC             INDIA        NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    NIH-Birth       BANGLADESH   NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    NIH-Crypto      BANGLADESH   NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    PROVIDE         BANGLADESH   NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    SAS-FoodSuppl   INDIA        NA                   NA                0.3894231   0.3425088   0.4363374
6-24 months   IRC             INDIA        NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   LCNI-5          MALAWI       NA                   NA                0.6000000   0.5639396   0.6360604
6-24 months   NIH-Birth       BANGLADESH   NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   PROVIDE         BANGLADESH   NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   SAS-FoodSuppl   INDIA        NA                   NA                0.7572016   0.7031798   0.8112234


### Parameter: RR


agecat        studyid         country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   IRC             INDIA        4-5                  3 or less         1.1832841   0.9231899   1.516656
0-24 months   IRC             INDIA        6-7                  3 or less         1.0913365   0.8362569   1.424222
0-24 months   IRC             INDIA        8+                   3 or less         1.1805833   0.9074724   1.535889
0-24 months   LCNI-5          MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   LCNI-5          MALAWI       4-5                  3 or less         1.0299441   0.9067199   1.169915
0-24 months   LCNI-5          MALAWI       6-7                  3 or less         1.0712539   0.9283819   1.236113
0-24 months   LCNI-5          MALAWI       8+                   3 or less         0.9534135   0.7615161   1.193668
0-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         1.1059637   0.9496039   1.288069
0-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         1.1549026   0.9777972   1.364086
0-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         0.9748793   0.7940943   1.196822
0-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         1.0452841   0.8425123   1.296858
0-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9607061   0.7464496   1.236462
0-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         1.0674243   0.8240165   1.382733
0-24 months   PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         1.0369098   0.8246775   1.303760
0-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         1.0439208   0.8008459   1.360774
0-24 months   PROVIDE         BANGLADESH   8+                   3 or less         0.9884452   0.7181798   1.360417
0-24 months   SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         1.0597324   0.8756092   1.282573
0-24 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         1.1452620   0.9477874   1.383881
0-24 months   SAS-FoodSuppl   INDIA        8+                   3 or less         1.0857143   0.8827484   1.335347
0-6 months    IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    IRC             INDIA        4-5                  3 or less         1.2451391   0.8581960   1.806547
0-6 months    IRC             INDIA        6-7                  3 or less         1.0437619   0.6944523   1.568774
0-6 months    IRC             INDIA        8+                   3 or less         1.0273716   0.6670689   1.582284
0-6 months    NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth       BANGLADESH   4-5                  3 or less         0.9910607   0.7537776   1.303039
0-6 months    NIH-Birth       BANGLADESH   6-7                  3 or less         1.0202135   0.7479826   1.391524
0-6 months    NIH-Birth       BANGLADESH   8+                   3 or less         0.8918710   0.6029724   1.319188
0-6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less         0.8616145   0.6384282   1.162824
0-6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         0.8051322   0.5636669   1.150037
0-6 months    NIH-Crypto      BANGLADESH   8+                   3 or less         1.0723577   0.7596043   1.513882
0-6 months    PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    PROVIDE         BANGLADESH   4-5                  3 or less         1.0846702   0.7580997   1.551919
0-6 months    PROVIDE         BANGLADESH   6-7                  3 or less         0.9768899   0.6365974   1.499085
0-6 months    PROVIDE         BANGLADESH   8+                   3 or less         0.9420929   0.5657640   1.568744
0-6 months    SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         1.3598971   0.7763244   2.382149
0-6 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         1.2664343   0.7079453   2.265508
0-6 months    SAS-FoodSuppl   INDIA        8+                   3 or less         1.4270239   0.7887495   2.581805
6-24 months   IRC             INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   IRC             INDIA        4-5                  3 or less         1.2529784   0.6736367   2.330566
6-24 months   IRC             INDIA        6-7                  3 or less         1.3220459   0.7046118   2.480522
6-24 months   IRC             INDIA        8+                   3 or less         1.5821558   0.8530057   2.934584
6-24 months   LCNI-5          MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   LCNI-5          MALAWI       4-5                  3 or less         0.9852722   0.8521548   1.139184
6-24 months   LCNI-5          MALAWI       6-7                  3 or less         1.0657372   0.9049054   1.255154
6-24 months   LCNI-5          MALAWI       8+                   3 or less         1.0029063   0.8007443   1.256108
6-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         1.1872631   0.9272706   1.520154
6-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         1.1780732   0.8870384   1.564596
6-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         0.9160348   0.6363177   1.318712
6-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         1.4369275   0.8709058   2.370820
6-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         1.1242659   0.6380814   1.980897
6-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         1.0894088   0.5692728   2.084785
6-24 months   PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         1.0100543   0.6788799   1.502784
6-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         1.1281725   0.7190619   1.770047
6-24 months   PROVIDE         BANGLADESH   8+                   3 or less         0.9371451   0.5436647   1.615409
6-24 months   SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         1.1136493   0.8215720   1.509563
6-24 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         1.2513369   0.9275155   1.688213
6-24 months   SAS-FoodSuppl   INDIA        8+                   3 or less         1.1987281   0.8638907   1.663346


### Parameter: PAR


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                 0.0748346   -0.0408413   0.1905104
0-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0186650   -0.0344369   0.0717669
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0345480   -0.0390354   0.1081314
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0098618   -0.0719761   0.0916996
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0112174   -0.0627071   0.0851419
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.0645933   -0.0630747   0.1922613
0-6 months    IRC             INDIA        3 or less            NA                 0.0441228   -0.0741057   0.1623513
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0077795   -0.0798101   0.0642511
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.0339386   -0.1115561   0.0436789
0-6 months    PROVIDE         BANGLADESH   3 or less            NA                 0.0072213   -0.0565078   0.0709504
0-6 months    SAS-FoodSuppl   INDIA        3 or less            NA                 0.0920486   -0.0598875   0.2439846
6-24 months   IRC             INDIA        3 or less            NA                 0.0891229   -0.0566750   0.2349209
6-24 months   LCNI-5          MALAWI       3 or less            NA                -0.0015284   -0.0589699   0.0559132
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0510111   -0.0493051   0.1513273
6-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0555039   -0.0354535   0.1464612
6-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0065140   -0.0829960   0.0960239
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.1033555   -0.0678495   0.2745605


### Parameter: PAF


agecat        studyid         country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   IRC             INDIA        3 or less            NA                 0.1166622   -0.0838343   0.2800693
0-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0292693   -0.0577148   0.1091000
0-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0519873   -0.0654642   0.1564915
0-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0206498   -0.1666092   0.1778508
0-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0257448   -0.1596059   0.1814692
0-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.0780347   -0.0902029   0.2203102
0-6 months    IRC             INDIA        3 or less            NA                 0.1039675   -0.2230145   0.3435285
0-6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0222422   -0.2505880   0.1644097
0-6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.1123382   -0.4014960   0.1171604
0-6 months    PROVIDE         BANGLADESH   3 or less            NA                 0.0300886   -0.2753520   0.2623777
0-6 months    SAS-FoodSuppl   INDIA        3 or less            NA                 0.2363716   -0.2744637   0.5424520
6-24 months   IRC             INDIA        3 or less            NA                 0.2363259   -0.2688683   0.5403794
6-24 months   LCNI-5          MALAWI       3 or less            NA                -0.0025473   -0.1030018   0.0887585
6-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0888830   -0.1032522   0.2475571
6-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.2111651   -0.2209706   0.4903558
6-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0216815   -0.3264999   0.2784718
6-24 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.1364967   -0.1231626   0.3361264
