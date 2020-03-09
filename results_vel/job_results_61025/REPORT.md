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

**Outcome Variable:** y_rate_haz

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
* trth2o
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
* delta_trth2o
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

agecat         studyid         country      nhh          n_cell     n
-------------  --------------  -----------  ----------  -------  ----
0-3 months     IRC             INDIA        3 or less        53   377
0-3 months     IRC             INDIA        4-5             146   377
0-3 months     IRC             INDIA        6-7              99   377
0-3 months     IRC             INDIA        8+               79   377
0-3 months     NIH-Birth       BANGLADESH   3 or less       101   566
0-3 months     NIH-Birth       BANGLADESH   4-5             239   566
0-3 months     NIH-Birth       BANGLADESH   6-7             132   566
0-3 months     NIH-Birth       BANGLADESH   8+               94   566
0-3 months     NIH-Crypto      BANGLADESH   3 or less       108   721
0-3 months     NIH-Crypto      BANGLADESH   4-5             324   721
0-3 months     NIH-Crypto      BANGLADESH   6-7             169   721
0-3 months     NIH-Crypto      BANGLADESH   8+              120   721
0-3 months     PROVIDE         BANGLADESH   3 or less       123   640
0-3 months     PROVIDE         BANGLADESH   4-5             296   640
0-3 months     PROVIDE         BANGLADESH   6-7             136   640
0-3 months     PROVIDE         BANGLADESH   8+               85   640
3-6 months     IRC             INDIA        3 or less        57   397
3-6 months     IRC             INDIA        4-5             154   397
3-6 months     IRC             INDIA        6-7             103   397
3-6 months     IRC             INDIA        8+               83   397
3-6 months     NIH-Birth       BANGLADESH   3 or less        89   523
3-6 months     NIH-Birth       BANGLADESH   4-5             223   523
3-6 months     NIH-Birth       BANGLADESH   6-7             126   523
3-6 months     NIH-Birth       BANGLADESH   8+               85   523
3-6 months     NIH-Crypto      BANGLADESH   3 or less       101   695
3-6 months     NIH-Crypto      BANGLADESH   4-5             316   695
3-6 months     NIH-Crypto      BANGLADESH   6-7             163   695
3-6 months     NIH-Crypto      BANGLADESH   8+              115   695
3-6 months     PROVIDE         BANGLADESH   3 or less       104   598
3-6 months     PROVIDE         BANGLADESH   4-5             285   598
3-6 months     PROVIDE         BANGLADESH   6-7             129   598
3-6 months     PROVIDE         BANGLADESH   8+               80   598
6-9 months     IRC             INDIA        3 or less        58   407
6-9 months     IRC             INDIA        4-5             158   407
6-9 months     IRC             INDIA        6-7             106   407
6-9 months     IRC             INDIA        8+               85   407
6-9 months     LCNI-5          MALAWI       3 or less       143   559
6-9 months     LCNI-5          MALAWI       4-5             247   559
6-9 months     LCNI-5          MALAWI       6-7             123   559
6-9 months     LCNI-5          MALAWI       8+               46   559
6-9 months     NIH-Birth       BANGLADESH   3 or less        88   498
6-9 months     NIH-Birth       BANGLADESH   4-5             213   498
6-9 months     NIH-Birth       BANGLADESH   6-7             116   498
6-9 months     NIH-Birth       BANGLADESH   8+               81   498
6-9 months     NIH-Crypto      BANGLADESH   3 or less        98   688
6-9 months     NIH-Crypto      BANGLADESH   4-5             316   688
6-9 months     NIH-Crypto      BANGLADESH   6-7             164   688
6-9 months     NIH-Crypto      BANGLADESH   8+              110   688
6-9 months     PROVIDE         BANGLADESH   3 or less       100   565
6-9 months     PROVIDE         BANGLADESH   4-5             269   565
6-9 months     PROVIDE         BANGLADESH   6-7             120   565
6-9 months     PROVIDE         BANGLADESH   8+               76   565
6-9 months     SAS-FoodSuppl   INDIA        3 or less        23   314
6-9 months     SAS-FoodSuppl   INDIA        4-5             143   314
6-9 months     SAS-FoodSuppl   INDIA        6-7              95   314
6-9 months     SAS-FoodSuppl   INDIA        8+               53   314
9-12 months    IRC             INDIA        3 or less        57   400
9-12 months    IRC             INDIA        4-5             154   400
9-12 months    IRC             INDIA        6-7             104   400
9-12 months    IRC             INDIA        8+               85   400
9-12 months    LCNI-5          MALAWI       3 or less       108   383
9-12 months    LCNI-5          MALAWI       4-5             165   383
9-12 months    LCNI-5          MALAWI       6-7              82   383
9-12 months    LCNI-5          MALAWI       8+               28   383
9-12 months    NIH-Birth       BANGLADESH   3 or less        87   482
9-12 months    NIH-Birth       BANGLADESH   4-5             203   482
9-12 months    NIH-Birth       BANGLADESH   6-7             113   482
9-12 months    NIH-Birth       BANGLADESH   8+               79   482
9-12 months    NIH-Crypto      BANGLADESH   3 or less        93   674
9-12 months    NIH-Crypto      BANGLADESH   4-5             308   674
9-12 months    NIH-Crypto      BANGLADESH   6-7             164   674
9-12 months    NIH-Crypto      BANGLADESH   8+              109   674
9-12 months    PROVIDE         BANGLADESH   3 or less       105   566
9-12 months    PROVIDE         BANGLADESH   4-5             267   566
9-12 months    PROVIDE         BANGLADESH   6-7             115   566
9-12 months    PROVIDE         BANGLADESH   8+               79   566
9-12 months    SAS-FoodSuppl   INDIA        3 or less        20   311
9-12 months    SAS-FoodSuppl   INDIA        4-5             142   311
9-12 months    SAS-FoodSuppl   INDIA        6-7              99   311
9-12 months    SAS-FoodSuppl   INDIA        8+               50   311
12-15 months   IRC             INDIA        3 or less        56   390
12-15 months   IRC             INDIA        4-5             149   390
12-15 months   IRC             INDIA        6-7             101   390
12-15 months   IRC             INDIA        8+               84   390
12-15 months   LCNI-5          MALAWI       3 or less        37   126
12-15 months   LCNI-5          MALAWI       4-5              53   126
12-15 months   LCNI-5          MALAWI       6-7              27   126
12-15 months   LCNI-5          MALAWI       8+                9   126
12-15 months   NIH-Birth       BANGLADESH   3 or less        82   461
12-15 months   NIH-Birth       BANGLADESH   4-5             194   461
12-15 months   NIH-Birth       BANGLADESH   6-7             107   461
12-15 months   NIH-Birth       BANGLADESH   8+               78   461
12-15 months   NIH-Crypto      BANGLADESH   3 or less        91   660
12-15 months   NIH-Crypto      BANGLADESH   4-5             301   660
12-15 months   NIH-Crypto      BANGLADESH   6-7             162   660
12-15 months   NIH-Crypto      BANGLADESH   8+              106   660
12-15 months   PROVIDE         BANGLADESH   3 or less        96   532
12-15 months   PROVIDE         BANGLADESH   4-5             249   532
12-15 months   PROVIDE         BANGLADESH   6-7             109   532
12-15 months   PROVIDE         BANGLADESH   8+               78   532
12-15 months   SAS-FoodSuppl   INDIA        3 or less        22   303
12-15 months   SAS-FoodSuppl   INDIA        4-5             129   303
12-15 months   SAS-FoodSuppl   INDIA        6-7             104   303
12-15 months   SAS-FoodSuppl   INDIA        8+               48   303
15-18 months   IRC             INDIA        3 or less        55   382
15-18 months   IRC             INDIA        4-5             146   382
15-18 months   IRC             INDIA        6-7             101   382
15-18 months   IRC             INDIA        8+               80   382
15-18 months   LCNI-5          MALAWI       3 or less        35   119
15-18 months   LCNI-5          MALAWI       4-5              49   119
15-18 months   LCNI-5          MALAWI       6-7              27   119
15-18 months   LCNI-5          MALAWI       8+                8   119
15-18 months   NIH-Birth       BANGLADESH   3 or less        76   449
15-18 months   NIH-Birth       BANGLADESH   4-5             188   449
15-18 months   NIH-Birth       BANGLADESH   6-7             108   449
15-18 months   NIH-Birth       BANGLADESH   8+               77   449
15-18 months   NIH-Crypto      BANGLADESH   3 or less        83   604
15-18 months   NIH-Crypto      BANGLADESH   4-5             278   604
15-18 months   NIH-Crypto      BANGLADESH   6-7             145   604
15-18 months   NIH-Crypto      BANGLADESH   8+               98   604
15-18 months   PROVIDE         BANGLADESH   3 or less        93   528
15-18 months   PROVIDE         BANGLADESH   4-5             245   528
15-18 months   PROVIDE         BANGLADESH   6-7             111   528
15-18 months   PROVIDE         BANGLADESH   8+               79   528
15-18 months   SAS-FoodSuppl   INDIA        3 or less        23   291
15-18 months   SAS-FoodSuppl   INDIA        4-5             122   291
15-18 months   SAS-FoodSuppl   INDIA        6-7              98   291
15-18 months   SAS-FoodSuppl   INDIA        8+               48   291
18-21 months   IRC             INDIA        3 or less        54   379
18-21 months   IRC             INDIA        4-5             144   379
18-21 months   IRC             INDIA        6-7             101   379
18-21 months   IRC             INDIA        8+               80   379
18-21 months   LCNI-5          MALAWI       3 or less       127   474
18-21 months   LCNI-5          MALAWI       4-5             201   474
18-21 months   LCNI-5          MALAWI       6-7             104   474
18-21 months   LCNI-5          MALAWI       8+               42   474
18-21 months   NIH-Birth       BANGLADESH   3 or less        68   422
18-21 months   NIH-Birth       BANGLADESH   4-5             184   422
18-21 months   NIH-Birth       BANGLADESH   6-7              98   422
18-21 months   NIH-Birth       BANGLADESH   8+               72   422
18-21 months   NIH-Crypto      BANGLADESH   3 or less        77   546
18-21 months   NIH-Crypto      BANGLADESH   4-5             251   546
18-21 months   NIH-Crypto      BANGLADESH   6-7             132   546
18-21 months   NIH-Crypto      BANGLADESH   8+               86   546
18-21 months   PROVIDE         BANGLADESH   3 or less       100   541
18-21 months   PROVIDE         BANGLADESH   4-5             247   541
18-21 months   PROVIDE         BANGLADESH   6-7             114   541
18-21 months   PROVIDE         BANGLADESH   8+               80   541
21-24 months   IRC             INDIA        3 or less        56   389
21-24 months   IRC             INDIA        4-5             147   389
21-24 months   IRC             INDIA        6-7             102   389
21-24 months   IRC             INDIA        8+               84   389
21-24 months   LCNI-5          MALAWI       3 or less       119   405
21-24 months   LCNI-5          MALAWI       4-5             168   405
21-24 months   LCNI-5          MALAWI       6-7              86   405
21-24 months   LCNI-5          MALAWI       8+               32   405
21-24 months   NIH-Birth       BANGLADESH   3 or less        71   411
21-24 months   NIH-Birth       BANGLADESH   4-5             178   411
21-24 months   NIH-Birth       BANGLADESH   6-7              95   411
21-24 months   NIH-Birth       BANGLADESH   8+               67   411
21-24 months   NIH-Crypto      BANGLADESH   3 or less        67   490
21-24 months   NIH-Crypto      BANGLADESH   4-5             223   490
21-24 months   NIH-Crypto      BANGLADESH   6-7             123   490
21-24 months   NIH-Crypto      BANGLADESH   8+               77   490
21-24 months   PROVIDE         BANGLADESH   3 or less        91   471
21-24 months   PROVIDE         BANGLADESH   4-5             214   471
21-24 months   PROVIDE         BANGLADESH   6-7             101   471
21-24 months   PROVIDE         BANGLADESH   8+               65   471


The following strata were considered:

* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA



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
![](/tmp/79d210df-6a6d-48dd-a9a3-27601c2d90d2/f15b5e77-3115-4078-95f6-3fabcdcc4d01/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/79d210df-6a6d-48dd-a9a3-27601c2d90d2/f15b5e77-3115-4078-95f6-3fabcdcc4d01/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/79d210df-6a6d-48dd-a9a3-27601c2d90d2/f15b5e77-3115-4078-95f6-3fabcdcc4d01/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC             INDIA        3 or less            NA                -0.2215656   -0.3484731   -0.0946581
0-3 months     IRC             INDIA        4-5                  NA                -0.2682499   -0.3556386   -0.1808612
0-3 months     IRC             INDIA        6-7                  NA                -0.1820348   -0.3120854   -0.0519842
0-3 months     IRC             INDIA        8+                   NA                -0.3130853   -0.4249579   -0.2012128
0-3 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.2612160   -0.3273719   -0.1950601
0-3 months     NIH-Birth       BANGLADESH   4-5                  NA                -0.2454018   -0.2839789   -0.2068247
0-3 months     NIH-Birth       BANGLADESH   6-7                  NA                -0.2262768   -0.2958987   -0.1566549
0-3 months     NIH-Birth       BANGLADESH   8+                   NA                -0.1909296   -0.2627229   -0.1191364
0-3 months     NIH-Crypto      BANGLADESH   3 or less            NA                -0.2255202   -0.2786873   -0.1723531
0-3 months     NIH-Crypto      BANGLADESH   4-5                  NA                -0.2364402   -0.2669735   -0.2059068
0-3 months     NIH-Crypto      BANGLADESH   6-7                  NA                -0.2135249   -0.2654429   -0.1616070
0-3 months     NIH-Crypto      BANGLADESH   8+                   NA                -0.1790183   -0.2180997   -0.1399369
0-3 months     PROVIDE         BANGLADESH   3 or less            NA                -0.1714546   -0.2103367   -0.1325725
0-3 months     PROVIDE         BANGLADESH   4-5                  NA                -0.1839649   -0.2108544   -0.1570755
0-3 months     PROVIDE         BANGLADESH   6-7                  NA                -0.1957378   -0.2379435   -0.1535322
0-3 months     PROVIDE         BANGLADESH   8+                   NA                -0.2100175   -0.2592735   -0.1607614
3-6 months     IRC             INDIA        3 or less            NA                -0.0676702   -0.1479394    0.0125990
3-6 months     IRC             INDIA        4-5                  NA                -0.0556459   -0.1064976   -0.0047942
3-6 months     IRC             INDIA        6-7                  NA                -0.0684867   -0.1208473   -0.0161261
3-6 months     IRC             INDIA        8+                   NA                -0.0069836   -0.0795312    0.0655641
3-6 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0359534   -0.0830748    0.0111679
3-6 months     NIH-Birth       BANGLADESH   4-5                  NA                -0.0821378   -0.1182817   -0.0459939
3-6 months     NIH-Birth       BANGLADESH   6-7                  NA                -0.0144172   -0.0674124    0.0385781
3-6 months     NIH-Birth       BANGLADESH   8+                   NA                -0.0356627   -0.0920083    0.0206828
3-6 months     NIH-Crypto      BANGLADESH   3 or less            NA                 0.0071928   -0.0383412    0.0527268
3-6 months     NIH-Crypto      BANGLADESH   4-5                  NA                 0.0304821    0.0028285    0.0581357
3-6 months     NIH-Crypto      BANGLADESH   6-7                  NA                 0.0263063   -0.0219163    0.0745289
3-6 months     NIH-Crypto      BANGLADESH   8+                   NA                -0.0478284   -0.0933621   -0.0022947
3-6 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0303683   -0.0735002    0.0127635
3-6 months     PROVIDE         BANGLADESH   4-5                  NA                -0.0352676   -0.0572150   -0.0133203
3-6 months     PROVIDE         BANGLADESH   6-7                  NA                -0.0038384   -0.0417901    0.0341134
3-6 months     PROVIDE         BANGLADESH   8+                   NA                -0.0342580   -0.0789866    0.0104706
6-9 months     IRC             INDIA        3 or less            NA                -0.0451621   -0.0905140    0.0001898
6-9 months     IRC             INDIA        4-5                  NA                -0.0197013   -0.0534895    0.0140868
6-9 months     IRC             INDIA        6-7                  NA                -0.0044885   -0.0519056    0.0429287
6-9 months     IRC             INDIA        8+                   NA                -0.0212181   -0.0758288    0.0333926
6-9 months     LCNI-5          MALAWI       3 or less            NA                 0.0315300    0.0008770    0.0621829
6-9 months     LCNI-5          MALAWI       4-5                  NA                 0.0234279   -0.0015379    0.0483937
6-9 months     LCNI-5          MALAWI       6-7                  NA                 0.0428744    0.0088680    0.0768807
6-9 months     LCNI-5          MALAWI       8+                   NA                 0.0081585   -0.0489005    0.0652175
6-9 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0259883   -0.0666999    0.0147233
6-9 months     NIH-Birth       BANGLADESH   4-5                  NA                -0.0570119   -0.0863460   -0.0276779
6-9 months     NIH-Birth       BANGLADESH   6-7                  NA                -0.0777768   -0.1214120   -0.0341416
6-9 months     NIH-Birth       BANGLADESH   8+                   NA                -0.0809658   -0.1281107   -0.0338209
6-9 months     NIH-Crypto      BANGLADESH   3 or less            NA                 0.0194551   -0.0163445    0.0552547
6-9 months     NIH-Crypto      BANGLADESH   4-5                  NA                -0.0373886   -0.0547311   -0.0200461
6-9 months     NIH-Crypto      BANGLADESH   6-7                  NA                -0.0433507   -0.0731890   -0.0135124
6-9 months     NIH-Crypto      BANGLADESH   8+                   NA                -0.0316776   -0.0663646    0.0030094
6-9 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0575839   -0.0836857   -0.0314821
6-9 months     PROVIDE         BANGLADESH   4-5                  NA                -0.0560029   -0.0712921   -0.0407137
6-9 months     PROVIDE         BANGLADESH   6-7                  NA                -0.0723973   -0.0977217   -0.0470728
6-9 months     PROVIDE         BANGLADESH   8+                   NA                -0.0685360   -0.1024422   -0.0346299
6-9 months     SAS-FoodSuppl   INDIA        3 or less            NA                -0.0988688   -0.1834388   -0.0142987
6-9 months     SAS-FoodSuppl   INDIA        4-5                  NA                -0.1033933   -0.1291429   -0.0776436
6-9 months     SAS-FoodSuppl   INDIA        6-7                  NA                -0.1050498   -0.1381557   -0.0719439
6-9 months     SAS-FoodSuppl   INDIA        8+                   NA                -0.1197902   -0.1680043   -0.0715760
9-12 months    IRC             INDIA        3 or less            NA                -0.0134231   -0.0579955    0.0311493
9-12 months    IRC             INDIA        4-5                  NA                -0.0104994   -0.0408210    0.0198223
9-12 months    IRC             INDIA        6-7                  NA                -0.0524837   -0.0838315   -0.0211359
9-12 months    IRC             INDIA        8+                   NA                -0.0866123   -0.1195786   -0.0536460
9-12 months    LCNI-5          MALAWI       3 or less            NA                -0.0310439   -0.0725199    0.0104321
9-12 months    LCNI-5          MALAWI       4-5                  NA                -0.0535996   -0.0825085   -0.0246908
9-12 months    LCNI-5          MALAWI       6-7                  NA                -0.0512301   -0.0938803   -0.0085800
9-12 months    LCNI-5          MALAWI       8+                   NA                -0.0269651   -0.0785658    0.0246356
9-12 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0496026   -0.0872717   -0.0119334
9-12 months    NIH-Birth       BANGLADESH   4-5                  NA                -0.0507627   -0.0709070   -0.0306184
9-12 months    NIH-Birth       BANGLADESH   6-7                  NA                -0.0249812   -0.0655691    0.0156068
9-12 months    NIH-Birth       BANGLADESH   8+                   NA                -0.0411833   -0.0839280    0.0015614
9-12 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.0317067   -0.0537819   -0.0096316
9-12 months    NIH-Crypto      BANGLADESH   4-5                  NA                -0.0321870   -0.0510876   -0.0132863
9-12 months    NIH-Crypto      BANGLADESH   6-7                  NA                -0.0570155   -0.0858217   -0.0282092
9-12 months    NIH-Crypto      BANGLADESH   8+                   NA                -0.0340658   -0.0572226   -0.0109090
9-12 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0492819   -0.0733033   -0.0252604
9-12 months    PROVIDE         BANGLADESH   4-5                  NA                -0.0613787   -0.0787579   -0.0439994
9-12 months    PROVIDE         BANGLADESH   6-7                  NA                -0.0731397   -0.0973375   -0.0489420
9-12 months    PROVIDE         BANGLADESH   8+                   NA                -0.0561730   -0.0861044   -0.0262415
9-12 months    SAS-FoodSuppl   INDIA        3 or less            NA                 0.1389086   -0.3014892    0.5793065
9-12 months    SAS-FoodSuppl   INDIA        4-5                  NA                -0.1444580   -0.2275906   -0.0613255
9-12 months    SAS-FoodSuppl   INDIA        6-7                  NA                -0.2073898   -0.2630924   -0.1516871
9-12 months    SAS-FoodSuppl   INDIA        8+                   NA                -0.1370548   -0.2890336    0.0149240
12-15 months   IRC             INDIA        3 or less            NA                -0.0310702   -0.0722589    0.0101184
12-15 months   IRC             INDIA        4-5                  NA                -0.0509778   -0.0746657   -0.0272900
12-15 months   IRC             INDIA        6-7                  NA                -0.0352602   -0.0782164    0.0076960
12-15 months   IRC             INDIA        8+                   NA                -0.0589848   -0.0953758   -0.0225938
12-15 months   LCNI-5          MALAWI       3 or less            NA                 0.0054629   -0.0571554    0.0680813
12-15 months   LCNI-5          MALAWI       4-5                  NA                -0.0677429   -0.1374528    0.0019669
12-15 months   LCNI-5          MALAWI       6-7                  NA                -0.0449941   -0.0916267    0.0016384
12-15 months   LCNI-5          MALAWI       8+                   NA                -0.0535499   -0.1504158    0.0433159
12-15 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.1333073   -0.1634217   -0.1031930
12-15 months   NIH-Birth       BANGLADESH   4-5                  NA                -0.1396944   -0.1602028   -0.1191859
12-15 months   NIH-Birth       BANGLADESH   6-7                  NA                -0.1209733   -0.1542257   -0.0877209
12-15 months   NIH-Birth       BANGLADESH   8+                   NA                -0.1119020   -0.1625910   -0.0612130
12-15 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0175413   -0.0421789    0.0070963
12-15 months   NIH-Crypto      BANGLADESH   4-5                  NA                -0.0356227   -0.0531099   -0.0181355
12-15 months   NIH-Crypto      BANGLADESH   6-7                  NA                -0.0434093   -0.0678060   -0.0190125
12-15 months   NIH-Crypto      BANGLADESH   8+                   NA                -0.0853078   -0.1021270   -0.0684887
12-15 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0442778   -0.0674419   -0.0211137
12-15 months   PROVIDE         BANGLADESH   4-5                  NA                -0.0454988   -0.0601796   -0.0308181
12-15 months   PROVIDE         BANGLADESH   6-7                  NA                -0.0334630   -0.0554171   -0.0115088
12-15 months   PROVIDE         BANGLADESH   8+                   NA                -0.0398374   -0.0695246   -0.0101501
12-15 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.1433348   -0.4514502    0.1647806
12-15 months   SAS-FoodSuppl   INDIA        4-5                  NA                 0.0383346    0.0089627    0.0677064
12-15 months   SAS-FoodSuppl   INDIA        6-7                  NA                 0.0069564   -0.0580955    0.0720083
12-15 months   SAS-FoodSuppl   INDIA        8+                   NA                 0.0218642   -0.0644461    0.1081745
15-18 months   IRC             INDIA        3 or less            NA                -0.0452513   -0.0764361   -0.0140664
15-18 months   IRC             INDIA        4-5                  NA                -0.0387068   -0.0661864   -0.0112272
15-18 months   IRC             INDIA        6-7                  NA                -0.0291493   -0.0533214   -0.0049772
15-18 months   IRC             INDIA        8+                   NA                -0.0302893   -0.0683009    0.0077222
15-18 months   LCNI-5          MALAWI       3 or less            NA                -0.0745143   -0.1248856   -0.0241429
15-18 months   LCNI-5          MALAWI       4-5                  NA                -0.0340961   -0.0694324    0.0012401
15-18 months   LCNI-5          MALAWI       6-7                  NA                -0.0280637   -0.0921686    0.0360412
15-18 months   LCNI-5          MALAWI       8+                   NA                -0.0606805   -0.1090579   -0.0123032
15-18 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0502303   -0.0917689   -0.0086918
15-18 months   NIH-Birth       BANGLADESH   4-5                  NA                -0.0435855   -0.0653517   -0.0218192
15-18 months   NIH-Birth       BANGLADESH   6-7                  NA                -0.0582056   -0.0986265   -0.0177848
15-18 months   NIH-Birth       BANGLADESH   8+                   NA                -0.0567441   -0.1016650   -0.0118231
15-18 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0487295   -0.0758613   -0.0215978
15-18 months   NIH-Crypto      BANGLADESH   4-5                  NA                -0.0077456   -0.0230745    0.0075833
15-18 months   NIH-Crypto      BANGLADESH   6-7                  NA                -0.0153999   -0.0372333    0.0064336
15-18 months   NIH-Crypto      BANGLADESH   8+                   NA                 0.0041665   -0.0168427    0.0251758
15-18 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0352831   -0.0577434   -0.0128227
15-18 months   PROVIDE         BANGLADESH   4-5                  NA                -0.0388331   -0.0517887   -0.0258774
15-18 months   PROVIDE         BANGLADESH   6-7                  NA                -0.0326387   -0.0535309   -0.0117466
15-18 months   PROVIDE         BANGLADESH   8+                   NA                -0.0357029   -0.0607940   -0.0106119
15-18 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.0363106   -0.0784651    0.0058439
15-18 months   SAS-FoodSuppl   INDIA        4-5                  NA                -0.0423746   -0.0616566   -0.0230927
15-18 months   SAS-FoodSuppl   INDIA        6-7                  NA                -0.0391829   -0.0629658   -0.0154000
15-18 months   SAS-FoodSuppl   INDIA        8+                   NA                -0.0156723   -0.0505767    0.0192320
18-21 months   IRC             INDIA        3 or less            NA                -0.0336268   -0.0684309    0.0011773
18-21 months   IRC             INDIA        4-5                  NA                -0.0501174   -0.0712253   -0.0290094
18-21 months   IRC             INDIA        6-7                  NA                -0.0254850   -0.0545787    0.0036087
18-21 months   IRC             INDIA        8+                   NA                -0.0426134   -0.0714482   -0.0137786
18-21 months   LCNI-5          MALAWI       3 or less            NA                -0.0044079   -0.0351482    0.0263324
18-21 months   LCNI-5          MALAWI       4-5                  NA                -0.0293537   -0.0523506   -0.0063567
18-21 months   LCNI-5          MALAWI       6-7                  NA                 0.0067028   -0.0231294    0.0365350
18-21 months   LCNI-5          MALAWI       8+                   NA                -0.0047649   -0.0754946    0.0659647
18-21 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0364277   -0.0636271   -0.0092283
18-21 months   NIH-Birth       BANGLADESH   4-5                  NA                -0.0338070   -0.0518300   -0.0157841
18-21 months   NIH-Birth       BANGLADESH   6-7                  NA                -0.0601984   -0.0938329   -0.0265639
18-21 months   NIH-Birth       BANGLADESH   8+                   NA                -0.0433355   -0.0759507   -0.0107204
18-21 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0113775   -0.0388761    0.0161210
18-21 months   NIH-Crypto      BANGLADESH   4-5                  NA                -0.0346661   -0.0457412   -0.0235909
18-21 months   NIH-Crypto      BANGLADESH   6-7                  NA                -0.0343329   -0.0515772   -0.0170885
18-21 months   NIH-Crypto      BANGLADESH   8+                   NA                -0.0080857   -0.0281059    0.0119344
18-21 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0076471   -0.0287981    0.0135038
18-21 months   PROVIDE         BANGLADESH   4-5                  NA                -0.0134613   -0.0255614   -0.0013611
18-21 months   PROVIDE         BANGLADESH   6-7                  NA                -0.0114346   -0.0302735    0.0074043
18-21 months   PROVIDE         BANGLADESH   8+                   NA                -0.0037687   -0.0250403    0.0175029
21-24 months   IRC             INDIA        3 or less            NA                 0.0152321   -0.0362901    0.0667544
21-24 months   IRC             INDIA        4-5                  NA                -0.0208875   -0.0443611    0.0025862
21-24 months   IRC             INDIA        6-7                  NA                -0.0284970   -0.0526841   -0.0043098
21-24 months   IRC             INDIA        8+                   NA                -0.0053233   -0.0312685    0.0206220
21-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0276423   -0.0009803    0.0562650
21-24 months   LCNI-5          MALAWI       4-5                  NA                 0.0141795   -0.0106599    0.0390188
21-24 months   LCNI-5          MALAWI       6-7                  NA                 0.0278886   -0.0060400    0.0618171
21-24 months   LCNI-5          MALAWI       8+                   NA                 0.0434486   -0.0001503    0.0870475
21-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0377596    0.0052234    0.0702959
21-24 months   NIH-Birth       BANGLADESH   4-5                  NA                 0.0363920    0.0197807    0.0530032
21-24 months   NIH-Birth       BANGLADESH   6-7                  NA                 0.0440595    0.0159703    0.0721487
21-24 months   NIH-Birth       BANGLADESH   8+                   NA                 0.0459153    0.0173358    0.0744947
21-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0464629    0.0211602    0.0717656
21-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                 0.0669735    0.0548183    0.0791288
21-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                 0.0711811    0.0507580    0.0916042
21-24 months   NIH-Crypto      BANGLADESH   8+                   NA                 0.0334328    0.0104414    0.0564243
21-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0631033    0.0421576    0.0840489
21-24 months   PROVIDE         BANGLADESH   4-5                  NA                 0.0421001    0.0297909    0.0544093
21-24 months   PROVIDE         BANGLADESH   6-7                  NA                 0.0408996    0.0211973    0.0606019
21-24 months   PROVIDE         BANGLADESH   8+                   NA                 0.0440088    0.0208375    0.0671801


### Parameter: E(Y)


agecat         studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC             INDIA        NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     NIH-Birth       BANGLADESH   NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     NIH-Crypto      BANGLADESH   NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROVIDE         BANGLADESH   NA                   NA                -0.1880402   -0.2054115   -0.1706689
3-6 months     IRC             INDIA        NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     NIH-Birth       BANGLADESH   NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     NIH-Crypto      BANGLADESH   NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROVIDE         BANGLADESH   NA                   NA                -0.0269625   -0.0428628   -0.0110622
6-9 months     IRC             INDIA        NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     LCNI-5          MALAWI       NA                   NA                 0.0279334    0.0120046    0.0438622
6-9 months     NIH-Birth       BANGLADESH   NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     NIH-Crypto      BANGLADESH   NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROVIDE         BANGLADESH   NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-FoodSuppl   INDIA        NA                   NA                -0.1052304   -0.1233192   -0.0871417
9-12 months    IRC             INDIA        NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    LCNI-5          MALAWI       NA                   NA                -0.0433141   -0.0626948   -0.0239333
9-12 months    NIH-Birth       BANGLADESH   NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    NIH-Crypto      BANGLADESH   NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROVIDE         BANGLADESH   NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-FoodSuppl   INDIA        NA                   NA                -0.1462637   -0.2015231   -0.0910043
12-15 months   IRC             INDIA        NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   LCNI-5          MALAWI       NA                   NA                -0.0403575   -0.0774359   -0.0032790
12-15 months   NIH-Birth       BANGLADESH   NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   NIH-Crypto      BANGLADESH   NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROVIDE         BANGLADESH   NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-FoodSuppl   INDIA        NA                   NA                 0.0088746   -0.0268397    0.0445889
15-18 months   IRC             INDIA        NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   LCNI-5          MALAWI       NA                   NA                -0.0464023   -0.0722064   -0.0205982
15-18 months   NIH-Birth       BANGLADESH   NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   NIH-Crypto      BANGLADESH   NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROVIDE         BANGLADESH   NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-FoodSuppl   INDIA        NA                   NA                -0.0369125   -0.0500204   -0.0238046
18-21 months   IRC             INDIA        NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   LCNI-5          MALAWI       NA                   NA                -0.0147327   -0.0309734    0.0015080
18-21 months   NIH-Birth       BANGLADESH   NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   NIH-Crypto      BANGLADESH   NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROVIDE         BANGLADESH   NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   IRC             INDIA        NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   LCNI-5          MALAWI       NA                   NA                 0.0258428    0.0105053    0.0411803
21-24 months   NIH-Birth       BANGLADESH   NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   NIH-Crypto      BANGLADESH   NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROVIDE         BANGLADESH   NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     IRC             INDIA        4-5                  3 or less         -0.0466843   -0.2005743    0.1072058
0-3 months     IRC             INDIA        6-7                  3 or less          0.0395308   -0.1418807    0.2209424
0-3 months     IRC             INDIA        8+                   3 or less         -0.0915197   -0.2606405    0.0776011
0-3 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth       BANGLADESH   4-5                  3 or less          0.0158142   -0.0609833    0.0926117
0-3 months     NIH-Birth       BANGLADESH   6-7                  3 or less          0.0349392   -0.0610639    0.1309423
0-3 months     NIH-Birth       BANGLADESH   8+                   3 or less          0.0702864   -0.0276936    0.1682664
0-3 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0109200   -0.0723563    0.0505163
0-3 months     NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0119953   -0.0625783    0.0865688
0-3 months     NIH-Crypto      BANGLADESH   8+                   3 or less          0.0465019   -0.0196960    0.1126998
0-3 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0125103   -0.0598992    0.0348785
0-3 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0242832   -0.0816329    0.0330665
0-3 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0385629   -0.1012534    0.0241277
3-6 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     IRC             INDIA        4-5                  3 or less          0.0120243   -0.0831409    0.1071895
3-6 months     IRC             INDIA        6-7                  3 or less         -0.0008165   -0.0968397    0.0952067
3-6 months     IRC             INDIA        8+                   3 or less          0.0606866   -0.0476904    0.1690637
3-6 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0461843   -0.1060501    0.0136815
3-6 months     NIH-Birth       BANGLADESH   6-7                  3 or less          0.0215363   -0.0497603    0.0928329
3-6 months     NIH-Birth       BANGLADESH   8+                   3 or less          0.0002907   -0.0733846    0.0739660
3-6 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0232893   -0.0300940    0.0766725
3-6 months     NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0191135   -0.0472368    0.0854638
3-6 months     NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0550212   -0.1195129    0.0094705
3-6 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0048993   -0.0533215    0.0435229
3-6 months     PROVIDE         BANGLADESH   6-7                  3 or less          0.0265300   -0.0309599    0.0840199
3-6 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0038896   -0.0660148    0.0582356
6-9 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     IRC             INDIA        4-5                  3 or less          0.0254607   -0.0312625    0.0821839
6-9 months     IRC             INDIA        6-7                  3 or less          0.0406736   -0.0246827    0.1060299
6-9 months     IRC             INDIA        8+                   3 or less          0.0239440   -0.0470510    0.0949389
6-9 months     LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5          MALAWI       4-5                  3 or less         -0.0081021   -0.0477078    0.0315037
6-9 months     LCNI-5          MALAWI       6-7                  3 or less          0.0113444   -0.0345087    0.0571975
6-9 months     LCNI-5          MALAWI       8+                   3 or less         -0.0233715   -0.0882698    0.0415269
6-9 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0310236   -0.0813277    0.0192805
6-9 months     NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0517885   -0.1114125    0.0078356
6-9 months     NIH-Birth       BANGLADESH   8+                   3 or less         -0.0549775   -0.1173004    0.0073454
6-9 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0568437   -0.0966544   -0.0170331
6-9 months     NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0628058   -0.1094474   -0.0161642
6-9 months     NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0511327   -0.1010373   -0.0012281
6-9 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE         BANGLADESH   4-5                  3 or less          0.0015810   -0.0286309    0.0317929
6-9 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0148134   -0.0511914    0.0215646
6-9 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0109521   -0.0537495    0.0318453
6-9 months     SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0045245   -0.0930848    0.0840357
6-9 months     SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0061811   -0.0970505    0.0846884
6-9 months     SAS-FoodSuppl   INDIA        8+                   3 or less         -0.0209214   -0.1183855    0.0765427
9-12 months    IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    IRC             INDIA        4-5                  3 or less          0.0029238   -0.0510852    0.0569327
9-12 months    IRC             INDIA        6-7                  3 or less         -0.0390606   -0.0937483    0.0156271
9-12 months    IRC             INDIA        8+                   3 or less         -0.0731891   -0.1288099   -0.0175684
9-12 months    LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5          MALAWI       4-5                  3 or less         -0.0225557   -0.0731693    0.0280578
9-12 months    LCNI-5          MALAWI       6-7                  3 or less         -0.0201862   -0.0798086    0.0394361
9-12 months    LCNI-5          MALAWI       8+                   3 or less          0.0040788   -0.0621812    0.0703388
9-12 months    NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0011601   -0.0439154    0.0415951
9-12 months    NIH-Birth       BANGLADESH   6-7                  3 or less          0.0246214   -0.0307762    0.0800190
9-12 months    NIH-Birth       BANGLADESH   8+                   3 or less          0.0084192   -0.0485919    0.0654304
9-12 months    NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0004803   -0.0295724    0.0286119
9-12 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0253087   -0.0616782    0.0110607
9-12 months    NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0023591   -0.0343600    0.0296418
9-12 months    PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE         BANGLADESH   4-5                  3 or less         -0.0120968   -0.0417258    0.0175323
9-12 months    PROVIDE         BANGLADESH   6-7                  3 or less         -0.0238579   -0.0579367    0.0102209
9-12 months    PROVIDE         BANGLADESH   8+                   3 or less         -0.0068911   -0.0452774    0.0314952
9-12 months    SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.2833666   -0.7318145    0.1650812
9-12 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.3462984   -0.7904211    0.0978243
9-12 months    SAS-FoodSuppl   INDIA        8+                   3 or less         -0.2759634   -0.7421926    0.1902657
12-15 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   IRC             INDIA        4-5                  3 or less         -0.0199076   -0.0675837    0.0277685
12-15 months   IRC             INDIA        6-7                  3 or less         -0.0041900   -0.0636048    0.0552249
12-15 months   IRC             INDIA        8+                   3 or less         -0.0279146   -0.0829178    0.0270885
12-15 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0732059   -0.1669103    0.0204986
12-15 months   LCNI-5          MALAWI       6-7                  3 or less         -0.0504570   -0.1285317    0.0276176
12-15 months   LCNI-5          MALAWI       8+                   3 or less         -0.0590128   -0.1743560    0.0563304
12-15 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0063870   -0.0430153    0.0302412
12-15 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0123341   -0.0327632    0.0574313
12-15 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.0214054   -0.0377056    0.0805164
12-15 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0180814   -0.0482945    0.0121317
12-15 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0258679   -0.0605374    0.0088015
12-15 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0677665   -0.0975830   -0.0379501
12-15 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0012210   -0.0286983    0.0262562
12-15 months   PROVIDE         BANGLADESH   6-7                  3 or less          0.0108149   -0.0212135    0.0428432
12-15 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0044404   -0.0332095    0.0420904
12-15 months   SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA        4-5                  3 or less          0.1816693   -0.1277631    0.4911018
12-15 months   SAS-FoodSuppl   INDIA        6-7                  3 or less          0.1502912   -0.1648784    0.4654607
12-15 months   SAS-FoodSuppl   INDIA        8+                   3 or less          0.1651989   -0.1547381    0.4851359
15-18 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   IRC             INDIA        4-5                  3 or less          0.0065445   -0.0347657    0.0478547
15-18 months   IRC             INDIA        6-7                  3 or less          0.0161020   -0.0233778    0.0555818
15-18 months   IRC             INDIA        8+                   3 or less          0.0149619   -0.0343585    0.0642824
15-18 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5          MALAWI       4-5                  3 or less          0.0404181   -0.0211118    0.1019480
15-18 months   LCNI-5          MALAWI       6-7                  3 or less          0.0464505   -0.0350768    0.1279779
15-18 months   LCNI-5          MALAWI       8+                   3 or less          0.0138337   -0.0560064    0.0836738
15-18 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.0066448   -0.0405628    0.0538525
15-18 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0079753   -0.0663719    0.0504214
15-18 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0065137   -0.0677562    0.0547288
15-18 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0409840    0.0097423    0.0722257
15-18 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0333297   -0.0015661    0.0682255
15-18 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0528961    0.0185133    0.0872788
15-18 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0035500   -0.0295120    0.0224120
15-18 months   PROVIDE         BANGLADESH   6-7                  3 or less          0.0026443   -0.0281311    0.0334198
15-18 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.0004199   -0.0340404    0.0332006
15-18 months   SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0060640   -0.0524693    0.0403412
15-18 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0028723   -0.0512704    0.0455258
15-18 months   SAS-FoodSuppl   INDIA        8+                   3 or less          0.0206383   -0.0341915    0.0754680
18-21 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   IRC             INDIA        4-5                  3 or less         -0.0164906   -0.0571881    0.0242069
18-21 months   IRC             INDIA        6-7                  3 or less          0.0081417   -0.0373412    0.0536246
18-21 months   IRC             INDIA        8+                   3 or less         -0.0089866   -0.0541511    0.0361779
18-21 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0249458   -0.0633230    0.0134314
18-21 months   LCNI-5          MALAWI       6-7                  3 or less          0.0111107   -0.0315733    0.0537946
18-21 months   LCNI-5          MALAWI       8+                   3 or less         -0.0003571   -0.0777776    0.0770635
18-21 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.0026206   -0.0301470    0.0353883
18-21 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0237707   -0.0673215    0.0197801
18-21 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0069079   -0.0496260    0.0358103
18-21 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0232886   -0.0529398    0.0063627
18-21 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0229553   -0.0553931    0.0094824
18-21 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0032918   -0.0306568    0.0372403
18-21 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0058141   -0.0302000    0.0185717
18-21 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0037874   -0.0322618    0.0246869
18-21 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0038784   -0.0261883    0.0339451
21-24 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   IRC             INDIA        4-5                  3 or less         -0.0361196   -0.0924370    0.0201978
21-24 months   IRC             INDIA        6-7                  3 or less         -0.0437291   -0.1004319    0.0129736
21-24 months   IRC             INDIA        8+                   3 or less         -0.0205554   -0.0782862    0.0371754
21-24 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0134629   -0.0513525    0.0244268
21-24 months   LCNI-5          MALAWI       6-7                  3 or less          0.0002462   -0.0442309    0.0447234
21-24 months   LCNI-5          MALAWI       8+                   3 or less          0.0158062   -0.0363654    0.0679779
21-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0013676   -0.0377838    0.0350485
21-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0062999   -0.0366691    0.0492689
21-24 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.0081557   -0.0352230    0.0515343
21-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0205107   -0.0075970    0.0486184
21-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0247182   -0.0078526    0.0572891
21-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0130300   -0.0472088    0.0211487
21-24 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0210032   -0.0453375    0.0033311
21-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0222037   -0.0510243    0.0066170
21-24 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.0190944   -0.0503594    0.0121705


### Parameter: PAR


agecat         studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC             INDIA        3 or less            NA                -0.0342615   -0.1529259    0.0844030
0-3 months     NIH-Birth       BANGLADESH   3 or less            NA                 0.0292295   -0.0313289    0.0897879
0-3 months     NIH-Crypto      BANGLADESH   3 or less            NA                -0.0057406   -0.0561704    0.0446893
0-3 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0165856   -0.0520721    0.0189009
3-6 months     IRC             INDIA        3 or less            NA                 0.0157784   -0.0585639    0.0901207
3-6 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0149473   -0.0601248    0.0302303
3-6 months     NIH-Crypto      BANGLADESH   3 or less            NA                 0.0195812   -0.0250087    0.0641712
3-6 months     PROVIDE         BANGLADESH   3 or less            NA                 0.0034058   -0.0356236    0.0424353
6-9 months     IRC             INDIA        3 or less            NA                 0.0288944   -0.0154574    0.0732462
6-9 months     LCNI-5          MALAWI       3 or less            NA                -0.0035966   -0.0305241    0.0233310
6-9 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0335665   -0.0718221    0.0046892
6-9 months     NIH-Crypto      BANGLADESH   3 or less            NA                -0.0508189   -0.0842176   -0.0174202
6-9 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0038425   -0.0275927    0.0199077
6-9 months     SAS-FoodSuppl   INDIA        3 or less            NA                -0.0063617   -0.0870213    0.0742979
9-12 months    IRC             INDIA        3 or less            NA                -0.0227082   -0.0642981    0.0188817
9-12 months    LCNI-5          MALAWI       3 or less            NA                -0.0122702   -0.0459097    0.0213694
9-12 months    NIH-Birth       BANGLADESH   3 or less            NA                 0.0071277   -0.0275255    0.0417809
9-12 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.0025928   -0.0244850    0.0192995
9-12 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0137651   -0.0359620    0.0084318
9-12 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.2851723   -0.7021747    0.1318300
12-15 months   IRC             INDIA        3 or less            NA                -0.0143817   -0.0530639    0.0243005
12-15 months   LCNI-5          MALAWI       3 or less            NA                -0.0458204   -0.1005289    0.0088882
12-15 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0073485   -0.0226373    0.0373344
12-15 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0207900   -0.0446551    0.0030751
12-15 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0033671   -0.0177447    0.0244788
12-15 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.1522094   -0.1374789    0.4418976
15-18 months   IRC             INDIA        3 or less            NA                 0.0067346   -0.0235647    0.0370339
15-18 months   LCNI-5          MALAWI       3 or less            NA                 0.0281119   -0.0132476    0.0694715
15-18 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0074603   -0.0462057    0.0312851
15-18 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0318222    0.0055909    0.0580535
15-18 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0023607   -0.0227468    0.0180254
15-18 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.0006019   -0.0418465    0.0406426
18-21 months   IRC             INDIA        3 or less            NA                -0.0064549   -0.0390892    0.0261794
18-21 months   LCNI-5          MALAWI       3 or less            NA                -0.0103248   -0.0379131    0.0172634
18-21 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0019613   -0.0273282    0.0234055
18-21 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0165912   -0.0416462    0.0084638
18-21 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0032928   -0.0221372    0.0155517
21-24 months   IRC             INDIA        3 or less            NA                -0.0291403   -0.0759331    0.0176525
21-24 months   LCNI-5          MALAWI       3 or less            NA                -0.0017995   -0.0257284    0.0221293
21-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0029319   -0.0260386    0.0319023
21-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0122992   -0.0118279    0.0364264
21-24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0168690   -0.0355309    0.0017928
