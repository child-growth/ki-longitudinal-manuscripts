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

unadjusted

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/1d8c3a41-10cc-412d-901c-490e75cddb03/0c8e5bf1-a14a-44ba-adc0-03d508a9200f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1d8c3a41-10cc-412d-901c-490e75cddb03/0c8e5bf1-a14a-44ba-adc0-03d508a9200f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1d8c3a41-10cc-412d-901c-490e75cddb03/0c8e5bf1-a14a-44ba-adc0-03d508a9200f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  --------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     IRC             INDIA        3 or less            NA                0.7631826    0.7117816   0.8145837
0-3 months     IRC             INDIA        4-5                  NA                0.7611299    0.7282762   0.7939836
0-3 months     IRC             INDIA        6-7                  NA                0.7888425    0.7530664   0.8246186
0-3 months     IRC             INDIA        8+                   NA                0.7586255    0.7175390   0.7997119
0-3 months     NIH-Birth       BANGLADESH   3 or less            NA                0.8375192    0.8034597   0.8715788
0-3 months     NIH-Birth       BANGLADESH   4-5                  NA                0.8075540    0.7833285   0.8317796
0-3 months     NIH-Birth       BANGLADESH   6-7                  NA                0.8138995    0.7797834   0.8480155
0-3 months     NIH-Birth       BANGLADESH   8+                   NA                0.8193160    0.7664741   0.8721579
0-3 months     NIH-Crypto      BANGLADESH   3 or less            NA                0.8869765    0.8482346   0.9257183
0-3 months     NIH-Crypto      BANGLADESH   4-5                  NA                0.8831019    0.8623693   0.9038345
0-3 months     NIH-Crypto      BANGLADESH   6-7                  NA                0.8961977    0.8664820   0.9259134
0-3 months     NIH-Crypto      BANGLADESH   8+                   NA                0.8694683    0.8304417   0.9084949
0-3 months     PROVIDE         BANGLADESH   3 or less            NA                0.9295042    0.8963392   0.9626691
0-3 months     PROVIDE         BANGLADESH   4-5                  NA                0.8972529    0.8753416   0.9191643
0-3 months     PROVIDE         BANGLADESH   6-7                  NA                0.9065631    0.8765606   0.9365656
0-3 months     PROVIDE         BANGLADESH   8+                   NA                0.8687733    0.8262358   0.9113108
3-6 months     IRC             INDIA        3 or less            NA                0.4774581    0.4382115   0.5167046
3-6 months     IRC             INDIA        4-5                  NA                0.4694165    0.4440237   0.4948092
3-6 months     IRC             INDIA        6-7                  NA                0.4768242    0.4363056   0.5173428
3-6 months     IRC             INDIA        8+                   NA                0.4392595    0.4003139   0.4782052
3-6 months     NIH-Birth       BANGLADESH   3 or less            NA                0.4678593    0.4294191   0.5062996
3-6 months     NIH-Birth       BANGLADESH   4-5                  NA                0.4391549    0.4147124   0.4635974
3-6 months     NIH-Birth       BANGLADESH   6-7                  NA                0.4958946    0.4622978   0.5294914
3-6 months     NIH-Birth       BANGLADESH   8+                   NA                0.4499721    0.3969863   0.5029580
3-6 months     NIH-Crypto      BANGLADESH   3 or less            NA                0.5124196    0.4822361   0.5426032
3-6 months     NIH-Crypto      BANGLADESH   4-5                  NA                0.4856831    0.4691487   0.5022174
3-6 months     NIH-Crypto      BANGLADESH   6-7                  NA                0.4959663    0.4761681   0.5157645
3-6 months     NIH-Crypto      BANGLADESH   8+                   NA                0.5223222    0.4925310   0.5521135
3-6 months     PROVIDE         BANGLADESH   3 or less            NA                0.5063399    0.4766085   0.5360713
3-6 months     PROVIDE         BANGLADESH   4-5                  NA                0.4859354    0.4687893   0.5030815
3-6 months     PROVIDE         BANGLADESH   6-7                  NA                0.4693247    0.4432759   0.4953736
3-6 months     PROVIDE         BANGLADESH   8+                   NA                0.5099289    0.4598134   0.5600444
6-9 months     IRC             INDIA        3 or less            NA                0.2983216    0.2652704   0.3313728
6-9 months     IRC             INDIA        4-5                  NA                0.2632315    0.2423381   0.2841250
6-9 months     IRC             INDIA        6-7                  NA                0.2479717    0.2173799   0.2785635
6-9 months     IRC             INDIA        8+                   NA                0.2557758    0.2261335   0.2854181
6-9 months     LCNI-5          MALAWI       3 or less            NA                0.2865552    0.2625029   0.3106075
6-9 months     LCNI-5          MALAWI       4-5                  NA                0.2744455    0.2559791   0.2929119
6-9 months     LCNI-5          MALAWI       6-7                  NA                0.3043843    0.2736544   0.3351142
6-9 months     LCNI-5          MALAWI       8+                   NA                0.2845065    0.2502685   0.3187446
6-9 months     NIH-Birth       BANGLADESH   3 or less            NA                0.2368130    0.2043537   0.2692724
6-9 months     NIH-Birth       BANGLADESH   4-5                  NA                0.2430650    0.2216006   0.2645294
6-9 months     NIH-Birth       BANGLADESH   6-7                  NA                0.2344971    0.2063368   0.2626575
6-9 months     NIH-Birth       BANGLADESH   8+                   NA                0.2202865    0.1878425   0.2527305
6-9 months     NIH-Crypto      BANGLADESH   3 or less            NA                0.2564499    0.2315856   0.2813142
6-9 months     NIH-Crypto      BANGLADESH   4-5                  NA                0.2707581    0.2563379   0.2851783
6-9 months     NIH-Crypto      BANGLADESH   6-7                  NA                0.2721404    0.2469304   0.2973504
6-9 months     NIH-Crypto      BANGLADESH   8+                   NA                0.2609293    0.2341605   0.2876982
6-9 months     PROVIDE         BANGLADESH   3 or less            NA                0.2574606    0.2317885   0.2831326
6-9 months     PROVIDE         BANGLADESH   4-5                  NA                0.2537231    0.2395258   0.2679205
6-9 months     PROVIDE         BANGLADESH   6-7                  NA                0.2370797    0.2161929   0.2579665
6-9 months     PROVIDE         BANGLADESH   8+                   NA                0.2406618    0.1827946   0.2985290
6-9 months     SAS-FoodSuppl   INDIA        3 or less            NA                0.1564421    0.0801621   0.2327220
6-9 months     SAS-FoodSuppl   INDIA        4-5                  NA                0.1828831    0.1608158   0.2049504
6-9 months     SAS-FoodSuppl   INDIA        6-7                  NA                0.2216233    0.1903429   0.2529037
6-9 months     SAS-FoodSuppl   INDIA        8+                   NA                0.2157881    0.1781975   0.2533787
9-12 months    IRC             INDIA        3 or less            NA                0.2030345    0.1610831   0.2449860
9-12 months    IRC             INDIA        4-5                  NA                0.2166207    0.1939729   0.2392684
9-12 months    IRC             INDIA        6-7                  NA                0.2081588    0.1803926   0.2359250
9-12 months    IRC             INDIA        8+                   NA                0.2200026    0.1907851   0.2492201
9-12 months    LCNI-5          MALAWI       3 or less            NA                0.1728928    0.1437982   0.2019875
9-12 months    LCNI-5          MALAWI       4-5                  NA                0.2099277    0.1871429   0.2327124
9-12 months    LCNI-5          MALAWI       6-7                  NA                0.2304265    0.1908683   0.2699846
9-12 months    LCNI-5          MALAWI       8+                   NA                0.1880478    0.1357338   0.2403618
9-12 months    NIH-Birth       BANGLADESH   3 or less            NA                0.1738739    0.1471385   0.2006094
9-12 months    NIH-Birth       BANGLADESH   4-5                  NA                0.1488973    0.1287242   0.1690703
9-12 months    NIH-Birth       BANGLADESH   6-7                  NA                0.1676464    0.1377402   0.1975526
9-12 months    NIH-Birth       BANGLADESH   8+                   NA                0.1842220    0.1528207   0.2156232
9-12 months    NIH-Crypto      BANGLADESH   3 or less            NA                0.1910764    0.1609429   0.2212100
9-12 months    NIH-Crypto      BANGLADESH   4-5                  NA                0.1924682    0.1771691   0.2077672
9-12 months    NIH-Crypto      BANGLADESH   6-7                  NA                0.2141801    0.1931617   0.2351985
9-12 months    NIH-Crypto      BANGLADESH   8+                   NA                0.1938694    0.1696778   0.2180609
9-12 months    PROVIDE         BANGLADESH   3 or less            NA                0.1791349    0.1577269   0.2005430
9-12 months    PROVIDE         BANGLADESH   4-5                  NA                0.1774527    0.1640221   0.1908833
9-12 months    PROVIDE         BANGLADESH   6-7                  NA                0.1852492    0.1650582   0.2054401
9-12 months    PROVIDE         BANGLADESH   8+                   NA                0.1644145    0.1374463   0.1913826
9-12 months    SAS-FoodSuppl   INDIA        3 or less            NA                0.0625299   -0.0388079   0.1638677
9-12 months    SAS-FoodSuppl   INDIA        4-5                  NA                0.1445473    0.1159602   0.1731344
9-12 months    SAS-FoodSuppl   INDIA        6-7                  NA                0.1404826    0.1102605   0.1707047
9-12 months    SAS-FoodSuppl   INDIA        8+                   NA                0.1599101    0.1129472   0.2068730
12-15 months   IRC             INDIA        3 or less            NA                0.1801364    0.1485025   0.2117704
12-15 months   IRC             INDIA        4-5                  NA                0.1832254    0.1607275   0.2057233
12-15 months   IRC             INDIA        6-7                  NA                0.1885013    0.1641744   0.2128281
12-15 months   IRC             INDIA        8+                   NA                0.1739358    0.1487381   0.1991336
12-15 months   LCNI-5          MALAWI       3 or less            NA                0.1970407    0.1387982   0.2552831
12-15 months   LCNI-5          MALAWI       4-5                  NA                0.1220150    0.0601505   0.1838794
12-15 months   LCNI-5          MALAWI       6-7                  NA                0.1551437    0.1113814   0.1989060
12-15 months   LCNI-5          MALAWI       8+                   NA                0.1290124    0.0249064   0.2331185
12-15 months   NIH-Birth       BANGLADESH   3 or less            NA                0.1384721    0.1125104   0.1644338
12-15 months   NIH-Birth       BANGLADESH   4-5                  NA                0.1237675    0.1070414   0.1404935
12-15 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1391723    0.1156018   0.1627428
12-15 months   NIH-Birth       BANGLADESH   8+                   NA                0.1270046    0.0880808   0.1659283
12-15 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.1492774    0.1212127   0.1773422
12-15 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1663648    0.1510572   0.1816724
12-15 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.1654417    0.1421186   0.1887649
12-15 months   NIH-Crypto      BANGLADESH   8+                   NA                0.1679677    0.1443584   0.1915770
12-15 months   PROVIDE         BANGLADESH   3 or less            NA                0.2144942    0.1811265   0.2478620
12-15 months   PROVIDE         BANGLADESH   4-5                  NA                0.1683780    0.1521359   0.1846200
12-15 months   PROVIDE         BANGLADESH   6-7                  NA                0.1672911    0.1468883   0.1876939
12-15 months   PROVIDE         BANGLADESH   8+                   NA                0.1924742    0.1598437   0.2251046
12-15 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.2270176    0.1501245   0.3039108
12-15 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.1681374    0.1436655   0.1926094
12-15 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.1726489    0.1475249   0.1977729
12-15 months   SAS-FoodSuppl   INDIA        8+                   NA                0.1769877    0.1347552   0.2192202
15-18 months   IRC             INDIA        3 or less            NA                0.1534045    0.1195481   0.1872609
15-18 months   IRC             INDIA        4-5                  NA                0.1459005    0.1244793   0.1673217
15-18 months   IRC             INDIA        6-7                  NA                0.1928327    0.1634151   0.2222504
15-18 months   IRC             INDIA        8+                   NA                0.1511214    0.1253417   0.1769011
15-18 months   LCNI-5          MALAWI       3 or less            NA                0.1568596    0.0948595   0.2188597
15-18 months   LCNI-5          MALAWI       4-5                  NA                0.1733421    0.1229749   0.2237093
15-18 months   LCNI-5          MALAWI       6-7                  NA                0.1848512    0.1210722   0.2486301
15-18 months   LCNI-5          MALAWI       8+                   NA                0.2123447    0.1496320   0.2750574
15-18 months   NIH-Birth       BANGLADESH   3 or less            NA                0.1331773    0.0950196   0.1713349
15-18 months   NIH-Birth       BANGLADESH   4-5                  NA                0.1551310    0.1338924   0.1763696
15-18 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1462340    0.1132012   0.1792667
15-18 months   NIH-Birth       BANGLADESH   8+                   NA                0.1767606    0.1470100   0.2065111
15-18 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.1689738    0.1375084   0.2004392
15-18 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1589764    0.1446519   0.1733008
15-18 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.1580258    0.1351414   0.1809102
15-18 months   NIH-Crypto      BANGLADESH   8+                   NA                0.1655243    0.1390405   0.1920081
15-18 months   PROVIDE         BANGLADESH   3 or less            NA                0.1611052    0.1290094   0.1932010
15-18 months   PROVIDE         BANGLADESH   4-5                  NA                0.1525137    0.1359179   0.1691095
15-18 months   PROVIDE         BANGLADESH   6-7                  NA                0.1534979    0.1291226   0.1778731
15-18 months   PROVIDE         BANGLADESH   8+                   NA                0.1666221    0.1361848   0.1970594
15-18 months   SAS-FoodSuppl   INDIA        3 or less            NA                0.1872920    0.1400797   0.2345042
15-18 months   SAS-FoodSuppl   INDIA        4-5                  NA                0.1576271    0.1332924   0.1819618
15-18 months   SAS-FoodSuppl   INDIA        6-7                  NA                0.1692635    0.1417823   0.1967447
15-18 months   SAS-FoodSuppl   INDIA        8+                   NA                0.1635022    0.1232417   0.2037627
18-21 months   IRC             INDIA        3 or less            NA                0.1657598    0.1352400   0.1962796
18-21 months   IRC             INDIA        4-5                  NA                0.1435835    0.1214863   0.1656806
18-21 months   IRC             INDIA        6-7                  NA                0.1653168    0.1396010   0.1910327
18-21 months   IRC             INDIA        8+                   NA                0.1739262    0.1435768   0.2042757
18-21 months   LCNI-5          MALAWI       3 or less            NA                0.1930593    0.1556140   0.2305046
18-21 months   LCNI-5          MALAWI       4-5                  NA                0.1663396    0.1341834   0.1984958
18-21 months   LCNI-5          MALAWI       6-7                  NA                0.1797226    0.1379429   0.2215022
18-21 months   LCNI-5          MALAWI       8+                   NA                0.2336975    0.1706299   0.2967652
18-21 months   NIH-Birth       BANGLADESH   3 or less            NA                0.1783122    0.1424957   0.2141287
18-21 months   NIH-Birth       BANGLADESH   4-5                  NA                0.1823920    0.1588465   0.2059374
18-21 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1516120    0.1115670   0.1916571
18-21 months   NIH-Birth       BANGLADESH   8+                   NA                0.1698058    0.1360155   0.2035960
18-21 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.1392632    0.1097981   0.1687283
18-21 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1482245    0.1327127   0.1637363
18-21 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.1347102    0.1123338   0.1570866
18-21 months   NIH-Crypto      BANGLADESH   8+                   NA                0.1416799    0.1151266   0.1682332
18-21 months   PROVIDE         BANGLADESH   3 or less            NA                0.1221723    0.0930587   0.1512859
18-21 months   PROVIDE         BANGLADESH   4-5                  NA                0.1350998    0.1188621   0.1513375
18-21 months   PROVIDE         BANGLADESH   6-7                  NA                0.1328530    0.1063520   0.1593541
18-21 months   PROVIDE         BANGLADESH   8+                   NA                0.1367464    0.1098873   0.1636055
21-24 months   IRC             INDIA        3 or less            NA                0.2093093    0.1743887   0.2442299
21-24 months   IRC             INDIA        4-5                  NA                0.1655281    0.1419302   0.1891260
21-24 months   IRC             INDIA        6-7                  NA                0.1752077    0.1506005   0.1998150
21-24 months   IRC             INDIA        8+                   NA                0.1811119    0.1509375   0.2112863
21-24 months   LCNI-5          MALAWI       3 or less            NA                0.1583703    0.1035762   0.2131644
21-24 months   LCNI-5          MALAWI       4-5                  NA                0.1855250    0.1475724   0.2234777
21-24 months   LCNI-5          MALAWI       6-7                  NA                0.2068075    0.1430892   0.2705258
21-24 months   LCNI-5          MALAWI       8+                   NA                0.1463581    0.0848421   0.2078740
21-24 months   NIH-Birth       BANGLADESH   3 or less            NA                0.1560531    0.1220234   0.1900829
21-24 months   NIH-Birth       BANGLADESH   4-5                  NA                0.1468753    0.1245228   0.1692278
21-24 months   NIH-Birth       BANGLADESH   6-7                  NA                0.1365744    0.1017230   0.1714258
21-24 months   NIH-Birth       BANGLADESH   8+                   NA                0.1216830    0.0845461   0.1588200
21-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                0.1570357    0.1256527   0.1884187
21-24 months   NIH-Crypto      BANGLADESH   4-5                  NA                0.1727918    0.1535127   0.1920710
21-24 months   NIH-Crypto      BANGLADESH   6-7                  NA                0.1781359    0.1536232   0.2026486
21-24 months   NIH-Crypto      BANGLADESH   8+                   NA                0.1922848    0.1612960   0.2232736
21-24 months   PROVIDE         BANGLADESH   3 or less            NA                0.1430670    0.1155658   0.1705683
21-24 months   PROVIDE         BANGLADESH   4-5                  NA                0.1387053    0.1215832   0.1558275
21-24 months   PROVIDE         BANGLADESH   6-7                  NA                0.1407090    0.1173868   0.1640311
21-24 months   PROVIDE         BANGLADESH   8+                   NA                0.1532417    0.1234183   0.1830651


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
0-3 months     IRC             INDIA        4-5                  3 or less         -0.0020527   -0.0630563    0.0589508
0-3 months     IRC             INDIA        6-7                  3 or less          0.0256599   -0.0369660    0.0882858
0-3 months     IRC             INDIA        8+                   3 or less         -0.0045572   -0.0703611    0.0612468
0-3 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0299652   -0.0717615    0.0118311
0-3 months     NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0236198   -0.0718272    0.0245876
0-3 months     NIH-Birth       BANGLADESH   8+                   3 or less         -0.0182032   -0.0810707    0.0446642
0-3 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0038746   -0.0478152    0.0400660
0-3 months     NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0092212   -0.0396046    0.0580470
0-3 months     NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0175082   -0.0724992    0.0374828
0-3 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0322512   -0.0720006    0.0074982
0-3 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0229411   -0.0676631    0.0217810
0-3 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0607309   -0.1146693   -0.0067925
3-6 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     IRC             INDIA        4-5                  3 or less         -0.0080416   -0.0547865    0.0387033
3-6 months     IRC             INDIA        6-7                  3 or less         -0.0006339   -0.0570435    0.0557758
3-6 months     IRC             INDIA        8+                   3 or less         -0.0381985   -0.0934892    0.0170921
3-6 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0287044   -0.0742576    0.0168488
3-6 months     NIH-Birth       BANGLADESH   6-7                  3 or less          0.0280353   -0.0230176    0.0790882
3-6 months     NIH-Birth       BANGLADESH   8+                   3 or less         -0.0178872   -0.0833483    0.0475739
3-6 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0267365   -0.0611521    0.0076790
3-6 months     NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0164533   -0.0525506    0.0196440
3-6 months     NIH-Crypto      BANGLADESH   8+                   3 or less          0.0099026   -0.0325068    0.0523121
3-6 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0204045   -0.0547257    0.0139167
3-6 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0370152   -0.0765436    0.0025133
3-6 months     PROVIDE         BANGLADESH   8+                   3 or less          0.0035890   -0.0546821    0.0618601
6-9 months     IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     IRC             INDIA        4-5                  3 or less         -0.0350901   -0.0741914    0.0040113
6-9 months     IRC             INDIA        6-7                  3 or less         -0.0503499   -0.0953859   -0.0053139
6-9 months     IRC             INDIA        8+                   3 or less         -0.0425458   -0.0869424    0.0018507
6-9 months     LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5          MALAWI       4-5                  3 or less         -0.0121097   -0.0424333    0.0182139
6-9 months     LCNI-5          MALAWI       6-7                  3 or less          0.0178291   -0.0211945    0.0568527
6-9 months     LCNI-5          MALAWI       8+                   3 or less         -0.0020487   -0.0438907    0.0397933
6-9 months     NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth       BANGLADESH   4-5                  3 or less          0.0062520   -0.0326624    0.0451664
6-9 months     NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0023159   -0.0452881    0.0406564
6-9 months     NIH-Birth       BANGLADESH   8+                   3 or less         -0.0165265   -0.0624201    0.0293671
6-9 months     NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0143082   -0.0144351    0.0430514
6-9 months     NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0156905   -0.0197182    0.0510992
6-9 months     NIH-Crypto      BANGLADESH   8+                   3 or less          0.0044794   -0.0320556    0.0410144
6-9 months     PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE         BANGLADESH   4-5                  3 or less         -0.0037374   -0.0330737    0.0255989
6-9 months     PROVIDE         BANGLADESH   6-7                  3 or less         -0.0203809   -0.0534764    0.0127146
6-9 months     PROVIDE         BANGLADESH   8+                   3 or less         -0.0167988   -0.0801049    0.0465074
6-9 months     SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA        4-5                  3 or less          0.0264410   -0.0529668    0.1058488
6-9 months     SAS-FoodSuppl   INDIA        6-7                  3 or less          0.0651812   -0.0172633    0.1476257
6-9 months     SAS-FoodSuppl   INDIA        8+                   3 or less          0.0593460   -0.0256933    0.1443853
9-12 months    IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    IRC             INDIA        4-5                  3 or less          0.0135861   -0.0340882    0.0612605
9-12 months    IRC             INDIA        6-7                  3 or less          0.0051242   -0.0451837    0.0554322
9-12 months    IRC             INDIA        8+                   3 or less          0.0169680   -0.0341552    0.0680912
9-12 months    LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5          MALAWI       4-5                  3 or less          0.0370348    0.0000802    0.0739894
9-12 months    LCNI-5          MALAWI       6-7                  3 or less          0.0575336    0.0084282    0.1066391
9-12 months    LCNI-5          MALAWI       8+                   3 or less          0.0151550   -0.0447053    0.0750153
9-12 months    NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0249767   -0.0584690    0.0085156
9-12 months    NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0062275   -0.0463420    0.0338869
9-12 months    NIH-Birth       BANGLADESH   8+                   3 or less          0.0103480   -0.0308930    0.0515891
9-12 months    NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0013917   -0.0324032    0.0351866
9-12 months    NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0231037   -0.0136360    0.0598434
9-12 months    NIH-Crypto      BANGLADESH   8+                   3 or less          0.0027929   -0.0358498    0.0414357
9-12 months    PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE         BANGLADESH   4-5                  3 or less         -0.0016822   -0.0269545    0.0235900
9-12 months    PROVIDE         BANGLADESH   6-7                  3 or less          0.0061142   -0.0233133    0.0355418
9-12 months    PROVIDE         BANGLADESH   8+                   3 or less         -0.0147205   -0.0491528    0.0197118
9-12 months    SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA        4-5                  3 or less          0.0820174   -0.0232754    0.1873102
9-12 months    SAS-FoodSuppl   INDIA        6-7                  3 or less          0.0779527   -0.0277957    0.1837011
9-12 months    SAS-FoodSuppl   INDIA        8+                   3 or less          0.0973802   -0.0143107    0.2090711
12-15 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   IRC             INDIA        4-5                  3 or less          0.0030889   -0.0357294    0.0419072
12-15 months   IRC             INDIA        6-7                  3 or less          0.0083648   -0.0315413    0.0482710
12-15 months   IRC             INDIA        8+                   3 or less         -0.0062006   -0.0466436    0.0342424
12-15 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0750257   -0.1599927    0.0099413
12-15 months   LCNI-5          MALAWI       6-7                  3 or less         -0.0418970   -0.1147484    0.0309544
12-15 months   LCNI-5          MALAWI       8+                   3 or less         -0.0680282   -0.1873188    0.0512624
12-15 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0147046   -0.0455878    0.0161786
12-15 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0007002   -0.0343651    0.0357656
12-15 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0114675   -0.0582550    0.0353200
12-15 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0170873   -0.0148807    0.0490553
12-15 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0161643   -0.0203268    0.0526554
12-15 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0186903   -0.0179843    0.0553649
12-15 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0461163   -0.0832271   -0.0090055
12-15 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0472032   -0.0863143   -0.0080920
12-15 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.0220201   -0.0686908    0.0246506
12-15 months   SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0588802   -0.1395736    0.0218132
12-15 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0543687   -0.1352623    0.0265248
12-15 months   SAS-FoodSuppl   INDIA        8+                   3 or less         -0.0500299   -0.1377576    0.0376977
15-18 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   IRC             INDIA        4-5                  3 or less         -0.0075040   -0.0475679    0.0325600
15-18 months   IRC             INDIA        6-7                  3 or less          0.0394282   -0.0054232    0.0842797
15-18 months   IRC             INDIA        8+                   3 or less         -0.0022831   -0.0448371    0.0402709
15-18 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5          MALAWI       4-5                  3 or less          0.0164825   -0.0633978    0.0963628
15-18 months   LCNI-5          MALAWI       6-7                  3 or less          0.0279916   -0.0609565    0.1169397
15-18 months   LCNI-5          MALAWI       8+                   3 or less          0.0554851   -0.0327016    0.1436718
15-18 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.0219537   -0.0217165    0.0656239
15-18 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0130567   -0.0374128    0.0635262
15-18 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.0435833   -0.0048016    0.0919682
15-18 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0099974   -0.0445700    0.0245751
15-18 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0109480   -0.0498551    0.0279592
15-18 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0034495   -0.0445768    0.0376779
15-18 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0085915   -0.0447240    0.0275410
15-18 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0076073   -0.0479099    0.0326952
15-18 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0055169   -0.0387163    0.0497501
15-18 months   SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.0296649   -0.0827796    0.0234499
15-18 months   SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.0180285   -0.0726564    0.0365995
15-18 months   SAS-FoodSuppl   INDIA        8+                   3 or less         -0.0237897   -0.0858373    0.0382579
18-21 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   IRC             INDIA        4-5                  3 or less         -0.0221763   -0.0598558    0.0155032
18-21 months   IRC             INDIA        6-7                  3 or less         -0.0004430   -0.0403525    0.0394665
18-21 months   IRC             INDIA        8+                   3 or less          0.0081664   -0.0348748    0.0512077
18-21 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0267197   -0.0760773    0.0226379
18-21 months   LCNI-5          MALAWI       6-7                  3 or less         -0.0133367   -0.0694410    0.0427676
18-21 months   LCNI-5          MALAWI       8+                   3 or less          0.0406382   -0.0327080    0.1139845
18-21 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.0040798   -0.0387829    0.0469425
18-21 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0267001   -0.0804256    0.0270253
18-21 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0085064   -0.0577467    0.0407338
18-21 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0089613   -0.0243375    0.0422601
18-21 months   NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0045530   -0.0415516    0.0324456
18-21 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0024167   -0.0372478    0.0420812
18-21 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE         BANGLADESH   4-5                  3 or less          0.0129275   -0.0204082    0.0462631
18-21 months   PROVIDE         BANGLADESH   6-7                  3 or less          0.0106807   -0.0286882    0.0500496
18-21 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0145741   -0.0250367    0.0541849
21-24 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   IRC             INDIA        4-5                  3 or less         -0.0437812   -0.0859275   -0.0016349
21-24 months   IRC             INDIA        6-7                  3 or less         -0.0341016   -0.0768212    0.0086180
21-24 months   IRC             INDIA        8+                   3 or less         -0.0281974   -0.0743487    0.0179539
21-24 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5          MALAWI       4-5                  3 or less          0.0271547   -0.0394996    0.0938091
21-24 months   LCNI-5          MALAWI       6-7                  3 or less          0.0484372   -0.0356009    0.1324754
21-24 months   LCNI-5          MALAWI       8+                   3 or less         -0.0120122   -0.0943931    0.0703686
21-24 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0091778   -0.0498922    0.0315365
21-24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0194787   -0.0681885    0.0292310
21-24 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0343701   -0.0847405    0.0160003
21-24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0157561   -0.0210756    0.0525879
21-24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0211002   -0.0187214    0.0609218
21-24 months   NIH-Crypto      BANGLADESH   8+                   3 or less          0.0352491   -0.0088553    0.0793535
21-24 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0043617   -0.0367575    0.0280341
21-24 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0023581   -0.0384170    0.0337008
21-24 months   PROVIDE         BANGLADESH   8+                   3 or less          0.0101746   -0.0303932    0.0507425


### Parameter: PAR


agecat         studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC             INDIA        3 or less            NA                 0.0048079   -0.0426853    0.0523011
0-3 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0211693   -0.0532335    0.0108950
0-3 months     NIH-Crypto      BANGLADESH   3 or less            NA                -0.0024545   -0.0379102    0.0330011
0-3 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0278570   -0.0577713    0.0020573
3-6 months     IRC             INDIA        3 or less            NA                -0.0113864   -0.0489206    0.0261478
3-6 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0084618   -0.0440817    0.0271580
3-6 months     NIH-Crypto      BANGLADESH   3 or less            NA                -0.0143652   -0.0420445    0.0133140
3-6 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0172788   -0.0445830    0.0100255
6-9 months     IRC             INDIA        3 or less            NA                -0.0356906   -0.0669256   -0.0044557
6-9 months     LCNI-5          MALAWI       3 or less            NA                -0.0016473   -0.0226143    0.0193197
6-9 months     NIH-Birth       BANGLADESH   3 or less            NA                -0.0005534   -0.0300455    0.0289387
6-9 months     NIH-Crypto      BANGLADESH   3 or less            NA                 0.0110598   -0.0124954    0.0346150
6-9 months     PROVIDE         BANGLADESH   3 or less            NA                -0.0082952   -0.0321885    0.0155980
6-9 months     SAS-FoodSuppl   INDIA        3 or less            NA                 0.0417765   -0.0304765    0.1140295
9-12 months    IRC             INDIA        3 or less            NA                 0.0101899   -0.0280808    0.0484606
9-12 months    LCNI-5          MALAWI       3 or less            NA                 0.0293639    0.0043811    0.0543467
9-12 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0102526   -0.0353285    0.0148232
9-12 months    NIH-Crypto      BANGLADESH   3 or less            NA                 0.0067685   -0.0209593    0.0344962
9-12 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0016033   -0.0209602    0.0177535
9-12 months    SAS-FoodSuppl   INDIA        3 or less            NA                 0.0785173   -0.0187543    0.1757889
12-15 months   IRC             INDIA        3 or less            NA                 0.0020062   -0.0276337    0.0316460
12-15 months   LCNI-5          MALAWI       3 or less            NA                -0.0451585   -0.0953632    0.0050462
12-15 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0079658   -0.0320245    0.0160929
12-15 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0147828   -0.0113609    0.0409265
12-15 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0344619   -0.0635855   -0.0053383
12-15 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.0518087   -0.1249240    0.0213067
15-18 months   IRC             INDIA        3 or less            NA                 0.0070541   -0.0245863    0.0386946
15-18 months   LCNI-5          MALAWI       3 or less            NA                 0.0170110   -0.0342081    0.0682300
15-18 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0198070   -0.0144651    0.0540790
15-18 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0077765   -0.0365192    0.0209662
15-18 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0047538   -0.0331316    0.0236241
15-18 months   SAS-FoodSuppl   INDIA        3 or less            NA                -0.0224074   -0.0684955    0.0236806
18-21 months   IRC             INDIA        3 or less            NA                -0.0067807   -0.0358632    0.0223019
18-21 months   LCNI-5          MALAWI       3 or less            NA                -0.0112104   -0.0439307    0.0215098
18-21 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0058730   -0.0394765    0.0277306
18-21 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0033977   -0.0237840    0.0305794
18-21 months   PROVIDE         BANGLADESH   3 or less            NA                 0.0103158   -0.0154874    0.0361191
21-24 months   IRC             INDIA        3 or less            NA                -0.0315753   -0.0641213    0.0009708
21-24 months   LCNI-5          MALAWI       3 or less            NA                 0.0205814   -0.0233672    0.0645301
21-24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.0140801   -0.0455262    0.0173659
21-24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0180144   -0.0115646    0.0475933
21-24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0010966   -0.0255954    0.0234022
