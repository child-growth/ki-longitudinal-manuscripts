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

unadjusted

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
![](/tmp/9f04fc65-b117-48c7-aa4c-125a9484d558/08cacb8d-ac3a-40c9-b378-61c345dffaf8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9f04fc65-b117-48c7-aa4c-125a9484d558/08cacb8d-ac3a-40c9-b378-61c345dffaf8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9f04fc65-b117-48c7-aa4c-125a9484d558/08cacb8d-ac3a-40c9-b378-61c345dffaf8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC             INDIA        3 or less            NA                -0.2510737   -0.3966559   -0.1054916
0-3 months     IRC             INDIA        4-5                  NA                -0.2558025   -0.3408557   -0.1707494
0-3 months     IRC             INDIA        6-7                  NA                -0.1847141   -0.3055020   -0.0639262
0-3 months     IRC             INDIA        8+                   NA                -0.3481779   -0.4568394   -0.2395163
0-3 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.2290780   -0.2923513   -0.1658048
0-3 months     NIH-Birth       BANGLADESH   4-5                  NA                -0.2445947   -0.2836927   -0.2054968
0-3 months     NIH-Birth       BANGLADESH   6-7                  NA                -0.2399951   -0.2989168   -0.1810733
0-3 months     NIH-Birth       BANGLADESH   8+                   NA                -0.1918082   -0.2567933   -0.1268232
0-3 months     NIH-Crypto      BANGLADESH   3 or less            NA                -0.2275456   -0.2789325   -0.1761587
0-3 months     NIH-Crypto      BANGLADESH   4-5                  NA                -0.2310051   -0.2557616   -0.2062486
0-3 months     NIH-Crypto      BANGLADESH   6-7                  NA                -0.2417969   -0.2784953   -0.2050985
0-3 months     NIH-Crypto      BANGLADESH   8+                   NA                -0.2204563   -0.2611758   -0.1797368
0-3 months     PROVIDE         BANGLADESH   3 or less            NA                -0.1743320   -0.2131627   -0.1355014
0-3 months     PROVIDE         BANGLADESH   4-5                  NA                -0.1851975   -0.2108350   -0.1595600
0-3 months     PROVIDE         BANGLADESH   6-7                  NA                -0.2015718   -0.2399322   -0.1632115
0-3 months     PROVIDE         BANGLADESH   8+                   NA                -0.1961254   -0.2428436   -0.1494073
3-6 months     IRC             INDIA        3 or less            NA                -0.0675296   -0.1496225    0.0145633
3-6 months     IRC             INDIA        4-5                  NA                -0.0567931   -0.1046158   -0.0089703
3-6 months     IRC             INDIA        6-7                  NA                -0.0727749   -0.1250467   -0.0205031
3-6 months     IRC             INDIA        8+                   NA                -0.0061435   -0.0791299    0.0668429
3-6 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0451535   -0.0901732   -0.0001338
3-6 months     NIH-Birth       BANGLADESH   4-5                  NA                -0.0750228   -0.1099796   -0.0400660
3-6 months     NIH-Birth       BANGLADESH   6-7                  NA                -0.0191869   -0.0678666    0.0294929
3-6 months     NIH-Birth       BANGLADESH   8+                   NA                -0.0406444   -0.0908712    0.0095824
3-6 months     NIH-Crypto      BANGLADESH   3 or less            NA                 0.0314652   -0.0065418    0.0694722
3-6 months     NIH-Crypto      BANGLADESH   4-5                  NA                 0.0235468   -0.0003394    0.0474329
3-6 months     NIH-Crypto      BANGLADESH   6-7                  NA                 0.0465722    0.0063682    0.0867762
3-6 months     NIH-Crypto      BANGLADESH   8+                   NA                 0.0034601   -0.0367595    0.0436798
3-6 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0238479   -0.0646103    0.0169145
3-6 months     PROVIDE         BANGLADESH   4-5                  NA                -0.0345601   -0.0563049   -0.0128153
3-6 months     PROVIDE         BANGLADESH   6-7                  NA                -0.0063105   -0.0431023    0.0304812
3-6 months     PROVIDE         BANGLADESH   8+                   NA                -0.0372462   -0.0790690    0.0045766
6-9 months     IRC             INDIA        3 or less            NA                -0.0421553   -0.0852463    0.0009358
6-9 months     IRC             INDIA        4-5                  NA                -0.0191315   -0.0522233    0.0139603
6-9 months     IRC             INDIA        6-7                  NA                -0.0021750   -0.0479393    0.0435893
6-9 months     IRC             INDIA        8+                   NA                -0.0108543   -0.0632981    0.0415895
6-9 months     LCNI-5          MALAWI       3 or less            NA                 0.0270231   -0.0032913    0.0573375
6-9 months     LCNI-5          MALAWI       4-5                  NA                 0.0231826   -0.0016117    0.0479769
6-9 months     LCNI-5          MALAWI       6-7                  NA                 0.0440688    0.0110186    0.0771190
6-9 months     LCNI-5          MALAWI       8+                   NA                 0.0131279   -0.0413389    0.0675948
6-9 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0385752   -0.0780584    0.0009081
6-9 months     NIH-Birth       BANGLADESH   4-5                  NA                -0.0545142   -0.0835636   -0.0254649
6-9 months     NIH-Birth       BANGLADESH   6-7                  NA                -0.0748348   -0.1104519   -0.0392178
6-9 months     NIH-Birth       BANGLADESH   8+                   NA                -0.0737197   -0.1152799   -0.0321596
6-9 months     NIH-Crypto      BANGLADESH   3 or less            NA                 0.0080426   -0.0266262    0.0427115
6-9 months     NIH-Crypto      BANGLADESH   4-5                  NA                -0.0367903   -0.0542791   -0.0193015
6-9 months     NIH-Crypto      BANGLADESH   6-7                  NA                -0.0448425   -0.0730840   -0.0166010
6-9 months     NIH-Crypto      BANGLADESH   8+                   NA                -0.0307868   -0.0631795    0.0016059
6-9 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0558597   -0.0816746   -0.0300449
6-9 months     PROVIDE         BANGLADESH   4-5                  NA                -0.0569436   -0.0723213   -0.0415659
6-9 months     PROVIDE         BANGLADESH   6-7                  NA                -0.0740707   -0.0979224   -0.0502191
6-9 months     PROVIDE         BANGLADESH   8+                   NA                -0.0646529   -0.0953740   -0.0339318
6-9 months     SAS-FoodSuppl   INDIA        3 or less            NA                -0.0931302   -0.1724852   -0.0137752
6-9 months     SAS-FoodSuppl   INDIA        4-5                  NA                -0.1025921   -0.1280757   -0.0771085
6-9 months     SAS-FoodSuppl   INDIA        6-7                  NA                -0.1055367   -0.1379130   -0.0731604
6-9 months     SAS-FoodSuppl   INDIA        8+                   NA                -0.1170510   -0.1638200   -0.0702819
9-12 months    IRC             INDIA        3 or less            NA                -0.0086547   -0.0542142    0.0369049
9-12 months    IRC             INDIA        4-5                  NA                -0.0134960   -0.0425863    0.0155943
9-12 months    IRC             INDIA        6-7                  NA                -0.0483993   -0.0793330   -0.0174657
9-12 months    IRC             INDIA        8+                   NA                -0.0805563   -0.1128884   -0.0482243
9-12 months    LCNI-5          MALAWI       3 or less            NA                -0.0315234   -0.0731134    0.0100666
9-12 months    LCNI-5          MALAWI       4-5                  NA                -0.0517875   -0.0801938   -0.0233812
9-12 months    LCNI-5          MALAWI       6-7                  NA                -0.0478636   -0.0884822   -0.0072450
9-12 months    LCNI-5          MALAWI       8+                   NA                -0.0255356   -0.0723302    0.0212589
9-12 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0466697   -0.0810256   -0.0123137
9-12 months    NIH-Birth       BANGLADESH   4-5                  NA                -0.0474677   -0.0672580   -0.0276775
9-12 months    NIH-Birth       BANGLADESH   6-7                  NA                -0.0340606   -0.0682682    0.0001469
9-12 months    NIH-Birth       BANGLADESH   8+                   NA                -0.0370607   -0.0738026   -0.0003188
9-12 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.0315357   -0.0607785   -0.0022930
9-12 months    NIH-Crypto      BANGLADESH   4-5                  NA                -0.0281355   -0.0442456   -0.0120254
9-12 months    NIH-Crypto      BANGLADESH   6-7                  NA                -0.0497511   -0.0722254   -0.0272767
9-12 months    NIH-Crypto      BANGLADESH   8+                   NA                -0.0308269   -0.0576785   -0.0039753
9-12 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0509960   -0.0749136   -0.0270783
9-12 months    PROVIDE         BANGLADESH   4-5                  NA                -0.0625064   -0.0792485   -0.0457643
9-12 months    PROVIDE         BANGLADESH   6-7                  NA                -0.0772099   -0.1003964   -0.0540235
9-12 months    PROVIDE         BANGLADESH   8+                   NA                -0.0602743   -0.0886135   -0.0319352
9-12 months    SAS-FoodSuppl   INDIA        3 or less            NA                 0.1544036   -0.2572803    0.5660875
9-12 months    SAS-FoodSuppl   INDIA        4-5                  NA                -0.1490892   -0.2300004   -0.0681780
9-12 months    SAS-FoodSuppl   INDIA        6-7                  NA                -0.2116893   -0.2644790   -0.1588995
9-12 months    SAS-FoodSuppl   INDIA        8+                   NA                -0.1289635   -0.2833293    0.0254023
12-15 months   IRC             INDIA        3 or less            NA                -0.0300681   -0.0718716    0.0117353
12-15 months   IRC             INDIA        4-5                  NA                -0.0547875   -0.0768082   -0.0327668
12-15 months   IRC             INDIA        6-7                  NA                -0.0348403   -0.0760319    0.0063513
12-15 months   IRC             INDIA        8+                   NA                -0.0519073   -0.0875666   -0.0162481
12-15 months   LCNI-5          MALAWI       3 or less            NA                 0.0054629   -0.0571554    0.0680813
12-15 months   LCNI-5          MALAWI       4-5                  NA                -0.0677429   -0.1374528    0.0019669
12-15 months   LCNI-5          MALAWI       6-7                  NA                -0.0449941   -0.0916267    0.0016384
12-15 months   LCNI-5          MALAWI       8+                   NA                -0.0535499   -0.1504158    0.0433159
12-15 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.1392926   -0.1695051   -0.1090802
12-15 months   NIH-Birth       BANGLADESH   4-5                  NA                -0.1345852   -0.1551471   -0.1140233
12-15 months   NIH-Birth       BANGLADESH   6-7                  NA                -0.1197371   -0.1478748   -0.0915993
12-15 months   NIH-Birth       BANGLADESH   8+                   NA                -0.0990206   -0.1685841   -0.0294571
12-15 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0215835   -0.0477559    0.0045889
12-15 months   NIH-Crypto      BANGLADESH   4-5                  NA                -0.0409554   -0.0543874   -0.0275235
12-15 months   NIH-Crypto      BANGLADESH   6-7                  NA                -0.0396263   -0.0600038   -0.0192487
12-15 months   NIH-Crypto      BANGLADESH   8+                   NA                -0.0432786   -0.0666700   -0.0198872
12-15 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0406234   -0.0646382   -0.0166086
12-15 months   PROVIDE         BANGLADESH   4-5                  NA                -0.0443323   -0.0590084   -0.0296563
12-15 months   PROVIDE         BANGLADESH   6-7                  NA                -0.0330123   -0.0544853   -0.0115393
12-15 months   PROVIDE         BANGLADESH   8+                   NA                -0.0413791   -0.0690413   -0.0137168
12-15 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.1577531   -0.4342823    0.1187762
12-15 months   SAS-FoodSuppl   INDIA        4-5                  NA                 0.0372568    0.0079514    0.0665622
12-15 months   SAS-FoodSuppl   INDIA        6-7                  NA                 0.0039421   -0.0628059    0.0706900
12-15 months   SAS-FoodSuppl   INDIA        8+                   NA                 0.0196556   -0.0605645    0.0998757
15-18 months   IRC             INDIA        3 or less            NA                -0.0424870   -0.0741481   -0.0108260
15-18 months   IRC             INDIA        4-5                  NA                -0.0426285   -0.0690666   -0.0161904
15-18 months   IRC             INDIA        6-7                  NA                -0.0281740   -0.0515471   -0.0048010
15-18 months   IRC             INDIA        8+                   NA                -0.0413405   -0.0764560   -0.0062251
15-18 months   LCNI-5          MALAWI       3 or less            NA                -0.0745143   -0.1248856   -0.0241429
15-18 months   LCNI-5          MALAWI       4-5                  NA                -0.0340961   -0.0694324    0.0012401
15-18 months   LCNI-5          MALAWI       6-7                  NA                -0.0280637   -0.0921686    0.0360412
15-18 months   LCNI-5          MALAWI       8+                   NA                -0.0606805   -0.1090579   -0.0123032
15-18 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0725350   -0.1077773   -0.0372926
15-18 months   NIH-Birth       BANGLADESH   4-5                  NA                -0.0504430   -0.0711640   -0.0297219
15-18 months   NIH-Birth       BANGLADESH   6-7                  NA                -0.0632669   -0.0969985   -0.0295352
15-18 months   NIH-Birth       BANGLADESH   8+                   NA                -0.0529133   -0.0890660   -0.0167605
15-18 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0384370   -0.0600660   -0.0168080
15-18 months   NIH-Crypto      BANGLADESH   4-5                  NA                -0.0123875   -0.0253296    0.0005545
15-18 months   NIH-Crypto      BANGLADESH   6-7                  NA                -0.0175519   -0.0339630   -0.0011407
15-18 months   NIH-Crypto      BANGLADESH   8+                   NA                -0.0105410   -0.0293842    0.0083023
15-18 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0407207   -0.0624184   -0.0190230
15-18 months   PROVIDE         BANGLADESH   4-5                  NA                -0.0374732   -0.0497973   -0.0251492
15-18 months   PROVIDE         BANGLADESH   6-7                  NA                -0.0344441   -0.0538045   -0.0150837
15-18 months   PROVIDE         BANGLADESH   8+                   NA                -0.0390458   -0.0627350   -0.0153567
15-18 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.0343834   -0.0732776    0.0045107
15-18 months   SAS-FoodSuppl   INDIA        4-5                  NA                -0.0434952   -0.0621362   -0.0248543
15-18 months   SAS-FoodSuppl   INDIA        6-7                  NA                -0.0382654   -0.0629906   -0.0135403
15-18 months   SAS-FoodSuppl   INDIA        8+                   NA                -0.0186310   -0.0523699    0.0151079
18-21 months   IRC             INDIA        3 or less            NA                -0.0347071   -0.0676604   -0.0017538
18-21 months   IRC             INDIA        4-5                  NA                -0.0484067   -0.0689445   -0.0278690
18-21 months   IRC             INDIA        6-7                  NA                -0.0274607   -0.0559363    0.0010149
18-21 months   IRC             INDIA        8+                   NA                -0.0446582   -0.0725188   -0.0167977
18-21 months   LCNI-5          MALAWI       3 or less            NA                 0.0018079   -0.0271514    0.0307671
18-21 months   LCNI-5          MALAWI       4-5                  NA                -0.0281804   -0.0498718   -0.0064891
18-21 months   LCNI-5          MALAWI       6-7                  NA                 0.0040177   -0.0224198    0.0304553
18-21 months   LCNI-5          MALAWI       8+                   NA                -0.0468213   -0.1494632    0.0558206
18-21 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0190052   -0.0516364    0.0136259
18-21 months   NIH-Birth       BANGLADESH   4-5                  NA                -0.0308156   -0.0489179   -0.0127132
18-21 months   NIH-Birth       BANGLADESH   6-7                  NA                -0.0574254   -0.0864257   -0.0284251
18-21 months   NIH-Birth       BANGLADESH   8+                   NA                -0.0501397   -0.0746399   -0.0256395
18-21 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0195606   -0.0455157    0.0063944
18-21 months   NIH-Crypto      BANGLADESH   4-5                  NA                -0.0355325   -0.0465870   -0.0244780
18-21 months   NIH-Crypto      BANGLADESH   6-7                  NA                -0.0334353   -0.0496951   -0.0171754
18-21 months   NIH-Crypto      BANGLADESH   8+                   NA                -0.0050307   -0.0240414    0.0139800
18-21 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0110767   -0.0318097    0.0096564
18-21 months   PROVIDE         BANGLADESH   4-5                  NA                -0.0128703   -0.0248670   -0.0008737
18-21 months   PROVIDE         BANGLADESH   6-7                  NA                -0.0158990   -0.0332052    0.0014071
18-21 months   PROVIDE         BANGLADESH   8+                   NA                 0.0022581   -0.0172746    0.0217908
21-24 months   IRC             INDIA        3 or less            NA                 0.0073835   -0.0368237    0.0515906
21-24 months   IRC             INDIA        4-5                  NA                -0.0200336   -0.0423929    0.0023258
21-24 months   IRC             INDIA        6-7                  NA                -0.0224774   -0.0464369    0.0014820
21-24 months   IRC             INDIA        8+                   NA                -0.0069775   -0.0330554    0.0191004
21-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0259224   -0.0049182    0.0567630
21-24 months   LCNI-5          MALAWI       4-5                  NA                 0.0203968   -0.0039098    0.0447034
21-24 months   LCNI-5          MALAWI       6-7                  NA                 0.0309661    0.0013952    0.0605369
21-24 months   LCNI-5          MALAWI       8+                   NA                 0.0403694   -0.0029299    0.0836686
21-24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0456652    0.0125705    0.0787600
21-24 months   NIH-Birth       BANGLADESH   4-5                  NA                 0.0390488    0.0215636    0.0565341
21-24 months   NIH-Birth       BANGLADESH   6-7                  NA                 0.0405415    0.0159071    0.0651759
21-24 months   NIH-Birth       BANGLADESH   8+                   NA                 0.0399975    0.0157640    0.0642310
21-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0337215    0.0089614    0.0584816
21-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                 0.0658841    0.0545374    0.0772309
21-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                 0.0646406    0.0482899    0.0809913
21-24 months   NIH-Crypto      BANGLADESH   8+                   NA                 0.0505341    0.0287089    0.0723594
21-24 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0644944    0.0440422    0.0849465
21-24 months   PROVIDE         BANGLADESH   4-5                  NA                 0.0417196    0.0294635    0.0539757
21-24 months   PROVIDE         BANGLADESH   6-7                  NA                 0.0415708    0.0223522    0.0607894
21-24 months   PROVIDE         BANGLADESH   8+                   NA                 0.0427798    0.0192897    0.0662699


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
0-3 months     IRC             INDIA        4-5                  3 or less         -0.0047288   -0.1733354    0.1638778
0-3 months     IRC             INDIA        6-7                  3 or less          0.0663596   -0.1228066    0.2555259
0-3 months     IRC             INDIA        8+                   3 or less         -0.0971041   -0.2787673    0.0845590
0-3 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0155167   -0.0898951    0.0588618
0-3 months     NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0109171   -0.0973767    0.0755426
0-3 months     NIH-Birth       BANGLADESH   8+                   3 or less          0.0372698   -0.0534306    0.1279702
0-3 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0034595   -0.0604989    0.0535800
0-3 months     NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0142513   -0.0773971    0.0488945
0-3 months     NIH-Crypto      BANGLADESH   8+                   3 or less          0.0070893   -0.0584751    0.0726537
0-3 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0108654   -0.0573961    0.0356652
0-3 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0272398   -0.0818231    0.0273435
0-3 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0217934   -0.0825421    0.0389553
3-6 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     IRC             INDIA        4-5                  3 or less          0.0107365   -0.0842701    0.1057431
3-6 months     IRC             INDIA        6-7                  3 or less         -0.0052453   -0.1025674    0.0920767
3-6 months     IRC             INDIA        8+                   3 or less          0.0613861   -0.0484604    0.1712326
3-6 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0298693   -0.0868671    0.0271285
3-6 months     NIH-Birth       BANGLADESH   6-7                  3 or less          0.0259667   -0.0403393    0.0922727
3-6 months     NIH-Birth       BANGLADESH   8+                   3 or less          0.0045091   -0.0629409    0.0719591
3-6 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0079184   -0.0528080    0.0369712
3-6 months     NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0151070   -0.0402183    0.0704324
3-6 months     NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0280050   -0.0833418    0.0273317
3-6 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0107122   -0.0569119    0.0354875
3-6 months     PROVIDE         BANGLADESH   6-7                  3 or less          0.0175374   -0.0373735    0.0724483
3-6 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0133983   -0.0717997    0.0450030
6-9 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     IRC             INDIA        4-5                  3 or less          0.0230238   -0.0313077    0.0773553
6-9 months     IRC             INDIA        6-7                  3 or less          0.0399803   -0.0228784    0.1028390
6-9 months     IRC             INDIA        8+                   3 or less          0.0313009   -0.0365754    0.0991773
6-9 months     LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5          MALAWI       4-5                  3 or less         -0.0038405   -0.0430033    0.0353222
6-9 months     LCNI-5          MALAWI       6-7                  3 or less          0.0170457   -0.0278015    0.0618930
6-9 months     LCNI-5          MALAWI       8+                   3 or less         -0.0138952   -0.0762298    0.0484394
6-9 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0159391   -0.0649573    0.0330792
6-9 months     NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0362597   -0.0894339    0.0169146
6-9 months     NIH-Birth       BANGLADESH   8+                   3 or less         -0.0351446   -0.0924697    0.0221806
6-9 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0448330   -0.0836632   -0.0060028
6-9 months     NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0528851   -0.0976010   -0.0081692
6-9 months     NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0388295   -0.0862764    0.0086175
6-9 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0010839   -0.0311319    0.0289641
6-9 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0182110   -0.0533580    0.0169359
6-9 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0087932   -0.0489204    0.0313340
6-9 months     SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0094619   -0.0928083    0.0738845
6-9 months     SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0124065   -0.0981120    0.0732990
6-9 months     SAS-FoodSuppl   INDIA        8+                   3 or less         -0.0239208   -0.1160324    0.0681909
9-12 months    IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    IRC             INDIA        4-5                  3 or less         -0.0048414   -0.0588962    0.0492134
9-12 months    IRC             INDIA        6-7                  3 or less         -0.0397446   -0.0948134    0.0153241
9-12 months    IRC             INDIA        8+                   3 or less         -0.0719017   -0.1277679   -0.0160354
9-12 months    LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5          MALAWI       4-5                  3 or less         -0.0202641   -0.0706292    0.0301010
9-12 months    LCNI-5          MALAWI       6-7                  3 or less         -0.0163402   -0.0744745    0.0417942
9-12 months    LCNI-5          MALAWI       8+                   3 or less          0.0059878   -0.0566177    0.0685934
9-12 months    NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0007981   -0.0404463    0.0388502
9-12 months    NIH-Birth       BANGLADESH   6-7                  3 or less          0.0126090   -0.0358728    0.0610909
9-12 months    NIH-Birth       BANGLADESH   8+                   3 or less          0.0096089   -0.0406931    0.0599110
9-12 months    NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0034002   -0.0299865    0.0367870
9-12 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0182153   -0.0550967    0.0186660
9-12 months    NIH-Crypto      BANGLADESH   8+                   3 or less          0.0007088   -0.0389919    0.0404095
9-12 months    PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE         BANGLADESH   4-5                  3 or less         -0.0115104   -0.0407055    0.0176846
9-12 months    PROVIDE         BANGLADESH   6-7                  3 or less         -0.0262139   -0.0595256    0.0070977
9-12 months    PROVIDE         BANGLADESH   8+                   3 or less         -0.0092783   -0.0463615    0.0278048
9-12 months    SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.3034928   -0.7230524    0.1160667
9-12 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.3660929   -0.7811476    0.0489618
9-12 months    SAS-FoodSuppl   INDIA        8+                   3 or less         -0.2833671   -0.7230402    0.1563060
12-15 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   IRC             INDIA        4-5                  3 or less         -0.0247194   -0.0719681    0.0225293
12-15 months   IRC             INDIA        6-7                  3 or less         -0.0047722   -0.0634601    0.0539157
12-15 months   IRC             INDIA        8+                   3 or less         -0.0218392   -0.0767856    0.0331072
12-15 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0732059   -0.1669103    0.0204986
12-15 months   LCNI-5          MALAWI       6-7                  3 or less         -0.0504570   -0.1285317    0.0276176
12-15 months   LCNI-5          MALAWI       8+                   3 or less         -0.0590128   -0.1743560    0.0563304
12-15 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.0047074   -0.0318382    0.0412530
12-15 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0195556   -0.0217303    0.0608415
12-15 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.0402720   -0.0355691    0.1161131
12-15 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0193719   -0.0487898    0.0100459
12-15 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0180428   -0.0512126    0.0151271
12-15 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0216951   -0.0567971    0.0134069
12-15 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0037089   -0.0318531    0.0244353
12-15 months   PROVIDE         BANGLADESH   6-7                  3 or less          0.0076111   -0.0246038    0.0398260
12-15 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.0007556   -0.0373877    0.0358765
12-15 months   SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA        4-5                  3 or less          0.1950099   -0.0830679    0.4730876
12-15 months   SAS-FoodSuppl   INDIA        6-7                  3 or less          0.1616951   -0.1227758    0.4461661
12-15 months   SAS-FoodSuppl   INDIA        8+                   3 or less          0.1774087   -0.1105213    0.4653387
15-18 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   IRC             INDIA        4-5                  3 or less         -0.0001414   -0.0413894    0.0411065
15-18 months   IRC             INDIA        6-7                  3 or less          0.0143130   -0.0250408    0.0536668
15-18 months   IRC             INDIA        8+                   3 or less          0.0011465   -0.0461348    0.0484278
15-18 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5          MALAWI       4-5                  3 or less          0.0404181   -0.0211118    0.1019480
15-18 months   LCNI-5          MALAWI       6-7                  3 or less          0.0464505   -0.0350768    0.1279779
15-18 months   LCNI-5          MALAWI       8+                   3 or less          0.0138337   -0.0560064    0.0836738
15-18 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.0220920   -0.0187906    0.0629746
15-18 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0092681   -0.0395156    0.0580518
15-18 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.0196217   -0.0308664    0.0701097
15-18 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0260495    0.0008441    0.0512548
15-18 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0208852   -0.0062652    0.0480355
15-18 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0278961   -0.0007898    0.0565820
15-18 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE         BANGLADESH   4-5                  3 or less          0.0032475   -0.0217060    0.0282009
15-18 months   PROVIDE         BANGLADESH   6-7                  3 or less          0.0062766   -0.0228029    0.0353561
15-18 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0016749   -0.0304494    0.0337991
15-18 months   SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0091118   -0.0522423    0.0340187
15-18 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0038820   -0.0499698    0.0422058
15-18 months   SAS-FoodSuppl   INDIA        8+                   3 or less          0.0157524   -0.0357361    0.0672409
18-21 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   IRC             INDIA        4-5                  3 or less         -0.0136997   -0.0525290    0.0251297
18-21 months   IRC             INDIA        6-7                  3 or less          0.0072464   -0.0363056    0.0507984
18-21 months   IRC             INDIA        8+                   3 or less         -0.0099511   -0.0531035    0.0332012
18-21 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0299883   -0.0661705    0.0061939
18-21 months   LCNI-5          MALAWI       6-7                  3 or less          0.0022099   -0.0370022    0.0414219
18-21 months   LCNI-5          MALAWI       8+                   3 or less         -0.0486291   -0.1552781    0.0580198
18-21 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0118103   -0.0491263    0.0255057
18-21 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0384201   -0.0820757    0.0052354
18-21 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0311344   -0.0719395    0.0096706
18-21 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0159719   -0.0441830    0.0122392
18-21 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0138747   -0.0445022    0.0167529
18-21 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0145299   -0.0176426    0.0467025
18-21 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0017937   -0.0257474    0.0221600
18-21 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0048224   -0.0318291    0.0221844
18-21 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0133348   -0.0151501    0.0418197
21-24 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   IRC             INDIA        4-5                  3 or less         -0.0274170   -0.0769570    0.0221230
21-24 months   IRC             INDIA        6-7                  3 or less         -0.0298609   -0.0801434    0.0204216
21-24 months   IRC             INDIA        8+                   3 or less         -0.0143610   -0.0656867    0.0369647
21-24 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0055256   -0.0447933    0.0337421
21-24 months   LCNI-5          MALAWI       6-7                  3 or less          0.0050437   -0.0376831    0.0477705
21-24 months   LCNI-5          MALAWI       8+                   3 or less          0.0144470   -0.0387128    0.0676068
21-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0066164   -0.0440462    0.0308135
21-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0051238   -0.0463805    0.0361329
21-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0056677   -0.0466863    0.0353508
21-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0321626    0.0049264    0.0593989
21-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0309191    0.0012474    0.0605908
21-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0168126   -0.0161935    0.0498188
21-24 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0227748   -0.0466181    0.0010685
21-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0229236   -0.0509886    0.0051415
21-24 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.0217146   -0.0528606    0.0094315


### Parameter: PAR


agecat         studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC             INDIA        3 or less            NA                -0.0047534   -0.1400135    0.1305067
0-3 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0029084   -0.0602010    0.0543841
0-3 months     NIH-Crypto      BANGLADESH   3 or less            NA                -0.0037152   -0.0501126    0.0426823
0-3 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0137082   -0.0487797    0.0213634
3-6 months     IRC             INDIA        3 or less            NA                 0.0156378   -0.0599244    0.0911999
3-6 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0057472   -0.0484763    0.0369820
3-6 months     NIH-Crypto      BANGLADESH   3 or less            NA                -0.0046911   -0.0408489    0.0314667
3-6 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0031146   -0.0396722    0.0334430
6-9 months     IRC             INDIA        3 or less            NA                 0.0258876   -0.0164664    0.0682416
6-9 months     LCNI-5          MALAWI       3 or less            NA                 0.0009103   -0.0255949    0.0274154
6-9 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0209796   -0.0574065    0.0154472
6-9 months     NIH-Crypto      BANGLADESH   3 or less            NA                -0.0394064   -0.0713771   -0.0074357
6-9 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0055667   -0.0289776    0.0178443
6-9 months     SAS-FoodSuppl   INDIA        3 or less            NA                -0.0121002   -0.0876111    0.0634107
9-12 months    IRC             INDIA        3 or less            NA                -0.0274766   -0.0695591    0.0146058
9-12 months    LCNI-5          MALAWI       3 or less            NA                -0.0117906   -0.0454035    0.0218223
9-12 months    NIH-Birth       BANGLADESH   3 or less            NA                 0.0041948   -0.0268377    0.0352274
9-12 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.0027638   -0.0299454    0.0244178
9-12 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0120510   -0.0339640    0.0098619
9-12 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.3006673   -0.6889181    0.0875835
12-15 months   IRC             INDIA        3 or less            NA                -0.0153838   -0.0544518    0.0236842
12-15 months   LCNI-5          MALAWI       3 or less            NA                -0.0458204   -0.1005289    0.0088882
12-15 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0133338   -0.0162403    0.0429080
12-15 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0167478   -0.0409563    0.0074606
12-15 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0002873   -0.0219777    0.0214031
12-15 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.1666277   -0.0915188    0.4247742
15-18 months   IRC             INDIA        3 or less            NA                 0.0039704   -0.0265142    0.0344550
15-18 months   LCNI-5          MALAWI       3 or less            NA                 0.0281119   -0.0132476    0.0694715
15-18 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0148444   -0.0173627    0.0470514
15-18 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0215297    0.0013075    0.0417518
15-18 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0030770   -0.0164528    0.0226067
15-18 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.0025291   -0.0405480    0.0354899
18-21 months   IRC             INDIA        3 or less            NA                -0.0053746   -0.0362350    0.0254859
18-21 months   LCNI-5          MALAWI       3 or less            NA                -0.0165406   -0.0420945    0.0090133
18-21 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0193838   -0.0489840    0.0102165
18-21 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0084081   -0.0318216    0.0150053
18-21 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0001368   -0.0182346    0.0185082
21-24 months   IRC             INDIA        3 or less            NA                -0.0212916   -0.0609874    0.0184042
21-24 months   LCNI-5          MALAWI       3 or less            NA                -0.0000796   -0.0251283    0.0249691
21-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0049737   -0.0342135    0.0242660
21-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0250406    0.0023877    0.0476935
21-24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0182601   -0.0364653   -0.0000550
