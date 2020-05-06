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

agecat      studyid         country     fhtcm           n_cell       n  outcome_variable 
----------  --------------  ----------  -------------  -------  ------  -----------------
Birth       COHORTS         GUATEMALA   >=167 cm            26     192  whz              
Birth       COHORTS         GUATEMALA   <162 cm            112     192  whz              
Birth       COHORTS         GUATEMALA   [162-167) cm        54     192  whz              
Birth       Keneba          GAMBIA      >=167 cm           733    1114  whz              
Birth       Keneba          GAMBIA      <162 cm             83    1114  whz              
Birth       Keneba          GAMBIA      [162-167) cm       298    1114  whz              
Birth       PROBIT          BELARUS     >=167 cm         11672   12461  whz              
Birth       PROBIT          BELARUS     <162 cm            168   12461  whz              
Birth       PROBIT          BELARUS     [162-167) cm       621   12461  whz              
Birth       SAS-CompFeed    INDIA       >=167 cm           312     657  whz              
Birth       SAS-CompFeed    INDIA       <162 cm            159     657  whz              
Birth       SAS-CompFeed    INDIA       [162-167) cm       186     657  whz              
6 months    COHORTS         GUATEMALA   >=167 cm            44     336  whz              
6 months    COHORTS         GUATEMALA   <162 cm            198     336  whz              
6 months    COHORTS         GUATEMALA   [162-167) cm        94     336  whz              
6 months    Keneba          GAMBIA      >=167 cm           979    1510  whz              
6 months    Keneba          GAMBIA      <162 cm            113    1510  whz              
6 months    Keneba          GAMBIA      [162-167) cm       418    1510  whz              
6 months    PROBIT          BELARUS     >=167 cm         11142   11891  whz              
6 months    PROBIT          BELARUS     <162 cm            156   11891  whz              
6 months    PROBIT          BELARUS     [162-167) cm       593   11891  whz              
6 months    SAS-CompFeed    INDIA       >=167 cm           370     807  whz              
6 months    SAS-CompFeed    INDIA       <162 cm            193     807  whz              
6 months    SAS-CompFeed    INDIA       [162-167) cm       244     807  whz              
6 months    SAS-FoodSuppl   INDIA       >=167 cm           102     371  whz              
6 months    SAS-FoodSuppl   INDIA       <162 cm            148     371  whz              
6 months    SAS-FoodSuppl   INDIA       [162-167) cm       121     371  whz              
24 months   COHORTS         GUATEMALA   >=167 cm            72     532  whz              
24 months   COHORTS         GUATEMALA   <162 cm            311     532  whz              
24 months   COHORTS         GUATEMALA   [162-167) cm       149     532  whz              
24 months   Keneba          GAMBIA      >=167 cm           823    1298  whz              
24 months   Keneba          GAMBIA      <162 cm             96    1298  whz              
24 months   Keneba          GAMBIA      [162-167) cm       379    1298  whz              
24 months   PROBIT          BELARUS     >=167 cm          3386    3608  whz              
24 months   PROBIT          BELARUS     <162 cm             52    3608  whz              
24 months   PROBIT          BELARUS     [162-167) cm       170    3608  whz              


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
