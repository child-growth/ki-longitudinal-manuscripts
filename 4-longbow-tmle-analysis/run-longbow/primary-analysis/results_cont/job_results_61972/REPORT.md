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

agecat      studyid          country                        mwtkg         n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -----------  -------  ------  -----------------
Birth       JiVitA-3         BANGLADESH                     >=58 kg          427   17995  whz              
Birth       JiVitA-3         BANGLADESH                     <52 kg         16351   17995  whz              
Birth       JiVitA-3         BANGLADESH                     [52-58) kg      1217   17995  whz              
Birth       MAL-ED           BANGLADESH                     >=58 kg           37     209  whz              
Birth       MAL-ED           BANGLADESH                     <52 kg           131     209  whz              
Birth       MAL-ED           BANGLADESH                     [52-58) kg        41     209  whz              
Birth       MAL-ED           BRAZIL                         >=58 kg           33      61  whz              
Birth       MAL-ED           BRAZIL                         <52 kg            14      61  whz              
Birth       MAL-ED           BRAZIL                         [52-58) kg        14      61  whz              
Birth       MAL-ED           INDIA                          >=58 kg            6      41  whz              
Birth       MAL-ED           INDIA                          <52 kg            28      41  whz              
Birth       MAL-ED           INDIA                          [52-58) kg         7      41  whz              
Birth       MAL-ED           NEPAL                          >=58 kg            9      26  whz              
Birth       MAL-ED           NEPAL                          <52 kg             7      26  whz              
Birth       MAL-ED           NEPAL                          [52-58) kg        10      26  whz              
Birth       MAL-ED           PERU                           >=58 kg           82     221  whz              
Birth       MAL-ED           PERU                           <52 kg            81     221  whz              
Birth       MAL-ED           PERU                           [52-58) kg        58     221  whz              
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg           69     100  whz              
Birth       MAL-ED           SOUTH AFRICA                   <52 kg            10     100  whz              
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg        21     100  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           44     113  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            40     113  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        29     113  whz              
Birth       NIH-Birth        BANGLADESH                     >=58 kg           79     575  whz              
Birth       NIH-Birth        BANGLADESH                     <52 kg           414     575  whz              
Birth       NIH-Birth        BANGLADESH                     [52-58) kg        82     575  whz              
Birth       NIH-Crypto       BANGLADESH                     >=58 kg          183     704  whz              
Birth       NIH-Crypto       BANGLADESH                     <52 kg           381     704  whz              
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg       140     704  whz              
Birth       PROBIT           BELARUS                        >=58 kg        10222   13694  whz              
Birth       PROBIT           BELARUS                        <52 kg          1124   13694  whz              
Birth       PROBIT           BELARUS                        [52-58) kg      2348   13694  whz              
Birth       PROVIDE          BANGLADESH                     >=58 kg           89     510  whz              
Birth       PROVIDE          BANGLADESH                     <52 kg           326     510  whz              
Birth       PROVIDE          BANGLADESH                     [52-58) kg        95     510  whz              
Birth       SAS-CompFeed     INDIA                          >=58 kg           89    1091  whz              
Birth       SAS-CompFeed     INDIA                          <52 kg           824    1091  whz              
Birth       SAS-CompFeed     INDIA                          [52-58) kg       178    1091  whz              
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg         5455   10286  whz              
Birth       ZVITAMBO         ZIMBABWE                       <52 kg          2142   10286  whz              
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg      2689   10286  whz              
6 months    JiVitA-3         BANGLADESH                     >=58 kg          408   16775  whz              
6 months    JiVitA-3         BANGLADESH                     <52 kg         15216   16775  whz              
6 months    JiVitA-3         BANGLADESH                     [52-58) kg      1151   16775  whz              
6 months    LCNI-5           MALAWI                         >=58 kg          114     837  whz              
6 months    LCNI-5           MALAWI                         <52 kg           504     837  whz              
6 months    LCNI-5           MALAWI                         [52-58) kg       219     837  whz              
6 months    MAL-ED           BANGLADESH                     >=58 kg           46     241  whz              
6 months    MAL-ED           BANGLADESH                     <52 kg           154     241  whz              
6 months    MAL-ED           BANGLADESH                     [52-58) kg        41     241  whz              
6 months    MAL-ED           BRAZIL                         >=58 kg          137     208  whz              
6 months    MAL-ED           BRAZIL                         <52 kg            37     208  whz              
6 months    MAL-ED           BRAZIL                         [52-58) kg        34     208  whz              
6 months    MAL-ED           INDIA                          >=58 kg           40     235  whz              
6 months    MAL-ED           INDIA                          <52 kg           146     235  whz              
6 months    MAL-ED           INDIA                          [52-58) kg        49     235  whz              
6 months    MAL-ED           NEPAL                          >=58 kg           79     236  whz              
6 months    MAL-ED           NEPAL                          <52 kg            75     236  whz              
6 months    MAL-ED           NEPAL                          [52-58) kg        82     236  whz              
6 months    MAL-ED           PERU                           >=58 kg          100     272  whz              
6 months    MAL-ED           PERU                           <52 kg           107     272  whz              
6 months    MAL-ED           PERU                           [52-58) kg        65     272  whz              
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg          179     249  whz              
6 months    MAL-ED           SOUTH AFRICA                   <52 kg            29     249  whz              
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg        41     249  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247  whz              
6 months    NIH-Birth        BANGLADESH                     >=58 kg           71     537  whz              
6 months    NIH-Birth        BANGLADESH                     <52 kg           385     537  whz              
6 months    NIH-Birth        BANGLADESH                     [52-58) kg        81     537  whz              
6 months    NIH-Crypto       BANGLADESH                     >=58 kg          184     715  whz              
6 months    NIH-Crypto       BANGLADESH                     <52 kg           383     715  whz              
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg       148     715  whz              
6 months    PROBIT           BELARUS                        >=58 kg         9739   13064  whz              
6 months    PROBIT           BELARUS                        <52 kg          1083   13064  whz              
6 months    PROBIT           BELARUS                        [52-58) kg      2242   13064  whz              
6 months    PROVIDE          BANGLADESH                     >=58 kg          108     602  whz              
6 months    PROVIDE          BANGLADESH                     <52 kg           385     602  whz              
6 months    PROVIDE          BANGLADESH                     [52-58) kg       109     602  whz              
6 months    SAS-CompFeed     INDIA                          >=58 kg          103    1329  whz              
6 months    SAS-CompFeed     INDIA                          <52 kg          1011    1329  whz              
6 months    SAS-CompFeed     INDIA                          [52-58) kg       215    1329  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1988  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           324    1988  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1988  whz              
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg         4255    8110  whz              
6 months    ZVITAMBO         ZIMBABWE                       <52 kg          1713    8110  whz              
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg      2142    8110  whz              
24 months   JiVitA-3         BANGLADESH                     >=58 kg          195    8598  whz              
24 months   JiVitA-3         BANGLADESH                     <52 kg          7835    8598  whz              
24 months   JiVitA-3         BANGLADESH                     [52-58) kg       568    8598  whz              
24 months   LCNI-5           MALAWI                         >=58 kg           73     562  whz              
24 months   LCNI-5           MALAWI                         <52 kg           337     562  whz              
24 months   LCNI-5           MALAWI                         [52-58) kg       152     562  whz              
24 months   MAL-ED           BANGLADESH                     >=58 kg           40     212  whz              
24 months   MAL-ED           BANGLADESH                     <52 kg           135     212  whz              
24 months   MAL-ED           BANGLADESH                     [52-58) kg        37     212  whz              
24 months   MAL-ED           BRAZIL                         >=58 kg          109     168  whz              
24 months   MAL-ED           BRAZIL                         <52 kg            28     168  whz              
24 months   MAL-ED           BRAZIL                         [52-58) kg        31     168  whz              
24 months   MAL-ED           INDIA                          >=58 kg           38     226  whz              
24 months   MAL-ED           INDIA                          <52 kg           141     226  whz              
24 months   MAL-ED           INDIA                          [52-58) kg        47     226  whz              
24 months   MAL-ED           NEPAL                          >=58 kg           76     228  whz              
24 months   MAL-ED           NEPAL                          <52 kg            74     228  whz              
24 months   MAL-ED           NEPAL                          [52-58) kg        78     228  whz              
24 months   MAL-ED           PERU                           >=58 kg           77     201  whz              
24 months   MAL-ED           PERU                           <52 kg            75     201  whz              
24 months   MAL-ED           PERU                           [52-58) kg        49     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg          168     234  whz              
24 months   MAL-ED           SOUTH AFRICA                   <52 kg            28     234  whz              
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg        38     234  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214  whz              
24 months   NIH-Birth        BANGLADESH                     >=58 kg           56     428  whz              
24 months   NIH-Birth        BANGLADESH                     <52 kg           308     428  whz              
24 months   NIH-Birth        BANGLADESH                     [52-58) kg        64     428  whz              
24 months   NIH-Crypto       BANGLADESH                     >=58 kg          138     514  whz              
24 months   NIH-Crypto       BANGLADESH                     <52 kg           273     514  whz              
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg       103     514  whz              
24 months   PROBIT           BELARUS                        >=58 kg         2956    3948  whz              
24 months   PROBIT           BELARUS                        <52 kg           322    3948  whz              
24 months   PROBIT           BELARUS                        [52-58) kg       670    3948  whz              
24 months   PROVIDE          BANGLADESH                     >=58 kg          112     578  whz              
24 months   PROVIDE          BANGLADESH                     <52 kg           362     578  whz              
24 months   PROVIDE          BANGLADESH                     [52-58) kg       104     578  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg          170     421  whz              
24 months   ZVITAMBO         ZIMBABWE                       <52 kg           132     421  whz              
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       119     421  whz              


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
![](/tmp/6e717c6c-a910-4715-a454-8838996b8d82/3b583c82-9ef2-41ab-969d-0387bf755444/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6e717c6c-a910-4715-a454-8838996b8d82/3b583c82-9ef2-41ab-969d-0387bf755444/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6e717c6c-a910-4715-a454-8838996b8d82/3b583c82-9ef2-41ab-969d-0387bf755444/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.6685337   -0.7666617   -0.5704057
Birth       JiVitA-3         BANGLADESH                     <52 kg               NA                -0.7878411   -0.8073129   -0.7683694
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           NA                -0.6929993   -0.7609383   -0.6250603
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.6394752   -0.9388487   -0.3401018
Birth       MAL-ED           BANGLADESH                     <52 kg               NA                -1.0227773   -1.2084161   -0.8371385
Birth       MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.9378535   -1.2384438   -0.6372631
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                 0.6714168    0.2711035    1.0717302
Birth       MAL-ED           BRAZIL                         <52 kg               NA                 0.1196489   -0.7776153    1.0169131
Birth       MAL-ED           BRAZIL                         [52-58) kg           NA                 0.0066004   -0.6339376    0.6471384
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.5266667   -1.1151354    0.0618020
Birth       MAL-ED           INDIA                          <52 kg               NA                -1.0517857   -1.4197431   -0.6838283
Birth       MAL-ED           INDIA                          [52-58) kg           NA                -1.0100000   -1.5034877   -0.5165123
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.4577778   -0.9265727    0.0110172
Birth       MAL-ED           NEPAL                          <52 kg               NA                -0.8900000   -1.4411585   -0.3388415
Birth       MAL-ED           NEPAL                          [52-58) kg           NA                -0.9630000   -1.6574487   -0.2685513
Birth       MAL-ED           PERU                           >=58 kg              NA                 0.0205698   -0.1768429    0.2179825
Birth       MAL-ED           PERU                           <52 kg               NA                -0.1433138   -0.3461706    0.0595431
Birth       MAL-ED           PERU                           [52-58) kg           NA                 0.0578849   -0.2186090    0.3343789
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1325801   -0.4033854    0.1382252
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               NA                -0.9439124   -1.7509511   -0.1368737
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.2754509   -0.8753072    0.3244054
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.7490288    0.4249633    1.0730943
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.8360259    0.5029115    1.1691403
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.7703223    0.3497819    1.1908627
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0676967   -1.3390685   -0.7963249
Birth       NIH-Birth        BANGLADESH                     <52 kg               NA                -1.4026180   -1.5116431   -1.2935928
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.2856774   -1.5578894   -1.0134654
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.8755070   -1.0364363   -0.7145776
Birth       NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.4556322   -1.5720912   -1.3391732
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.1910063   -1.3716410   -1.0103716
Birth       PROBIT           BELARUS                        >=58 kg              NA                -1.1158969   -1.3292371   -0.9025566
Birth       PROBIT           BELARUS                        <52 kg               NA                -1.2881160   -1.5167811   -1.0594510
Birth       PROBIT           BELARUS                        [52-58) kg           NA                -1.2203447   -1.4296739   -1.0110155
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -1.1873729   -1.3999573   -0.9747885
Birth       PROVIDE          BANGLADESH                     <52 kg               NA                -1.3307713   -1.4299661   -1.2315765
Birth       PROVIDE          BANGLADESH                     [52-58) kg           NA                -1.2834949   -1.4731612   -1.0938286
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.2729466   -0.6009891    0.0550959
Birth       SAS-CompFeed     INDIA                          <52 kg               NA                -0.7268742   -0.8759846   -0.5777638
Birth       SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.5972010   -0.8559677   -0.3384343
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3661909   -0.4066129   -0.3257690
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7102729   -0.7731784   -0.6473673
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5558925   -0.6125296   -0.4992553
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.4954144   -0.5961179   -0.3947108
6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                -0.6010206   -0.6211813   -0.5808600
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                -0.5410857   -0.6097685   -0.4724028
6 months    LCNI-5           MALAWI                         >=58 kg              NA                 0.6859030    0.5133978    0.8584082
6 months    LCNI-5           MALAWI                         <52 kg               NA                 0.3802649    0.2860345    0.4744952
6 months    LCNI-5           MALAWI                         [52-58) kg           NA                 0.4952004    0.3583900    0.6320108
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.1265258   -0.4497883    0.1967367
6 months    MAL-ED           BANGLADESH                     <52 kg               NA                -0.2287346   -0.3842739   -0.0731953
6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                 0.2316094   -0.0779946    0.5412133
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                 0.9781844    0.7723116    1.1840572
6 months    MAL-ED           BRAZIL                         <52 kg               NA                 0.8822322    0.5012724    1.2631920
6 months    MAL-ED           BRAZIL                         [52-58) kg           NA                 0.9582436    0.5082820    1.4082052
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.4306774   -0.6744006   -0.1869542
6 months    MAL-ED           INDIA                          <52 kg               NA                -0.8354018   -1.0145350   -0.6562686
6 months    MAL-ED           INDIA                          [52-58) kg           NA                -0.5774225   -0.8346433   -0.3202016
6 months    MAL-ED           NEPAL                          >=58 kg              NA                 0.3994221    0.1655176    0.6333267
6 months    MAL-ED           NEPAL                          <52 kg               NA                -0.1937275   -0.4306526    0.0431976
6 months    MAL-ED           NEPAL                          [52-58) kg           NA                 0.1859710   -0.0150452    0.3869873
6 months    MAL-ED           PERU                           >=58 kg              NA                 1.2960634    1.0863209    1.5058060
6 months    MAL-ED           PERU                           <52 kg               NA                 0.9549089    0.7672784    1.1425394
6 months    MAL-ED           PERU                           [52-58) kg           NA                 0.9100363    0.6385705    1.1815020
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.6515436    0.4718483    0.8312389
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                 0.0055559   -0.4675376    0.4786493
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                 0.3672868   -0.0519937    0.7865672
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5742886    0.3631870    0.7853903
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4678598    0.2342776    0.7014420
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.6060785    0.3425058    0.8696512
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1860127   -0.3876006    0.0155751
6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5236438   -0.6296556   -0.4176319
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.3320440   -0.6058360   -0.0582520
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.2493298    0.0710047    0.4276548
6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.1196420   -0.2266635   -0.0126206
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                 0.1211103   -0.0507547    0.2929753
6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.6049631    0.5454849    0.6644414
6 months    PROBIT           BELARUS                        <52 kg               NA                 0.4330684    0.3304530    0.5356839
6 months    PROBIT           BELARUS                        [52-58) kg           NA                 0.5251428    0.4584830    0.5918026
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                 0.2425503    0.0106660    0.4744346
6 months    PROVIDE          BANGLADESH                     <52 kg               NA                -0.3787150   -0.4789308   -0.2784992
6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.0882006   -0.2859459    0.1095447
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.4876264   -0.8167996   -0.1584531
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                -0.6890087   -0.8026849   -0.5753325
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.6807691   -0.8559388   -0.5055993
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1242015    0.0571110    0.1912920
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0404374   -0.1728473    0.0919725
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0053088   -0.1279698    0.1173522
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.4241972    0.3883487    0.4600457
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0286457   -0.0309344    0.0882258
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2520254    0.2008341    0.3032167
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.1509817   -1.2909364   -1.0110270
24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                -1.3072484   -1.3317472   -1.2827496
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.2259339   -1.3187177   -1.1331501
24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.2662104    0.0197795    0.5126413
24 months   LCNI-5           MALAWI                         <52 kg               NA                -0.1671625   -0.2703946   -0.0639303
24 months   LCNI-5           MALAWI                         [52-58) kg           NA                 0.0653434   -0.0881342    0.2188210
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.5351749   -0.8287564   -0.2415934
24 months   MAL-ED           BANGLADESH                     <52 kg               NA                -0.9454334   -1.0911493   -0.7997176
24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.5944363   -0.9028407   -0.2860319
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.5351373    0.2794345    0.7908400
24 months   MAL-ED           BRAZIL                         <52 kg               NA                 0.1768136   -0.3452514    0.6988786
24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                 0.1116147   -0.3934507    0.6166801
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.5278421   -0.7990347   -0.2566495
24 months   MAL-ED           INDIA                          <52 kg               NA                -1.0753233   -1.2282470   -0.9223996
24 months   MAL-ED           INDIA                          [52-58) kg           NA                -0.9191309   -1.1216498   -0.7166120
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.0816382   -0.3001868    0.1369105
24 months   MAL-ED           NEPAL                          <52 kg               NA                -0.6483339   -0.8351933   -0.4614746
24 months   MAL-ED           NEPAL                          [52-58) kg           NA                -0.3433948   -0.5154051   -0.1713844
24 months   MAL-ED           PERU                           >=58 kg              NA                 0.2634526    0.1035205    0.4233847
24 months   MAL-ED           PERU                           <52 kg               NA                -0.0918982   -0.3042840    0.1204876
24 months   MAL-ED           PERU                           [52-58) kg           NA                 0.2283610   -0.0524258    0.5091479
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.4570880    0.3159671    0.5982088
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                 0.1256722   -0.2404499    0.4917944
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                 0.2598867   -0.0542137    0.5739871
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2163057    0.0164261    0.4161852
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1506489   -0.3499479    0.0486502
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.1346321   -0.1348033    0.4040674
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5211838   -0.7565885   -0.2857791
24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0302331   -1.1476966   -0.9127696
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.6351509   -0.8703820   -0.3999199
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.2928308   -0.4903194   -0.0953422
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.8050105   -0.9243761   -0.6856450
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.5146411   -0.7309293   -0.2983530
24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.7412505    0.6137953    0.8687058
24 months   PROBIT           BELARUS                        <52 kg               NA                 0.5044886    0.2772574    0.7317199
24 months   PROBIT           BELARUS                        [52-58) kg           NA                 0.5927508    0.4518730    0.7336287
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.3946736   -0.6220819   -0.1672652
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                -1.1267092   -1.2196586   -1.0337598
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.6760202   -0.9041395   -0.4479009
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.2140633   -1.3790604   -1.0490662
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2502939   -1.4273001   -1.0732878
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0683289   -1.2550017   -0.8816560


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
Birth       JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1193074   -0.2178749   -0.0207400
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0244656   -0.1419050    0.0929738
Birth       MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.3833021   -0.7368881   -0.0297161
Birth       MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.2983782   -0.7225745    0.1258181
Birth       MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.5517679   -1.5374621    0.4339263
Birth       MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.6648164   -1.4281625    0.0985297
Birth       MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <52 kg               >=58 kg           -0.5251190   -1.2191566    0.1689185
Birth       MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.4833333   -1.2513343    0.2846676
Birth       MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.4322222   -1.1557859    0.2913414
Birth       MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.5052222   -1.3430932    0.3326487
Birth       MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <52 kg               >=58 kg           -0.1638835   -0.4474659    0.1196988
Birth       MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0373152   -0.3034081    0.3780384
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.8113323   -1.6657260    0.0430614
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1428708   -0.8016134    0.5158719
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0869971   -0.3789063    0.5529005
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0212935   -0.5109717    0.5535587
Birth       NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3349213   -0.6277609   -0.0420817
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.2179807   -0.6025420    0.1665807
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.5801252   -0.7789271   -0.3813234
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.3154993   -0.5573505   -0.0736482
Birth       PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1722192   -0.2842807   -0.0601577
Birth       PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1044478   -0.1635412   -0.0453545
Birth       PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.1433984   -0.3782806    0.0914838
Birth       PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0961220   -0.3821324    0.1898884
Birth       SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.4539275   -0.7234358   -0.1844193
Birth       SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.3242543   -0.5474123   -0.1010964
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3440820   -0.4187995   -0.2693645
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1897015   -0.2591438   -0.1202593
6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1056062   -0.2075902   -0.0036223
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0456713   -0.1716620    0.0803193
6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.3056381   -0.5021719   -0.1091043
6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1907025   -0.4109426    0.0295375
6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.1022089   -0.4620445    0.2576268
6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.3581352   -0.0904446    0.8067149
6 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0959522   -0.5280303    0.3361259
6 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.0199408   -0.5228072    0.4829257
6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           -0.4047244   -0.7109452   -0.0985036
6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.1467450   -0.5044553    0.2109653
6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5931496   -0.9266095   -0.2596897
6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2134511   -0.5212365    0.0943343
6 months    MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <52 kg               >=58 kg           -0.3411546   -0.6236303   -0.0586789
6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.3860272   -0.7303445   -0.0417099
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.6459877   -1.1557726   -0.1362028
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2842568   -0.7397177    0.1712041
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1064288   -0.4231481    0.2102905
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0317899   -0.3075727    0.3711524
6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3376310   -0.5651051   -0.1101569
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1460313   -0.4866944    0.1946319
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.3689718   -0.5769649   -0.1609788
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.1282195   -0.3758683    0.1194293
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1718947   -0.2543876   -0.0894018
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0798203   -0.1312907   -0.0283499
6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.6212653   -0.8738035   -0.3687270
6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.3307509   -0.6356359   -0.0258659
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.2013823   -0.4353125    0.0325479
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.1931427   -0.3992182    0.0129328
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1646389   -0.3129356   -0.0163422
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1295103   -0.2692138    0.0101933
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3955514   -0.4650111   -0.3260918
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1721718   -0.2346259   -0.1097176
24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1562667   -0.2988665   -0.0136669
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0749522   -0.2486507    0.0987463
24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4333728   -0.7000990   -0.1666467
24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.2008670   -0.4908145    0.0890806
24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.4102586   -0.7400521   -0.0804650
24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0592614   -0.4891259    0.3706032
24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.3583237   -0.9390180    0.2223707
24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.4235226   -0.9933024    0.1462572
24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.5474812   -0.8591445   -0.2358180
24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.3912888   -0.7299351   -0.0526425
24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5666958   -0.8537072   -0.2796843
24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2617566   -0.5413359    0.0178227
24 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.3553508   -0.6233583   -0.0873433
24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0350916   -0.3599138    0.2897307
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.3314157   -0.7238043    0.0609729
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1972013   -0.5417223    0.1473197
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3669545   -0.6503879   -0.0835212
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0816736   -0.4171469    0.2537997
24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.5090493   -0.7722346   -0.2458640
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1139671   -0.4474555    0.2195213
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.5121797   -0.7421824   -0.2821770
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.2218103   -0.5144980    0.0708773
24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.2367619   -0.4394682   -0.0340556
24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1484997   -0.2891888   -0.0078106
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.7320356   -0.9778434   -0.4862278
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.2813466   -0.6036933    0.0410000
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0362306   -0.2781944    0.2057332
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.1457344   -0.1031896    0.3946584


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1095286   -0.2052895   -0.0137676
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.3138741   -0.6009987   -0.0267494
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                -0.2696135   -0.5811179    0.0418908
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.4411382   -1.0119516    0.1296752
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.3106838   -0.7526063    0.1312387
Birth       MAL-ED           PERU                           >=58 kg              NA                -0.0635562   -0.2272767    0.1001643
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0604199   -0.2272102    0.1063704
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0092898   -0.2485710    0.2671506
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2822250   -0.5356198   -0.0288303
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.3679660   -0.5099046   -0.2260275
Birth       PROBIT           BELARUS                        >=58 kg              NA                -0.0314388   -0.0481115   -0.0147662
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -0.1187251   -0.3106285    0.0731782
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.3931303   -0.6311062   -0.1551545
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1162289   -0.1437887   -0.0886691
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0980291   -0.1974446    0.0013863
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -0.2340511   -0.3973011   -0.0708011
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0111506   -0.2966158    0.2743147
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0133326   -0.1300862    0.1034210
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.2727375   -0.5139572   -0.0315177
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.2889913   -0.4782838   -0.0996989
6 months    MAL-ED           PERU                           >=58 kg              NA                -0.2412044   -0.4087295   -0.0736793
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1223936   -0.2226591   -0.0221282
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0380673   -0.2081219    0.1319873
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2613910   -0.4565089   -0.0662732
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.2195675   -0.3729426   -0.0661924
6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0261320   -0.0375423   -0.0147217
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4412574   -0.6523054   -0.2302094
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.1784571   -0.3811286    0.0242143
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0461754   -0.0870757   -0.0052751
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1254968   -0.1509661   -0.1000275
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1464747   -0.2854246   -0.0075247
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.3128385   -0.5405231   -0.0851538
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.2841176   -0.5485281   -0.0197071
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0907722   -0.2432358    0.0616914
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.4240827   -0.6742569   -0.1739084
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.2932741   -0.4669631   -0.1195851
24 months   MAL-ED           PERU                           >=58 kg              NA                -0.1522544   -0.2986177   -0.0058911
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0654462   -0.1434895    0.0125971
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1615082   -0.3197571   -0.0032593
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3903952   -0.6156206   -0.1651699
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.3175194   -0.4810264   -0.1540124
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0416917   -0.0801702   -0.0032132
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4967624   -0.7023843   -0.2911405
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0305479   -0.0921448    0.1532405
