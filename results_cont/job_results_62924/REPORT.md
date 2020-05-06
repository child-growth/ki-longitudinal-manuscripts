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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        parity    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      1            112     852  haz              
Birth       COHORTS          GUATEMALA                      2            137     852  haz              
Birth       COHORTS          GUATEMALA                      3+           603     852  haz              
Birth       COHORTS          INDIA                          1            696    4122  haz              
Birth       COHORTS          INDIA                          2           1037    4122  haz              
Birth       COHORTS          INDIA                          3+          2389    4122  haz              
Birth       COHORTS          PHILIPPINES                    1            675    3050  haz              
Birth       COHORTS          PHILIPPINES                    2            687    3050  haz              
Birth       COHORTS          PHILIPPINES                    3+          1688    3050  haz              
Birth       GMS-Nepal        NEPAL                          1            211     696  haz              
Birth       GMS-Nepal        NEPAL                          2            180     696  haz              
Birth       GMS-Nepal        NEPAL                          3+           305     696  haz              
Birth       JiVitA-3         BANGLADESH                     1           7456   22455  haz              
Birth       JiVitA-3         BANGLADESH                     2           7615   22455  haz              
Birth       JiVitA-3         BANGLADESH                     3+          7384   22455  haz              
Birth       Keneba           GAMBIA                         1            156    1407  haz              
Birth       Keneba           GAMBIA                         2            146    1407  haz              
Birth       Keneba           GAMBIA                         3+          1105    1407  haz              
Birth       PROVIDE          BANGLADESH                     1            206     539  haz              
Birth       PROVIDE          BANGLADESH                     2            183     539  haz              
Birth       PROVIDE          BANGLADESH                     3+           150     539  haz              
Birth       SAS-CompFeed     INDIA                          1            361    1252  haz              
Birth       SAS-CompFeed     INDIA                          2            289    1252  haz              
Birth       SAS-CompFeed     INDIA                          3+           602    1252  haz              
Birth       ZVITAMBO         ZIMBABWE                       1           5989   13874  haz              
Birth       ZVITAMBO         ZIMBABWE                       2           4144   13874  haz              
Birth       ZVITAMBO         ZIMBABWE                       3+          3741   13874  haz              
6 months    COHORTS          GUATEMALA                      1            132     961  haz              
6 months    COHORTS          GUATEMALA                      2            139     961  haz              
6 months    COHORTS          GUATEMALA                      3+           690     961  haz              
6 months    COHORTS          INDIA                          1            740    4291  haz              
6 months    COHORTS          INDIA                          2           1096    4291  haz              
6 months    COHORTS          INDIA                          3+          2455    4291  haz              
6 months    COHORTS          PHILIPPINES                    1            574    2708  haz              
6 months    COHORTS          PHILIPPINES                    2            606    2708  haz              
6 months    COHORTS          PHILIPPINES                    3+          1528    2708  haz              
6 months    GMS-Nepal        NEPAL                          1            153     564  haz              
6 months    GMS-Nepal        NEPAL                          2            149     564  haz              
6 months    GMS-Nepal        NEPAL                          3+           262     564  haz              
6 months    JiVitA-3         BANGLADESH                     1           6396   16811  haz              
6 months    JiVitA-3         BANGLADESH                     2           5700   16811  haz              
6 months    JiVitA-3         BANGLADESH                     3+          4715   16811  haz              
6 months    Keneba           GAMBIA                         1            194    1623  haz              
6 months    Keneba           GAMBIA                         2            164    1623  haz              
6 months    Keneba           GAMBIA                         3+          1265    1623  haz              
6 months    PROVIDE          BANGLADESH                     1            218     604  haz              
6 months    PROVIDE          BANGLADESH                     2            222     604  haz              
6 months    PROVIDE          BANGLADESH                     3+           164     604  haz              
6 months    SAS-CompFeed     INDIA                          1            392    1336  haz              
6 months    SAS-CompFeed     INDIA                          2            304    1336  haz              
6 months    SAS-CompFeed     INDIA                          3+           640    1336  haz              
6 months    SAS-FoodSuppl    INDIA                          1              7     380  haz              
6 months    SAS-FoodSuppl    INDIA                          2             72     380  haz              
6 months    SAS-FoodSuppl    INDIA                          3+           301     380  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            680    1995  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1995  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1995  haz              
6 months    ZVITAMBO         ZIMBABWE                       1           3466    8668  haz              
6 months    ZVITAMBO         ZIMBABWE                       2           2638    8668  haz              
6 months    ZVITAMBO         ZIMBABWE                       3+          2564    8668  haz              
24 months   COHORTS          GUATEMALA                      1            166    1064  haz              
24 months   COHORTS          GUATEMALA                      2            151    1064  haz              
24 months   COHORTS          GUATEMALA                      3+           747    1064  haz              
24 months   COHORTS          INDIA                          1            564    3380  haz              
24 months   COHORTS          INDIA                          2            848    3380  haz              
24 months   COHORTS          INDIA                          3+          1968    3380  haz              
24 months   COHORTS          PHILIPPINES                    1            524    2445  haz              
24 months   COHORTS          PHILIPPINES                    2            544    2445  haz              
24 months   COHORTS          PHILIPPINES                    3+          1377    2445  haz              
24 months   GMS-Nepal        NEPAL                          1            130     488  haz              
24 months   GMS-Nepal        NEPAL                          2            130     488  haz              
24 months   GMS-Nepal        NEPAL                          3+           228     488  haz              
24 months   JiVitA-3         BANGLADESH                     1           3173    8632  haz              
24 months   JiVitA-3         BANGLADESH                     2           2923    8632  haz              
24 months   JiVitA-3         BANGLADESH                     3+          2536    8632  haz              
24 months   Keneba           GAMBIA                         1            137    1376  haz              
24 months   Keneba           GAMBIA                         2            139    1376  haz              
24 months   Keneba           GAMBIA                         3+          1100    1376  haz              
24 months   PROVIDE          BANGLADESH                     1            211     578  haz              
24 months   PROVIDE          BANGLADESH                     2            213     578  haz              
24 months   PROVIDE          BANGLADESH                     3+           154     578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       1            640    1639  haz              
24 months   ZVITAMBO         ZIMBABWE                       2            507    1639  haz              
24 months   ZVITAMBO         ZIMBABWE                       3+           492    1639  haz              


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
