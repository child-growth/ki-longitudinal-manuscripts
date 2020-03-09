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

**Outcome Variable:** y_rate_wtkg

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
0-3 months     IRC             INDIA        3 or less        57   394
0-3 months     IRC             INDIA        4-5             151   394
0-3 months     IRC             INDIA        6-7             101   394
0-3 months     IRC             INDIA        8+               85   394
0-3 months     NIH-Birth       BANGLADESH   3 or less       101   565
0-3 months     NIH-Birth       BANGLADESH   4-5             238   565
0-3 months     NIH-Birth       BANGLADESH   6-7             132   565
0-3 months     NIH-Birth       BANGLADESH   8+               94   565
0-3 months     NIH-Crypto      BANGLADESH   3 or less       110   725
0-3 months     NIH-Crypto      BANGLADESH   4-5             324   725
0-3 months     NIH-Crypto      BANGLADESH   6-7             171   725
0-3 months     NIH-Crypto      BANGLADESH   8+              120   725
0-3 months     PROVIDE         BANGLADESH   3 or less       123   640
0-3 months     PROVIDE         BANGLADESH   4-5             296   640
0-3 months     PROVIDE         BANGLADESH   6-7             136   640
0-3 months     PROVIDE         BANGLADESH   8+               85   640
3-6 months     IRC             INDIA        3 or less        57   399
3-6 months     IRC             INDIA        4-5             153   399
3-6 months     IRC             INDIA        6-7             104   399
3-6 months     IRC             INDIA        8+               85   399
3-6 months     NIH-Birth       BANGLADESH   3 or less        89   522
3-6 months     NIH-Birth       BANGLADESH   4-5             223   522
3-6 months     NIH-Birth       BANGLADESH   6-7             125   522
3-6 months     NIH-Birth       BANGLADESH   8+               85   522
3-6 months     NIH-Crypto      BANGLADESH   3 or less       103   702
3-6 months     NIH-Crypto      BANGLADESH   4-5             317   702
3-6 months     NIH-Crypto      BANGLADESH   6-7             167   702
3-6 months     NIH-Crypto      BANGLADESH   8+              115   702
3-6 months     PROVIDE         BANGLADESH   3 or less       105   601
3-6 months     PROVIDE         BANGLADESH   4-5             287   601
3-6 months     PROVIDE         BANGLADESH   6-7             130   601
3-6 months     PROVIDE         BANGLADESH   8+               79   601
6-9 months     IRC             INDIA        3 or less        58   410
6-9 months     IRC             INDIA        4-5             158   410
6-9 months     IRC             INDIA        6-7             107   410
6-9 months     IRC             INDIA        8+               87   410
6-9 months     LCNI-5          MALAWI       3 or less       143   556
6-9 months     LCNI-5          MALAWI       4-5             246   556
6-9 months     LCNI-5          MALAWI       6-7             121   556
6-9 months     LCNI-5          MALAWI       8+               46   556
6-9 months     NIH-Birth       BANGLADESH   3 or less        88   498
6-9 months     NIH-Birth       BANGLADESH   4-5             213   498
6-9 months     NIH-Birth       BANGLADESH   6-7             116   498
6-9 months     NIH-Birth       BANGLADESH   8+               81   498
6-9 months     NIH-Crypto      BANGLADESH   3 or less        98   693
6-9 months     NIH-Crypto      BANGLADESH   4-5             317   693
6-9 months     NIH-Crypto      BANGLADESH   6-7             168   693
6-9 months     NIH-Crypto      BANGLADESH   8+              110   693
6-9 months     PROVIDE         BANGLADESH   3 or less       102   576
6-9 months     PROVIDE         BANGLADESH   4-5             277   576
6-9 months     PROVIDE         BANGLADESH   6-7             121   576
6-9 months     PROVIDE         BANGLADESH   8+               76   576
6-9 months     SAS-FoodSuppl   INDIA        3 or less        23   309
6-9 months     SAS-FoodSuppl   INDIA        4-5             140   309
6-9 months     SAS-FoodSuppl   INDIA        6-7              93   309
6-9 months     SAS-FoodSuppl   INDIA        8+               53   309
9-12 months    IRC             INDIA        3 or less        57   403
9-12 months    IRC             INDIA        4-5             154   403
9-12 months    IRC             INDIA        6-7             105   403
9-12 months    IRC             INDIA        8+               87   403
9-12 months    LCNI-5          MALAWI       3 or less       107   380
9-12 months    LCNI-5          MALAWI       4-5             164   380
9-12 months    LCNI-5          MALAWI       6-7              81   380
9-12 months    LCNI-5          MALAWI       8+               28   380
9-12 months    NIH-Birth       BANGLADESH   3 or less        87   481
9-12 months    NIH-Birth       BANGLADESH   4-5             202   481
9-12 months    NIH-Birth       BANGLADESH   6-7             113   481
9-12 months    NIH-Birth       BANGLADESH   8+               79   481
9-12 months    NIH-Crypto      BANGLADESH   3 or less        93   683
9-12 months    NIH-Crypto      BANGLADESH   4-5             312   683
9-12 months    NIH-Crypto      BANGLADESH   6-7             168   683
9-12 months    NIH-Crypto      BANGLADESH   8+              110   683
9-12 months    PROVIDE         BANGLADESH   3 or less       106   569
9-12 months    PROVIDE         BANGLADESH   4-5             269   569
9-12 months    PROVIDE         BANGLADESH   6-7             115   569
9-12 months    PROVIDE         BANGLADESH   8+               79   569
9-12 months    SAS-FoodSuppl   INDIA        3 or less        17   298
9-12 months    SAS-FoodSuppl   INDIA        4-5             138   298
9-12 months    SAS-FoodSuppl   INDIA        6-7              95   298
9-12 months    SAS-FoodSuppl   INDIA        8+               48   298
12-15 months   IRC             INDIA        3 or less        56   392
12-15 months   IRC             INDIA        4-5             149   392
12-15 months   IRC             INDIA        6-7             102   392
12-15 months   IRC             INDIA        8+               85   392
12-15 months   LCNI-5          MALAWI       3 or less        37   125
12-15 months   LCNI-5          MALAWI       4-5              52   125
12-15 months   LCNI-5          MALAWI       6-7              27   125
12-15 months   LCNI-5          MALAWI       8+                9   125
12-15 months   NIH-Birth       BANGLADESH   3 or less        82   461
12-15 months   NIH-Birth       BANGLADESH   4-5             194   461
12-15 months   NIH-Birth       BANGLADESH   6-7             107   461
12-15 months   NIH-Birth       BANGLADESH   8+               78   461
12-15 months   NIH-Crypto      BANGLADESH   3 or less        91   666
12-15 months   NIH-Crypto      BANGLADESH   4-5             304   666
12-15 months   NIH-Crypto      BANGLADESH   6-7             164   666
12-15 months   NIH-Crypto      BANGLADESH   8+              107   666
12-15 months   PROVIDE         BANGLADESH   3 or less        97   537
12-15 months   PROVIDE         BANGLADESH   4-5             252   537
12-15 months   PROVIDE         BANGLADESH   6-7             109   537
12-15 months   PROVIDE         BANGLADESH   8+               79   537
12-15 months   SAS-FoodSuppl   INDIA        3 or less        21   300
12-15 months   SAS-FoodSuppl   INDIA        4-5             129   300
12-15 months   SAS-FoodSuppl   INDIA        6-7             102   300
12-15 months   SAS-FoodSuppl   INDIA        8+               48   300
15-18 months   IRC             INDIA        3 or less        55   383
15-18 months   IRC             INDIA        4-5             146   383
15-18 months   IRC             INDIA        6-7             101   383
15-18 months   IRC             INDIA        8+               81   383
15-18 months   LCNI-5          MALAWI       3 or less        34   118
15-18 months   LCNI-5          MALAWI       4-5              49   118
15-18 months   LCNI-5          MALAWI       6-7              27   118
15-18 months   LCNI-5          MALAWI       8+                8   118
15-18 months   NIH-Birth       BANGLADESH   3 or less        76   449
15-18 months   NIH-Birth       BANGLADESH   4-5             188   449
15-18 months   NIH-Birth       BANGLADESH   6-7             108   449
15-18 months   NIH-Birth       BANGLADESH   8+               77   449
15-18 months   NIH-Crypto      BANGLADESH   3 or less        84   605
15-18 months   NIH-Crypto      BANGLADESH   4-5             278   605
15-18 months   NIH-Crypto      BANGLADESH   6-7             145   605
15-18 months   NIH-Crypto      BANGLADESH   8+               98   605
15-18 months   PROVIDE         BANGLADESH   3 or less        94   533
15-18 months   PROVIDE         BANGLADESH   4-5             248   533
15-18 months   PROVIDE         BANGLADESH   6-7             111   533
15-18 months   PROVIDE         BANGLADESH   8+               80   533
15-18 months   SAS-FoodSuppl   INDIA        3 or less        23   290
15-18 months   SAS-FoodSuppl   INDIA        4-5             121   290
15-18 months   SAS-FoodSuppl   INDIA        6-7              98   290
15-18 months   SAS-FoodSuppl   INDIA        8+               48   290
18-21 months   IRC             INDIA        3 or less        54   380
18-21 months   IRC             INDIA        4-5             144   380
18-21 months   IRC             INDIA        6-7             101   380
18-21 months   IRC             INDIA        8+               81   380
18-21 months   LCNI-5          MALAWI       3 or less       119   452
18-21 months   LCNI-5          MALAWI       4-5             196   452
18-21 months   LCNI-5          MALAWI       6-7             100   452
18-21 months   LCNI-5          MALAWI       8+               37   452
18-21 months   NIH-Birth       BANGLADESH   3 or less        68   422
18-21 months   NIH-Birth       BANGLADESH   4-5             184   422
18-21 months   NIH-Birth       BANGLADESH   6-7              98   422
18-21 months   NIH-Birth       BANGLADESH   8+               72   422
18-21 months   NIH-Crypto      BANGLADESH   3 or less        77   547
18-21 months   NIH-Crypto      BANGLADESH   4-5             251   547
18-21 months   NIH-Crypto      BANGLADESH   6-7             132   547
18-21 months   NIH-Crypto      BANGLADESH   8+               87   547
18-21 months   PROVIDE         BANGLADESH   3 or less       100   542
18-21 months   PROVIDE         BANGLADESH   4-5             247   542
18-21 months   PROVIDE         BANGLADESH   6-7             114   542
18-21 months   PROVIDE         BANGLADESH   8+               81   542
21-24 months   IRC             INDIA        3 or less        56   389
21-24 months   IRC             INDIA        4-5             147   389
21-24 months   IRC             INDIA        6-7             102   389
21-24 months   IRC             INDIA        8+               84   389
21-24 months   LCNI-5          MALAWI       3 or less       114   382
21-24 months   LCNI-5          MALAWI       4-5             161   382
21-24 months   LCNI-5          MALAWI       6-7              79   382
21-24 months   LCNI-5          MALAWI       8+               28   382
21-24 months   NIH-Birth       BANGLADESH   3 or less        71   411
21-24 months   NIH-Birth       BANGLADESH   4-5             178   411
21-24 months   NIH-Birth       BANGLADESH   6-7              95   411
21-24 months   NIH-Birth       BANGLADESH   8+               67   411
21-24 months   NIH-Crypto      BANGLADESH   3 or less        67   493
21-24 months   NIH-Crypto      BANGLADESH   4-5             224   493
21-24 months   NIH-Crypto      BANGLADESH   6-7             125   493
21-24 months   NIH-Crypto      BANGLADESH   8+               77   493
21-24 months   PROVIDE         BANGLADESH   3 or less        92   485
21-24 months   PROVIDE         BANGLADESH   4-5             222   485
21-24 months   PROVIDE         BANGLADESH   6-7             104   485
21-24 months   PROVIDE         BANGLADESH   8+               67   485


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
![](/tmp/35b52b20-ffec-4686-a88e-4fd6becee786/b1232b7a-c8a5-4822-ba1e-e7d01890787c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/35b52b20-ffec-4686-a88e-4fd6becee786/b1232b7a-c8a5-4822-ba1e-e7d01890787c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/35b52b20-ffec-4686-a88e-4fd6becee786/b1232b7a-c8a5-4822-ba1e-e7d01890787c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     IRC             INDIA        3 or less            NA                0.7575861   0.7063512   0.8088209
0-3 months     IRC             INDIA        4-5                  NA                0.7616508   0.7271566   0.7961451
0-3 months     IRC             INDIA        6-7                  NA                0.7902348   0.7519964   0.8284732
0-3 months     IRC             INDIA        8+                   NA                0.7585038   0.7152752   0.8017324
0-3 months     NIH-Birth       BANGLADESH   3 or less            NA                0.8317242   0.7917735   0.8716748
0-3 months     NIH-Birth       BANGLADESH   4-5                  NA                0.8084446   0.7836443   0.8332449
0-3 months     NIH-Birth       BANGLADESH   6-7                  NA                0.8240689   0.7840255   0.8641123
0-3 months     NIH-Birth       BANGLADESH   8+                   NA                0.8075729   0.7527074   0.8624384
0-3 months     NIH-Crypto      BANGLADESH   3 or less            NA                0.8562725   0.8135274   0.8990175
0-3 months     NIH-Crypto      BANGLADESH   4-5                  NA                0.8882134   0.8618270   0.9145998
0-3 months     NIH-Crypto      BANGLADESH   6-7                  NA                0.8879420   0.8505930   0.9252910
0-3 months     NIH-Crypto      BANGLADESH   8+                   NA                0.8724972   0.8365883   0.9084061
0-3 months     PROVIDE         BANGLADESH   3 or less            NA                0.9301763   0.8962434   0.9641091
0-3 months     PROVIDE         BANGLADESH   4-5                  NA                0.8975469   0.8753692   0.9197246
0-3 months     PROVIDE         BANGLADESH   6-7                  NA                0.9080525   0.8754964   0.9406085
0-3 months     PROVIDE         BANGLADESH   8+                   NA                0.8578797   0.8104443   0.9053151
3-6 months     IRC             INDIA        3 or less            NA                0.4749998   0.4393534   0.5106462
3-6 months     IRC             INDIA        4-5                  NA                0.4690650   0.4420534   0.4960766
3-6 months     IRC             INDIA        6-7                  NA                0.4751605   0.4374862   0.5128348
3-6 months     IRC             INDIA        8+                   NA                0.4333596   0.3945016   0.4722177
3-6 months     NIH-Birth       BANGLADESH   3 or less            NA                0.4511895   0.4088251   0.4935540
3-6 months     NIH-Birth       BANGLADESH   4-5                  NA                0.4339253   0.4100224   0.4578281
3-6 months     NIH-Birth       BANGLADESH   6-7                  NA                0.5010307   0.4662468   0.5358146
3-6 months     NIH-Birth       BANGLADESH   8+                   NA                0.4591599   0.4064758   0.5118440
3-6 months     NIH-Crypto      BANGLADESH   3 or less            NA                0.4864820   0.4515587   0.5214052
3-6 months     NIH-Crypto      BANGLADESH   4-5                  NA                0.4919971   0.4727430   0.5112511
3-6 months     NIH-Crypto      BANGLADESH   6-7                  NA                0.4929235   0.4644409   0.5214061
3-6 months     NIH-Crypto      BANGLADESH   8+                   NA                0.5238784   0.4956288   0.5521279
3-6 months     PROVIDE         BANGLADESH   3 or less            NA                0.5013573   0.4722890   0.5304255
3-6 months     PROVIDE         BANGLADESH   4-5                  NA                0.4855777   0.4679417   0.5032136
3-6 months     PROVIDE         BANGLADESH   6-7                  NA                0.4728157   0.4459487   0.4996826
3-6 months     PROVIDE         BANGLADESH   8+                   NA                0.5164132   0.4615428   0.5712835
6-9 months     IRC             INDIA        3 or less            NA                0.2952985   0.2622801   0.3283168
6-9 months     IRC             INDIA        4-5                  NA                0.2665793   0.2438244   0.2893343
6-9 months     IRC             INDIA        6-7                  NA                0.2483141   0.2185955   0.2780327
6-9 months     IRC             INDIA        8+                   NA                0.2517609   0.2190088   0.2845131
6-9 months     LCNI-5          MALAWI       3 or less            NA                0.2878416   0.2639840   0.3116992
6-9 months     LCNI-5          MALAWI       4-5                  NA                0.2737210   0.2549512   0.2924908
6-9 months     LCNI-5          MALAWI       6-7                  NA                0.3021100   0.2711171   0.3331028
6-9 months     LCNI-5          MALAWI       8+                   NA                0.2841707   0.2472988   0.3210426
6-9 months     NIH-Birth       BANGLADESH   3 or less            NA                0.2448939   0.2091959   0.2805919
6-9 months     NIH-Birth       BANGLADESH   4-5                  NA                0.2453741   0.2213271   0.2694212
6-9 months     NIH-Birth       BANGLADESH   6-7                  NA                0.2271070   0.1946457   0.2595682
6-9 months     NIH-Birth       BANGLADESH   8+                   NA                0.2095441   0.1761622   0.2429260
6-9 months     NIH-Crypto      BANGLADESH   3 or less            NA                0.2744794   0.2505243   0.2984346
6-9 months     NIH-Crypto      BANGLADESH   4-5                  NA                0.2708112   0.2538587   0.2877636
6-9 months     NIH-Crypto      BANGLADESH   6-7                  NA                0.2693057   0.2360970   0.3025144
6-9 months     NIH-Crypto      BANGLADESH   8+                   NA                0.2315969   0.2079234   0.2552703
6-9 months     PROVIDE         BANGLADESH   3 or less            NA                0.2596993   0.2322087   0.2871899
6-9 months     PROVIDE         BANGLADESH   4-5                  NA                0.2528896   0.2382973   0.2674819
6-9 months     PROVIDE         BANGLADESH   6-7                  NA                0.2421294   0.2185490   0.2657099
6-9 months     PROVIDE         BANGLADESH   8+                   NA                0.2294804   0.1609304   0.2980305
6-9 months     SAS-FoodSuppl   INDIA        3 or less            NA                0.1689675   0.0799705   0.2579645
6-9 months     SAS-FoodSuppl   INDIA        4-5                  NA                0.1851623   0.1615096   0.2088150
6-9 months     SAS-FoodSuppl   INDIA        6-7                  NA                0.2221958   0.1902981   0.2540935
6-9 months     SAS-FoodSuppl   INDIA        8+                   NA                0.2163865   0.1785145   0.2542584
9-12 months    IRC             INDIA        3 or less            NA                0.2006735   0.1546816   0.2466653
9-12 months    IRC             INDIA        4-5                  NA                0.2166807   0.1919899   0.2413714
9-12 months    IRC             INDIA        6-7                  NA                0.2132651   0.1848464   0.2416838
9-12 months    IRC             INDIA        8+                   NA                0.2197887   0.1893028   0.2502747
9-12 months    LCNI-5          MALAWI       3 or less            NA                0.1835529   0.1561725   0.2109333
9-12 months    LCNI-5          MALAWI       4-5                  NA                0.2102801   0.1867156   0.2338447
9-12 months    LCNI-5          MALAWI       6-7                  NA                0.2200597   0.1804895   0.2596300
9-12 months    LCNI-5          MALAWI       8+                   NA                0.1827492   0.1337433   0.2317551
9-12 months    NIH-Birth       BANGLADESH   3 or less            NA                0.1789687   0.1544247   0.2035128
9-12 months    NIH-Birth       BANGLADESH   4-5                  NA                0.1509766   0.1308356   0.1711177
9-12 months    NIH-Birth       BANGLADESH   6-7                  NA                0.1808151   0.1496476   0.2119827
9-12 months    NIH-Birth       BANGLADESH   8+                   NA                0.1810568   0.1446782   0.2174355
9-12 months    NIH-Crypto      BANGLADESH   3 or less            NA                0.2159380   0.1829447   0.2489313
9-12 months    NIH-Crypto      BANGLADESH   4-5                  NA                0.1984227   0.1780092   0.2188362
9-12 months    NIH-Crypto      BANGLADESH   6-7                  NA                0.1963442   0.1707378   0.2219506
9-12 months    NIH-Crypto      BANGLADESH   8+                   NA                0.1980685   0.1740036   0.2221334
9-12 months    PROVIDE         BANGLADESH   3 or less            NA                0.1825338   0.1607498   0.2043178
9-12 months    PROVIDE         BANGLADESH   4-5                  NA                0.1784791   0.1651668   0.1917914
9-12 months    PROVIDE         BANGLADESH   6-7                  NA                0.1845428   0.1620247   0.2070609
9-12 months    PROVIDE         BANGLADESH   8+                   NA                0.1574466   0.1284240   0.1864691
9-12 months    SAS-FoodSuppl   INDIA        3 or less            NA                0.1251316   0.0388149   0.2114483
9-12 months    SAS-FoodSuppl   INDIA        4-5                  NA                0.1497677   0.1190243   0.1805111
9-12 months    SAS-FoodSuppl   INDIA        6-7                  NA                0.1357019   0.1061163   0.1652874
9-12 months    SAS-FoodSuppl   INDIA        8+                   NA                0.1535080   0.0958213   0.2111946
12-15 months   IRC             INDIA        3 or less            NA                0.1790311   0.1484051   0.2096572
12-15 months   IRC             INDIA        4-5                  NA                0.1861514   0.1619582   0.2103447
12-15 months   IRC             INDIA        6-7                  NA                0.1900652   0.1631881   0.2169424
12-15 months   IRC             INDIA        8+                   NA                0.1657685   0.1411467   0.1903902
12-15 months   LCNI-5          MALAWI       3 or less            NA                0.1970407   0.1387982   0.2552831
12-15 months   LCNI-5          MALAWI       4-5                  NA                0.1220150   0.0601505   0.1838794
12-15 months   LCNI-5          MALAWI       6-7                  NA                0.1551437   0.1113814   0.1989060
12-15 months   LCNI-5          MALAWI       8+                   NA                0.1290124   0.0249064   0.2331185
12-15 months   NIH-Birth       BANGLADESH   3 or less            NA                0.1401466   0.1160568   0.1642363
12-15 months   NIH-Birth       BANGLADESH   4-5                  NA                0.1231703   0.1056643   0.1406763
12-15 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1349594   0.1123346   0.1575842
12-15 months   NIH-Birth       BANGLADESH   8+                   NA                0.1335172   0.0898881   0.1771463
12-15 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.1410538   0.1093475   0.1727600
12-15 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1755148   0.1561470   0.1948825
12-15 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.1654869   0.1328355   0.1981382
12-15 months   NIH-Crypto      BANGLADESH   8+                   NA                0.1468589   0.1253154   0.1684023
12-15 months   PROVIDE         BANGLADESH   3 or less            NA                0.2204222   0.1847177   0.2561267
12-15 months   PROVIDE         BANGLADESH   4-5                  NA                0.1677802   0.1516180   0.1839424
12-15 months   PROVIDE         BANGLADESH   6-7                  NA                0.1643057   0.1424687   0.1861426
12-15 months   PROVIDE         BANGLADESH   8+                   NA                0.1960576   0.1607241   0.2313911
12-15 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.2226584   0.1371001   0.3082167
12-15 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.1625843   0.1374896   0.1876789
12-15 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.1853587   0.1603806   0.2103368
12-15 months   SAS-FoodSuppl   INDIA        8+                   NA                0.1761960   0.1294015   0.2229906
15-18 months   IRC             INDIA        3 or less            NA                0.1395714   0.1063025   0.1728403
15-18 months   IRC             INDIA        4-5                  NA                0.1466304   0.1244334   0.1688274
15-18 months   IRC             INDIA        6-7                  NA                0.1917919   0.1602711   0.2233128
15-18 months   IRC             INDIA        8+                   NA                0.1622801   0.1372273   0.1873329
15-18 months   LCNI-5          MALAWI       3 or less            NA                0.1568596   0.0948595   0.2188597
15-18 months   LCNI-5          MALAWI       4-5                  NA                0.1733421   0.1229749   0.2237093
15-18 months   LCNI-5          MALAWI       6-7                  NA                0.1848512   0.1210722   0.2486301
15-18 months   LCNI-5          MALAWI       8+                   NA                0.2123447   0.1496320   0.2750574
15-18 months   NIH-Birth       BANGLADESH   3 or less            NA                0.1266430   0.0839041   0.1693820
15-18 months   NIH-Birth       BANGLADESH   4-5                  NA                0.1596723   0.1361445   0.1832001
15-18 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1454369   0.1101999   0.1806738
15-18 months   NIH-Birth       BANGLADESH   8+                   NA                0.1744786   0.1442815   0.2046757
15-18 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.2086184   0.1768373   0.2403995
15-18 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1672710   0.1515083   0.1830336
15-18 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.1554189   0.1229492   0.1878886
15-18 months   NIH-Crypto      BANGLADESH   8+                   NA                0.1856603   0.1620592   0.2092615
15-18 months   PROVIDE         BANGLADESH   3 or less            NA                0.1577493   0.1264301   0.1890684
15-18 months   PROVIDE         BANGLADESH   4-5                  NA                0.1565494   0.1393588   0.1737400
15-18 months   PROVIDE         BANGLADESH   6-7                  NA                0.1593362   0.1339427   0.1847297
15-18 months   PROVIDE         BANGLADESH   8+                   NA                0.1578273   0.1229378   0.1927167
15-18 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.1810307   0.1281313   0.2339301
15-18 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.1561584   0.1313958   0.1809210
15-18 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.1687925   0.1414632   0.1961218
15-18 months   SAS-FoodSuppl   INDIA        8+                   NA                0.1620490   0.1174962   0.2066017
18-21 months   IRC             INDIA        3 or less            NA                0.1867216   0.1533819   0.2200613
18-21 months   IRC             INDIA        4-5                  NA                0.1446181   0.1219524   0.1672838
18-21 months   IRC             INDIA        6-7                  NA                0.1613351   0.1335420   0.1891282
18-21 months   IRC             INDIA        8+                   NA                0.1569543   0.1291872   0.1847214
18-21 months   LCNI-5          MALAWI       3 or less            NA                0.1892804   0.1509385   0.2276222
18-21 months   LCNI-5          MALAWI       4-5                  NA                0.1662124   0.1337103   0.1987145
18-21 months   LCNI-5          MALAWI       6-7                  NA                0.1786855   0.1348019   0.2225691
18-21 months   LCNI-5          MALAWI       8+                   NA                0.2191582   0.1512586   0.2870578
18-21 months   NIH-Birth       BANGLADESH   3 or less            NA                0.1838819   0.1493905   0.2183734
18-21 months   NIH-Birth       BANGLADESH   4-5                  NA                0.1792349   0.1552888   0.2031810
18-21 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1563312   0.1085911   0.2040713
18-21 months   NIH-Birth       BANGLADESH   8+                   NA                0.1727878   0.1303777   0.2151979
18-21 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.1478615   0.1235293   0.1721936
18-21 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1512288   0.1320587   0.1703989
18-21 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.1321128   0.1022341   0.1619916
18-21 months   NIH-Crypto      BANGLADESH   8+                   NA                0.1351061   0.1092294   0.1609828
18-21 months   PROVIDE         BANGLADESH   3 or less            NA                0.1324305   0.0916564   0.1732046
18-21 months   PROVIDE         BANGLADESH   4-5                  NA                0.1373650   0.1172127   0.1575174
18-21 months   PROVIDE         BANGLADESH   6-7                  NA                0.1382513   0.1015138   0.1749887
18-21 months   PROVIDE         BANGLADESH   8+                   NA                0.1099311   0.0801492   0.1397131
21-24 months   IRC             INDIA        3 or less            NA                0.2018721   0.1645858   0.2391583
21-24 months   IRC             INDIA        4-5                  NA                0.1665107   0.1419072   0.1911141
21-24 months   IRC             INDIA        6-7                  NA                0.1772010   0.1515457   0.2028564
21-24 months   IRC             INDIA        8+                   NA                0.1793439   0.1472408   0.2114470
21-24 months   LCNI-5          MALAWI       3 or less            NA                0.1557400   0.1008433   0.2106367
21-24 months   LCNI-5          MALAWI       4-5                  NA                0.1832949   0.1448245   0.2217653
21-24 months   LCNI-5          MALAWI       6-7                  NA                0.2207477   0.1521048   0.2893907
21-24 months   LCNI-5          MALAWI       8+                   NA                0.1376819   0.0665894   0.2087743
21-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.1462106   0.1094058   0.1830154
21-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.1505415   0.1269359   0.1741471
21-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1372521   0.0948571   0.1796471
21-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.1202915   0.0749526   0.1656305
21-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.1515012   0.1257842   0.1772182
21-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1727877   0.1492858   0.1962895
21-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.1832326   0.1540804   0.2123848
21-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.1558436   0.1286010   0.1830861
21-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.1416064   0.1134803   0.1697326
21-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.1385483   0.1211224   0.1559742
21-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.1451874   0.1212949   0.1690800
21-24 months   PROVIDE         BANGLADESH   8+                   NA                0.1490343   0.1163508   0.1817177


### Parameter: E(Y)


agecat         studyid         country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     IRC             INDIA        NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     NIH-Birth       BANGLADESH   NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     NIH-Crypto      BANGLADESH   NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROVIDE         BANGLADESH   NA                   NA                0.9016472   0.8868914   0.9164029
3-6 months     IRC             INDIA        NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     NIH-Birth       BANGLADESH   NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     NIH-Crypto      BANGLADESH   NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROVIDE         BANGLADESH   NA                   NA                0.4890611   0.4760060   0.5021163
6-9 months     IRC             INDIA        NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     LCNI-5          MALAWI       NA                   NA                0.2849079   0.2723110   0.2975048
6-9 months     NIH-Birth       BANGLADESH   NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     NIH-Crypto      BANGLADESH   NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROVIDE         BANGLADESH   NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     SAS-FoodSuppl   INDIA        NA                   NA                0.1982186   0.1818458   0.2145914
9-12 months    IRC             INDIA        NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    LCNI-5          MALAWI       NA                   NA                0.2022567   0.1863082   0.2182053
9-12 months    NIH-Birth       BANGLADESH   NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    NIH-Crypto      BANGLADESH   NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROVIDE         BANGLADESH   NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-FoodSuppl   INDIA        NA                   NA                0.1410472   0.1219662   0.1601282
12-15 months   IRC             INDIA        NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   LCNI-5          MALAWI       NA                   NA                0.1518822   0.1181702   0.1855942
12-15 months   NIH-Birth       BANGLADESH   NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   NIH-Crypto      BANGLADESH   NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROVIDE         BANGLADESH   NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-FoodSuppl   INDIA        NA                   NA                0.1752090   0.1590517   0.1913663
15-18 months   IRC             INDIA        NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   LCNI-5          MALAWI       NA                   NA                0.1738706   0.1423337   0.2054074
15-18 months   NIH-Birth       BANGLADESH   NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   NIH-Crypto      BANGLADESH   NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROVIDE         BANGLADESH   NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   SAS-FoodSuppl   INDIA        NA                   NA                0.1648845   0.1491151   0.1806540
18-21 months   IRC             INDIA        NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   LCNI-5          MALAWI       NA                   NA                0.1818489   0.1616805   0.2020172
18-21 months   NIH-Birth       BANGLADESH   NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   NIH-Crypto      BANGLADESH   NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE         BANGLADESH   NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   IRC             INDIA        NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   LCNI-5          MALAWI       NA                   NA                0.1789517   0.1520986   0.2058049
21-24 months   NIH-Birth       BANGLADESH   NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   NIH-Crypto      BANGLADESH   NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE         BANGLADESH   NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     IRC             INDIA        4-5                  3 or less          0.0040647   -0.0577401    0.0658696
0-3 months     IRC             INDIA        6-7                  3 or less          0.0326487   -0.0313818    0.0966792
0-3 months     IRC             INDIA        8+                   3 or less          0.0009177   -0.0661828    0.0680183
0-3 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0232796   -0.0702361    0.0236769
0-3 months     NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0076553   -0.0641258    0.0488153
0-3 months     NIH-Birth       BANGLADESH   8+                   3 or less         -0.0241513   -0.0919241    0.0436215
0-3 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0319409   -0.0184184    0.0823002
0-3 months     NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0316695   -0.0252831    0.0886221
0-3 months     NIH-Crypto      BANGLADESH   8+                   3 or less          0.0162247   -0.0396796    0.0721291
0-3 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0326294   -0.0731888    0.0079301
0-3 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0221238   -0.0691867    0.0249391
0-3 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0722965   -0.1306210   -0.0139721
3-6 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     IRC             INDIA        4-5                  3 or less         -0.0059348   -0.0507031    0.0388335
3-6 months     IRC             INDIA        6-7                  3 or less          0.0001607   -0.0517139    0.0520354
3-6 months     IRC             INDIA        8+                   3 or less         -0.0416402   -0.0943976    0.0111173
3-6 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0172642   -0.0658261    0.0312976
3-6 months     NIH-Birth       BANGLADESH   6-7                  3 or less          0.0498412   -0.0053295    0.1050119
3-6 months     NIH-Birth       BANGLADESH   8+                   3 or less          0.0079704   -0.0600162    0.0759570
3-6 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0055151   -0.0343947    0.0454249
3-6 months     NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0064416   -0.0386406    0.0515237
3-6 months     NIH-Crypto      BANGLADESH   8+                   3 or less          0.0373964   -0.0075516    0.0823443
3-6 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0157796   -0.0497013    0.0181421
3-6 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0285416   -0.0680470    0.0109638
3-6 months     PROVIDE         BANGLADESH   8+                   3 or less          0.0150559   -0.0471121    0.0772239
6-9 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     IRC             INDIA        4-5                  3 or less         -0.0287191   -0.0690858    0.0116475
6-9 months     IRC             INDIA        6-7                  3 or less         -0.0469844   -0.0912347   -0.0027340
6-9 months     IRC             INDIA        8+                   3 or less         -0.0435376   -0.0901538    0.0030787
6-9 months     LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5          MALAWI       4-5                  3 or less         -0.0141206   -0.0444236    0.0161824
6-9 months     LCNI-5          MALAWI       6-7                  3 or less          0.0142684   -0.0248211    0.0533579
6-9 months     LCNI-5          MALAWI       8+                   3 or less         -0.0036709   -0.0475581    0.0402163
6-9 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth       BANGLADESH   4-5                  3 or less          0.0004802   -0.0428530    0.0438135
6-9 months     NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0177870   -0.0664764    0.0309025
6-9 months     NIH-Birth       BANGLADESH   8+                   3 or less         -0.0353498   -0.0843441    0.0136445
6-9 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0036682   -0.0330465    0.0257101
6-9 months     NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0051737   -0.0461727    0.0358253
6-9 months     NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0428825   -0.0766811   -0.0090840
6-9 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0068097   -0.0378867    0.0242673
6-9 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0175699   -0.0538764    0.0187366
6-9 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0302189   -0.1040634    0.0436257
6-9 months     SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA        4-5                  3 or less          0.0161948   -0.0758059    0.1081954
6-9 months     SAS-FoodSuppl   INDIA        6-7                  3 or less          0.0532283   -0.0413589    0.1478155
6-9 months     SAS-FoodSuppl   INDIA        8+                   3 or less          0.0474190   -0.0492341    0.1440720
9-12 months    IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    IRC             INDIA        4-5                  3 or less          0.0160072   -0.0363138    0.0683282
9-12 months    IRC             INDIA        6-7                  3 or less          0.0125916   -0.0416721    0.0668554
9-12 months    IRC             INDIA        8+                   3 or less          0.0191153   -0.0362835    0.0745140
9-12 months    LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5          MALAWI       4-5                  3 or less          0.0267273   -0.0094060    0.0628606
9-12 months    LCNI-5          MALAWI       6-7                  3 or less          0.0365069   -0.0115932    0.0846069
9-12 months    LCNI-5          MALAWI       8+                   3 or less         -0.0008037   -0.0569495    0.0553421
9-12 months    NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0279921   -0.0597787    0.0037945
9-12 months    NIH-Birth       BANGLADESH   6-7                  3 or less          0.0018464   -0.0379500    0.0416428
9-12 months    NIH-Birth       BANGLADESH   8+                   3 or less          0.0020881   -0.0419547    0.0461310
9-12 months    NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0175153   -0.0563486    0.0213180
9-12 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0195938   -0.0612506    0.0220630
9-12 months    NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0178695   -0.0585986    0.0228596
9-12 months    PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE         BANGLADESH   4-5                  3 or less         -0.0040547   -0.0296634    0.0215540
9-12 months    PROVIDE         BANGLADESH   6-7                  3 or less          0.0020090   -0.0294627    0.0334806
9-12 months    PROVIDE         BANGLADESH   8+                   3 or less         -0.0250872   -0.0615856    0.0114111
9-12 months    SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA        4-5                  3 or less          0.0246361   -0.0668405    0.1161127
9-12 months    SAS-FoodSuppl   INDIA        6-7                  3 or less          0.0105703   -0.0805331    0.1016736
9-12 months    SAS-FoodSuppl   INDIA        8+                   3 or less          0.0283764   -0.0754869    0.1322397
12-15 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   IRC             INDIA        4-5                  3 or less          0.0071203   -0.0316864    0.0459270
12-15 months   IRC             INDIA        6-7                  3 or less          0.0110341   -0.0298825    0.0519507
12-15 months   IRC             INDIA        8+                   3 or less         -0.0132627   -0.0527154    0.0261900
12-15 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0750257   -0.1599927    0.0099413
12-15 months   LCNI-5          MALAWI       6-7                  3 or less         -0.0418970   -0.1147484    0.0309544
12-15 months   LCNI-5          MALAWI       8+                   3 or less         -0.0680282   -0.1873188    0.0512624
12-15 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0169763   -0.0467137    0.0127611
12-15 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0051872   -0.0382451    0.0278707
12-15 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0066294   -0.0564570    0.0431981
12-15 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0344610   -0.0026426    0.0715646
12-15 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0244331   -0.0211116    0.0699779
12-15 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0058051   -0.0325279    0.0441381
12-15 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0526420   -0.0918483   -0.0134357
12-15 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0561165   -0.0980036   -0.0142295
12-15 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.0243646   -0.0746075    0.0258783
12-15 months   SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0600741   -0.1491280    0.0289798
12-15 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0372997   -0.1266279    0.0520285
12-15 months   SAS-FoodSuppl   INDIA        8+                   3 or less         -0.0464624   -0.1442129    0.0512881
15-18 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   IRC             INDIA        4-5                  3 or less          0.0070590   -0.0330240    0.0471421
15-18 months   IRC             INDIA        6-7                  3 or less          0.0522206    0.0063967    0.0980444
15-18 months   IRC             INDIA        8+                   3 or less          0.0227087   -0.0188819    0.0642994
15-18 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5          MALAWI       4-5                  3 or less          0.0164825   -0.0633978    0.0963628
15-18 months   LCNI-5          MALAWI       6-7                  3 or less          0.0279916   -0.0609565    0.1169397
15-18 months   LCNI-5          MALAWI       8+                   3 or less          0.0554851   -0.0327016    0.1436718
15-18 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.0330292   -0.0157699    0.0818283
15-18 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0187938   -0.0365975    0.0741852
15-18 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.0478356   -0.0045118    0.1001829
15-18 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0413475   -0.0768869   -0.0058080
15-18 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0531996   -0.0984946   -0.0079046
15-18 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0229581   -0.0624126    0.0164964
15-18 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0011998   -0.0368289    0.0344292
15-18 months   PROVIDE         BANGLADESH   6-7                  3 or less          0.0015870   -0.0387574    0.0419313
15-18 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0000780   -0.0467663    0.0469223
15-18 months   SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0248723   -0.0832483    0.0335036
15-18 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0122382   -0.0718249    0.0473485
15-18 months   SAS-FoodSuppl   INDIA        8+                   3 or less         -0.0189818   -0.0881105    0.0501470
18-21 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   IRC             INDIA        4-5                  3 or less         -0.0421035   -0.0826116   -0.0015954
18-21 months   IRC             INDIA        6-7                  3 or less         -0.0253865   -0.0687507    0.0179777
18-21 months   IRC             INDIA        8+                   3 or less         -0.0297673   -0.0732612    0.0137266
18-21 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0230680   -0.0734700    0.0273341
18-21 months   LCNI-5          MALAWI       6-7                  3 or less         -0.0105949   -0.0693444    0.0481546
18-21 months   LCNI-5          MALAWI       8+                   3 or less          0.0298778   -0.0483200    0.1080757
18-21 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0046471   -0.0468568    0.0375627
18-21 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0275507   -0.0864242    0.0313227
18-21 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0110942   -0.0658929    0.0437045
18-21 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0033674   -0.0276945    0.0344293
18-21 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0157486   -0.0542891    0.0227919
18-21 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0127553   -0.0482624    0.0227518
18-21 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE         BANGLADESH   4-5                  3 or less          0.0049345   -0.0405040    0.0503730
18-21 months   PROVIDE         BANGLADESH   6-7                  3 or less          0.0058207   -0.0490697    0.0607112
18-21 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.0224994   -0.0729350    0.0279363
21-24 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   IRC             INDIA        4-5                  3 or less         -0.0353614   -0.0807047    0.0099819
21-24 months   IRC             INDIA        6-7                  3 or less         -0.0246710   -0.0701809    0.0208388
21-24 months   IRC             INDIA        8+                   3 or less         -0.0225282   -0.0720977    0.0270414
21-24 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5          MALAWI       4-5                  3 or less          0.0275549   -0.0396478    0.0947575
21-24 months   LCNI-5          MALAWI       6-7                  3 or less          0.0650077   -0.0232823    0.1532978
21-24 months   LCNI-5          MALAWI       8+                   3 or less         -0.0180581   -0.1084885    0.0723722
21-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.0043309   -0.0394515    0.0481133
21-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0089585   -0.0651159    0.0471989
21-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0259191   -0.0843558    0.0325176
21-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0212865   -0.0133695    0.0559425
21-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0317314   -0.0070951    0.0705580
21-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0043424   -0.0330029    0.0416877
21-24 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0030581   -0.0362299    0.0301136
21-24 months   PROVIDE         BANGLADESH   6-7                  3 or less          0.0035810   -0.0333657    0.0405277
21-24 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0074278   -0.0358708    0.0507264


### Parameter: PAR


agecat         studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC             INDIA        3 or less            NA                 0.0104045   -0.0372677    0.0580767
0-3 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0153742   -0.0529666    0.0222182
0-3 months     NIH-Crypto      BANGLADESH   3 or less            NA                 0.0282495   -0.0128678    0.0693668
0-3 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0285291   -0.0593284    0.0022702
3-6 months     IRC             INDIA        3 or less            NA                -0.0089281   -0.0435363    0.0256801
3-6 months     NIH-Birth       BANGLADESH   3 or less            NA                 0.0082080   -0.0315688    0.0479847
3-6 months     NIH-Crypto      BANGLADESH   3 or less            NA                 0.0115724   -0.0222731    0.0454179
3-6 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0122961   -0.0390951    0.0145028
6-9 months     IRC             INDIA        3 or less            NA                -0.0326675   -0.0641357   -0.0011992
6-9 months     LCNI-5          MALAWI       3 or less            NA                -0.0029337   -0.0238047    0.0179373
6-9 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0086343   -0.0415002    0.0242315
6-9 months     NIH-Crypto      BANGLADESH   3 or less            NA                -0.0069697   -0.0310366    0.0170972
6-9 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0105340   -0.0361173    0.0150493
6-9 months     SAS-FoodSuppl   INDIA        3 or less            NA                 0.0292511   -0.0555513    0.1140534
9-12 months    IRC             INDIA        3 or less            NA                 0.0125510   -0.0296809    0.0547829
9-12 months    LCNI-5          MALAWI       3 or less            NA                 0.0187039   -0.0051939    0.0426017
9-12 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0153474   -0.0390533    0.0083585
9-12 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.0180931   -0.0498173    0.0136311
9-12 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0050022   -0.0248470    0.0148426
9-12 months    SAS-FoodSuppl   INDIA        3 or less            NA                 0.0159156   -0.0675047    0.0993360
12-15 months   IRC             INDIA        3 or less            NA                 0.0031115   -0.0258562    0.0320791
12-15 months   LCNI-5          MALAWI       3 or less            NA                -0.0451585   -0.0953632    0.0050462
12-15 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0096403   -0.0324231    0.0131425
12-15 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0230065   -0.0075465    0.0535595
12-15 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0403898   -0.0719371   -0.0088426
12-15 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.0474494   -0.1292476    0.0343488
15-18 months   IRC             INDIA        3 or less            NA                 0.0208872   -0.0104902    0.0522647
15-18 months   LCNI-5          MALAWI       3 or less            NA                 0.0170110   -0.0342081    0.0682300
15-18 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0263412   -0.0129181    0.0656005
15-18 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0474211   -0.0774833   -0.0173589
15-18 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0013978   -0.0293239    0.0265282
15-18 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.0161462   -0.0677471    0.0354548
18-21 months   IRC             INDIA        3 or less            NA                -0.0277424   -0.0595887    0.0041039
18-21 months   LCNI-5          MALAWI       3 or less            NA                -0.0074315   -0.0411394    0.0262764
18-21 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0114427   -0.0441942    0.0213088
18-21 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0052005   -0.0287997    0.0183987
18-21 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0000577   -0.0377844    0.0378997
21-24 months   IRC             INDIA        3 or less            NA                -0.0241380   -0.0591956    0.0109195
21-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0232117   -0.0212380    0.0676615
21-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0042376   -0.0385885    0.0301134
21-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0235489   -0.0020129    0.0491107
21-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0003640   -0.0247798    0.0255078
