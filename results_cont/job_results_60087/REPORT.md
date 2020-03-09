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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mwtkg         n_cell       n
----------  ---------------  -----------------------------  -----------  -------  ------
Birth       JiVitA-3         BANGLADESH                     >=58 kg          427   17995
Birth       JiVitA-3         BANGLADESH                     <52 kg         16351   17995
Birth       JiVitA-3         BANGLADESH                     [52-58) kg      1217   17995
Birth       MAL-ED           BANGLADESH                     >=58 kg           37     209
Birth       MAL-ED           BANGLADESH                     <52 kg           131     209
Birth       MAL-ED           BANGLADESH                     [52-58) kg        41     209
Birth       MAL-ED           BRAZIL                         >=58 kg           33      61
Birth       MAL-ED           BRAZIL                         <52 kg            14      61
Birth       MAL-ED           BRAZIL                         [52-58) kg        14      61
Birth       MAL-ED           INDIA                          >=58 kg            6      41
Birth       MAL-ED           INDIA                          <52 kg            28      41
Birth       MAL-ED           INDIA                          [52-58) kg         7      41
Birth       MAL-ED           NEPAL                          >=58 kg            9      26
Birth       MAL-ED           NEPAL                          <52 kg             7      26
Birth       MAL-ED           NEPAL                          [52-58) kg        10      26
Birth       MAL-ED           PERU                           >=58 kg           82     221
Birth       MAL-ED           PERU                           <52 kg            81     221
Birth       MAL-ED           PERU                           [52-58) kg        58     221
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg           69     100
Birth       MAL-ED           SOUTH AFRICA                   <52 kg            10     100
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg        21     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           44     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            40     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        29     113
Birth       NIH-Birth        BANGLADESH                     >=58 kg           79     575
Birth       NIH-Birth        BANGLADESH                     <52 kg           414     575
Birth       NIH-Birth        BANGLADESH                     [52-58) kg        82     575
Birth       NIH-Crypto       BANGLADESH                     >=58 kg          183     704
Birth       NIH-Crypto       BANGLADESH                     <52 kg           381     704
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg       140     704
Birth       PROBIT           BELARUS                        >=58 kg        10222   13694
Birth       PROBIT           BELARUS                        <52 kg          1124   13694
Birth       PROBIT           BELARUS                        [52-58) kg      2348   13694
Birth       PROVIDE          BANGLADESH                     >=58 kg           89     510
Birth       PROVIDE          BANGLADESH                     <52 kg           326     510
Birth       PROVIDE          BANGLADESH                     [52-58) kg        95     510
Birth       SAS-CompFeed     INDIA                          >=58 kg           89    1091
Birth       SAS-CompFeed     INDIA                          <52 kg           824    1091
Birth       SAS-CompFeed     INDIA                          [52-58) kg       178    1091
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg         5455   10286
Birth       ZVITAMBO         ZIMBABWE                       <52 kg          2142   10286
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg      2689   10286
6 months    JiVitA-3         BANGLADESH                     >=58 kg          408   16775
6 months    JiVitA-3         BANGLADESH                     <52 kg         15216   16775
6 months    JiVitA-3         BANGLADESH                     [52-58) kg      1151   16775
6 months    LCNI-5           MALAWI                         >=58 kg          114     837
6 months    LCNI-5           MALAWI                         <52 kg           504     837
6 months    LCNI-5           MALAWI                         [52-58) kg       219     837
6 months    MAL-ED           BANGLADESH                     >=58 kg           46     241
6 months    MAL-ED           BANGLADESH                     <52 kg           154     241
6 months    MAL-ED           BANGLADESH                     [52-58) kg        41     241
6 months    MAL-ED           BRAZIL                         >=58 kg          137     208
6 months    MAL-ED           BRAZIL                         <52 kg            37     208
6 months    MAL-ED           BRAZIL                         [52-58) kg        34     208
6 months    MAL-ED           INDIA                          >=58 kg           40     235
6 months    MAL-ED           INDIA                          <52 kg           146     235
6 months    MAL-ED           INDIA                          [52-58) kg        49     235
6 months    MAL-ED           NEPAL                          >=58 kg           79     236
6 months    MAL-ED           NEPAL                          <52 kg            75     236
6 months    MAL-ED           NEPAL                          [52-58) kg        82     236
6 months    MAL-ED           PERU                           >=58 kg          100     272
6 months    MAL-ED           PERU                           <52 kg           107     272
6 months    MAL-ED           PERU                           [52-58) kg        65     272
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg          179     249
6 months    MAL-ED           SOUTH AFRICA                   <52 kg            29     249
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg        41     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247
6 months    NIH-Birth        BANGLADESH                     >=58 kg           71     537
6 months    NIH-Birth        BANGLADESH                     <52 kg           385     537
6 months    NIH-Birth        BANGLADESH                     [52-58) kg        81     537
6 months    NIH-Crypto       BANGLADESH                     >=58 kg          184     715
6 months    NIH-Crypto       BANGLADESH                     <52 kg           383     715
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg       148     715
6 months    PROBIT           BELARUS                        >=58 kg         9739   13064
6 months    PROBIT           BELARUS                        <52 kg          1083   13064
6 months    PROBIT           BELARUS                        [52-58) kg      2242   13064
6 months    PROVIDE          BANGLADESH                     >=58 kg          108     602
6 months    PROVIDE          BANGLADESH                     <52 kg           385     602
6 months    PROVIDE          BANGLADESH                     [52-58) kg       109     602
6 months    SAS-CompFeed     INDIA                          >=58 kg          103    1329
6 months    SAS-CompFeed     INDIA                          <52 kg          1011    1329
6 months    SAS-CompFeed     INDIA                          [52-58) kg       215    1329
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1988
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           324    1988
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1988
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg         4255    8110
6 months    ZVITAMBO         ZIMBABWE                       <52 kg          1713    8110
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg      2142    8110
24 months   JiVitA-3         BANGLADESH                     >=58 kg          195    8598
24 months   JiVitA-3         BANGLADESH                     <52 kg          7835    8598
24 months   JiVitA-3         BANGLADESH                     [52-58) kg       568    8598
24 months   LCNI-5           MALAWI                         >=58 kg           73     562
24 months   LCNI-5           MALAWI                         <52 kg           337     562
24 months   LCNI-5           MALAWI                         [52-58) kg       152     562
24 months   MAL-ED           BANGLADESH                     >=58 kg           40     212
24 months   MAL-ED           BANGLADESH                     <52 kg           135     212
24 months   MAL-ED           BANGLADESH                     [52-58) kg        37     212
24 months   MAL-ED           BRAZIL                         >=58 kg          109     168
24 months   MAL-ED           BRAZIL                         <52 kg            28     168
24 months   MAL-ED           BRAZIL                         [52-58) kg        31     168
24 months   MAL-ED           INDIA                          >=58 kg           38     226
24 months   MAL-ED           INDIA                          <52 kg           141     226
24 months   MAL-ED           INDIA                          [52-58) kg        47     226
24 months   MAL-ED           NEPAL                          >=58 kg           76     228
24 months   MAL-ED           NEPAL                          <52 kg            74     228
24 months   MAL-ED           NEPAL                          [52-58) kg        78     228
24 months   MAL-ED           PERU                           >=58 kg           77     201
24 months   MAL-ED           PERU                           <52 kg            75     201
24 months   MAL-ED           PERU                           [52-58) kg        49     201
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg          168     234
24 months   MAL-ED           SOUTH AFRICA                   <52 kg            28     234
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg        38     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214
24 months   NIH-Birth        BANGLADESH                     >=58 kg           56     428
24 months   NIH-Birth        BANGLADESH                     <52 kg           308     428
24 months   NIH-Birth        BANGLADESH                     [52-58) kg        64     428
24 months   NIH-Crypto       BANGLADESH                     >=58 kg          138     514
24 months   NIH-Crypto       BANGLADESH                     <52 kg           273     514
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg       103     514
24 months   PROBIT           BELARUS                        >=58 kg         2956    3948
24 months   PROBIT           BELARUS                        <52 kg           322    3948
24 months   PROBIT           BELARUS                        [52-58) kg       670    3948
24 months   PROVIDE          BANGLADESH                     >=58 kg          112     578
24 months   PROVIDE          BANGLADESH                     <52 kg           362     578
24 months   PROVIDE          BANGLADESH                     [52-58) kg       104     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg          170     421
24 months   ZVITAMBO         ZIMBABWE                       <52 kg           132     421
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       119     421


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/1ef82599-c124-485e-b91e-fdd33e9255ca/167192bd-da02-4561-acef-2f71d3b756f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1ef82599-c124-485e-b91e-fdd33e9255ca/167192bd-da02-4561-acef-2f71d3b756f3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1ef82599-c124-485e-b91e-fdd33e9255ca/167192bd-da02-4561-acef-2f71d3b756f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.6705866   -0.7681003   -0.5730728
Birth       JiVitA-3         BANGLADESH                     <52 kg               NA                -0.7877654   -0.8072179   -0.7683129
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           NA                -0.6914510   -0.7595704   -0.6233316
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.6446359   -0.9434647   -0.3458072
Birth       MAL-ED           BANGLADESH                     <52 kg               NA                -1.0213830   -1.2082582   -0.8345079
Birth       MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.9788070   -1.2856897   -0.6719244
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                 0.7453460    0.3535354    1.1371566
Birth       MAL-ED           BRAZIL                         <52 kg               NA                 0.0778702   -0.8211733    0.9769136
Birth       MAL-ED           BRAZIL                         [52-58) kg           NA                -0.0904237   -0.8017670    0.6209196
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.5266667   -1.1151354    0.0618020
Birth       MAL-ED           INDIA                          <52 kg               NA                -1.0517857   -1.4197431   -0.6838283
Birth       MAL-ED           INDIA                          [52-58) kg           NA                -1.0100000   -1.5034877   -0.5165123
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.4577778   -0.9265727    0.0110172
Birth       MAL-ED           NEPAL                          <52 kg               NA                -0.8900000   -1.4411585   -0.3388415
Birth       MAL-ED           NEPAL                          [52-58) kg           NA                -0.9630000   -1.6574487   -0.2685513
Birth       MAL-ED           PERU                           >=58 kg              NA                 0.0133830   -0.1815878    0.2083539
Birth       MAL-ED           PERU                           <52 kg               NA                -0.1693053   -0.3763997    0.0377891
Birth       MAL-ED           PERU                           [52-58) kg           NA                 0.1056102   -0.1586880    0.3699084
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1294388   -0.4006363    0.1417587
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               NA                -0.5494186   -1.3181204    0.2192832
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.1702177   -0.7705606    0.4301251
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.7576673    0.4422754    1.0730592
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.8287514    0.5190287    1.1384741
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.9133584    0.4996255    1.3270912
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.1030586   -1.3680293   -0.8380879
Birth       NIH-Birth        BANGLADESH                     <52 kg               NA                -1.4000372   -1.5083199   -1.2917545
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.3194871   -1.5898440   -1.0491302
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.8419367   -1.0065106   -0.6773628
Birth       NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.4486755   -1.5666099   -1.3307412
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.2014493   -1.3799500   -1.0229486
Birth       PROBIT           BELARUS                        >=58 kg              NA                -1.1191726   -1.3332857   -0.9050594
Birth       PROBIT           BELARUS                        <52 kg               NA                -1.2594519   -1.4769223   -1.0419814
Birth       PROBIT           BELARUS                        [52-58) kg           NA                -1.2091489   -1.4153860   -1.0029118
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -1.1902973   -1.3982136   -0.9823811
Birth       PROVIDE          BANGLADESH                     <52 kg               NA                -1.3265890   -1.4242172   -1.2289608
Birth       PROVIDE          BANGLADESH                     [52-58) kg           NA                -1.2722182   -1.4593377   -1.0850986
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.2729466   -0.6009891    0.0550959
Birth       SAS-CompFeed     INDIA                          <52 kg               NA                -0.7268742   -0.8759846   -0.5777638
Birth       SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.5972010   -0.8559677   -0.3384343
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3691383   -0.4095044   -0.3287722
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7057989   -0.7693270   -0.6422708
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5504401   -0.6072952   -0.4935850
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.4920757   -0.5922397   -0.3919117
6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                -0.6011010   -0.6212591   -0.5809428
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                -0.5404914   -0.6092761   -0.4717066
6 months    LCNI-5           MALAWI                         >=58 kg              NA                 0.6788355    0.5029390    0.8547320
6 months    LCNI-5           MALAWI                         <52 kg               NA                 0.3825373    0.2883652    0.4767094
6 months    LCNI-5           MALAWI                         [52-58) kg           NA                 0.4919122    0.3547020    0.6291225
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.1254676   -0.4410172    0.1900819
6 months    MAL-ED           BANGLADESH                     <52 kg               NA                -0.2360390   -0.3908652   -0.0812128
6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                 0.2076865   -0.0990769    0.5144499
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                 0.9946644    0.7874414    1.2018874
6 months    MAL-ED           BRAZIL                         <52 kg               NA                 0.9272278    0.5297266    1.3247290
6 months    MAL-ED           BRAZIL                         [52-58) kg           NA                 0.8625385    0.4371991    1.2878779
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.4426553   -0.6671167   -0.2181939
6 months    MAL-ED           INDIA                          <52 kg               NA                -0.8445237   -1.0186106   -0.6704368
6 months    MAL-ED           INDIA                          [52-58) kg           NA                -0.5154840   -0.7673582   -0.2636097
6 months    MAL-ED           NEPAL                          >=58 kg              NA                 0.3734931    0.1379576    0.6090285
6 months    MAL-ED           NEPAL                          <52 kg               NA                -0.2170927   -0.4491048    0.0149195
6 months    MAL-ED           NEPAL                          [52-58) kg           NA                 0.1692327   -0.0348993    0.3733646
6 months    MAL-ED           PERU                           >=58 kg              NA                 1.2962482    1.0886759    1.5038206
6 months    MAL-ED           PERU                           <52 kg               NA                 0.9456774    0.7613692    1.1299856
6 months    MAL-ED           PERU                           [52-58) kg           NA                 0.9158575    0.6444526    1.1872625
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.6395568    0.4593801    0.8197334
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                 0.0287665   -0.3938045    0.4513374
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                 0.3495952   -0.0517713    0.7509616
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5394820    0.3316209    0.7473431
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4553787    0.2217641    0.6889933
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.6581773    0.4008985    0.9154562
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1894678   -0.4000299    0.0210943
6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5246208   -0.6307657   -0.4184759
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.3111487   -0.5805756   -0.0417218
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.2447213    0.0690659    0.4203767
6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.1244339   -0.2322958   -0.0165719
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                 0.1260776   -0.0461541    0.2983093
6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.6052600    0.5454697    0.6650503
6 months    PROBIT           BELARUS                        <52 kg               NA                 0.4357783    0.3344871    0.5370695
6 months    PROBIT           BELARUS                        [52-58) kg           NA                 0.5235835    0.4562161    0.5909509
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                 0.2476100    0.0014576    0.4937625
6 months    PROVIDE          BANGLADESH                     <52 kg               NA                -0.3773216   -0.4779521   -0.2766911
6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.0987585   -0.2926774    0.0951605
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.4876264   -0.8167996   -0.1584531
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                -0.6890087   -0.8026849   -0.5753325
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.6807691   -0.8559388   -0.5055993
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1299837    0.0627869    0.1971806
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0604169   -0.1939695    0.0731357
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0096261   -0.1328413    0.1135892
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.4239486    0.3881399    0.4597573
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0297591   -0.0297482    0.0892664
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2507903    0.1991847    0.3023959
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.1672213   -1.3099342   -1.0245084
24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                -1.3074595   -1.3319409   -1.2829781
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.2137950   -1.3061534   -1.1214366
24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.2680898    0.0352307    0.5009489
24 months   LCNI-5           MALAWI                         <52 kg               NA                -0.1735372   -0.2768991   -0.0701752
24 months   LCNI-5           MALAWI                         [52-58) kg           NA                 0.0985853   -0.0579570    0.2551275
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.5221593   -0.8288466   -0.2154720
24 months   MAL-ED           BANGLADESH                     <52 kg               NA                -0.9482756   -1.0978140   -0.7987372
24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.5858679   -0.8961037   -0.2756321
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.5280668    0.2809815    0.7751522
24 months   MAL-ED           BRAZIL                         <52 kg               NA                 0.1864179   -0.3413119    0.7141477
24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                 0.1854380   -0.3853475    0.7562235
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.5260226   -0.8020742   -0.2499710
24 months   MAL-ED           INDIA                          <52 kg               NA                -1.0780199   -1.2295710   -0.9264689
24 months   MAL-ED           INDIA                          [52-58) kg           NA                -0.9145395   -1.1212416   -0.7078373
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0798849   -0.2951606    0.1353908
24 months   MAL-ED           NEPAL                          <52 kg               NA                -0.6251532   -0.8228463   -0.4274600
24 months   MAL-ED           NEPAL                          [52-58) kg           NA                -0.3458973   -0.5216781   -0.1701165
24 months   MAL-ED           PERU                           >=58 kg              NA                 0.3056038    0.1437689    0.4674388
24 months   MAL-ED           PERU                           <52 kg               NA                -0.1259213   -0.3380418    0.0861992
24 months   MAL-ED           PERU                           [52-58) kg           NA                 0.1774659   -0.1038935    0.4588253
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.4934568    0.3484466    0.6384669
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                 0.0106722   -0.3767722    0.3981166
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                 0.2127587   -0.1020933    0.5276107
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2213512    0.0172968    0.4254057
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1480694   -0.3463096    0.0501708
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.1194195   -0.1539423    0.3927814
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5291276   -0.7694522   -0.2888029
24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0334158   -1.1508092   -0.9160224
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.6352070   -0.8760285   -0.3943856
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.2867108   -0.4814415   -0.0919801
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.7975068   -0.9166216   -0.6783921
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.5201547   -0.7298057   -0.3105036
24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.7402363    0.6153138    0.8651588
24 months   PROBIT           BELARUS                        <52 kg               NA                 0.5144357    0.2944544    0.7344169
24 months   PROBIT           BELARUS                        [52-58) kg           NA                 0.5970566    0.4594164    0.7346968
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.3949531   -0.6187422   -0.1711639
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                -1.1235896   -1.2153207   -1.0318586
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.6644104   -0.8961849   -0.4326360
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.2260028   -1.3932280   -1.0587776
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2731977   -1.4518471   -1.0945483
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0264863   -1.2069973   -0.8459754


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7780622   -0.7970926   -0.7590319
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9533493   -1.0984355   -0.8082631
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4018033    0.0834093    0.7201973
Birth       MAL-ED           INDIA                          NA                   NA                -0.9678049   -1.2522118   -0.6833979
Birth       MAL-ED           NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       MAL-ED           PERU                           NA                   NA                -0.0429864   -0.1658406    0.0798678
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1930000   -0.4278634    0.0418634
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7583186    0.5636385    0.9529987
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2434730   -1.3276901   -1.1592559
Birth       PROBIT           BELARUS                        NA                   NA                -1.1473357   -1.3582781   -0.9363933
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.3060980   -1.3843247   -1.2278714
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6660770   -0.8389738   -0.4931801
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4824198   -0.5113303   -0.4535092
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5934435   -0.6129939   -0.5738931
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4518519    0.3806435    0.5230602
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9648518    0.8004118    1.1292917
6 months    MAL-ED           INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5788311    0.5205227    0.6371396
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6660835   -0.8034722   -0.5286949
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0780261    0.0247830    0.1312691
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2987004    0.2725093    0.3248915
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2974564   -1.3207535   -1.2741592
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0466281   -0.1286250    0.0353688
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4443651    0.2404149    0.6483153
24 months   MAL-ED           INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6995588    0.5828687    0.8162490
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1835154   -1.2835950   -1.0834359


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1171788   -0.2152489   -0.0191088
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0208644   -0.1375919    0.0958631
Birth       MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.3767471   -0.7298125   -0.0236818
Birth       MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.3341711   -0.7625444    0.0942022
Birth       MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.6674758   -1.6598118    0.3248602
Birth       MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.8357697   -1.6601589   -0.0113806
Birth       MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <52 kg               >=58 kg           -0.5251190   -1.2191566    0.1689185
Birth       MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.4833333   -1.2513343    0.2846676
Birth       MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.4322222   -1.1557859    0.2913414
Birth       MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.5052222   -1.3430932    0.3326487
Birth       MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <52 kg               >=58 kg           -0.1826883   -0.4678949    0.1025183
Birth       MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0922272   -0.2365409    0.4209952
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.4199798   -1.2374403    0.3974807
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0407789   -0.7031273    0.6215695
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0710841   -0.3705770    0.5127452
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.1556911   -0.3642001    0.6755822
Birth       NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.2969786   -0.5830367   -0.0109204
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.2164285   -0.5936206    0.1607636
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.6067388   -0.8090619   -0.4044158
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.3595126   -0.6033412   -0.1156840
Birth       PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1402793   -0.2472004   -0.0333581
Birth       PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0899763   -0.1490949   -0.0308576
Birth       PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.1362916   -0.3660058    0.0934225
Birth       PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0819208   -0.3615127    0.1976711
Birth       SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.4539275   -0.7234358   -0.1844193
Birth       SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.3242543   -0.5474123   -0.1010964
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3366606   -0.4118836   -0.2614377
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1813018   -0.2508995   -0.1117041
6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1090252   -0.2105032   -0.0075473
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0484157   -0.1739463    0.0771150
6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.2962982   -0.4958304   -0.0967659
6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1869233   -0.4100071    0.0361606
6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.1105713   -0.4624262    0.2412835
6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.3331542   -0.1070471    0.7733554
6 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0674366   -0.5149448    0.3800717
6 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.1321259   -0.6119401    0.3476883
6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           -0.4018684   -0.6863877   -0.1173492
6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.0728287   -0.4109855    0.2653282
6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5905857   -0.9214951   -0.2596764
6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2042604   -0.5162207    0.1076998
6 months    MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <52 kg               >=58 kg           -0.3505708   -0.6288609   -0.0722808
6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.3803907   -0.7220749   -0.0387065
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.6107903   -1.0711482   -0.1504324
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2899616   -0.7300475    0.1501243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0841033   -0.3976353    0.2294287
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.1186953   -0.2129815    0.4503721
6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3351530   -0.5705805   -0.0997255
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1216809   -0.4654271    0.2220652
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.3691552   -0.5758420   -0.1624683
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.1186437   -0.3645581    0.1272706
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1694817   -0.2509465   -0.0880170
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0816765   -0.1346940   -0.0286591
6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.6249317   -0.8909181   -0.3589452
6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.3463685   -0.6598772   -0.0328598
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.2013823   -0.4353125    0.0325479
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.1931427   -0.3992182    0.0129328
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1904006   -0.3397423   -0.0410590
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1396098   -0.2799872    0.0007676
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3941895   -0.4635616   -0.3248173
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1731583   -0.2359523   -0.1103644
24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1402382   -0.2856533    0.0051769
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0465737   -0.2217410    0.1285935
24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4416269   -0.6935984   -0.1896555
24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1695045   -0.4485812    0.1095722
24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.4261163   -0.7683893   -0.0838433
24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0637086   -0.5036421    0.3762250
24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.3416489   -0.9203040    0.2370062
24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.3426288   -0.9661475    0.2808899
24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.5519974   -0.8671602   -0.2368345
24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.3885169   -0.7335082   -0.0435255
24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5452682   -0.8394962   -0.2510403
24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2660124   -0.5454588    0.0134340
24 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.4315251   -0.7012381   -0.1618121
24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.1281379   -0.4533615    0.1970857
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.4827845   -0.9012248   -0.0643442
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2806981   -0.6284406    0.0670444
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3694207   -0.6551891   -0.0836522
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1019317   -0.4431454    0.2392820
24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.5042882   -0.7720213   -0.2365551
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1060795   -0.4461609    0.2340019
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.5107960   -0.7377542   -0.2838379
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.2334438   -0.5199792    0.0530915
24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.2258006   -0.4207311   -0.0308701
24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1431797   -0.2763549   -0.0100045
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.7286366   -0.9702095   -0.4870637
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.2694574   -0.5918383    0.0529235
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0471949   -0.2923352    0.1979454
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.1995165   -0.0470922    0.4461252


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1074757   -0.2027743   -0.0121771
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.3087134   -0.5937703   -0.0236564
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                -0.3435427   -0.6552862   -0.0317992
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.4411382   -1.0119516    0.1296752
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.3106838   -0.7526063    0.1312387
Birth       MAL-ED           PERU                           >=58 kg              NA                -0.0563694   -0.2165012    0.1037623
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0635612   -0.2316118    0.1044894
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0006513   -0.2536674    0.2549700
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2468632   -0.4932071   -0.0005193
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.4015363   -0.5469529   -0.2561197
Birth       PROBIT           BELARUS                        >=58 kg              NA                -0.0281631   -0.0454485   -0.0108777
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -0.1158007   -0.3037457    0.0721444
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.3931303   -0.6311062   -0.1551545
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1132815   -0.1408198   -0.0857432
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1013678   -0.2002686   -0.0024671
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -0.2269836   -0.3933412   -0.0606261
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0122087   -0.2909989    0.2665815
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0298127   -0.1467864    0.0871611
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.2607596   -0.4830892   -0.0384301
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.2630623   -0.4537602   -0.0723644
6 months    MAL-ED           PERU                           >=58 kg              NA                -0.2413892   -0.4061373   -0.0766410
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1104068   -0.2089597   -0.0118539
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0032607   -0.1698629    0.1633415
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2579360   -0.4611758   -0.0546962
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.2149591   -0.3670158   -0.0629023
6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0264289   -0.0378681   -0.0149897
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4463171   -0.6711778   -0.2214565
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.1784571   -0.3811286    0.0242143
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0519577   -0.0931720   -0.0107434
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1252482   -0.1506804   -0.0998161
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1302351   -0.2719178    0.0114476
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.3147179   -0.5293545   -0.1000813
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.2971331   -0.5759085   -0.0183578
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0837017   -0.2306700    0.0632666
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.4259022   -0.6805225   -0.1712819
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.2950274   -0.4669452   -0.1231095
24 months   MAL-ED           PERU                           >=58 kg              NA                -0.1944057   -0.3424656   -0.0463457
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1018150   -0.1840548   -0.0195752
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1665537   -0.3279040   -0.0052034
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3824515   -0.6121429   -0.1527600
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.3236394   -0.4847588   -0.1625200
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0406774   -0.0777990   -0.0035558
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4964829   -0.6973052   -0.2956607
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0424874   -0.0826471    0.1676219
