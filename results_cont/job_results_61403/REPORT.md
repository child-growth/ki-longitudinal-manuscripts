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
![](/tmp/a674c604-8176-49ed-bfc3-d1568202e556/9ace4da1-ff8d-4478-865f-45a45f694682/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a674c604-8176-49ed-bfc3-d1568202e556/9ace4da1-ff8d-4478-865f-45a45f694682/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a674c604-8176-49ed-bfc3-d1568202e556/9ace4da1-ff8d-4478-865f-45a45f694682/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.6729932   -0.7717687   -0.5742177
Birth       JiVitA-3         BANGLADESH                     <52 kg               NA                -0.7879266   -0.8073799   -0.7684732
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           NA                -0.6911746   -0.7586826   -0.6236667
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.6445429   -0.9497978   -0.3392880
Birth       MAL-ED           BANGLADESH                     <52 kg               NA                -1.0325732   -1.2183115   -0.8468348
Birth       MAL-ED           BANGLADESH                     [52-58) kg           NA                -1.0347674   -1.3574647   -0.7120702
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                 0.6535208    0.2616072    1.0454345
Birth       MAL-ED           BRAZIL                         <52 kg               NA                -0.2073627   -1.0475086    0.6327831
Birth       MAL-ED           BRAZIL                         [52-58) kg           NA                -0.3391759   -1.0241457    0.3457939
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.5266667   -1.1151354    0.0618020
Birth       MAL-ED           INDIA                          <52 kg               NA                -1.0517857   -1.4197431   -0.6838283
Birth       MAL-ED           INDIA                          [52-58) kg           NA                -1.0100000   -1.5034877   -0.5165123
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.4577778   -0.9265727    0.0110172
Birth       MAL-ED           NEPAL                          <52 kg               NA                -0.8900000   -1.4411585   -0.3388415
Birth       MAL-ED           NEPAL                          [52-58) kg           NA                -0.9630000   -1.6574487   -0.2685513
Birth       MAL-ED           PERU                           >=58 kg              NA                -0.0084687   -0.2047832    0.1878458
Birth       MAL-ED           PERU                           <52 kg               NA                -0.2299702   -0.4260959   -0.0338445
Birth       MAL-ED           PERU                           [52-58) kg           NA                 0.0776638   -0.1791345    0.3344621
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1457131   -0.4181282    0.1267019
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               NA                -1.0285047   -1.8679518   -0.1890576
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.2349132   -0.8228918    0.3530655
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.7545132    0.4336283    1.0753981
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.7881287    0.4678397    1.1084177
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.7949150    0.3859489    1.2038810
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0739817   -1.3340004   -0.8139630
Birth       NIH-Birth        BANGLADESH                     <52 kg               NA                -1.4082641   -1.5169304   -1.2995978
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.3130684   -1.5806010   -1.0455358
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.8663699   -1.0337598   -0.6989799
Birth       NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.4473556   -1.5638919   -1.3308193
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.1965567   -1.3765957   -1.0165178
Birth       PROBIT           BELARUS                        >=58 kg              NA                -1.1206868   -1.3351818   -0.9061919
Birth       PROBIT           BELARUS                        <52 kg               NA                -1.2543078   -1.4772174   -1.0313982
Birth       PROBIT           BELARUS                        [52-58) kg           NA                -1.2087249   -1.4132712   -1.0041785
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -1.1581059   -1.3589513   -0.9572606
Birth       PROVIDE          BANGLADESH                     <52 kg               NA                -1.3394457   -1.4361519   -1.2427394
Birth       PROVIDE          BANGLADESH                     [52-58) kg           NA                -1.2851618   -1.4699222   -1.1004015
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.2729466   -0.6009891    0.0550959
Birth       SAS-CompFeed     INDIA                          <52 kg               NA                -0.7268742   -0.8759846   -0.5777638
Birth       SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.5972010   -0.8559677   -0.3384343
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3694991   -0.4098647   -0.3291336
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7021623   -0.7655172   -0.6388074
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5539159   -0.6108559   -0.4969759
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.4992072   -0.5996810   -0.3987334
6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                -0.6010094   -0.6211747   -0.5808441
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                -0.5338229   -0.6021003   -0.4655456
6 months    LCNI-5           MALAWI                         >=58 kg              NA                 0.6847097    0.5096938    0.8597256
6 months    LCNI-5           MALAWI                         <52 kg               NA                 0.3822649    0.2882232    0.4763065
6 months    LCNI-5           MALAWI                         [52-58) kg           NA                 0.4865642    0.3494305    0.6236979
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.1163968   -0.4412579    0.2084642
6 months    MAL-ED           BANGLADESH                     <52 kg               NA                -0.2353486   -0.3906594   -0.0800379
6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                 0.2180566   -0.0894378    0.5255509
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                 0.9888512    0.7810220    1.1966804
6 months    MAL-ED           BRAZIL                         <52 kg               NA                 0.8729864    0.4488116    1.2971612
6 months    MAL-ED           BRAZIL                         [52-58) kg           NA                 0.8726843    0.4451628    1.3002058
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.4087110   -0.6204850   -0.1969370
6 months    MAL-ED           INDIA                          <52 kg               NA                -0.8425474   -1.0172975   -0.6677972
6 months    MAL-ED           INDIA                          [52-58) kg           NA                -0.5270283   -0.7789779   -0.2750787
6 months    MAL-ED           NEPAL                          >=58 kg              NA                 0.3346784    0.1035403    0.5658165
6 months    MAL-ED           NEPAL                          <52 kg               NA                -0.2806610   -0.5114542   -0.0498677
6 months    MAL-ED           NEPAL                          [52-58) kg           NA                 0.0859441   -0.1221951    0.2940833
6 months    MAL-ED           PERU                           >=58 kg              NA                 1.2794936    1.0649814    1.4940059
6 months    MAL-ED           PERU                           <52 kg               NA                 0.9466898    0.7605167    1.1328628
6 months    MAL-ED           PERU                           [52-58) kg           NA                 0.9362672    0.6622128    1.2103216
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.6450321    0.4654973    0.8245668
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                 0.0978527   -0.3987753    0.5944807
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                 0.3862779   -0.0304777    0.8030336
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5341337    0.3256753    0.7425921
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4273500    0.2016709    0.6530290
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.7012945    0.4564385    0.9461505
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2177594   -0.4276201   -0.0078987
6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5250624   -0.6317633   -0.4183615
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.2936396   -0.5505904   -0.0366887
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.2496064    0.0735643    0.4256485
6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.1154462   -0.2233549   -0.0075374
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                 0.1430694   -0.0291622    0.3153010
6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.6050002    0.5453258    0.6646747
6 months    PROBIT           BELARUS                        <52 kg               NA                 0.4303166    0.3284776    0.5321555
6 months    PROBIT           BELARUS                        [52-58) kg           NA                 0.5240736    0.4568409    0.5913062
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                 0.2559159    0.0107508    0.5010810
6 months    PROVIDE          BANGLADESH                     <52 kg               NA                -0.3817413   -0.4818004   -0.2816821
6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.0887889   -0.2860395    0.1084618
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.4876264   -0.8167996   -0.1584531
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                -0.6890087   -0.8026849   -0.5753325
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.6807691   -0.8559388   -0.5055993
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1222424    0.0552313    0.1892535
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0501262   -0.1839228    0.0836704
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0036659   -0.1240330    0.1167011
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.4265484    0.3906050    0.4624918
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0258426   -0.0345530    0.0862381
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2525189    0.2011332    0.3039046
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.1733463   -1.3156058   -1.0310867
24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                -1.3071548   -1.3316398   -1.2826698
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.2269214   -1.3175529   -1.1362898
24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.2466128    0.0030283    0.4901972
24 months   LCNI-5           MALAWI                         <52 kg               NA                -0.1648546   -0.2681017   -0.0616075
24 months   LCNI-5           MALAWI                         [52-58) kg           NA                 0.0626139   -0.0913479    0.2165756
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.5620394   -0.8554853   -0.2685935
24 months   MAL-ED           BANGLADESH                     <52 kg               NA                -0.9426851   -1.0878836   -0.7974867
24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.5335262   -0.8490121   -0.2180404
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.5403479    0.2904751    0.7902207
24 months   MAL-ED           BRAZIL                         <52 kg               NA                 0.2879426   -0.2599050    0.8357902
24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                 0.1218011   -0.4414027    0.6850049
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.5202812   -0.7988001   -0.2417623
24 months   MAL-ED           INDIA                          <52 kg               NA                -1.0835578   -1.2359621   -0.9311535
24 months   MAL-ED           INDIA                          [52-58) kg           NA                -0.8962608   -1.1013185   -0.6912032
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.1068795   -0.3251926    0.1114337
24 months   MAL-ED           NEPAL                          <52 kg               NA                -0.6454581   -0.8429192   -0.4479969
24 months   MAL-ED           NEPAL                          [52-58) kg           NA                -0.3725996   -0.5509487   -0.1942505
24 months   MAL-ED           PERU                           >=58 kg              NA                 0.2785666    0.1171580    0.4399752
24 months   MAL-ED           PERU                           <52 kg               NA                -0.0889317   -0.2949943    0.1171308
24 months   MAL-ED           PERU                           [52-58) kg           NA                 0.2076733   -0.1007203    0.5160668
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.4763376    0.3343567    0.6183184
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                 0.1243197   -0.2463463    0.4949858
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                 0.2505934   -0.0598594    0.5610462
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2017865   -0.0029620    0.4065350
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1422365   -0.3415646    0.0570915
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.1374707   -0.1225874    0.3975287
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5053407   -0.7365190   -0.2741623
24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0391461   -1.1567888   -0.9215034
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.6258405   -0.8586651   -0.3930158
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.2933054   -0.4897334   -0.0968774
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.8003035   -0.9184962   -0.6821109
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.5147124   -0.7277727   -0.3016522
24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.7424948    0.6181336    0.8668560
24 months   PROBIT           BELARUS                        <52 kg               NA                 0.5126542    0.3017265    0.7235820
24 months   PROBIT           BELARUS                        [52-58) kg           NA                 0.5884561    0.4492658    0.7276465
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4108863   -0.6240944   -0.1976782
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                -1.1265979   -1.2201176   -1.0330782
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.6542940   -0.8888680   -0.4197200
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.2135241   -1.3753581   -1.0516901
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2674048   -1.4496431   -1.0851665
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0612935   -1.2429044   -0.8796825


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
Birth       JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1149334   -0.2141909   -0.0156759
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0181815   -0.1356502    0.0992872
Birth       MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.3880303   -0.7461978   -0.0298628
Birth       MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.3902245   -0.8342290    0.0537799
Birth       MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.8608836   -1.8039016    0.0821344
Birth       MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.9926967   -1.7864490   -0.1989444
Birth       MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <52 kg               >=58 kg           -0.5251190   -1.2191566    0.1689185
Birth       MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.4833333   -1.2513343    0.2846676
Birth       MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.4322222   -1.1557859    0.2913414
Birth       MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.5052222   -1.3430932    0.3326487
Birth       MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <52 kg               >=58 kg           -0.2215015   -0.4997427    0.0567397
Birth       MAL-ED           PERU                           [52-58) kg           >=58 kg            0.0861325   -0.2370690    0.4093341
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.8827916   -1.7665735    0.0009903
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0892000   -0.7408319    0.5624319
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0336155   -0.4196418    0.4868728
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0404018   -0.4792346    0.5600382
Birth       NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3342824   -0.6162800   -0.0522849
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.2390867   -0.6114616    0.1332882
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.5809857   -0.7849320   -0.3770395
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.3301869   -0.5759722   -0.0844015
Birth       PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1336209   -0.2451799   -0.0220619
Birth       PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0880380   -0.1468676   -0.0292084
Birth       PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.1813397   -0.4048167    0.0421373
Birth       PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.1270559   -0.4001124    0.1460006
Birth       SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.4539275   -0.7234358   -0.1844193
Birth       SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.3242543   -0.5474123   -0.1010964
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3326632   -0.4077365   -0.2575899
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1844168   -0.2540652   -0.1147684
6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1018022   -0.2035252   -0.0000792
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0346157   -0.1602435    0.0910120
6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.3024448   -0.5011549   -0.1037347
6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1981454   -0.4205285    0.0242376
6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.1189518   -0.4799198    0.2420161
6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.3344534   -0.1134001    0.7823069
6 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1158648   -0.5880624    0.3563327
6 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.1161669   -0.5977668    0.3654330
6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           -0.4338363   -0.7067990   -0.1608737
6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.1183172   -0.4475395    0.2109050
6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.6153394   -0.9451548   -0.2855240
6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2487343   -0.5612095    0.0637409
6 months    MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <52 kg               >=58 kg           -0.3328039   -0.6175806   -0.0480272
6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.3432264   -0.6912688    0.0048159
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.5471794   -1.0783483   -0.0160104
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2587541   -0.7129684    0.1954602
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1067838   -0.4152300    0.2016625
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.1671608   -0.1546916    0.4890132
6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3073030   -0.5423586   -0.0722473
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0758801   -0.4084002    0.2566400
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.3650526   -0.5737945   -0.1563107
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.1065370   -0.3521767    0.1391027
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1746837   -0.2557145   -0.0936528
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0809267   -0.1327405   -0.0291128
6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.6376572   -0.9029557   -0.3723587
6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.3447047   -0.6595658   -0.0298437
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.2013823   -0.4353125    0.0325479
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.1931427   -0.3992182    0.0129328
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1723686   -0.3219917   -0.0227455
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1259084   -0.2636290    0.0118123
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4007058   -0.4709036   -0.3305081
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1740295   -0.2367188   -0.1113401
24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1338086   -0.2788149    0.0111978
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0535751   -0.2277308    0.1205806
24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4114674   -0.6752020   -0.1477327
24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1839989   -0.4716985    0.1037007
24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.3806457   -0.7103132   -0.0509783
24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0285131   -0.4056128    0.4626391
24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.2524053   -0.8541781    0.3493675
24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.4185468   -1.0365213    0.1994277
24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.5632766   -0.8813656   -0.2451875
24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.3759797   -0.7225807   -0.0293786
24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5385786   -0.8328832   -0.2442739
24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2657202   -0.5489955    0.0175552
24 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.3674983   -0.6311360   -0.1038606
24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0708933   -0.4215866    0.2798000
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.3520178   -0.7510026    0.0469669
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2257442   -0.5664375    0.1149491
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3440230   -0.6302523   -0.0577938
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0643158   -0.3940909    0.2654592
24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.5338054   -0.7936154   -0.2739953
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1204998   -0.4486912    0.2076916
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.5069981   -0.7355079   -0.2784883
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.2214070   -0.5113628    0.0685488
24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.2298406   -0.4146568   -0.0450243
24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1540386   -0.2883246   -0.0197527
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.7157116   -0.9485133   -0.4829099
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.2434077   -0.5604740    0.0736586
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0538807   -0.2977504    0.1899890
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.1522306   -0.0910912    0.3955524


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1050691   -0.2015186   -0.0086196
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.3088064   -0.5991213   -0.0184916
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                -0.2517176   -0.5591584    0.0557233
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.4411382   -1.0119516    0.1296752
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.3106838   -0.7526063    0.1312387
Birth       MAL-ED           PERU                           >=58 kg              NA                -0.0345177   -0.1927471    0.1237117
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0472869   -0.2168306    0.1222569
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0038054   -0.2517923    0.2594031
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2759401   -0.5179991   -0.0338810
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.3771031   -0.5249448   -0.2292614
Birth       PROBIT           BELARUS                        >=58 kg              NA                -0.0266488   -0.0437796   -0.0095181
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -0.1479921   -0.3301730    0.0341888
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.3931303   -0.6311062   -0.1551545
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1129207   -0.1404215   -0.0854199
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.0942363   -0.1933805    0.0049078
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -0.2328578   -0.3983777   -0.0673380
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0212795   -0.3087573    0.2661983
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0239994   -0.1409583    0.0929594
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.2947039   -0.5058459   -0.0835619
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.2242476   -0.4133510   -0.0351442
6 months    MAL-ED           PERU                           >=58 kg              NA                -0.2246346   -0.3961656   -0.0531036
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1158821   -0.2147798   -0.0169844
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0020876   -0.1644302    0.1686054
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2296443   -0.4320771   -0.0272116
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.2198442   -0.3723261   -0.0673623
6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0261691   -0.0374340   -0.0149042
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4546230   -0.6781276   -0.2311184
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.1784571   -0.3811286    0.0242143
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0442164   -0.0851744   -0.0032583
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1278480   -0.1534260   -0.1022701
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1241101   -0.2653542    0.0171339
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.2932409   -0.5182483   -0.0682334
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.2572531   -0.5244668    0.0099606
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0959828   -0.2427480    0.0507824
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.4316436   -0.6882512   -0.1750360
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.2680328   -0.4421922   -0.0938734
24 months   MAL-ED           PERU                           >=58 kg              NA                -0.1673684   -0.3151068   -0.0196300
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0846959   -0.1636245   -0.0057672
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1469890   -0.3082127    0.0142347
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4062384   -0.6283552   -0.1841216
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.3170448   -0.4791768   -0.1549128
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0429359   -0.0793487   -0.0065232
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4805497   -0.6717697   -0.2893297
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0300086   -0.0907345    0.1507517
