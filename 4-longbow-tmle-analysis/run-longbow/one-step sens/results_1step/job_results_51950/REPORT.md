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

**Outcome Variable:** haz

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
Birth       >=167 cm         12591   14006
Birth       <162 cm            399   14006
Birth       [162-167) cm      1016   14006
6 months    >=167 cm         12641   14921
6 months    <162 cm            808   14921
6 months    [162-167) cm      1472   14921
24 months   >=167 cm          4338    5495
24 months   <162 cm            457    5495
24 months   [162-167) cm       700    5495


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
![](/tmp/8fd52e0b-811d-43c3-b496-053f05c31450/ae8eb0cf-c171-4ac3-963e-9bd584419d6b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8fd52e0b-811d-43c3-b496-053f05c31450/ae8eb0cf-c171-4ac3-963e-9bd584419d6b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8fd52e0b-811d-43c3-b496-053f05c31450/ae8eb0cf-c171-4ac3-963e-9bd584419d6b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=167 cm             NA                 1.2079010    1.0864473    1.3293546
Birth       <162 cm              NA                 0.5790364    0.2603608    0.8977120
Birth       [162-167) cm         NA                 0.9413628    0.7394379    1.1432878
6 months    >=167 cm             NA                -0.1211679   -0.2239867   -0.0183491
6 months    <162 cm              NA                -1.1357341   -1.2856320   -0.9858361
6 months    [162-167) cm         NA                -0.5408296   -0.6635669   -0.4180923
24 months   >=167 cm             NA                -0.5004452   -0.7214222   -0.2794682
24 months   <162 cm              NA                -1.7704232   -1.9639972   -1.5768491
24 months   [162-167) cm         NA                -1.0691210   -1.2143223   -0.9239198


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                 1.1882743    1.1216419    1.2549067
6 months    NA                   NA                -0.1676222   -0.2168977   -0.1183468
24 months   NA                   NA                -0.7384630   -0.7941457   -0.6827803


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       <162 cm              >=167 cm          -0.6288646   -0.9786985   -0.2790306
Birth       [162-167) cm         >=167 cm          -0.2665381   -0.5173619   -0.0157143
6 months    >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    <162 cm              >=167 cm          -1.0145661   -1.2037611   -0.8253712
6 months    [162-167) cm         >=167 cm          -0.4196617   -0.5882634   -0.2510600
24 months   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   <162 cm              >=167 cm          -1.2699780   -1.5733545   -0.9666014
24 months   [162-167) cm         >=167 cm          -0.5686758   -0.8451290   -0.2922226


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=167 cm             NA                -0.0196266   -0.1210868    0.0818335
6 months    >=167 cm             NA                -0.0464543   -0.1432922    0.0503836
24 months   >=167 cm             NA                -0.2380178   -0.4599173   -0.0161183
