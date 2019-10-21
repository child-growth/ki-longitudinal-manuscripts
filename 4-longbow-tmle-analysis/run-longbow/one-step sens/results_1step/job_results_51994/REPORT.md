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

## Data Summary

agecat      fhtcm           n_cell       n
----------  -------------  -------  ------
Birth       >=167 cm         12466   13835
Birth       <162 cm            381   13835
Birth       [162-167) cm       988   13835
6 months    >=167 cm         12638   14916
6 months    <162 cm            808   14916
6 months    [162-167) cm      1470   14916
24 months   >=167 cm          4282    5439
24 months   <162 cm            459    5439
24 months   [162-167) cm       698    5439


The following strata were considered:

* agecat: 24 months
* agecat: 6 months
* agecat: Birth



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/3074ab46-2ea5-43b4-a5f6-a0f3f6d0a889/75dd86a5-3364-4258-983c-55440661c26d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3074ab46-2ea5-43b4-a5f6-a0f3f6d0a889/75dd86a5-3364-4258-983c-55440661c26d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3074ab46-2ea5-43b4-a5f6-a0f3f6d0a889/75dd86a5-3364-4258-983c-55440661c26d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=167 cm             NA                -0.9029681   -1.0838892   -0.7220471
Birth       <162 cm              NA                -0.4364032   -1.0820191    0.2092127
Birth       [162-167) cm         NA                -0.8457943   -1.2374685   -0.4541201
6 months    >=167 cm             NA                 0.3863874    0.3122153    0.4605594
6 months    <162 cm              NA                 0.2520357    0.0818431    0.4222284
6 months    [162-167) cm         NA                 0.2949351    0.1943241    0.3955462
24 months   >=167 cm             NA                 0.2690541    0.1831480    0.3549602
24 months   <162 cm              NA                -0.2529543   -0.4898041   -0.0161045
24 months   [162-167) cm         NA                 0.0891159   -0.0284595    0.2066913


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.9022653   -0.9990880   -0.8054425
6 months    NA                   NA                 0.3807690    0.3307544    0.4307835
24 months   NA                   NA                 0.2300068    0.1846028    0.2754107


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       <162 cm              >=167 cm           0.4665649   -0.2247485    1.1578784
Birth       [162-167) cm         >=167 cm           0.0571738   -0.4113837    0.5257314
6 months    >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    <162 cm              >=167 cm          -0.1343517   -0.3192382    0.0505349
6 months    [162-167) cm         >=167 cm          -0.0914522   -0.2161181    0.0332136
24 months   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   <162 cm              >=167 cm          -0.5220084   -0.7786396   -0.2653772
24 months   [162-167) cm         >=167 cm          -0.1799382   -0.3361317   -0.0237446


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       >=167 cm             NA                 0.0007028   -0.1550597   0.1564654
6 months    >=167 cm             NA                -0.0056184   -0.0642996   0.0530628
24 months   >=167 cm             NA                -0.0390473   -0.1130035   0.0349089
