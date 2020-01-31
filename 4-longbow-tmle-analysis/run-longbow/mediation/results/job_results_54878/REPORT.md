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
* meducyrs
* feducyrs
* hhwealth_quart
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight       209     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          32     241  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight       199     208  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           9     208  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight       186     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          49     235  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight       236     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           0     236  haz              
6 months    ki0047075b-MAL-ED          PERU                           Normal weight       267     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           Underweight           5     272  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       242     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     249  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          14     247  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       904    1228  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         324    1228  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       444     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     537  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       498     603  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         105     603  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1983  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          34    1983  haz              
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12522   13027  haz              
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13027  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6999    7375  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         376    7375  haz              
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight       691     836  haz              
6 months    ki1148112-LCNI-5           MALAWI                         Underweight         145     836  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10311   16760  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight        6449   16760  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       183     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          29     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       162     168  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           6     168  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight       180     226  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          46     226  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       228     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0     228  haz              
24 months   ki0047075b-MAL-ED          PERU                           Normal weight       197     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           Underweight           4     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       227     234  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     234  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          11     214  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       349     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80     429  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       477     577  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     577  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6  haz              
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3863    4005  haz              
24 months   ki1119695-PROBIT           BELARUS                        Underweight         142    4005  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      1312    1373  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          61    1373  haz              
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       482     577  haz              
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          95     577  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      5289    8599  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3310    8599  haz              


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
![](/tmp/696af13d-d3e8-4f22-9ffc-0881f109b073/8bbe8056-2d84-4082-8ca0-dfd6075d6241/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/696af13d-d3e8-4f22-9ffc-0881f109b073/8bbe8056-2d84-4082-8ca0-dfd6075d6241/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/696af13d-d3e8-4f22-9ffc-0881f109b073/8bbe8056-2d84-4082-8ca0-dfd6075d6241/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.1657280   -1.2918892   -1.0395668
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.4750758   -1.7803655   -1.1697861
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0708375   -0.0781476    0.2198227
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -0.4164815   -0.8769172    0.0439543
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.1946342   -1.3278019   -1.0614665
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.2242433   -1.4909411   -0.9575455
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -1.3101467   -1.4185443   -1.2017491
6 months    ki0047075b-MAL-ED          PERU                           Underweight          NA                -2.0693333   -2.9031517   -1.2355150
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -1.0471625   -1.1780920   -0.9162331
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -1.9571429   -2.5636947   -1.3505910
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.3534722   -1.4773665   -1.2295780
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.4772789   -2.0873031   -0.8672548
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -1.3540657   -1.4540297   -1.2541016
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -1.5573991   -1.7019413   -1.4128568
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -1.3569918   -1.4519946   -1.2619891
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.6400860   -1.8512888   -1.4288832
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.0491343   -1.1319655   -0.9663032
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.2742776   -1.4383810   -1.1101742
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.1650657   -1.2386360   -1.0914954
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.6246579   -1.9095715   -1.3397443
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.5390108   -0.5892695   -0.4887520
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.6440409   -0.8630712   -0.4250105
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.1146128    0.0219995    0.2072260
6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.1351817   -0.0861889    0.3565522
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.8768525   -0.9049404   -0.8487646
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.9468671   -1.0665465   -0.8271877
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -1.6441018   -1.7224068   -1.5657969
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                -1.6973655   -1.8520605   -1.5426705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -1.3567140   -1.3834167   -1.3300113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.2457008   -1.2757551   -1.2156465
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.8958632   -2.0268120   -1.7649145
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -2.4754319   -2.8503529   -2.1005109
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0261008   -0.1439691    0.1961708
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -0.5391667   -1.6773310    0.5989977
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.8816732   -2.0220975   -1.7412490
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.8500666   -2.1358363   -1.5642969
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -1.6131241   -1.7506877   -1.4755605
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -2.6192857   -3.1998173   -2.0387542
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -2.6465391   -2.7848755   -2.5082028
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -2.8229616   -3.4210964   -2.2248267
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -2.1302834   -2.2432924   -2.0172745
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -2.5955578   -2.8172000   -2.3739157
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.5300809   -1.6202073   -1.4399546
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.9292929   -2.1476750   -1.7109108
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.4092763   -1.4964694   -1.3220832
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.9977392   -2.3049252   -1.6905531
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.1337013   -0.4436579    0.1762553
24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                -0.0544461   -0.6692237    0.5603315
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.6012444   -1.6646781   -1.5378107
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.5691175   -1.8864000   -1.2518350
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -1.8579710   -1.9477980   -1.7681440
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                -1.9765308   -2.1945379   -1.7585237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -2.0454671   -2.0787472   -2.0121869
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.9631693   -2.0019432   -1.9243954


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0497516   -0.0948051    0.1943083
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4068893   -1.4981242   -1.3156543
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5405711   -0.5899965   -0.4911457
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1153731    0.0222128    0.2085334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8800508   -0.9074511   -0.8526506
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3140048   -1.3371141   -1.2908955
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0059127   -0.1637934    0.1756188
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5983212   -1.6605141   -1.5361283
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8851820   -1.9664818   -1.8038822
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0137632   -2.0415122   -1.9860142


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.3093478   -0.6408306    0.0221349
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.4873190   -0.9712587   -0.0033793
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0296091   -0.3283124    0.2690941
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.7591866   -1.6000214    0.0816481
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.9099803   -1.5305024   -0.2894583
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1238067   -0.7444949    0.4968816
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.2033334   -0.3620141   -0.0446527
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.2830941   -0.5097203   -0.0564680
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.2251433   -0.4090269   -0.0412597
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.4595922   -0.7546173   -0.1645671
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1050301   -0.3284467    0.1183865
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.0205689   -0.1659112    0.2070490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0700146   -0.1920442    0.0520150
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.0532637   -0.2268702    0.1203427
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight      0.1110132    0.0783943    0.1436320
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.5795687   -0.9748981   -0.1842392
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.5652675   -1.7160680    0.5855330
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight      0.0316066   -0.2863799    0.3495932
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -1.0061616   -1.6027692   -0.4095540
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1764224   -0.7881141    0.4352692
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.4652744   -0.7124168   -0.2181320
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.3992120   -0.6347902   -0.1636337
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.5884629   -0.9097223   -0.2672035
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.0792552   -0.5340796    0.6925900
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.0321269   -0.2911301    0.3553840
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.1185598   -0.3544588    0.1173393
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight      0.0822978    0.0367523    0.1278433


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0392651   -0.0847831    0.0062529
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0210859   -0.0460040    0.0038322
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0113233   -0.0725771    0.0499305
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0139556   -0.0382312    0.0103199
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0255818   -0.0511699    0.0000064
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0152727   -0.0492726    0.0187272
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0528236   -0.0969186   -0.0087286
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0503902   -0.0913976   -0.0093828
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0403958   -0.0727552   -0.0080364
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0336126   -0.0594379   -0.0077874
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0015604   -0.0072082    0.0040875
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0007603   -0.0057014    0.0072220
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0031983   -0.0088579    0.0024612
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0136733   -0.0437937    0.0164471
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                 0.0427092    0.0300671    0.0553514
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0825330   -0.1412857   -0.0237803
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0201881   -0.0642601    0.0238838
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0027958   -0.0657352    0.0601436
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0300989   -0.0584341   -0.0017637
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0009784   -0.0309747    0.0329315
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0887744   -0.1383849   -0.0391640
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0701790   -0.1112984   -0.0290597
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0319883   -0.0603478   -0.0036288
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0014833   -0.0245843    0.0275509
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0029232   -0.0109307    0.0167771
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0272109   -0.0644579    0.0100360
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                 0.0317039    0.0140654    0.0493423
