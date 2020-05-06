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

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        fage       n_cell       n  outcome_variable 
----------  --------------  -----------------------------  --------  -------  ------  -----------------
Birth       COHORTS         GUATEMALA                      >=38          222     735  whz              
Birth       COHORTS         GUATEMALA                      <32           337     735  whz              
Birth       COHORTS         GUATEMALA                      [32-38)       176     735  whz              
Birth       COHORTS         PHILIPPINES                    >=38          303    2797  whz              
Birth       COHORTS         PHILIPPINES                    <32          1981    2797  whz              
Birth       COHORTS         PHILIPPINES                    [32-38)       513    2797  whz              
Birth       MAL-ED          BANGLADESH                     >=38           61     128  whz              
Birth       MAL-ED          BANGLADESH                     <32            23     128  whz              
Birth       MAL-ED          BANGLADESH                     [32-38)        44     128  whz              
Birth       MAL-ED          BRAZIL                         >=38            5      16  whz              
Birth       MAL-ED          BRAZIL                         <32             1      16  whz              
Birth       MAL-ED          BRAZIL                         [32-38)        10      16  whz              
Birth       MAL-ED          INDIA                          >=38            7      25  whz              
Birth       MAL-ED          INDIA                          <32             8      25  whz              
Birth       MAL-ED          INDIA                          [32-38)        10      25  whz              
Birth       MAL-ED          NEPAL                          >=38            2       9  whz              
Birth       MAL-ED          NEPAL                          <32             2       9  whz              
Birth       MAL-ED          NEPAL                          [32-38)         5       9  whz              
Birth       MAL-ED          PERU                           >=38           23      67  whz              
Birth       MAL-ED          PERU                           <32            21      67  whz              
Birth       MAL-ED          PERU                           [32-38)        23      67  whz              
Birth       MAL-ED          SOUTH AFRICA                   >=38           16      30  whz              
Birth       MAL-ED          SOUTH AFRICA                   <32             5      30  whz              
Birth       MAL-ED          SOUTH AFRICA                   [32-38)         9      30  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           17      44  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      44  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      44  whz              
Birth       PROBIT          BELARUS                        >=38          604   13325  whz              
Birth       PROBIT          BELARUS                        <32         10671   13325  whz              
Birth       PROBIT          BELARUS                        [32-38)      2050   13325  whz              
Birth       SAS-CompFeed    INDIA                          >=38           34    1101  whz              
Birth       SAS-CompFeed    INDIA                          <32           923    1101  whz              
Birth       SAS-CompFeed    INDIA                          [32-38)       144    1101  whz              
6 months    COHORTS         GUATEMALA                      >=38          276     930  whz              
6 months    COHORTS         GUATEMALA                      <32           421     930  whz              
6 months    COHORTS         GUATEMALA                      [32-38)       233     930  whz              
6 months    COHORTS         PHILIPPINES                    >=38          299    2622  whz              
6 months    COHORTS         PHILIPPINES                    <32          1828    2622  whz              
6 months    COHORTS         PHILIPPINES                    [32-38)       495    2622  whz              
6 months    LCNI-5          MALAWI                         >=38           26     106  whz              
6 months    LCNI-5          MALAWI                         <32            56     106  whz              
6 months    LCNI-5          MALAWI                         [32-38)        24     106  whz              
6 months    MAL-ED          BANGLADESH                     >=38           69     150  whz              
6 months    MAL-ED          BANGLADESH                     <32            30     150  whz              
6 months    MAL-ED          BANGLADESH                     [32-38)        51     150  whz              
6 months    MAL-ED          BRAZIL                         >=38           30      79  whz              
6 months    MAL-ED          BRAZIL                         <32            18      79  whz              
6 months    MAL-ED          BRAZIL                         [32-38)        31      79  whz              
6 months    MAL-ED          INDIA                          >=38           36     161  whz              
6 months    MAL-ED          INDIA                          <32            53     161  whz              
6 months    MAL-ED          INDIA                          [32-38)        72     161  whz              
6 months    MAL-ED          NEPAL                          >=38           17      79  whz              
6 months    MAL-ED          NEPAL                          <32            15      79  whz              
6 months    MAL-ED          NEPAL                          [32-38)        47      79  whz              
6 months    MAL-ED          PERU                           >=38           27      83  whz              
6 months    MAL-ED          PERU                           <32            28      83  whz              
6 months    MAL-ED          PERU                           [32-38)        28      83  whz              
6 months    MAL-ED          SOUTH AFRICA                   >=38           64      89  whz              
6 months    MAL-ED          SOUTH AFRICA                   <32             9      89  whz              
6 months    MAL-ED          SOUTH AFRICA                   [32-38)        16      89  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100  whz              
6 months    PROBIT          BELARUS                        >=38          701   15179  whz              
6 months    PROBIT          BELARUS                        <32         12174   15179  whz              
6 months    PROBIT          BELARUS                        [32-38)      2304   15179  whz              
6 months    SAS-CompFeed    INDIA                          >=38           44    1331  whz              
6 months    SAS-CompFeed    INDIA                          <32          1122    1331  whz              
6 months    SAS-CompFeed    INDIA                          [32-38)       165    1331  whz              
6 months    SAS-FoodSuppl   INDIA                          >=38           40     380  whz              
6 months    SAS-FoodSuppl   INDIA                          <32           264     380  whz              
6 months    SAS-FoodSuppl   INDIA                          [32-38)        76     380  whz              
24 months   COHORTS         GUATEMALA                      >=38          287    1032  whz              
24 months   COHORTS         GUATEMALA                      <32           495    1032  whz              
24 months   COHORTS         GUATEMALA                      [32-38)       250    1032  whz              
24 months   COHORTS         PHILIPPINES                    >=38          271    2376  whz              
24 months   COHORTS         PHILIPPINES                    <32          1670    2376  whz              
24 months   COHORTS         PHILIPPINES                    [32-38)       435    2376  whz              
24 months   LCNI-5          MALAWI                         >=38           21      74  whz              
24 months   LCNI-5          MALAWI                         <32            37      74  whz              
24 months   LCNI-5          MALAWI                         [32-38)        16      74  whz              
24 months   MAL-ED          BANGLADESH                     >=38           69     151  whz              
24 months   MAL-ED          BANGLADESH                     <32            30     151  whz              
24 months   MAL-ED          BANGLADESH                     [32-38)        52     151  whz              
24 months   MAL-ED          BRAZIL                         >=38           30      79  whz              
24 months   MAL-ED          BRAZIL                         <32            18      79  whz              
24 months   MAL-ED          BRAZIL                         [32-38)        31      79  whz              
24 months   MAL-ED          INDIA                          >=38           36     161  whz              
24 months   MAL-ED          INDIA                          <32            53     161  whz              
24 months   MAL-ED          INDIA                          [32-38)        72     161  whz              
24 months   MAL-ED          NEPAL                          >=38           17      79  whz              
24 months   MAL-ED          NEPAL                          <32            15      79  whz              
24 months   MAL-ED          NEPAL                          [32-38)        47      79  whz              
24 months   MAL-ED          PERU                           >=38           26      79  whz              
24 months   MAL-ED          PERU                           <32            27      79  whz              
24 months   MAL-ED          PERU                           [32-38)        26      79  whz              
24 months   MAL-ED          SOUTH AFRICA                   >=38           65      89  whz              
24 months   MAL-ED          SOUTH AFRICA                   <32             8      89  whz              
24 months   MAL-ED          SOUTH AFRICA                   [32-38)        16      89  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100  whz              
24 months   PROBIT          BELARUS                        >=38          176    3847  whz              
24 months   PROBIT          BELARUS                        <32          3093    3847  whz              
24 months   PROBIT          BELARUS                        [32-38)       578    3847  whz              


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL

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
