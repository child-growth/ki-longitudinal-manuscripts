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
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth
* delta_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mbmi             n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------------  -------  ------  -----------------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight       209     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          32     241  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight       199     208  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           9     208  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight       186     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          49     235  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight       236     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           0     236  whz              
6 months    ki0047075b-MAL-ED          PERU                           Normal weight       267     272  whz              
6 months    ki0047075b-MAL-ED          PERU                           Underweight           5     272  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       242     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     249  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          14     247  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       902    1226  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         324    1226  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       444     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     537  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       497     602  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         105     602  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1982  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33    1982  whz              
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12519   13024  whz              
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13024  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6881    7253  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         372    7253  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight       691     836  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Underweight         145     836  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10303   16733  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight        6430   16733  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       183     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          29     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       162     168  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           6     168  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight       180     226  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          46     226  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       228     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0     228  whz              
24 months   ki0047075b-MAL-ED          PERU                           Normal weight       197     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           Underweight           4     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       227     234  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     234  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          11     214  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       348     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80     428  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       478     578  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     578  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6  whz              
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3801    3942  whz              
24 months   ki1119695-PROBIT           BELARUS                        Underweight         141    3942  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       339     366  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          27     366  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       467     561  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          94     561  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      5272    8570  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3298    8570  whz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/c0fa5980-2fe4-46c0-a4b8-a1a223b64342/e9bf5514-3f33-425e-80ec-4a3dbfbaa546/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c0fa5980-2fe4-46c0-a4b8-a1a223b64342/e9bf5514-3f33-425e-80ec-4a3dbfbaa546/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c0fa5980-2fe4-46c0-a4b8-a1a223b64342/e9bf5514-3f33-425e-80ec-4a3dbfbaa546/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0493243   -0.1782069    0.0795583
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -0.7287536   -1.2684986   -0.1890087
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.9779606    0.8096461    1.1462751
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.6750000   -0.0698801    1.4198801
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.6171610   -0.7494444   -0.4848775
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                -0.9971467   -1.3367883   -0.6575051
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                 1.0561298    0.9317231    1.1805366
6 months    ki0047075b-MAL-ED          PERU                           Underweight          NA                 0.9870000    0.4781587    1.4958413
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.5335468    0.3758513    0.6912424
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.3771429   -0.1498294    0.9041151
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.5227775    0.3851658    0.6603891
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 1.0068286    0.3561823    1.6574749
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.5819841   -0.7189213   -0.4450469
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -0.8074743   -0.9239730   -0.6909756
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.3879538   -0.4877934   -0.2881141
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -0.7105006   -0.9261361   -0.4948651
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.1214147   -0.2114941   -0.0313354
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -0.5771884   -0.7921271   -0.3622497
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0597266   -0.0218209    0.1412740
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -0.2591452   -0.5520167    0.0337263
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0826782    0.0283308    0.1370256
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.1120249   -0.3667247    0.1426748
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.5882063    0.5303456    0.6460670
6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.4652837    0.3324859    0.5980815
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.3126717    0.2845281    0.3408153
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.0393284   -0.1746194    0.0959626
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.5321414    0.4539656    0.6103172
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                 0.0975625   -0.0609497    0.2560747
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.5648879   -0.5876710   -0.5421048
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -0.6391382   -0.6693590   -0.6089173
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.7625731   -0.8925747   -0.6325715
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.1806347   -1.5542739   -0.8069956
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.4461317    0.2381826    0.6540808
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.3966667   -0.6451983    1.4385316
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.9006486   -1.0245991   -0.7766981
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.1886513   -1.4884737   -0.8888290
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.3861417    0.2630585    0.5092249
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.5700000   -0.1123856    1.2523856
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0566662   -0.0706273    0.1839596
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.4463174   -0.1800862    1.0727211
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8241683   -0.9278564   -0.7204801
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.2753198   -1.5409575   -1.0096822
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.8069533   -0.8958361   -0.7180705
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.3285294   -1.5482003   -1.1088585
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.5974926   -0.6963488   -0.4986363
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -0.8443852   -1.1550648   -0.5337056
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.6952393    0.5856479    0.8048307
24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.4495975    0.0621425    0.8370526
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.1625309   -1.2758848   -1.0491770
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.6468701   -2.0406926   -1.2530476
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0204277   -0.0687271    0.1095825
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                -0.3956082   -0.5774488   -0.2137676
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -1.2697531   -1.2990900   -1.2404162
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.3404651   -1.3764541   -1.3044761


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9648518    0.8004118    1.1292917
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6426305   -0.7702214   -0.5150396
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0775172    0.0241750    0.1308595
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5829956    0.5247249    0.6412663
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2948332    0.2672524    0.3224139
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4515550    0.3802638    0.5228463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5931545   -0.6127055   -0.5736036
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4443651    0.2404149    0.6483153
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6880695    0.5737062    0.8024328
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1718579   -1.2809898   -1.0627260
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0468717   -0.1290135    0.0352701
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2970642   -1.3203662   -1.2737621


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.6794293   -1.2343060   -0.1245527
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.3029606   -1.0666204    0.4606991
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.3799857   -0.7457599   -0.0142116
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0691298   -0.5929586    0.4546989
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.1564040   -0.7064654    0.3936575
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.4840511   -0.1807900    1.1488923
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.2254902   -0.3049808   -0.1459996
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3225468   -0.5590174   -0.0860762
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.4557737   -0.6886697   -0.2228777
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.3188717   -0.6220457   -0.0156977
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1947031   -0.4557570    0.0663508
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1229226   -0.2386037   -0.0072416
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3520001   -0.4899457   -0.2140545
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.4345790   -0.6115254   -0.2576325
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     -0.0742503   -0.1091637   -0.0393368
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.4180616   -0.8145217   -0.0216015
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.0494650   -1.1118799    1.0129498
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.2880027   -0.6124117    0.0364063
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight      0.1838583   -0.5095388    0.8772554
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.3896513   -0.2516037    1.0309062
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.4511516   -0.7357367   -0.1665665
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.5215761   -0.7585850   -0.2845673
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.2468926   -0.5722531    0.0784679
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.2456417   -0.5873813    0.0960978
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.4843391   -0.8947621   -0.0739162
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.4160359   -0.6184080   -0.2136638
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight     -0.0707120   -0.1159190   -0.0255051


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0883521   -0.1561156   -0.0205885
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0131089   -0.0472021    0.0209844
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0862539   -0.1643100   -0.0081978
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0012708   -0.0144131    0.0118715
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0043969   -0.0201917    0.0113979
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0134439   -0.0221682    0.0490560
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0606464   -0.0854059   -0.0358868
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0594500   -0.1006741   -0.0182259
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0772924   -0.1183505   -0.0362343
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0299643   -0.0577566   -0.0021721
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0051609   -0.0115516    0.0012297
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0052107   -0.0094464   -0.0009750
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0178385   -0.0248173   -0.0108597
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0805864   -0.1138937   -0.0472791
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0282666   -0.0417415   -0.0147918
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0567193   -0.1086417   -0.0047970
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0017666   -0.0397355    0.0362023
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0512762   -0.1170295    0.0144772
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.0055000   -0.0156289    0.0266289
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0018687   -0.0356053    0.0318680
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0874108   -0.1412981   -0.0335235
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0844827   -0.1253101   -0.0436553
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0128576   -0.0392408    0.0135256
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0071697   -0.0185545    0.0042150
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0093270   -0.0409537    0.0222998
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0672994   -0.1050078   -0.0295910
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -0.0273111   -0.0446912   -0.0099310
