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

**Outcome Variable:** haz

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
6 months    PROBIT           BELARUS                        Normal weight     12520   13025
6 months    PROBIT           BELARUS                        Underweight         505   13025
6 months    PROVIDE          BANGLADESH                     Normal weight       498     603
6 months    PROVIDE          BANGLADESH                     Underweight         105     603
6 months    SAS-CompFeed     INDIA                          Normal weight       922    1227
6 months    SAS-CompFeed     INDIA                          Underweight         305    1227
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          34    1983
6 months    ZVITAMBO         ZIMBABWE                       Normal weight      6999    7375
6 months    ZVITAMBO         ZIMBABWE                       Underweight         376    7375
24 months   LCNI-5           MALAWI                         Normal weight       482     577
24 months   LCNI-5           MALAWI                         Underweight          95     577
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
24 months   NIH-Birth        BANGLADESH                     Normal weight       349     429
24 months   NIH-Birth        BANGLADESH                     Underweight          80     429
24 months   NIH-Crypto       BANGLADESH                     Normal weight       471     514
24 months   NIH-Crypto       BANGLADESH                     Underweight          43     514
24 months   PROBIT           BELARUS                        Normal weight      3863    4005
24 months   PROBIT           BELARUS                        Underweight         142    4005
24 months   PROVIDE          BANGLADESH                     Normal weight       477     577
24 months   PROVIDE          BANGLADESH                     Underweight         100     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal weight      1312    1373
24 months   ZVITAMBO         ZIMBABWE                       Underweight          61    1373


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
![](/tmp/d1be3e11-6b82-45e3-81ed-eace7ec4d8d1/91bcf7af-50be-401b-913c-4693193f1c5f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d1be3e11-6b82-45e3-81ed-eace7ec4d8d1/91bcf7af-50be-401b-913c-4693193f1c5f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d1be3e11-6b82-45e3-81ed-eace7ec4d8d1/91bcf7af-50be-401b-913c-4693193f1c5f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         Normal weight        NA                -1.6447419   -1.7227308   -1.5667531
6 months    LCNI-5           MALAWI                         Underweight          NA                -1.7147311   -1.8689734   -1.5604888
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -1.1627355   -1.2887047   -1.0367664
6 months    MAL-ED           BANGLADESH                     Underweight          NA                -1.5081470   -1.8250245   -1.1912695
6 months    MAL-ED           BRAZIL                         Normal weight        NA                 0.0708375   -0.0781476    0.2198227
6 months    MAL-ED           BRAZIL                         Underweight          NA                -0.4164815   -0.8769172    0.0439543
6 months    MAL-ED           INDIA                          Normal weight        NA                -1.1932992   -1.3261133   -1.0604852
6 months    MAL-ED           INDIA                          Underweight          NA                -1.2481329   -1.5040394   -0.9922265
6 months    MAL-ED           PERU                           Normal weight        NA                -1.3101467   -1.4185443   -1.2017491
6 months    MAL-ED           PERU                           Underweight          NA                -2.0693333   -2.9031517   -1.2355150
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -1.0471625   -1.1780920   -0.9162331
6 months    MAL-ED           SOUTH AFRICA                   Underweight          NA                -1.9571429   -2.5636947   -1.3505910
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.3531346   -1.4771308   -1.2291383
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.6603443   -2.4120710   -0.9086176
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -1.3544103   -1.4495573   -1.2592633
6 months    NIH-Birth        BANGLADESH                     Underweight          NA                -1.6565917   -1.8798846   -1.4332988
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.1674191   -1.2410021   -1.0938360
6 months    NIH-Crypto       BANGLADESH                     Underweight          NA                -1.6353566   -1.9274335   -1.3432797
6 months    PROBIT           BELARUS                        Normal weight        NA                 0.1079879    0.0183189    0.1976569
6 months    PROBIT           BELARUS                        Underweight          NA                 0.0854463   -0.0897776    0.2606701
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -1.0576788   -1.1397994   -0.9755582
6 months    PROVIDE          BANGLADESH                     Underweight          NA                -1.2853491   -1.4736850   -1.0970133
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -1.3442454   -1.4428639   -1.2456270
6 months    SAS-CompFeed     INDIA                          Underweight          NA                -1.6157696   -1.7481533   -1.4833859
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.5374701   -0.5877550   -0.4871853
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.7773395   -0.9924122   -0.5622667
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.8772324   -0.9053304   -0.8491344
6 months    ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.9407291   -1.0511989   -0.8302593
24 months   LCNI-5           MALAWI                         Normal weight        NA                -1.8579650   -1.9471711   -1.7687589
24 months   LCNI-5           MALAWI                         Underweight          NA                -2.0095775   -2.2141375   -1.8050175
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -1.8990550   -2.0304462   -1.7676639
24 months   MAL-ED           BANGLADESH                     Underweight          NA                -2.4668894   -2.8227366   -2.1110422
24 months   MAL-ED           BRAZIL                         Normal weight        NA                 0.0261008   -0.1439691    0.1961708
24 months   MAL-ED           BRAZIL                         Underweight          NA                -0.5391667   -1.6773310    0.5989977
24 months   MAL-ED           INDIA                          Normal weight        NA                -1.8632148   -2.0042581   -1.7221715
24 months   MAL-ED           INDIA                          Underweight          NA                -1.8488702   -2.1232156   -1.5745248
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -1.6131241   -1.7506877   -1.4755605
24 months   MAL-ED           SOUTH AFRICA                   Underweight          NA                -2.6192857   -3.1998173   -2.0387542
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -2.6440002   -2.7820924   -2.5059080
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -2.8177689   -3.4756566   -2.1598812
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -2.1302453   -2.2424812   -2.0180094
24 months   NIH-Birth        BANGLADESH                     Underweight          NA                -2.6059101   -2.8207132   -2.3911071
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -1.4119077   -1.4985407   -1.3252748
24 months   NIH-Crypto       BANGLADESH                     Underweight          NA                -1.8880903   -2.1879712   -1.5882095
24 months   PROBIT           BELARUS                        Normal weight        NA                -0.1449437   -0.4305002    0.1406127
24 months   PROBIT           BELARUS                        Underweight          NA                -0.1092707   -0.6109448    0.3924034
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -1.5413719   -1.6311212   -1.4516226
24 months   PROVIDE          BANGLADESH                     Underweight          NA                -1.9612755   -2.2084482   -1.7141029
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.6013750   -1.6647825   -1.5379676
24 months   ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.5643212   -1.9017655   -1.2268768


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0497516   -0.0948051    0.1943083
6 months    MAL-ED           INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    MAL-ED           PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.1076224    0.0168411    0.1984037
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4072209   -1.4983514   -1.3160903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5405711   -0.5899965   -0.4911457
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8800508   -0.9074511   -0.8526506
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8851820   -1.9664818   -1.8038822
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0059127   -0.1637934    0.1756188
24 months   MAL-ED           INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1444149   -0.4258602    0.1370304
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5983212   -1.6605141   -1.5361283


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Underweight          Normal weight     -0.0699891   -0.2428282    0.1028500
6 months    MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.3454115   -0.6865772   -0.0042458
6 months    MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Underweight          Normal weight     -0.4873190   -0.9712587   -0.0033793
6 months    MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Underweight          Normal weight     -0.0548337   -0.3433069    0.2336395
6 months    MAL-ED           PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Underweight          Normal weight     -0.7591866   -1.6000214    0.0816481
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -0.9099803   -1.5305024   -0.2894583
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.3072098   -1.0692823    0.4548628
6 months    NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3021814   -0.5433580   -0.0610048
6 months    NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.4679376   -0.7700097   -0.1658654
6 months    PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Underweight          Normal weight     -0.0225417   -0.1586892    0.1136059
6 months    PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.2276703   -0.4338869   -0.0214538
6 months    SAS-CompFeed     INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Underweight          Normal weight     -0.2715241   -0.4097586   -0.1332897
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.2398693   -0.4601960   -0.0195427
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0634967   -0.1764868    0.0494934
24 months   LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Underweight          Normal weight     -0.1516125   -0.3748605    0.0716354
24 months   MAL-ED           BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Underweight          Normal weight     -0.5678343   -0.9484451   -0.1872235
24 months   MAL-ED           BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Underweight          Normal weight     -0.5652675   -1.7160680    0.5855330
24 months   MAL-ED           INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Underweight          Normal weight      0.0143446   -0.2935677    0.3222569
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Underweight          Normal weight     -1.0061616   -1.6027692   -0.4095540
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1737687   -0.8446095    0.4970721
24 months   NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.4756648   -0.7148894   -0.2364402
24 months   NIH-Crypto       BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Underweight          Normal weight     -0.4761826   -0.7889133   -0.1634519
24 months   PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Underweight          Normal weight      0.0356730   -0.4566410    0.5279870
24 months   PROVIDE          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Underweight          Normal weight     -0.4199036   -0.6819558   -0.1578514
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.0370539   -0.3056146    0.3797223


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    LCNI-5           MALAWI                         Normal weight        NA                -0.0130332   -0.0428479    0.0167815
6 months    MAL-ED           BANGLADESH                     Normal weight        NA                -0.0422576   -0.0877943    0.0032791
6 months    MAL-ED           BRAZIL                         Normal weight        NA                -0.0210859   -0.0460040    0.0038322
6 months    MAL-ED           INDIA                          Normal weight        NA                -0.0126582   -0.0742623    0.0489459
6 months    MAL-ED           PERU                           Normal weight        NA                -0.0139556   -0.0382312    0.0103199
6 months    MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0255818   -0.0511699    0.0000064
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0156104   -0.0515535    0.0203328
6 months    NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0529718   -0.0960499   -0.0098936
6 months    NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0312593   -0.0573920   -0.0051265
6 months    PROBIT           BELARUS                        Normal weight        NA                -0.0003655   -0.0057636    0.0050325
6 months    PROVIDE          BANGLADESH                     Normal weight        NA                -0.0318513   -0.0640579    0.0003553
6 months    SAS-CompFeed     INDIA                          Normal weight        NA                -0.0629754   -0.1045653   -0.0213856
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0031010   -0.0091790    0.0029771
6 months    ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0028184   -0.0084909    0.0028540
24 months   LCNI-5           MALAWI                         Normal weight        NA                -0.0272170   -0.0636505    0.0092166
24 months   MAL-ED           BANGLADESH                     Normal weight        NA                -0.0793412   -0.1381987   -0.0204837
24 months   MAL-ED           BRAZIL                         Normal weight        NA                -0.0201881   -0.0642601    0.0238838
24 months   MAL-ED           INDIA                          Normal weight        NA                -0.0212542   -0.0862259    0.0437174
24 months   MAL-ED           SOUTH AFRICA                   Normal weight        NA                -0.0300989   -0.0584341   -0.0017637
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0015606   -0.0345913    0.0314701
24 months   NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0888126   -0.1365714   -0.0410538
24 months   NIH-Crypto       BANGLADESH                     Normal weight        NA                -0.0293569   -0.0564187   -0.0022951
24 months   PROBIT           BELARUS                        Normal weight        NA                 0.0005288   -0.0164547    0.0175123
24 months   PROVIDE          BANGLADESH                     Normal weight        NA                -0.0588880   -0.0999508   -0.0178253
24 months   ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0030538   -0.0105043    0.0166119
