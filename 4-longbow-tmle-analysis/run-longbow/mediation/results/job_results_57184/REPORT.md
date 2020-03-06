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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mbmi             n_cell       n
----------  ---------------  -----------------------------  --------------  -------  ------
6 months    LCNI-5           MALAWI                         Normal weight       691     836
6 months    LCNI-5           MALAWI                         Underweight         145     836
6 months    MAL-ED           BANGLADESH                     Normal weight       209     241
6 months    MAL-ED           BANGLADESH                     Underweight          32     241
6 months    MAL-ED           BRAZIL                         Normal weight       199     208
6 months    MAL-ED           BRAZIL                         Underweight           9     208
6 months    MAL-ED           INDIA                          Normal weight       186     235
6 months    MAL-ED           INDIA                          Underweight          49     235
6 months    MAL-ED           NEPAL                          Normal weight       236     236
6 months    MAL-ED           NEPAL                          Underweight           0     236
6 months    MAL-ED           PERU                           Normal weight       267     272
6 months    MAL-ED           PERU                           Underweight           5     272
6 months    MAL-ED           SOUTH AFRICA                   Normal weight       242     249
6 months    MAL-ED           SOUTH AFRICA                   Underweight           7     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          14     247
6 months    NIH-Birth        BANGLADESH                     Normal weight       444     537
6 months    NIH-Birth        BANGLADESH                     Underweight          93     537
6 months    NIH-Crypto       BANGLADESH                     Normal weight       648     715
6 months    NIH-Crypto       BANGLADESH                     Underweight          67     715
6 months    PROBIT           BELARUS                        Normal weight     12518   13023
6 months    PROBIT           BELARUS                        Underweight         505   13023
6 months    PROVIDE          BANGLADESH                     Normal weight       497     602
6 months    PROVIDE          BANGLADESH                     Underweight         105     602
6 months    SAS-CompFeed     INDIA                          Normal weight       921    1225
6 months    SAS-CompFeed     INDIA                          Underweight         304    1225
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33    1982
6 months    ZVITAMBO         ZIMBABWE                       Normal weight      6881    7253
6 months    ZVITAMBO         ZIMBABWE                       Underweight         372    7253
24 months   LCNI-5           MALAWI                         Normal weight       467     561
24 months   LCNI-5           MALAWI                         Underweight          94     561
24 months   MAL-ED           BANGLADESH                     Normal weight       183     212
24 months   MAL-ED           BANGLADESH                     Underweight          29     212
24 months   MAL-ED           BRAZIL                         Normal weight       162     168
24 months   MAL-ED           BRAZIL                         Underweight           6     168
24 months   MAL-ED           INDIA                          Normal weight       180     226
24 months   MAL-ED           INDIA                          Underweight          46     226
24 months   MAL-ED           NEPAL                          Normal weight       228     228
24 months   MAL-ED           NEPAL                          Underweight           0     228
24 months   MAL-ED           PERU                           Normal weight       197     201
24 months   MAL-ED           PERU                           Underweight           4     201
24 months   MAL-ED           SOUTH AFRICA                   Normal weight       227     234
24 months   MAL-ED           SOUTH AFRICA                   Underweight           7     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          11     214
24 months   NIH-Birth        BANGLADESH                     Normal weight       348     428
24 months   NIH-Birth        BANGLADESH                     Underweight          80     428
24 months   NIH-Crypto       BANGLADESH                     Normal weight       471     514
24 months   NIH-Crypto       BANGLADESH                     Underweight          43     514
24 months   PROBIT           BELARUS                        Normal weight      3799    3940
24 months   PROBIT           BELARUS                        Underweight         141    3940
24 months   PROVIDE          BANGLADESH                     Normal weight       478     578
24 months   PROVIDE          BANGLADESH                     Underweight         100     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal weight       339     366
24 months   ZVITAMBO         ZIMBABWE                       Underweight          27     366


The following strata were considered:

* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/b7476295-be29-4fdd-bef6-f29e3ea575ff/d0e85fb6-c3dc-435a-b6c7-e59ee2d19a8e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b7476295-be29-4fdd-bef6-f29e3ea575ff/d0e85fb6-c3dc-435a-b6c7-e59ee2d19a8e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b7476295-be29-4fdd-bef6-f29e3ea575ff/d0e85fb6-c3dc-435a-b6c7-e59ee2d19a8e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         Normal weight        NA                 0.5294323    0.4512113    0.6076533
6 months    LCNI-5           MALAWI                         Underweight          NA                 0.0662638   -0.0944862    0.2270139
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0534366   -0.1821426    0.0752695
6 months    MAL-ED           BANGLADESH                     Underweight          NA                -0.6896685   -1.1506871   -0.2286499
6 months    MAL-ED           BRAZIL                         Normal weight        NA                 0.9779606    0.8096461    1.1462751
6 months    MAL-ED           BRAZIL                         Underweight          NA                 0.6750000   -0.0698801    1.4198801
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.6141360   -0.7487150   -0.4795571
6 months    MAL-ED           INDIA                          Underweight          NA                -1.0286753   -1.3785710   -0.6787795
6 months    MAL-ED           PERU                           Normal weight        NA                 1.0561298    0.9317231    1.1805366
6 months    MAL-ED           PERU                           Underweight          NA                 0.9870000    0.4781587    1.4958413
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.5335468    0.3758513    0.6912424
6 months    MAL-ED           SOUTH AFRICA                   Underweight          NA                 0.3771429   -0.1498294    0.9041151
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.5222810    0.3870735    0.6574885
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.6081056    0.0744864    1.1417249
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.3955120   -0.4944877   -0.2965364
6 months    NIH-Birth        BANGLADESH                     Underweight          NA                -0.6708188   -0.8760500   -0.4655876
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                 0.0613153   -0.0201192    0.1427499
6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                -0.3164444   -0.6071531   -0.0257358
6 months    PROBIT           BELARUS                        Normal weight        NA                 0.5843168    0.5259980    0.6426357
6 months    PROBIT           BELARUS                        Underweight          NA                 0.4459208    0.3104823    0.5813592
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.1200023   -0.2103068   -0.0296977
6 months    PROVIDE          BANGLADESH                     Underweight          NA                -0.6074738   -0.8293257   -0.3856218
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.5573196   -0.6890270   -0.4256123
6 months    SAS-CompFeed     INDIA                          Underweight          NA                -0.8916468   -1.0332166   -0.7500769
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0830737    0.0287353    0.1374122
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.2527963   -0.4738587   -0.0317340
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.3126233    0.2844772    0.3407695
6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.0456730   -0.1779909    0.0866448
24 months   LCNI-5           MALAWI                         Normal weight        NA                 0.0267477   -0.0625640    0.1160595
24 months   LCNI-5           MALAWI                         Underweight          NA                -0.3189962   -0.5019738   -0.1360185
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.7605767   -0.8910020   -0.6301513
24 months   MAL-ED           BANGLADESH                     Underweight          NA                -1.0762041   -1.4165939   -0.7358143
24 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.4461317    0.2381826    0.6540808
24 months   MAL-ED           BRAZIL                         Underweight          NA                 0.3966667   -0.6451983    1.4385316
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.8988061   -1.0227912   -0.7748209
24 months   MAL-ED           INDIA                          Underweight          NA                -1.1570114   -1.4565812   -0.8574415
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.3861417    0.2630585    0.5092249
24 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                 0.5700000   -0.1123856    1.2523856
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0509824   -0.0763201    0.1782850
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.5007818   -1.1521663    0.1506026
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8172336   -0.9205402   -0.7139271
24 months   NIH-Birth        BANGLADESH                     Underweight          NA                -1.3187884   -1.5818381   -1.0557386
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.5950792   -0.6938054   -0.4963529
24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                -0.8238984   -1.1448686   -0.5029281
24 months   PROBIT           BELARUS                        Normal weight        NA                 0.7075045    0.5947874    0.8202216
24 months   PROBIT           BELARUS                        Underweight          NA                 0.4337007    0.0292879    0.8381136
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.8204177   -0.9091932   -0.7316423
24 months   PROVIDE          BANGLADESH                     Underweight          NA                -1.2277657   -1.4268566   -1.0286749
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.1601971   -1.2735174   -1.0468768
24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.3450241   -1.7640529   -0.9259953


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4515550    0.3802638    0.5228463
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9648518    0.8004118    1.1292917
6 months    MAL-ED           INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    MAL-ED           PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5785149    0.5197782    0.6372516
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6441020   -0.7710827   -0.5171213
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0775172    0.0241750    0.1308595
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2948332    0.2672524    0.3224139
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0468717   -0.1290135    0.0352701
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4443651    0.2404149    0.6483153
24 months   MAL-ED           INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6991214    0.5821715    0.8160713
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1718579   -1.2809898   -1.0627260


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Underweight          Normal weight     -0.4631684   -0.6422215   -0.2841153
6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.6362319   -1.1149463   -0.1575175
6 months    MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Underweight          Normal weight     -0.3029606   -1.0666204    0.4606991
6 months    MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Underweight          Normal weight     -0.4145392   -0.7919561   -0.0371223
6 months    MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Underweight          Normal weight     -0.0691298   -0.5929586    0.4546989
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.1564040   -0.7064654    0.3936575
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0858247   -0.4652910    0.6369404
6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.2753068   -0.4999022   -0.0507114
6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.3777598   -0.6795191   -0.0760004
6 months    PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Underweight          Normal weight     -0.1383961   -0.2573469   -0.0194452
6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.4874715   -0.7274635   -0.2474795
6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.3343271   -0.4299385   -0.2387157
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.3358701   -0.5634422   -0.1082980
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3582964   -0.4933553   -0.2232374
24 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Underweight          Normal weight     -0.3457439   -0.5489546   -0.1425333
24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.3156274   -0.6812955    0.0500406
24 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Underweight          Normal weight     -0.0494650   -1.1118799    1.0129498
24 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Underweight          Normal weight     -0.2582053   -0.5826331    0.0662224
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight      0.1838583   -0.5095388    0.8772554
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.5517643   -1.2136895    0.1101610
24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5015547   -0.7842449   -0.2188646
24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.2288192   -0.5645641    0.1069257
24 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Underweight          Normal weight     -0.2738038   -0.6318196    0.0842121
24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.4073480   -0.6215722   -0.1931238
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.1848269   -0.6191225    0.2494686


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0778773   -0.1111010   -0.0446535
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0842398   -0.1512372   -0.0172424
6 months    MAL-ED           BRAZIL                         Normal weight        NA                -0.0131089   -0.0472021    0.0209844
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0892789   -0.1691695   -0.0093882
6 months    MAL-ED           PERU                           Normal weight        NA                -0.0012708   -0.0144131    0.0118715
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0043969   -0.0201917    0.0113979
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0139404   -0.0191500    0.0470307
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0518918   -0.0912664   -0.0125171
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0315531   -0.0599956   -0.0031106
6 months    PROBIT           BELARUS                        Normal weight        NA                -0.0058019   -0.0101552   -0.0014486
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0787048   -0.1205134   -0.0368962
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.0867824   -0.1139890   -0.0595758
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0055565   -0.0115635    0.0004505
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0177902   -0.0247771   -0.0108032
24 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0736194   -0.1116517   -0.0355871
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0587158   -0.1109864   -0.0064452
24 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0017666   -0.0397355    0.0362023
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0531187   -0.1193416    0.0131041
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                 0.0055000   -0.0156289    0.0266289
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0038151   -0.0306856    0.0383158
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0943454   -0.1486499   -0.0400409
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0152710   -0.0422894    0.0117473
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.0083831   -0.0210182    0.0042521
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0710182   -0.1090768   -0.0329597
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0116608   -0.0427985    0.0194769
