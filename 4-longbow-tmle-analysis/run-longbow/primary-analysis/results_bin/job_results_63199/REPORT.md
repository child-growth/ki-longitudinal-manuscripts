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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** fhtcm

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid         country     fhtcm           ever_sstunted   n_cell       n  outcome_variable 
------------  --------------  ----------  -------------  --------------  -------  ------  -----------------
0-24 months   COHORTS         GUATEMALA   >=167 cm                    0       37     496  ever_sstunted    
0-24 months   COHORTS         GUATEMALA   >=167 cm                    1       27     496  ever_sstunted    
0-24 months   COHORTS         GUATEMALA   <162 cm                     0      103     496  ever_sstunted    
0-24 months   COHORTS         GUATEMALA   <162 cm                     1      190     496  ever_sstunted    
0-24 months   COHORTS         GUATEMALA   [162-167) cm                0       77     496  ever_sstunted    
0-24 months   COHORTS         GUATEMALA   [162-167) cm                1       62     496  ever_sstunted    
0-24 months   Keneba          GAMBIA      >=167 cm                    0      972    1929  ever_sstunted    
0-24 months   Keneba          GAMBIA      >=167 cm                    1      273    1929  ever_sstunted    
0-24 months   Keneba          GAMBIA      <162 cm                     0       98    1929  ever_sstunted    
0-24 months   Keneba          GAMBIA      <162 cm                     1       34    1929  ever_sstunted    
0-24 months   Keneba          GAMBIA      [162-167) cm                0      413    1929  ever_sstunted    
0-24 months   Keneba          GAMBIA      [162-167) cm                1      139    1929  ever_sstunted    
0-24 months   PROBIT          BELARUS     >=167 cm                    0    11452   12537  ever_sstunted    
0-24 months   PROBIT          BELARUS     >=167 cm                    1      292   12537  ever_sstunted    
0-24 months   PROBIT          BELARUS     <162 cm                     0      154   12537  ever_sstunted    
0-24 months   PROBIT          BELARUS     <162 cm                     1       14   12537  ever_sstunted    
0-24 months   PROBIT          BELARUS     [162-167) cm                0      597   12537  ever_sstunted    
0-24 months   PROBIT          BELARUS     [162-167) cm                1       28   12537  ever_sstunted    
0-24 months   SAS-CompFeed    INDIA       >=167 cm                    0      307     907  ever_sstunted    
0-24 months   SAS-CompFeed    INDIA       >=167 cm                    1      103     907  ever_sstunted    
0-24 months   SAS-CompFeed    INDIA       <162 cm                     0      130     907  ever_sstunted    
0-24 months   SAS-CompFeed    INDIA       <162 cm                     1      100     907  ever_sstunted    
0-24 months   SAS-CompFeed    INDIA       [162-167) cm                0      159     907  ever_sstunted    
0-24 months   SAS-CompFeed    INDIA       [162-167) cm                1      108     907  ever_sstunted    
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                    0       62     399  ever_sstunted    
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                    1       44     399  ever_sstunted    
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                     0       69     399  ever_sstunted    
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                     1       94     399  ever_sstunted    
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm                0       72     399  ever_sstunted    
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm                1       58     399  ever_sstunted    
0-6 months    COHORTS         GUATEMALA   >=167 cm                    0       44     337  ever_sstunted    
0-6 months    COHORTS         GUATEMALA   >=167 cm                    1        5     337  ever_sstunted    
0-6 months    COHORTS         GUATEMALA   <162 cm                     0      166     337  ever_sstunted    
0-6 months    COHORTS         GUATEMALA   <162 cm                     1       30     337  ever_sstunted    
0-6 months    COHORTS         GUATEMALA   [162-167) cm                0       86     337  ever_sstunted    
0-6 months    COHORTS         GUATEMALA   [162-167) cm                1        6     337  ever_sstunted    
0-6 months    Keneba          GAMBIA      >=167 cm                    0      987    1723  ever_sstunted    
0-6 months    Keneba          GAMBIA      >=167 cm                    1      126    1723  ever_sstunted    
0-6 months    Keneba          GAMBIA      <162 cm                     0      116    1723  ever_sstunted    
0-6 months    Keneba          GAMBIA      <162 cm                     1        8    1723  ever_sstunted    
0-6 months    Keneba          GAMBIA      [162-167) cm                0      431    1723  ever_sstunted    
0-6 months    Keneba          GAMBIA      [162-167) cm                1       55    1723  ever_sstunted    
0-6 months    PROBIT          BELARUS     >=167 cm                    0    11642   12537  ever_sstunted    
0-6 months    PROBIT          BELARUS     >=167 cm                    1      102   12537  ever_sstunted    
0-6 months    PROBIT          BELARUS     <162 cm                     0      164   12537  ever_sstunted    
0-6 months    PROBIT          BELARUS     <162 cm                     1        4   12537  ever_sstunted    
0-6 months    PROBIT          BELARUS     [162-167) cm                0      617   12537  ever_sstunted    
0-6 months    PROBIT          BELARUS     [162-167) cm                1        8   12537  ever_sstunted    
0-6 months    SAS-CompFeed    INDIA       >=167 cm                    0      372     905  ever_sstunted    
0-6 months    SAS-CompFeed    INDIA       >=167 cm                    1       38     905  ever_sstunted    
0-6 months    SAS-CompFeed    INDIA       <162 cm                     0      178     905  ever_sstunted    
0-6 months    SAS-CompFeed    INDIA       <162 cm                     1       51     905  ever_sstunted    
0-6 months    SAS-CompFeed    INDIA       [162-167) cm                0      222     905  ever_sstunted    
0-6 months    SAS-CompFeed    INDIA       [162-167) cm                1       44     905  ever_sstunted    
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                    0       99     397  ever_sstunted    
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                    1        7     397  ever_sstunted    
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                     0      138     397  ever_sstunted    
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                     1       24     397  ever_sstunted    
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm                0      114     397  ever_sstunted    
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm                1       15     397  ever_sstunted    


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
