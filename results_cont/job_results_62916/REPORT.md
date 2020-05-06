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
Birth       JiVitA-3         BANGLADESH                     >=58 kg          500   22432  haz              
Birth       JiVitA-3         BANGLADESH                     <52 kg         20479   22432  haz              
Birth       JiVitA-3         BANGLADESH                     [52-58) kg      1453   22432  haz              
Birth       MAL-ED           BANGLADESH                     >=58 kg           38     222  haz              
Birth       MAL-ED           BANGLADESH                     <52 kg           143     222  haz              
Birth       MAL-ED           BANGLADESH                     [52-58) kg        41     222  haz              
Birth       MAL-ED           BRAZIL                         >=58 kg           34      64  haz              
Birth       MAL-ED           BRAZIL                         <52 kg            15      64  haz              
Birth       MAL-ED           BRAZIL                         [52-58) kg        15      64  haz              
Birth       MAL-ED           INDIA                          >=58 kg            6      43  haz              
Birth       MAL-ED           INDIA                          <52 kg            29      43  haz              
Birth       MAL-ED           INDIA                          [52-58) kg         8      43  haz              
Birth       MAL-ED           NEPAL                          >=58 kg            9      27  haz              
Birth       MAL-ED           NEPAL                          <52 kg             8      27  haz              
Birth       MAL-ED           NEPAL                          [52-58) kg        10      27  haz              
Birth       MAL-ED           PERU                           >=58 kg           83     226  haz              
Birth       MAL-ED           PERU                           <52 kg            84     226  haz              
Birth       MAL-ED           PERU                           [52-58) kg        59     226  haz              
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg           69     101  haz              
Birth       MAL-ED           SOUTH AFRICA                   <52 kg            10     101  haz              
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg        22     101  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           47     122  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            45     122  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        30     122  haz              
Birth       NIH-Birth        BANGLADESH                     >=58 kg           80     608  haz              
Birth       NIH-Birth        BANGLADESH                     <52 kg           441     608  haz              
Birth       NIH-Birth        BANGLADESH                     [52-58) kg        87     608  haz              
Birth       NIH-Crypto       BANGLADESH                     >=58 kg          186     729  haz              
Birth       NIH-Crypto       BANGLADESH                     <52 kg           395     729  haz              
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg       148     729  haz              
Birth       PROBIT           BELARUS                        >=58 kg        10277   13770  haz              
Birth       PROBIT           BELARUS                        <52 kg          1131   13770  haz              
Birth       PROBIT           BELARUS                        [52-58) kg      2362   13770  haz              
Birth       PROVIDE          BANGLADESH                     >=58 kg           91     517  haz              
Birth       PROVIDE          BANGLADESH                     <52 kg           330     517  haz              
Birth       PROVIDE          BANGLADESH                     [52-58) kg        96     517  haz              
Birth       SAS-CompFeed     INDIA                          >=58 kg           91    1236  haz              
Birth       SAS-CompFeed     INDIA                          <52 kg           949    1236  haz              
Birth       SAS-CompFeed     INDIA                          [52-58) kg       196    1236  haz              
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg         5757   11031  haz              
Birth       ZVITAMBO         ZIMBABWE                       <52 kg          2365   11031  haz              
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg      2909   11031  haz              
6 months    JiVitA-3         BANGLADESH                     >=58 kg          407   16802  haz              
6 months    JiVitA-3         BANGLADESH                     <52 kg         15243   16802  haz              
6 months    JiVitA-3         BANGLADESH                     [52-58) kg      1152   16802  haz              
6 months    LCNI-5           MALAWI                         >=58 kg          114     837  haz              
6 months    LCNI-5           MALAWI                         <52 kg           504     837  haz              
6 months    LCNI-5           MALAWI                         [52-58) kg       219     837  haz              
6 months    MAL-ED           BANGLADESH                     >=58 kg           46     241  haz              
6 months    MAL-ED           BANGLADESH                     <52 kg           154     241  haz              
6 months    MAL-ED           BANGLADESH                     [52-58) kg        41     241  haz              
6 months    MAL-ED           BRAZIL                         >=58 kg          137     208  haz              
6 months    MAL-ED           BRAZIL                         <52 kg            37     208  haz              
6 months    MAL-ED           BRAZIL                         [52-58) kg        34     208  haz              
6 months    MAL-ED           INDIA                          >=58 kg           40     235  haz              
6 months    MAL-ED           INDIA                          <52 kg           146     235  haz              
6 months    MAL-ED           INDIA                          [52-58) kg        49     235  haz              
6 months    MAL-ED           NEPAL                          >=58 kg           79     236  haz              
6 months    MAL-ED           NEPAL                          <52 kg            75     236  haz              
6 months    MAL-ED           NEPAL                          [52-58) kg        82     236  haz              
6 months    MAL-ED           PERU                           >=58 kg          100     272  haz              
6 months    MAL-ED           PERU                           <52 kg           107     272  haz              
6 months    MAL-ED           PERU                           [52-58) kg        65     272  haz              
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg          179     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   <52 kg            29     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg        41     249  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247  haz              
6 months    NIH-Birth        BANGLADESH                     >=58 kg           71     537  haz              
6 months    NIH-Birth        BANGLADESH                     <52 kg           385     537  haz              
6 months    NIH-Birth        BANGLADESH                     [52-58) kg        81     537  haz              
6 months    NIH-Crypto       BANGLADESH                     >=58 kg          184     715  haz              
6 months    NIH-Crypto       BANGLADESH                     <52 kg           383     715  haz              
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg       148     715  haz              
6 months    PROBIT           BELARUS                        >=58 kg         9740   13066  haz              
6 months    PROBIT           BELARUS                        <52 kg          1083   13066  haz              
6 months    PROBIT           BELARUS                        [52-58) kg      2243   13066  haz              
6 months    PROVIDE          BANGLADESH                     >=58 kg          109     603  haz              
6 months    PROVIDE          BANGLADESH                     <52 kg           385     603  haz              
6 months    PROVIDE          BANGLADESH                     [52-58) kg       109     603  haz              
6 months    SAS-CompFeed     INDIA                          >=58 kg          103    1331  haz              
6 months    SAS-CompFeed     INDIA                          <52 kg          1014    1331  haz              
6 months    SAS-CompFeed     INDIA                          [52-58) kg       214    1331  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989  haz              
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg         4363    8254  haz              
6 months    ZVITAMBO         ZIMBABWE                       <52 kg          1726    8254  haz              
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg      2165    8254  haz              
24 months   JiVitA-3         BANGLADESH                     >=58 kg          197    8627  haz              
24 months   JiVitA-3         BANGLADESH                     <52 kg          7859    8627  haz              
24 months   JiVitA-3         BANGLADESH                     [52-58) kg       571    8627  haz              
24 months   LCNI-5           MALAWI                         >=58 kg           77     578  haz              
24 months   LCNI-5           MALAWI                         <52 kg           348     578  haz              
24 months   LCNI-5           MALAWI                         [52-58) kg       153     578  haz              
24 months   MAL-ED           BANGLADESH                     >=58 kg           40     212  haz              
24 months   MAL-ED           BANGLADESH                     <52 kg           135     212  haz              
24 months   MAL-ED           BANGLADESH                     [52-58) kg        37     212  haz              
24 months   MAL-ED           BRAZIL                         >=58 kg          109     168  haz              
24 months   MAL-ED           BRAZIL                         <52 kg            28     168  haz              
24 months   MAL-ED           BRAZIL                         [52-58) kg        31     168  haz              
24 months   MAL-ED           INDIA                          >=58 kg           38     226  haz              
24 months   MAL-ED           INDIA                          <52 kg           141     226  haz              
24 months   MAL-ED           INDIA                          [52-58) kg        47     226  haz              
24 months   MAL-ED           NEPAL                          >=58 kg           76     228  haz              
24 months   MAL-ED           NEPAL                          <52 kg            74     228  haz              
24 months   MAL-ED           NEPAL                          [52-58) kg        78     228  haz              
24 months   MAL-ED           PERU                           >=58 kg           77     201  haz              
24 months   MAL-ED           PERU                           <52 kg            75     201  haz              
24 months   MAL-ED           PERU                           [52-58) kg        49     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg          168     234  haz              
24 months   MAL-ED           SOUTH AFRICA                   <52 kg            28     234  haz              
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg        38     234  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214  haz              
24 months   NIH-Birth        BANGLADESH                     >=58 kg           57     429  haz              
24 months   NIH-Birth        BANGLADESH                     <52 kg           308     429  haz              
24 months   NIH-Birth        BANGLADESH                     [52-58) kg        64     429  haz              
24 months   NIH-Crypto       BANGLADESH                     >=58 kg          138     514  haz              
24 months   NIH-Crypto       BANGLADESH                     <52 kg           273     514  haz              
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg       103     514  haz              
24 months   PROBIT           BELARUS                        >=58 kg         3011    4013  haz              
24 months   PROBIT           BELARUS                        <52 kg           325    4013  haz              
24 months   PROBIT           BELARUS                        [52-58) kg       677    4013  haz              
24 months   PROVIDE          BANGLADESH                     >=58 kg          111     577  haz              
24 months   PROVIDE          BANGLADESH                     <52 kg           362     577  haz              
24 months   PROVIDE          BANGLADESH                     [52-58) kg       104     577  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg          833    1588  haz              
24 months   ZVITAMBO         ZIMBABWE                       <52 kg           334    1588  haz              
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       421    1588  haz              


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
