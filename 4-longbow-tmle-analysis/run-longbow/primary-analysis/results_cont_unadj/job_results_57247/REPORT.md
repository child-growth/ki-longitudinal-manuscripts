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
![](/tmp/a3980010-7428-4c1b-8f7b-5aacc104788b/7f8436aa-70e4-49ec-a8e5-8aa984765ebd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a3980010-7428-4c1b-8f7b-5aacc104788b/7f8436aa-70e4-49ec-a8e5-8aa984765ebd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a3980010-7428-4c1b-8f7b-5aacc104788b/7f8436aa-70e4-49ec-a8e5-8aa984765ebd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  --------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     IRC             INDIA        3 or less            NA                3.1762234    2.8898586   3.4625881
0-3 months     IRC             INDIA        4-5                  NA                3.1267672    2.9549794   3.2985549
0-3 months     IRC             INDIA        6-7                  NA                3.2911073    3.0508388   3.5313757
0-3 months     IRC             INDIA        8+                   NA                2.9424368    2.7245272   3.1603464
0-3 months     NIH-Birth       BANGLADESH   3 or less            NA                3.1287901    3.0081256   3.2494546
0-3 months     NIH-Birth       BANGLADESH   4-5                  NA                3.0679745    2.9893868   3.1465621
0-3 months     NIH-Birth       BANGLADESH   6-7                  NA                3.1136356    2.9935721   3.2336992
0-3 months     NIH-Birth       BANGLADESH   8+                   NA                3.1916271    3.0582528   3.3250013
0-3 months     NIH-Crypto      BANGLADESH   3 or less            NA                3.1211391    3.0094784   3.2327997
0-3 months     NIH-Crypto      BANGLADESH   4-5                  NA                3.1201554    3.0679074   3.1724033
0-3 months     NIH-Crypto      BANGLADESH   6-7                  NA                3.1204903    3.0466381   3.1943426
0-3 months     NIH-Crypto      BANGLADESH   8+                   NA                3.1734112    3.0902006   3.2566217
0-3 months     PROVIDE         BANGLADESH   3 or less            NA                3.3081767    3.2231883   3.3931651
0-3 months     PROVIDE         BANGLADESH   4-5                  NA                3.2520253    3.1980320   3.3060186
0-3 months     PROVIDE         BANGLADESH   6-7                  NA                3.2341964    3.1524931   3.3158997
0-3 months     PROVIDE         BANGLADESH   8+                   NA                3.2418815    3.1427100   3.3410530
3-6 months     IRC             INDIA        3 or less            NA                1.8557049    1.6789502   2.0324597
3-6 months     IRC             INDIA        4-5                  NA                1.8635369    1.7631241   1.9639496
3-6 months     IRC             INDIA        6-7                  NA                1.8428990    1.7307262   1.9550718
3-6 months     IRC             INDIA        8+                   NA                1.9764948    1.8224050   2.1305845
3-6 months     NIH-Birth       BANGLADESH   3 or less            NA                1.8554196    1.7566027   1.9542365
3-6 months     NIH-Birth       BANGLADESH   4-5                  NA                1.7716974    1.6957499   1.8476449
3-6 months     NIH-Birth       BANGLADESH   6-7                  NA                1.9068145    1.8026687   2.0109602
3-6 months     NIH-Birth       BANGLADESH   8+                   NA                1.8590372    1.7486418   1.9694326
3-6 months     NIH-Crypto      BANGLADESH   3 or less            NA                2.0117773    1.9289417   2.0946129
3-6 months     NIH-Crypto      BANGLADESH   4-5                  NA                1.9957662    1.9441400   2.0473923
3-6 months     NIH-Crypto      BANGLADESH   6-7                  NA                2.0531598    1.9670619   2.1392576
3-6 months     NIH-Crypto      BANGLADESH   8+                   NA                1.9609778    1.8718051   2.0501504
3-6 months     PROVIDE         BANGLADESH   3 or less            NA                1.9827036    1.8967759   2.0686313
3-6 months     PROVIDE         BANGLADESH   4-5                  NA                1.9456864    1.8990884   1.9922843
3-6 months     PROVIDE         BANGLADESH   6-7                  NA                2.0082724    1.9286105   2.0879343
3-6 months     PROVIDE         BANGLADESH   8+                   NA                1.9465878    1.8608291   2.0323465
6-9 months     IRC             INDIA        3 or less            NA                1.3202582    1.2210548   1.4194615
6-9 months     IRC             INDIA        4-5                  NA                1.3608366    1.2861746   1.4354987
6-9 months     IRC             INDIA        6-7                  NA                1.4048667    1.3030027   1.5067308
6-9 months     IRC             INDIA        8+                   NA                1.3889899    1.2705658   1.5074141
6-9 months     LCNI-5          MALAWI       3 or less            NA                1.4563453    1.3870993   1.5255914
6-9 months     LCNI-5          MALAWI       4-5                  NA                1.4466754    1.3899308   1.5034200
6-9 months     LCNI-5          MALAWI       6-7                  NA                1.5005157    1.4243779   1.5766535
6-9 months     LCNI-5          MALAWI       8+                   NA                1.4216461    1.2961093   1.5471829
6-9 months     NIH-Birth       BANGLADESH   3 or less            NA                1.3130921    1.2244766   1.4017076
6-9 months     NIH-Birth       BANGLADESH   4-5                  NA                1.2589850    1.1933273   1.3246428
6-9 months     NIH-Birth       BANGLADESH   6-7                  NA                1.2254361    1.1435965   1.3072756
6-9 months     NIH-Birth       BANGLADESH   8+                   NA                1.2274053    1.1325318   1.3222789
6-9 months     NIH-Crypto      BANGLADESH   3 or less            NA                1.4122274    1.3332316   1.4912233
6-9 months     NIH-Crypto      BANGLADESH   4-5                  NA                1.3136563    1.2729778   1.3543348
6-9 months     NIH-Crypto      BANGLADESH   6-7                  NA                1.3026140    1.2376304   1.3675977
6-9 months     NIH-Crypto      BANGLADESH   8+                   NA                1.3337003    1.2586408   1.4087598
6-9 months     PROVIDE         BANGLADESH   3 or less            NA                1.2954138    1.2354074   1.3554202
6-9 months     PROVIDE         BANGLADESH   4-5                  NA                1.2917026    1.2557088   1.3276965
6-9 months     PROVIDE         BANGLADESH   6-7                  NA                1.2554231    1.2005080   1.3103382
6-9 months     PROVIDE         BANGLADESH   8+                   NA                1.2750827    1.2034857   1.3466796
6-9 months     SAS-FoodSuppl   INDIA        3 or less            NA                1.1875986    1.0093512   1.3658460
6-9 months     SAS-FoodSuppl   INDIA        4-5                  NA                1.1474329    1.0888335   1.2060322
6-9 months     SAS-FoodSuppl   INDIA        6-7                  NA                1.1413880    1.0704422   1.2123337
6-9 months     SAS-FoodSuppl   INDIA        8+                   NA                1.1122968    1.0112087   1.2133849
9-12 months    IRC             INDIA        3 or less            NA                1.1930998    1.0918315   1.2943682
9-12 months    IRC             INDIA        4-5                  NA                1.1756745    1.1075564   1.2437926
9-12 months    IRC             INDIA        6-7                  NA                1.0931569    1.0206672   1.1656466
9-12 months    IRC             INDIA        8+                   NA                1.0192998    0.9438055   1.0947941
9-12 months    LCNI-5          MALAWI       3 or less            NA                1.1263242    1.0252878   1.2273605
9-12 months    LCNI-5          MALAWI       4-5                  NA                1.0837575    1.0149187   1.1525963
9-12 months    LCNI-5          MALAWI       6-7                  NA                1.0885091    0.9927593   1.1842590
9-12 months    LCNI-5          MALAWI       8+                   NA                1.1386179    1.0187199   1.2585160
9-12 months    NIH-Birth       BANGLADESH   3 or less            NA                1.0847317    1.0027412   1.1667222
9-12 months    NIH-Birth       BANGLADESH   4-5                  NA                1.0684815    1.0200601   1.1169028
9-12 months    NIH-Birth       BANGLADESH   6-7                  NA                1.1155996    1.0322971   1.1989022
9-12 months    NIH-Birth       BANGLADESH   8+                   NA                1.1058207    1.0163332   1.1953082
9-12 months    NIH-Crypto      BANGLADESH   3 or less            NA                1.1296890    1.0602674   1.1991107
9-12 months    NIH-Crypto      BANGLADESH   4-5                  NA                1.1385981    1.0995841   1.1776122
9-12 months    NIH-Crypto      BANGLADESH   6-7                  NA                1.0868038    1.0328550   1.1407526
9-12 months    NIH-Crypto      BANGLADESH   8+                   NA                1.1306117    1.0674188   1.1938045
9-12 months    PROVIDE         BANGLADESH   3 or less            NA                1.0810053    1.0216513   1.1403593
9-12 months    PROVIDE         BANGLADESH   4-5                  NA                1.0485605    1.0073011   1.0898199
9-12 months    PROVIDE         BANGLADESH   6-7                  NA                1.0168258    0.9609209   1.0727307
9-12 months    PROVIDE         BANGLADESH   8+                   NA                1.0617678    0.9919375   1.1315982
9-12 months    SAS-FoodSuppl   INDIA        3 or less            NA                1.5777639    0.5459962   2.6095316
9-12 months    SAS-FoodSuppl   INDIA        4-5                  NA                0.8034231    0.6045402   1.0023061
9-12 months    SAS-FoodSuppl   INDIA        6-7                  NA                0.6509620    0.5159321   0.7859918
9-12 months    SAS-FoodSuppl   INDIA        8+                   NA                0.8406036    0.4748302   1.2063771
12-15 months   IRC             INDIA        3 or less            NA                1.0048874    0.9027399   1.1070348
12-15 months   IRC             INDIA        4-5                  NA                0.9297861    0.8748119   0.9847603
12-15 months   IRC             INDIA        6-7                  NA                0.9812662    0.8788769   1.0836555
12-15 months   IRC             INDIA        8+                   NA                0.9365277    0.8483098   1.0247455
12-15 months   LCNI-5          MALAWI       3 or less            NA                1.0808943    0.9183545   1.2434342
12-15 months   LCNI-5          MALAWI       4-5                  NA                0.8838018    0.7015990   1.0660046
12-15 months   LCNI-5          MALAWI       6-7                  NA                0.9406851    0.8189357   1.0624344
12-15 months   LCNI-5          MALAWI       8+                   NA                0.9394217    0.7018932   1.1769502
12-15 months   NIH-Birth       BANGLADESH   3 or less            NA                0.6946137    0.6183543   0.7708730
12-15 months   NIH-Birth       BANGLADESH   4-5                  NA                0.6936295    0.6407171   0.7465419
12-15 months   NIH-Birth       BANGLADESH   6-7                  NA                0.7443918    0.6704993   0.8182843
12-15 months   NIH-Birth       BANGLADESH   8+                   NA                0.8034159    0.6175874   0.9892445
12-15 months   NIH-Crypto      BANGLADESH   3 or less            NA                1.0202988    0.9505463   1.0900513
12-15 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.9635820    0.9290677   0.9980962
12-15 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.9670528    0.9144847   1.0196208
12-15 months   NIH-Crypto      BANGLADESH   8+                   NA                0.9566429    0.8962501   1.0170357
12-15 months   PROVIDE         BANGLADESH   3 or less            NA                0.9625359    0.8998827   1.0251890
12-15 months   PROVIDE         BANGLADESH   4-5                  NA                0.9498192    0.9118031   0.9878353
12-15 months   PROVIDE         BANGLADESH   6-7                  NA                0.9779513    0.9214822   1.0344205
12-15 months   PROVIDE         BANGLADESH   8+                   NA                0.9625886    0.8926235   1.0325538
12-15 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.6514193   -0.0155851   1.3184237
12-15 months   SAS-FoodSuppl   INDIA        4-5                  NA                1.1014054    1.0277387   1.1750721
12-15 months   SAS-FoodSuppl   INDIA        6-7                  NA                1.0072441    0.8384919   1.1759964
12-15 months   SAS-FoodSuppl   INDIA        8+                   NA                1.0406083    0.8286315   1.2525851
15-18 months   IRC             INDIA        3 or less            NA                0.8590077    0.7768834   0.9411320
15-18 months   IRC             INDIA        4-5                  NA                0.8466818    0.7760384   0.9173253
15-18 months   IRC             INDIA        6-7                  NA                0.8875902    0.8224325   0.9527479
15-18 months   IRC             INDIA        8+                   NA                0.8459607    0.7527975   0.9391240
15-18 months   LCNI-5          MALAWI       3 or less            NA                0.7577327    0.6222929   0.8931725
15-18 months   LCNI-5          MALAWI       4-5                  NA                0.8562644    0.7552419   0.9572869
15-18 months   LCNI-5          MALAWI       6-7                  NA                0.8555175    0.6775025   1.0335325
15-18 months   LCNI-5          MALAWI       8+                   NA                0.7918815    0.6536764   0.9300866
15-18 months   NIH-Birth       BANGLADESH   3 or less            NA                0.7350878    0.6360305   0.8341451
15-18 months   NIH-Birth       BANGLADESH   4-5                  NA                0.7832075    0.7275172   0.8388979
15-18 months   NIH-Birth       BANGLADESH   6-7                  NA                0.7649277    0.6724110   0.8574444
15-18 months   NIH-Birth       BANGLADESH   8+                   NA                0.7954898    0.6955855   0.8953941
15-18 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.8604334    0.8007852   0.9200816
15-18 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.9298411    0.8945087   0.9651735
15-18 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.9165445    0.8710933   0.9619957
15-18 months   NIH-Crypto      BANGLADESH   8+                   NA                0.9335732    0.8811009   0.9860456
15-18 months   PROVIDE         BANGLADESH   3 or less            NA                0.8479452    0.7891240   0.9067664
15-18 months   PROVIDE         BANGLADESH   4-5                  NA                0.8566839    0.8226191   0.8907488
15-18 months   PROVIDE         BANGLADESH   6-7                  NA                0.8608564    0.8075098   0.9142030
15-18 months   PROVIDE         BANGLADESH   8+                   NA                0.8572047    0.7913737   0.9230358
15-18 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.8360048    0.7336993   0.9383102
15-18 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.7769323    0.7249214   0.8289432
15-18 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.7861971    0.7197001   0.8526941
15-18 months   SAS-FoodSuppl   INDIA        8+                   NA                0.8379500    0.7468011   0.9290989
18-21 months   IRC             INDIA        3 or less            NA                0.7855208    0.6900311   0.8810104
18-21 months   IRC             INDIA        4-5                  NA                0.7316398    0.6724085   0.7908712
18-21 months   IRC             INDIA        6-7                  NA                0.7993937    0.7163714   0.8824160
18-21 months   IRC             INDIA        8+                   NA                0.7431499    0.6640153   0.8222846
18-21 months   LCNI-5          MALAWI       3 or less            NA                0.8664125    0.7819517   0.9508734
18-21 months   LCNI-5          MALAWI       4-5                  NA                0.7822117    0.7193509   0.8450725
18-21 months   LCNI-5          MALAWI       6-7                  NA                0.8708266    0.7953166   0.9463366
18-21 months   LCNI-5          MALAWI       8+                   NA                0.7324902    0.4454455   1.0195348
18-21 months   NIH-Birth       BANGLADESH   3 or less            NA                0.7895953    0.6986181   0.8805724
18-21 months   NIH-Birth       BANGLADESH   4-5                  NA                0.7434244    0.6900289   0.7968198
18-21 months   NIH-Birth       BANGLADESH   6-7                  NA                0.6799228    0.5971993   0.7626463
18-21 months   NIH-Birth       BANGLADESH   8+                   NA                0.7025689    0.6279975   0.7771403
18-21 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.8226337    0.7497593   0.8955080
18-21 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.7764930    0.7433158   0.8096701
18-21 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.7819048    0.7357717   0.8280379
18-21 months   NIH-Crypto      BANGLADESH   8+                   NA                0.8619940    0.8069932   0.9169947
18-21 months   PROVIDE         BANGLADESH   3 or less            NA                0.8387043    0.7764287   0.9009800
18-21 months   PROVIDE         BANGLADESH   4-5                  NA                0.8341201    0.7990068   0.8692334
18-21 months   PROVIDE         BANGLADESH   6-7                  NA                0.8209125    0.7714101   0.8704149
18-21 months   PROVIDE         BANGLADESH   8+                   NA                0.8824944    0.8240856   0.9409032
21-24 months   IRC             INDIA        3 or less            NA                0.7896324    0.6482558   0.9310090
21-24 months   IRC             INDIA        4-5                  NA                0.6839544    0.6181256   0.7497832
21-24 months   IRC             INDIA        6-7                  NA                0.6820820    0.6131712   0.7509928
21-24 months   IRC             INDIA        8+                   NA                0.7290420    0.6485610   0.8095230
21-24 months   LCNI-5          MALAWI       3 or less            NA                0.7535551    0.6619528   0.8451574
21-24 months   LCNI-5          MALAWI       4-5                  NA                0.7245094    0.6513675   0.7976512
21-24 months   LCNI-5          MALAWI       6-7                  NA                0.7843713    0.6983541   0.8703886
21-24 months   LCNI-5          MALAWI       8+                   NA                0.7846055    0.6610089   0.9082022
21-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.7518886    0.6479406   0.8558365
21-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.6963751    0.6440648   0.7486854
21-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.7163260    0.6409855   0.7916665
21-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.7371145    0.6707374   0.8034915
21-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.7609348    0.6887301   0.8331395
21-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.8251812    0.7905850   0.8597773
21-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.7953972    0.7463267   0.8444676
21-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.7641875    0.7007969   0.8275780
21-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.8239623    0.7645916   0.8833330
21-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.7539504    0.7176888   0.7902120
21-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.7385089    0.6835093   0.7935086
21-24 months   PROVIDE         BANGLADESH   8+                   NA                0.7465099    0.6758111   0.8172088


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
0-3 months     IRC             INDIA        4-5                  3 or less         -0.0494562   -0.3833960    0.2844836
0-3 months     IRC             INDIA        6-7                  3 or less          0.1148839   -0.2589259    0.4886936
0-3 months     IRC             INDIA        8+                   3 or less         -0.2337866   -0.5936329    0.1260598
0-3 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0608156   -0.2048154    0.0831842
0-3 months     NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0151545   -0.1853755    0.1550665
0-3 months     NIH-Birth       BANGLADESH   8+                   3 or less          0.0628370   -0.1170202    0.2426942
0-3 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0009837   -0.1242637    0.1222963
0-3 months     NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0006487   -0.1345227    0.1332253
0-3 months     NIH-Crypto      BANGLADESH   8+                   3 or less          0.0522721   -0.0869834    0.1915276
0-3 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0561514   -0.1568406    0.0445377
0-3 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0739803   -0.1918720    0.0439113
0-3 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0662952   -0.1969015    0.0643111
3-6 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     IRC             INDIA        4-5                  3 or less          0.0078319   -0.1954535    0.2111174
3-6 months     IRC             INDIA        6-7                  3 or less         -0.0128059   -0.2221501    0.1965382
3-6 months     IRC             INDIA        8+                   3 or less          0.1207898   -0.1137008    0.3552805
3-6 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0837222   -0.2083529    0.0409084
3-6 months     NIH-Birth       BANGLADESH   6-7                  3 or less          0.0513949   -0.0921709    0.1949606
3-6 months     NIH-Birth       BANGLADESH   8+                   3 or less          0.0036176   -0.1445442    0.1517794
3-6 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0160111   -0.1136174    0.0815952
3-6 months     NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0413825   -0.0780938    0.1608588
3-6 months     NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0507995   -0.1725103    0.0709112
3-6 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0370172   -0.1347666    0.0607321
3-6 months     PROVIDE         BANGLADESH   6-7                  3 or less          0.0255688   -0.0916045    0.1427421
3-6 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0361158   -0.1575165    0.0852849
6-9 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     IRC             INDIA        4-5                  3 or less          0.0405785   -0.0835816    0.1647386
6-9 months     IRC             INDIA        6-7                  3 or less          0.0846085   -0.0575800    0.2267971
6-9 months     IRC             INDIA        8+                   3 or less          0.0687318   -0.0857532    0.2232167
6-9 months     LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5          MALAWI       4-5                  3 or less         -0.0096699   -0.0991962    0.0798565
6-9 months     LCNI-5          MALAWI       6-7                  3 or less          0.0441704   -0.0587469    0.1470878
6-9 months     LCNI-5          MALAWI       8+                   3 or less         -0.0346992   -0.1780676    0.1086693
6-9 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0541071   -0.1643960    0.0561818
6-9 months     NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0876560   -0.2082812    0.0329691
6-9 months     NIH-Birth       BANGLADESH   8+                   3 or less         -0.0856868   -0.2155085    0.0441350
6-9 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0985711   -0.1874254   -0.0097169
6-9 months     NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1096134   -0.2119033   -0.0073235
6-9 months     NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0785272   -0.1874963    0.0304419
6-9 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0037112   -0.0736849    0.0662626
6-9 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0399907   -0.1213322    0.0413508
6-9 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0203312   -0.1137490    0.0730867
6-9 months     SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0401657   -0.2277984    0.1474670
6-9 months     SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0462106   -0.2380580    0.1456368
6-9 months     SAS-FoodSuppl   INDIA        8+                   3 or less         -0.0753018   -0.2802187    0.1296151
9-12 months    IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    IRC             INDIA        4-5                  3 or less         -0.0174253   -0.1394719    0.1046212
9-12 months    IRC             INDIA        6-7                  3 or less         -0.0999429   -0.2244822    0.0245963
9-12 months    IRC             INDIA        8+                   3 or less         -0.1738001   -0.3001119   -0.0474883
9-12 months    LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5          MALAWI       4-5                  3 or less         -0.0425667   -0.1648251    0.0796917
9-12 months    LCNI-5          MALAWI       6-7                  3 or less         -0.0378150   -0.1770141    0.1013840
9-12 months    LCNI-5          MALAWI       8+                   3 or less          0.0122937   -0.1444988    0.1690862
9-12 months    NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0162502   -0.1114714    0.0789709
9-12 months    NIH-Birth       BANGLADESH   6-7                  3 or less          0.0308679   -0.0860156    0.1477514
9-12 months    NIH-Birth       BANGLADESH   8+                   3 or less          0.0210890   -0.1002801    0.1424581
9-12 months    NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0089091   -0.0707242    0.0885424
9-12 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0428852   -0.1308048    0.0450343
9-12 months    NIH-Crypto      BANGLADESH   8+                   3 or less          0.0009226   -0.0929534    0.0947986
9-12 months    PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE         BANGLADESH   4-5                  3 or less         -0.0324447   -0.1047305    0.0398410
9-12 months    PROVIDE         BANGLADESH   6-7                  3 or less         -0.0641794   -0.1457163    0.0173574
9-12 months    PROVIDE         BANGLADESH   8+                   3 or less         -0.0192374   -0.1108844    0.0724096
9-12 months    SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.7743408   -1.8251019    0.2764204
9-12 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.9268019   -1.9673679    0.1137641
9-12 months    SAS-FoodSuppl   INDIA        8+                   3 or less         -0.7371603   -1.8318450    0.3575245
12-15 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   IRC             INDIA        4-5                  3 or less         -0.0751013   -0.1911024    0.0408999
12-15 months   IRC             INDIA        6-7                  3 or less         -0.0236212   -0.1682505    0.1210082
12-15 months   IRC             INDIA        8+                   3 or less         -0.0683597   -0.2033281    0.0666088
12-15 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5          MALAWI       4-5                  3 or less         -0.1970925   -0.4412586    0.0470735
12-15 months   LCNI-5          MALAWI       6-7                  3 or less         -0.1402093   -0.3432908    0.0628723
12-15 months   LCNI-5          MALAWI       8+                   3 or less         -0.1414726   -0.4292903    0.1463450
12-15 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0009842   -0.0938024    0.0918340
12-15 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0497781   -0.0564085    0.1559647
12-15 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.1088023   -0.0920652    0.3096697
12-15 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0567168   -0.1345413    0.0211076
12-15 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0532460   -0.1405890    0.0340971
12-15 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0636559   -0.1559202    0.0286084
12-15 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0127167   -0.0860014    0.0605680
12-15 months   PROVIDE         BANGLADESH   6-7                  3 or less          0.0154155   -0.0689302    0.0997611
12-15 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0000527   -0.0938650    0.0939705
12-15 months   SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA        4-5                  3 or less          0.4499861   -0.2210740    1.1210462
12-15 months   SAS-FoodSuppl   INDIA        6-7                  3 or less          0.3558248   -0.3321957    1.0438453
12-15 months   SAS-FoodSuppl   INDIA        8+                   3 or less          0.3891889   -0.3106889    1.0890668
15-18 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   IRC             INDIA        4-5                  3 or less         -0.0123259   -0.1206535    0.0960018
15-18 months   IRC             INDIA        6-7                  3 or less          0.0285825   -0.0762504    0.1334153
15-18 months   IRC             INDIA        8+                   3 or less         -0.0130470   -0.1372395    0.1111456
15-18 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5          MALAWI       4-5                  3 or less          0.0985317   -0.0704342    0.2674976
15-18 months   LCNI-5          MALAWI       6-7                  3 or less          0.0977848   -0.1258964    0.3214660
15-18 months   LCNI-5          MALAWI       8+                   3 or less          0.0341488   -0.1593573    0.2276548
15-18 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.0481198   -0.0655190    0.1617585
15-18 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0298399   -0.1057023    0.1653821
15-18 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.0604020   -0.0802864    0.2010904
15-18 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0694077    0.0000803    0.1387351
15-18 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0561111   -0.0188804    0.1311025
15-18 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0731398   -0.0063036    0.1525833
15-18 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE         BANGLADESH   4-5                  3 or less          0.0087387   -0.0592344    0.0767119
15-18 months   PROVIDE         BANGLADESH   6-7                  3 or less          0.0129112   -0.0664978    0.0923203
15-18 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0092595   -0.0790222    0.0975413
15-18 months   SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0590724   -0.1738397    0.0556949
15-18 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0498076   -0.1718251    0.0722098
15-18 months   SAS-FoodSuppl   INDIA        8+                   3 or less          0.0019453   -0.1350749    0.1389654
18-21 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   IRC             INDIA        4-5                  3 or less         -0.0538809   -0.1662492    0.0584873
18-21 months   IRC             INDIA        6-7                  3 or less          0.0138729   -0.1126615    0.1404074
18-21 months   IRC             INDIA        8+                   3 or less         -0.0423708   -0.1663892    0.0816476
18-21 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0842008   -0.1894867    0.0210850
18-21 months   LCNI-5          MALAWI       6-7                  3 or less          0.0044141   -0.1088793    0.1177075
18-21 months   LCNI-5          MALAWI       8+                   3 or less         -0.1339223   -0.4331351    0.1652904
18-21 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0461709   -0.1516599    0.0593180
18-21 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.1096725   -0.2326360    0.0132910
18-21 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0870264   -0.2046603    0.0306075
18-21 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0461407   -0.1262119    0.0339305
18-21 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0407288   -0.1269781    0.0455204
18-21 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0393603   -0.0519401    0.1306606
18-21 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0045842   -0.0760769    0.0669085
18-21 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0177918   -0.0973452    0.0617616
18-21 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0437901   -0.0415905    0.1291707
21-24 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   IRC             INDIA        4-5                  3 or less         -0.1056780   -0.2616292    0.0502732
21-24 months   IRC             INDIA        6-7                  3 or less         -0.1075504   -0.2648273    0.0497266
21-24 months   IRC             INDIA        8+                   3 or less         -0.0605904   -0.2232696    0.1020889
21-24 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0290458   -0.1462666    0.0881750
21-24 months   LCNI-5          MALAWI       6-7                  3 or less          0.0308162   -0.0948418    0.1564743
21-24 months   LCNI-5          MALAWI       8+                   3 or less          0.0310504   -0.1227908    0.1848916
21-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0555134   -0.1718816    0.0608547
21-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0355626   -0.1639424    0.0928172
21-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0147741   -0.1381074    0.1085592
21-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0642463   -0.0158187    0.1443114
21-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0344623   -0.0528384    0.1217631
21-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0032527   -0.0928300    0.0993353
21-24 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0700119   -0.1395804   -0.0004434
21-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0854533   -0.1663844   -0.0045223
21-24 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.0774524   -0.1697736    0.0148688


### Parameter: PAR


agecat         studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC             INDIA        3 or less            NA                -0.0379741   -0.3048220    0.2288737
0-3 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0187785   -0.1293054    0.0917484
0-3 months     NIH-Crypto      BANGLADESH   3 or less            NA                 0.0081058   -0.0921808    0.1083925
0-3 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0504957   -0.1267579    0.0257665
3-6 months     IRC             INDIA        3 or less            NA                 0.0249689   -0.1373305    0.1872684
3-6 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0227281   -0.1162544    0.0707982
3-6 months     NIH-Crypto      BANGLADESH   3 or less            NA                -0.0059800   -0.0846807    0.0727206
3-6 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0169579   -0.0941797    0.0602639
6-9 months     IRC             INDIA        3 or less            NA                 0.0521428   -0.0448066    0.1490921
6-9 months     LCNI-5          MALAWI       3 or less            NA                 0.0025910   -0.0580346    0.0632166
6-9 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0574971   -0.1394727    0.0244785
6-9 months     NIH-Crypto      BANGLADESH   3 or less            NA                -0.0839579   -0.1569600   -0.0109559
6-9 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0129953   -0.0674288    0.0414382
6-9 months     SAS-FoodSuppl   INDIA        3 or less            NA                -0.0449831   -0.2145590    0.1245928
9-12 months    IRC             INDIA        3 or less            NA                -0.0696264   -0.1638728    0.0246200
9-12 months    LCNI-5          MALAWI       3 or less            NA                -0.0255355   -0.1070459    0.0559748
9-12 months    NIH-Birth       BANGLADESH   3 or less            NA                 0.0038492   -0.0705163    0.0782147
9-12 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.0062146   -0.0708543    0.0584252
9-12 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0310303   -0.0852776    0.0232170
9-12 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.7670990   -1.7398023    0.2056043
12-15 months   IRC             INDIA        3 or less            NA                -0.0495334   -0.1452750    0.0462081
12-15 months   LCNI-5          MALAWI       3 or less            NA                -0.1230540   -0.2652997    0.0191916
12-15 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0295486   -0.0461047    0.1052019
12-15 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0491593   -0.1134001    0.0150815
12-15 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0027858   -0.0592932    0.0537215
12-15 months   SAS-FoodSuppl   INDIA        3 or less            NA                 0.3753632   -0.2477448    0.9984712
15-18 months   IRC             INDIA        3 or less            NA                 0.0001139   -0.0795835    0.0798112
15-18 months   LCNI-5          MALAWI       3 or less            NA                 0.0650540   -0.0474351    0.1775432
15-18 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0376842   -0.0523576    0.1277259
15-18 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0572834    0.0015445    0.1130222
15-18 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0081546   -0.0449603    0.0612695
15-18 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.0412186   -0.1416590    0.0592218
18-21 months   IRC             INDIA        3 or less            NA                -0.0257186   -0.1150991    0.0636619
18-21 months   LCNI-5          MALAWI       3 or less            NA                -0.0466035   -0.1205949    0.0273880
18-21 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0604485   -0.1435731    0.0226762
18-21 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0248581   -0.0908699    0.0411537
18-21 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0006334   -0.0543212    0.0555879
21-24 months   IRC             INDIA        3 or less            NA                -0.0812195   -0.2073486    0.0449096
21-24 months   LCNI-5          MALAWI       3 or less            NA                -0.0030516   -0.0774816    0.0713784
21-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0346708   -0.1259526    0.0566110
21-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0384005   -0.0278538    0.1046548
21-24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0608232   -0.1138107   -0.0078358
