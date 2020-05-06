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




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
