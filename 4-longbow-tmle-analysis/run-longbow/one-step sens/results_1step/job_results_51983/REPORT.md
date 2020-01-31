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

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      birthlen      n_cell       n
----------  -----------  -------  ------
Birth       >=50 cm        21618   56635
Birth       <48 cm         18976   56635
Birth       [48-50) cm     16041   56635
6 months    >=50 cm        24536   60182
6 months    <48 cm         20657   60182
6 months    [48-50) cm     14989   60182
24 months   >=50 cm         9260   28494
24 months   <48 cm         11545   28494
24 months   [48-50) cm      7689   28494


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
![](/tmp/78dee693-32f4-421a-abb1-c83fd6362603/d00eccfb-ae5d-439b-91db-903af521d0f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/78dee693-32f4-421a-abb1-c83fd6362603/d00eccfb-ae5d-439b-91db-903af521d0f3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/78dee693-32f4-421a-abb1-c83fd6362603/d00eccfb-ae5d-439b-91db-903af521d0f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=50 cm              NA                -1.0627439   -1.0935555   -1.0319323
Birth       <48 cm               NA                 0.0153167   -0.0209754    0.0516087
Birth       [48-50) cm           NA                -0.6324413   -0.6605139   -0.6043687
6 months    >=50 cm              NA                -0.0009317   -0.0317639    0.0299006
6 months    <48 cm               NA                -0.4069612   -0.4368236   -0.3770987
6 months    [48-50) cm           NA                -0.0879436   -0.1152624   -0.0606249
24 months   >=50 cm              NA                -0.5225960   -0.5598021   -0.4853900
24 months   <48 cm               NA                -1.1115537   -1.1440753   -1.0790321
24 months   [48-50) cm           NA                -0.6818268   -0.7136695   -0.6499841


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7367741   -0.7546883   -0.7188599
6 months    NA                   NA                -0.0957389   -0.1121644   -0.0793134
24 months   NA                   NA                -0.7164439   -0.7350451   -0.6978428


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       <48 cm               >=50 cm            1.0780606    1.0308429    1.1252782
Birth       [48-50) cm           >=50 cm            0.4303026    0.3890029    0.4716022
6 months    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    <48 cm               >=50 cm           -0.4060295   -0.4489463   -0.3631127
6 months    [48-50) cm           >=50 cm           -0.0870120   -0.1281726   -0.0458514
24 months   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   <48 cm               >=50 cm           -0.5889577   -0.6383120   -0.5396034
24 months   [48-50) cm           >=50 cm           -0.1592308   -0.2081142   -0.1103474


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=50 cm              NA                 0.3259698    0.2999076    0.3520321
6 months    >=50 cm              NA                -0.0948073   -0.1217964   -0.0678181
24 months   >=50 cm              NA                -0.1938479   -0.2265107   -0.1611851
