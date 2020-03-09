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

**Outcome Variable:** y_rate_len

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
![](/tmp/869b5bff-fc09-40d9-8cee-da007f19a409/43883944-846c-4c57-a67f-ed9ee5706762/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/869b5bff-fc09-40d9-8cee-da007f19a409/43883944-846c-4c57-a67f-ed9ee5706762/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/869b5bff-fc09-40d9-8cee-da007f19a409/43883944-846c-4c57-a67f-ed9ee5706762/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  --------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     IRC             INDIA        3 or less            NA                3.2069686    2.9402534   3.4736838
0-3 months     IRC             INDIA        4-5                  NA                3.1014397    2.9262460   3.2766334
0-3 months     IRC             INDIA        6-7                  NA                3.3103536    3.0607490   3.5599583
0-3 months     IRC             INDIA        8+                   NA                2.9981725    2.7724776   3.2238675
0-3 months     NIH-Birth       BANGLADESH   3 or less            NA                3.0906403    2.9471453   3.2341352
0-3 months     NIH-Birth       BANGLADESH   4-5                  NA                3.0604585    2.9784523   3.1424647
0-3 months     NIH-Birth       BANGLADESH   6-7                  NA                3.1357017    2.9867678   3.2846355
0-3 months     NIH-Birth       BANGLADESH   8+                   NA                3.1575479    3.0173305   3.2977652
0-3 months     NIH-Crypto      BANGLADESH   3 or less            NA                3.1036724    2.9915374   3.2158074
0-3 months     NIH-Crypto      BANGLADESH   4-5                  NA                3.0999462    3.0400313   3.1598611
0-3 months     NIH-Crypto      BANGLADESH   6-7                  NA                3.1775621    3.0815154   3.2736088
0-3 months     NIH-Crypto      BANGLADESH   8+                   NA                3.2409247    3.1477423   3.3341071
0-3 months     PROVIDE         BANGLADESH   3 or less            NA                3.3021372    3.2154858   3.3887886
0-3 months     PROVIDE         BANGLADESH   4-5                  NA                3.2568532    3.2009860   3.3127204
0-3 months     PROVIDE         BANGLADESH   6-7                  NA                3.2478121    3.1602743   3.3353498
0-3 months     PROVIDE         BANGLADESH   8+                   NA                3.2099037    3.1049126   3.3148949
3-6 months     IRC             INDIA        3 or less            NA                1.9058370    1.7263298   2.0853441
3-6 months     IRC             INDIA        4-5                  NA                1.8521593    1.7468649   1.9574537
3-6 months     IRC             INDIA        6-7                  NA                1.8385357    1.7273837   1.9496876
3-6 months     IRC             INDIA        8+                   NA                1.9487958    1.8058718   2.0917199
3-6 months     NIH-Birth       BANGLADESH   3 or less            NA                1.8655469    1.7667494   1.9643444
3-6 months     NIH-Birth       BANGLADESH   4-5                  NA                1.7613469    1.6874689   1.8352250
3-6 months     NIH-Birth       BANGLADESH   6-7                  NA                1.9208138    1.8060987   2.0355289
3-6 months     NIH-Birth       BANGLADESH   8+                   NA                1.8611492    1.7328307   1.9894677
3-6 months     NIH-Crypto      BANGLADESH   3 or less            NA                1.9614900    1.8529308   2.0700492
3-6 months     NIH-Crypto      BANGLADESH   4-5                  NA                2.0067331    1.9425440   2.0709223
3-6 months     NIH-Crypto      BANGLADESH   6-7                  NA                2.0307535    1.9255549   2.1359521
3-6 months     NIH-Crypto      BANGLADESH   8+                   NA                1.8059548    1.7182135   1.8936960
3-6 months     PROVIDE         BANGLADESH   3 or less            NA                1.9656872    1.8728271   2.0585473
3-6 months     PROVIDE         BANGLADESH   4-5                  NA                1.9486770    1.9016900   1.9956640
3-6 months     PROVIDE         BANGLADESH   6-7                  NA                2.0256995    1.9430562   2.1083429
3-6 months     PROVIDE         BANGLADESH   8+                   NA                1.9425309    1.8515855   2.0334763
6-9 months     IRC             INDIA        3 or less            NA                1.3287250    1.2304240   1.4270260
6-9 months     IRC             INDIA        4-5                  NA                1.3640375    1.2847886   1.4432864
6-9 months     IRC             INDIA        6-7                  NA                1.4048430    1.3094271   1.5002589
6-9 months     IRC             INDIA        8+                   NA                1.3673134    1.2480724   1.4865544
6-9 months     LCNI-5          MALAWI       3 or less            NA                1.4650337    1.3940888   1.5359786
6-9 months     LCNI-5          MALAWI       4-5                  NA                1.4459940    1.3882857   1.5037024
6-9 months     LCNI-5          MALAWI       6-7                  NA                1.5032097    1.4245584   1.5818611
6-9 months     LCNI-5          MALAWI       8+                   NA                1.3788114    1.2347213   1.5229016
6-9 months     NIH-Birth       BANGLADESH   3 or less            NA                1.3245385    1.2324203   1.4166567
6-9 months     NIH-Birth       BANGLADESH   4-5                  NA                1.2567688    1.1901790   1.3233586
6-9 months     NIH-Birth       BANGLADESH   6-7                  NA                1.2132008    1.1173646   1.3090369
6-9 months     NIH-Birth       BANGLADESH   8+                   NA                1.2093384    1.1030568   1.3156201
6-9 months     NIH-Crypto      BANGLADESH   3 or less            NA                1.3870030    1.2999999   1.4740062
6-9 months     NIH-Crypto      BANGLADESH   4-5                  NA                1.3248701    1.2767725   1.3729677
6-9 months     NIH-Crypto      BANGLADESH   6-7                  NA                1.3133770    1.2317875   1.3949664
6-9 months     NIH-Crypto      BANGLADESH   8+                   NA                1.3135325    1.2553283   1.3717368
6-9 months     PROVIDE         BANGLADESH   3 or less            NA                1.2952765    1.2334540   1.3570990
6-9 months     PROVIDE         BANGLADESH   4-5                  NA                1.2948847    1.2590614   1.3307081
6-9 months     PROVIDE         BANGLADESH   6-7                  NA                1.2489598    1.1886668   1.3092529
6-9 months     PROVIDE         BANGLADESH   8+                   NA                1.2621636    1.1863520   1.3379752
6-9 months     SAS-FoodSuppl   INDIA        3 or less            NA                1.1231570    0.9398910   1.3064230
6-9 months     SAS-FoodSuppl   INDIA        4-5                  NA                1.1522363    1.0892251   1.2152476
6-9 months     SAS-FoodSuppl   INDIA        6-7                  NA                1.1520849    1.0798930   1.2242768
6-9 months     SAS-FoodSuppl   INDIA        8+                   NA                1.0980166    0.9910227   1.2050106
9-12 months    IRC             INDIA        3 or less            NA                1.1823311    1.0843350   1.2803272
9-12 months    IRC             INDIA        4-5                  NA                1.1799553    1.1102279   1.2496826
9-12 months    IRC             INDIA        6-7                  NA                1.0814657    1.0082556   1.1546759
9-12 months    IRC             INDIA        8+                   NA                1.0054340    0.9282414   1.0826265
9-12 months    LCNI-5          MALAWI       3 or less            NA                1.1477014    1.0424256   1.2529773
9-12 months    LCNI-5          MALAWI       4-5                  NA                1.0878311    1.0174887   1.1581734
9-12 months    LCNI-5          MALAWI       6-7                  NA                1.0968867    0.9956276   1.1981458
9-12 months    LCNI-5          MALAWI       8+                   NA                1.1734565    1.0438326   1.3030805
9-12 months    NIH-Birth       BANGLADESH   3 or less            NA                1.0540611    0.9717824   1.1363399
9-12 months    NIH-Birth       BANGLADESH   4-5                  NA                1.0622908    1.0130789   1.1115027
9-12 months    NIH-Birth       BANGLADESH   6-7                  NA                1.1399394    1.0406207   1.2392580
9-12 months    NIH-Birth       BANGLADESH   8+                   NA                1.0928093    0.9841604   1.2014583
9-12 months    NIH-Crypto      BANGLADESH   3 or less            NA                1.1270260    1.0788858   1.1751662
9-12 months    NIH-Crypto      BANGLADESH   4-5                  NA                1.1361330    1.0876150   1.1846510
9-12 months    NIH-Crypto      BANGLADESH   6-7                  NA                1.0776946    1.0058703   1.1495188
9-12 months    NIH-Crypto      BANGLADESH   8+                   NA                1.1364468    1.0827901   1.1901036
9-12 months    PROVIDE         BANGLADESH   3 or less            NA                1.0898021    1.0292953   1.1503090
9-12 months    PROVIDE         BANGLADESH   4-5                  NA                1.0543764    1.0124685   1.0962843
9-12 months    PROVIDE         BANGLADESH   6-7                  NA                1.0180640    0.9570570   1.0790709
9-12 months    PROVIDE         BANGLADESH   8+                   NA                1.0654768    0.9916442   1.1393094
9-12 months    SAS-FoodSuppl   INDIA        3 or less            NA                1.5399891    0.3777227   2.7022555
9-12 months    SAS-FoodSuppl   INDIA        4-5                  NA                0.8036565    0.6011466   1.0061663
9-12 months    SAS-FoodSuppl   INDIA        6-7                  NA                0.6417912    0.5042331   0.7793493
9-12 months    SAS-FoodSuppl   INDIA        8+                   NA                0.8269263    0.4563343   1.1975183
12-15 months   IRC             INDIA        3 or less            NA                0.9912575    0.8916329   1.0908821
12-15 months   IRC             INDIA        4-5                  NA                0.9367524    0.8804516   0.9930531
12-15 months   IRC             INDIA        6-7                  NA                0.9693790    0.8660223   1.0727357
12-15 months   IRC             INDIA        8+                   NA                0.9241184    0.8375820   1.0106549
12-15 months   LCNI-5          MALAWI       3 or less            NA                1.0808943    0.9183545   1.2434342
12-15 months   LCNI-5          MALAWI       4-5                  NA                0.8838018    0.7015990   1.0660046
12-15 months   LCNI-5          MALAWI       6-7                  NA                0.9406851    0.8189357   1.0624344
12-15 months   LCNI-5          MALAWI       8+                   NA                0.9394217    0.7018932   1.1769502
12-15 months   NIH-Birth       BANGLADESH   3 or less            NA                0.6862188    0.6144845   0.7579532
12-15 months   NIH-Birth       BANGLADESH   4-5                  NA                0.6866521    0.6320991   0.7412050
12-15 months   NIH-Birth       BANGLADESH   6-7                  NA                0.7541560    0.6637615   0.8445504
12-15 months   NIH-Birth       BANGLADESH   8+                   NA                0.7599751    0.6269746   0.8929756
12-15 months   NIH-Crypto      BANGLADESH   3 or less            NA                1.0159914    0.9467660   1.0852167
12-15 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.9879263    0.9440596   1.0317930
12-15 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.9537688    0.8921856   1.0153521
12-15 months   NIH-Crypto      BANGLADESH   8+                   NA                0.8675023    0.8204656   0.9145391
12-15 months   PROVIDE         BANGLADESH   3 or less            NA                0.9577462    0.8963597   1.0191327
12-15 months   PROVIDE         BANGLADESH   4-5                  NA                0.9445556    0.9058994   0.9832119
12-15 months   PROVIDE         BANGLADESH   6-7                  NA                0.9830947    0.9289315   1.0372578
12-15 months   PROVIDE         BANGLADESH   8+                   NA                0.9596846    0.8824622   1.0369070
12-15 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.6265419   -0.0970703   1.3501541
12-15 months   SAS-FoodSuppl   INDIA        4-5                  NA                1.1067232    1.0384258   1.1750205
12-15 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.9741370    0.7671609   1.1811131
12-15 months   SAS-FoodSuppl   INDIA        8+                   NA                1.0700482    0.8610871   1.2790094
15-18 months   IRC             INDIA        3 or less            NA                0.8592952    0.7831336   0.9354569
15-18 months   IRC             INDIA        4-5                  NA                0.8566620    0.7788592   0.9344649
15-18 months   IRC             INDIA        6-7                  NA                0.8789917    0.8121669   0.9458165
15-18 months   IRC             INDIA        8+                   NA                0.8739740    0.7668815   0.9810664
15-18 months   LCNI-5          MALAWI       3 or less            NA                0.7577327    0.6222929   0.8931725
15-18 months   LCNI-5          MALAWI       4-5                  NA                0.8562644    0.7552419   0.9572869
15-18 months   LCNI-5          MALAWI       6-7                  NA                0.8555175    0.6775025   1.0335325
15-18 months   LCNI-5          MALAWI       8+                   NA                0.7918815    0.6536764   0.9300866
15-18 months   NIH-Birth       BANGLADESH   3 or less            NA                0.7890195    0.6695649   0.9084741
15-18 months   NIH-Birth       BANGLADESH   4-5                  NA                0.8010626    0.7438907   0.8582345
15-18 months   NIH-Birth       BANGLADESH   6-7                  NA                0.7970494    0.6949142   0.8991846
15-18 months   NIH-Birth       BANGLADESH   8+                   NA                0.7765673    0.6551389   0.8979957
15-18 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.8617914    0.7963721   0.9272106
15-18 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.9420395    0.9015448   0.9825342
15-18 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.9193419    0.8573268   0.9813570
15-18 months   NIH-Crypto      BANGLADESH   8+                   NA                0.9888553    0.9302987   1.0474119
15-18 months   PROVIDE         BANGLADESH   3 or less            NA                0.8519647    0.7910289   0.9129005
15-18 months   PROVIDE         BANGLADESH   4-5                  NA                0.8571465    0.8217048   0.8925883
15-18 months   PROVIDE         BANGLADESH   6-7                  NA                0.8628673    0.8047825   0.9209521
15-18 months   PROVIDE         BANGLADESH   8+                   NA                0.8563249    0.7868622   0.9257876
15-18 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.8319382    0.7183932   0.9454833
15-18 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.7821114    0.7279737   0.8362491
15-18 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.7866477    0.7216144   0.8516810
15-18 months   SAS-FoodSuppl   INDIA        8+                   NA                0.8464850    0.7497614   0.9432086
18-21 months   IRC             INDIA        3 or less            NA                0.7927398    0.6816839   0.9037957
18-21 months   IRC             INDIA        4-5                  NA                0.7463173    0.6835532   0.8090813
18-21 months   IRC             INDIA        6-7                  NA                0.8044506    0.7145630   0.8943382
18-21 months   IRC             INDIA        8+                   NA                0.7307526    0.6550377   0.8064676
18-21 months   LCNI-5          MALAWI       3 or less            NA                0.8746854    0.7855876   0.9637831
18-21 months   LCNI-5          MALAWI       4-5                  NA                0.7786320    0.7151385   0.8421255
18-21 months   LCNI-5          MALAWI       6-7                  NA                0.8791752    0.7966403   0.9617100
18-21 months   LCNI-5          MALAWI       8+                   NA                0.7325174    0.4310876   1.0339472
18-21 months   NIH-Birth       BANGLADESH   3 or less            NA                0.7290305    0.6515429   0.8065181
18-21 months   NIH-Birth       BANGLADESH   4-5                  NA                0.7419648    0.6894104   0.7945193
18-21 months   NIH-Birth       BANGLADESH   6-7                  NA                0.6717102    0.5842847   0.7591357
18-21 months   NIH-Birth       BANGLADESH   8+                   NA                0.7363259    0.6391271   0.8335247
18-21 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.9393900    0.8433916   1.0353884
18-21 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.7940657    0.7576936   0.8304378
18-21 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.7646699    0.7116422   0.8176975
18-21 months   NIH-Crypto      BANGLADESH   8+                   NA                0.8250361    0.7709372   0.8791350
18-21 months   PROVIDE         BANGLADESH   3 or less            NA                0.8676184    0.7935292   0.9417076
18-21 months   PROVIDE         BANGLADESH   4-5                  NA                0.8433064    0.7992002   0.8874126
18-21 months   PROVIDE         BANGLADESH   6-7                  NA                0.8315655    0.7620703   0.9010606
18-21 months   PROVIDE         BANGLADESH   8+                   NA                0.7824961    0.7179231   0.8470690
21-24 months   IRC             INDIA        3 or less            NA                0.7844263    0.6538260   0.9150265
21-24 months   IRC             INDIA        4-5                  NA                0.6927154    0.6240794   0.7613514
21-24 months   IRC             INDIA        6-7                  NA                0.6691126    0.5968383   0.7413868
21-24 months   IRC             INDIA        8+                   NA                0.7299639    0.6488287   0.8110992
21-24 months   LCNI-5          MALAWI       3 or less            NA                0.7470728    0.6538673   0.8402783
21-24 months   LCNI-5          MALAWI       4-5                  NA                0.7226414    0.6488420   0.7964408
21-24 months   LCNI-5          MALAWI       6-7                  NA                0.8074607    0.7183931   0.8965284
21-24 months   LCNI-5          MALAWI       8+                   NA                0.7687982    0.6456470   0.8919494
21-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.7234569    0.6287674   0.8181463
21-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.6923316    0.6403722   0.7442909
21-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.7295168    0.6472158   0.8118179
21-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.7437524    0.6678258   0.8196790
21-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.7812285    0.7059329   0.8565241
21-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.8182776    0.7813004   0.8552547
21-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.8171720    0.7588023   0.8755416
21-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.7069843    0.6411526   0.7728159
21-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.8124276    0.7516516   0.8732036
21-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.7509572    0.7144810   0.7874335
21-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.7329959    0.6770076   0.7889842
21-24 months   PROVIDE         BANGLADESH   8+                   NA                0.7503108    0.6800095   0.8206120


### Parameter: E(Y)


agecat         studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     IRC             INDIA        NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     NIH-Birth       BANGLADESH   NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     NIH-Crypto      BANGLADESH   NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROVIDE         BANGLADESH   NA                   NA                3.2576810   3.2206777   3.2946843
3-6 months     IRC             INDIA        NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     NIH-Birth       BANGLADESH   NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     NIH-Crypto      BANGLADESH   NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROVIDE         BANGLADESH   NA                   NA                1.9657457   1.9318660   1.9996254
6-9 months     IRC             INDIA        NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     LCNI-5          MALAWI       NA                   NA                1.4589363   1.4224162   1.4954563
6-9 months     NIH-Birth       BANGLADESH   NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     NIH-Crypto      BANGLADESH   NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROVIDE         BANGLADESH   NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-FoodSuppl   INDIA        NA                   NA                1.1426155   1.1021386   1.1830923
9-12 months    IRC             INDIA        NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    LCNI-5          MALAWI       NA                   NA                1.1007887   1.0539615   1.1476158
9-12 months    NIH-Birth       BANGLADESH   NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    NIH-Crypto      BANGLADESH   NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROVIDE         BANGLADESH   NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-FoodSuppl   INDIA        NA                   NA                0.8106649   0.6745544   0.9467754
12-15 months   IRC             INDIA        NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   LCNI-5          MALAWI       NA                   NA                0.9578403   0.8612449   1.0544357
12-15 months   NIH-Birth       BANGLADESH   NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   NIH-Crypto      BANGLADESH   NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROVIDE         BANGLADESH   NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-FoodSuppl   INDIA        NA                   NA                1.0267825   0.9374856   1.1160794
15-18 months   IRC             INDIA        NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   LCNI-5          MALAWI       NA                   NA                0.8227868   0.7513696   0.8942040
15-18 months   NIH-Birth       BANGLADESH   NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   NIH-Crypto      BANGLADESH   NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROVIDE         BANGLADESH   NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-FoodSuppl   INDIA        NA                   NA                0.7947861   0.7590601   0.8305122
18-21 months   IRC             INDIA        NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   LCNI-5          MALAWI       NA                   NA                0.8198090   0.7732927   0.8663254
18-21 months   NIH-Birth       BANGLADESH   NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   NIH-Crypto      BANGLADESH   NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE         BANGLADESH   NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   IRC             INDIA        NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   LCNI-5          MALAWI       NA                   NA                0.7505036   0.7048983   0.7961088
21-24 months   NIH-Birth       BANGLADESH   NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE         BANGLADESH   NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     IRC             INDIA        4-5                  3 or less         -0.1055289   -0.4237858    0.2127280
0-3 months     IRC             INDIA        6-7                  3 or less          0.1033850   -0.2619575    0.4687275
0-3 months     IRC             INDIA        8+                   3 or less         -0.2087961   -0.5583126    0.1407205
0-3 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0301818   -0.1951311    0.1347676
0-3 months     NIH-Birth       BANGLADESH   6-7                  3 or less          0.0450614   -0.1615631    0.2516858
0-3 months     NIH-Birth       BANGLADESH   8+                   3 or less          0.0669076   -0.1335845    0.2673997
0-3 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0037262   -0.1306173    0.1231649
0-3 months     NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0738897   -0.0736884    0.2214678
0-3 months     NIH-Crypto      BANGLADESH   8+                   3 or less          0.1372523   -0.0085679    0.2830725
0-3 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0452840   -0.1488888    0.0583209
0-3 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0543251   -0.1778986    0.0692483
0-3 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0922335   -0.2283312    0.0438643
3-6 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     IRC             INDIA        4-5                  3 or less         -0.0536777   -0.2621177    0.1547624
3-6 months     IRC             INDIA        6-7                  3 or less         -0.0673013   -0.2786526    0.1440500
3-6 months     IRC             INDIA        8+                   3 or less          0.0429589   -0.1864301    0.2723479
3-6 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.1042000   -0.2275443    0.0191443
3-6 months     NIH-Birth       BANGLADESH   6-7                  3 or less          0.0552669   -0.0961219    0.2066557
3-6 months     NIH-Birth       BANGLADESH   8+                   3 or less         -0.0043977   -0.1664114    0.1576160
3-6 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0452431   -0.0811592    0.1716454
3-6 months     NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0692635   -0.0819959    0.2205228
3-6 months     NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1555353   -0.2955013   -0.0155693
3-6 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0170103   -0.1211922    0.0871717
3-6 months     PROVIDE         BANGLADESH   6-7                  3 or less          0.0600123   -0.0645545    0.1845792
3-6 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0231563   -0.1532877    0.1069750
6-9 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     IRC             INDIA        4-5                  3 or less          0.0353125   -0.0908501    0.1614752
6-9 months     IRC             INDIA        6-7                  3 or less          0.0761180   -0.0609146    0.2131505
6-9 months     IRC             INDIA        8+                   3 or less          0.0385884   -0.1160101    0.1931868
6-9 months     LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5          MALAWI       4-5                  3 or less         -0.0190397   -0.1110649    0.0729855
6-9 months     LCNI-5          MALAWI       6-7                  3 or less          0.0381760   -0.0680761    0.1444281
6-9 months     LCNI-5          MALAWI       8+                   3 or less         -0.0862223   -0.2473825    0.0749379
6-9 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0677696   -0.1815172    0.0459779
6-9 months     NIH-Birth       BANGLADESH   6-7                  3 or less         -0.1113377   -0.2441162    0.0214408
6-9 months     NIH-Birth       BANGLADESH   8+                   3 or less         -0.1152000   -0.2557437    0.0253436
6-9 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0621329   -0.1612236    0.0369578
6-9 months     NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0736261   -0.1930087    0.0457565
6-9 months     NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0734705   -0.1777415    0.0308005
6-9 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0003918   -0.0717141    0.0709305
6-9 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0463167   -0.1326742    0.0400409
6-9 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0331129   -0.1309061    0.0646802
6-9 months     SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA        4-5                  3 or less          0.0290793   -0.1647825    0.2229411
6-9 months     SAS-FoodSuppl   INDIA        6-7                  3 or less          0.0289278   -0.1681671    0.2260228
6-9 months     SAS-FoodSuppl   INDIA        8+                   3 or less         -0.0251404   -0.2373138    0.1870330
9-12 months    IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    IRC             INDIA        4-5                  3 or less         -0.0023758   -0.1227070    0.1179553
9-12 months    IRC             INDIA        6-7                  3 or less         -0.1008654   -0.2232543    0.0215235
9-12 months    IRC             INDIA        8+                   3 or less         -0.1768971   -0.3017129   -0.0520814
9-12 months    LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5          MALAWI       4-5                  3 or less         -0.0598704   -0.1871664    0.0674256
9-12 months    LCNI-5          MALAWI       6-7                  3 or less         -0.0508148   -0.1982671    0.0966376
9-12 months    LCNI-5          MALAWI       8+                   3 or less          0.0257551   -0.1423398    0.1938500
9-12 months    NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth       BANGLADESH   4-5                  3 or less          0.0082297   -0.0879618    0.1044212
9-12 months    NIH-Birth       BANGLADESH   6-7                  3 or less          0.0858782   -0.0431458    0.2149022
9-12 months    NIH-Birth       BANGLADESH   8+                   3 or less          0.0387482   -0.0976383    0.1751347
9-12 months    NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0091070   -0.0593158    0.0775299
9-12 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0493314   -0.1359089    0.0372461
9-12 months    NIH-Crypto      BANGLADESH   8+                   3 or less          0.0094209   -0.0626522    0.0814939
9-12 months    PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE         BANGLADESH   4-5                  3 or less         -0.0354257   -0.1090262    0.0381748
9-12 months    PROVIDE         BANGLADESH   6-7                  3 or less         -0.0717382   -0.1577217    0.0142454
9-12 months    PROVIDE         BANGLADESH   8+                   3 or less         -0.0243253   -0.1197694    0.0711187
9-12 months    SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.7363326   -1.9168413    0.4441760
9-12 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.8981979   -2.0686595    0.2722636
9-12 months    SAS-FoodSuppl   INDIA        8+                   3 or less         -0.7130628   -1.9331654    0.5070397
12-15 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   IRC             INDIA        4-5                  3 or less         -0.0545052   -0.1692535    0.0602432
12-15 months   IRC             INDIA        6-7                  3 or less         -0.0218785   -0.1655628    0.1218059
12-15 months   IRC             INDIA        8+                   3 or less         -0.0671391   -0.1990048    0.0647267
12-15 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5          MALAWI       4-5                  3 or less         -0.1970925   -0.4412586    0.0470735
12-15 months   LCNI-5          MALAWI       6-7                  3 or less         -0.1402093   -0.3432908    0.0628723
12-15 months   LCNI-5          MALAWI       8+                   3 or less         -0.1414726   -0.4292903    0.1463450
12-15 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.0004332   -0.0897865    0.0906530
12-15 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0679372   -0.0482359    0.1841102
12-15 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.0737563   -0.0776816    0.2251941
12-15 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0280651   -0.1099444    0.0538143
12-15 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0622225   -0.1547037    0.0302587
12-15 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1484890   -0.2319966   -0.0649815
12-15 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0131906   -0.0861468    0.0597657
12-15 months   PROVIDE         BANGLADESH   6-7                  3 or less          0.0253484   -0.0569193    0.1076162
12-15 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0019384   -0.0969794    0.1008563
12-15 months   SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA        4-5                  3 or less          0.4801813   -0.2470663    1.2074289
12-15 months   SAS-FoodSuppl   INDIA        6-7                  3 or less          0.3475951   -0.4052554    1.1004455
12-15 months   SAS-FoodSuppl   INDIA        8+                   3 or less          0.4435063   -0.3105870    1.1975996
15-18 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   IRC             INDIA        4-5                  3 or less         -0.0026332   -0.1110464    0.1057800
15-18 months   IRC             INDIA        6-7                  3 or less          0.0196965   -0.0815177    0.1209106
15-18 months   IRC             INDIA        8+                   3 or less          0.0146788   -0.1168125    0.1461701
15-18 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5          MALAWI       4-5                  3 or less          0.0985317   -0.0704342    0.2674976
15-18 months   LCNI-5          MALAWI       6-7                  3 or less          0.0977848   -0.1258964    0.3214660
15-18 months   LCNI-5          MALAWI       8+                   3 or less          0.0341488   -0.1593573    0.2276548
15-18 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.0120431   -0.1210948    0.1451811
15-18 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0080299   -0.1506529    0.1667127
15-18 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0124522   -0.1829594    0.1580549
15-18 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0802481    0.0030364    0.1574599
15-18 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0575505   -0.0329431    0.1480441
15-18 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.1270639    0.0390814    0.2150464
15-18 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE         BANGLADESH   4-5                  3 or less          0.0051818   -0.0653807    0.0757444
15-18 months   PROVIDE         BANGLADESH   6-7                  3 or less          0.0109026   -0.0733950    0.0952001
15-18 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0043602   -0.0879645    0.0966849
15-18 months   SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0498268   -0.1753884    0.0757347
15-18 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0452906   -0.1763121    0.0857310
15-18 months   SAS-FoodSuppl   INDIA        8+                   3 or less          0.0145468   -0.1346872    0.1637808
18-21 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   IRC             INDIA        4-5                  3 or less         -0.0464225   -0.1745658    0.0817209
18-21 months   IRC             INDIA        6-7                  3 or less          0.0117108   -0.1334817    0.1569034
18-21 months   IRC             INDIA        8+                   3 or less         -0.0619871   -0.1967701    0.0727959
18-21 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0960534   -0.2056452    0.0135384
18-21 months   LCNI-5          MALAWI       6-7                  3 or less          0.0044898   -0.1197546    0.1287342
18-21 months   LCNI-5          MALAWI       8+                   3 or less         -0.1421680   -0.4568002    0.1724643
18-21 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.0129343   -0.0814194    0.1072881
18-21 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0573203   -0.1747339    0.0600933
18-21 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.0072954   -0.1181980    0.1327888
18-21 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1453243   -0.2477905   -0.0428582
18-21 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1747202   -0.2842159   -0.0652244
18-21 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1143539   -0.2242892   -0.0044185
18-21 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0243120   -0.1107199    0.0620959
18-21 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0360529   -0.1378700    0.0657642
18-21 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.0851223   -0.1835756    0.0133310
21-24 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   IRC             INDIA        4-5                  3 or less         -0.0917109   -0.2385264    0.0551047
21-24 months   IRC             INDIA        6-7                  3 or less         -0.1153137   -0.2642645    0.0336371
21-24 months   IRC             INDIA        8+                   3 or less         -0.0544623   -0.2085344    0.0996098
21-24 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0244314   -0.1440403    0.0951775
21-24 months   LCNI-5          MALAWI       6-7                  3 or less          0.0603879   -0.0685441    0.1893199
21-24 months   LCNI-5          MALAWI       8+                   3 or less          0.0217254   -0.1327466    0.1761974
21-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0311253   -0.1392786    0.0770280
21-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0060600   -0.1194178    0.1315377
21-24 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.0202955   -0.1012783    0.1418694
21-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0370491   -0.0470437    0.1211418
21-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0359435   -0.0596972    0.1315841
21-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0742442   -0.1744664    0.0259779
21-24 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0614704   -0.1323559    0.0094150
21-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0794317   -0.1622235    0.0033601
21-24 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.0621169   -0.1548991    0.0306653


### Parameter: PAR


agecat         studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC             INDIA        3 or less            NA                -0.0687194   -0.3185389    0.1811002
0-3 months     NIH-Birth       BANGLADESH   3 or less            NA                 0.0193713   -0.1134601    0.1522027
0-3 months     NIH-Crypto      BANGLADESH   3 or less            NA                 0.0255725   -0.0800045    0.1311494
0-3 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0444562   -0.1229134    0.0340011
3-6 months     IRC             INDIA        3 or less            NA                -0.0251631   -0.1911710    0.1408448
3-6 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0328554   -0.1270803    0.0613695
3-6 months     NIH-Crypto      BANGLADESH   3 or less            NA                 0.0443072   -0.0613912    0.1500057
3-6 months     PROVIDE         BANGLADESH   3 or less            NA                 0.0000585   -0.0839841    0.0841011
6-9 months     IRC             INDIA        3 or less            NA                 0.0436759   -0.0531345    0.1404863
6-9 months     LCNI-5          MALAWI       3 or less            NA                -0.0060975   -0.0687005    0.0565055
6-9 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0689434   -0.1551064    0.0172195
6-9 months     NIH-Crypto      BANGLADESH   3 or less            NA                -0.0587336   -0.1429063    0.0254392
6-9 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0128580   -0.0690751    0.0433590
6-9 months     SAS-FoodSuppl   INDIA        3 or less            NA                 0.0194584   -0.1559086    0.1948255
9-12 months    IRC             INDIA        3 or less            NA                -0.0588577   -0.1509194    0.0332040
9-12 months    LCNI-5          MALAWI       3 or less            NA                -0.0469128   -0.1330134    0.0391878
9-12 months    NIH-Birth       BANGLADESH   3 or less            NA                 0.0345197   -0.0415984    0.1106378
9-12 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.0035515   -0.0513608    0.0442578
9-12 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0398272   -0.0955144    0.0158600
9-12 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.7293242   -1.8328077    0.3741592
12-15 months   IRC             INDIA        3 or less            NA                -0.0359036   -0.1297522    0.0579450
12-15 months   LCNI-5          MALAWI       3 or less            NA                -0.1230540   -0.2652997    0.0191916
12-15 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0379434   -0.0353928    0.1112796
12-15 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0448519   -0.1109546    0.0212508
12-15 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0020038   -0.0541642    0.0581719
12-15 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.4002406   -0.2796326    1.0801138
15-18 months   IRC             INDIA        3 or less            NA                -0.0001736   -0.0751915    0.0748442
15-18 months   LCNI-5          MALAWI       3 or less            NA                 0.0650540   -0.0474351    0.1775432
15-18 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0162476   -0.1269796    0.0944845
15-18 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0559254   -0.0073868    0.1192376
15-18 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0041351   -0.0512490    0.0595192
15-18 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.0371521   -0.1486252    0.0743210
18-21 months   IRC             INDIA        3 or less            NA                -0.0329376   -0.1376881    0.0718128
18-21 months   LCNI-5          MALAWI       3 or less            NA                -0.0548763   -0.1336840    0.0239314
18-21 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0001163   -0.0729770    0.0732097
18-21 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.1416145   -0.2327801   -0.0504488
18-21 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0282807   -0.0963333    0.0397720
21-24 months   IRC             INDIA        3 or less            NA                -0.0760134   -0.1920695    0.0400428
21-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0034308   -0.0725622    0.0794237
21-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0062391   -0.0896570    0.0771788
21-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0181068   -0.0538693    0.0900830
21-24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0492886   -0.1036121    0.0050350
