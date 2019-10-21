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

agecat      mhtcm           n_cell       n
----------  -------------  -------  ------
Birth       >=155 cm         26848   51635
Birth       <151 cm          15994   51635
Birth       [151-155) cm      8793   51635
6 months    >=155 cm         27020   52460
6 months    <151 cm          16133   52460
6 months    [151-155) cm      9307   52460
24 months   >=155 cm          9195   23431
24 months   <151 cm           9426   23431
24 months   [151-155) cm      4810   23431


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
![](/tmp/c3b7d5e6-10d0-42c6-97a5-51c82081cff0/f2f6d59d-f6fb-4006-af07-cbfd1a9590cb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c3b7d5e6-10d0-42c6-97a5-51c82081cff0/f2f6d59d-f6fb-4006-af07-cbfd1a9590cb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c3b7d5e6-10d0-42c6-97a5-51c82081cff0/f2f6d59d-f6fb-4006-af07-cbfd1a9590cb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=155 cm             NA                -0.1801599   -0.2050353   -0.1552846
Birth       <151 cm              NA                -1.2729978   -1.3390672   -1.2069284
Birth       [151-155) cm         NA                -0.4603155   -0.5033702   -0.4172608
6 months    >=155 cm             NA                -0.5408585   -0.5635577   -0.5181593
6 months    <151 cm              NA                -1.6958888   -1.7340048   -1.6577727
6 months    [151-155) cm         NA                -0.9272840   -0.9636462   -0.8909219
24 months   >=155 cm             NA                -1.2908217   -1.3340792   -1.2475643
24 months   <151 cm              NA                -2.5627742   -2.6033932   -2.5221553
24 months   [151-155) cm         NA                -1.7074823   -1.7577541   -1.6572105


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.3928992   -0.4106273   -0.3751711
6 months    NA                   NA                -0.8446767   -0.8608220   -0.8285315
24 months   NA                   NA                -1.6820588   -1.7051441   -1.6589735


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       <151 cm              >=155 cm          -1.0928378   -1.1632506   -1.0224251
Birth       [151-155) cm         >=155 cm          -0.2801556   -0.3296909   -0.2306202
6 months    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    <151 cm              >=155 cm          -1.1550303   -1.1994961   -1.1105645
6 months    [151-155) cm         >=155 cm          -0.3864256   -0.4293019   -0.3435492
24 months   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   <151 cm              >=155 cm          -1.2719525   -1.3318599   -1.2120451
24 months   [151-155) cm         >=155 cm          -0.4166606   -0.4832076   -0.3501135


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=155 cm             NA                -0.2127393   -0.2310037   -0.1944749
6 months    >=155 cm             NA                -0.3038182   -0.3217082   -0.2859283
24 months   >=155 cm             NA                -0.3912370   -0.4307076   -0.3517665
