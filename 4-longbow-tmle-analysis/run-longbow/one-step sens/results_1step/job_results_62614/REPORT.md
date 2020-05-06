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






```
## Warning in set(data, , char_cols, data[, lapply(.SD, as.factor), .SDcols =
## char_cols]): length(LHS)==0; no columns to delete or assign RHS to.
```

## Methods
## Outcome Variable

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      mhtcm           n_cell       n  outcome_variable 
----------  -------------  -------  ------  -----------------
Birth       >=155 cm         26760   50890  whz              
Birth       <151 cm          15248   50890  whz              
Birth       [151-155) cm      8882   50890  whz              
6 months    >=155 cm         27116   52591  whz              
6 months    <151 cm          16148   52591  whz              
6 months    [151-155) cm      9327   52591  whz              
24 months   >=155 cm          9097   23309  whz              
24 months   <151 cm           9412   23309  whz              
24 months   [151-155) cm      4800   23309  whz              


The following strata were considered:

* agecat: 24 months
* agecat: 6 months
* agecat: Birth



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/568def56-0dde-434b-a8b4-8f7af4d8db02/b2be0712-cb89-4de8-b76d-e783362968ea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/568def56-0dde-434b-a8b4-8f7af4d8db02/b2be0712-cb89-4de8-b76d-e783362968ea/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/568def56-0dde-434b-a8b4-8f7af4d8db02/b2be0712-cb89-4de8-b76d-e783362968ea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=155 cm             NA                -0.8284564   -0.8571346   -0.7997782
Birth       <151 cm              NA                -0.9735158   -1.0397567   -0.9072750
Birth       [151-155) cm         NA                -0.8651387   -0.9148538   -0.8154236
6 months    >=155 cm             NA                -0.0007913   -0.0240637    0.0224811
6 months    <151 cm              NA                -0.3043098   -0.3488393   -0.2597803
6 months    [151-155) cm         NA                -0.0796838   -0.1202208   -0.0391469
24 months   >=155 cm             NA                -0.4899381   -0.5266213   -0.4532548
24 months   <151 cm              NA                -1.0917650   -1.1250453   -1.0584848
24 months   [151-155) cm         NA                -0.6059812   -0.6484276   -0.5635348


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8548266   -0.8749419   -0.8347112
6 months    NA                   NA                -0.0546951   -0.0713811   -0.0380092
24 months   NA                   NA                -0.6185399   -0.6382722   -0.5988077


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       <151 cm              >=155 cm          -0.1450594   -0.2171382   -0.0729807
Birth       [151-155) cm         >=155 cm          -0.0366823   -0.0938760    0.0205114
6 months    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    <151 cm              >=155 cm          -0.3035185   -0.3538704   -0.2531666
6 months    [151-155) cm         >=155 cm          -0.0788926   -0.1256468   -0.0321383
24 months   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   <151 cm              >=155 cm          -0.6018270   -0.6511145   -0.5525395
24 months   [151-155) cm         >=155 cm          -0.1160432   -0.1720405   -0.0600459


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=155 cm             NA                -0.0263702   -0.0473537   -0.0053867
6 months    >=155 cm             NA                -0.0539038   -0.0714540   -0.0363537
24 months   >=155 cm             NA                -0.1286019   -0.1597425   -0.0974613
