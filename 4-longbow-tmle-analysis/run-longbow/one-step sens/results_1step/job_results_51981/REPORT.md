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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      gagebrth             n_cell       n
----------  ------------------  -------  ------
Birth       Full or late term     18448   35333
Birth       Preterm                4155   35333
Birth       Early term            12730   35333
6 months    Full or late term     19078   39358
6 months    Preterm                6229   39358
6 months    Early term            14051   39358
24 months   Full or late term      8359   17251
24 months   Preterm                2827   17251
24 months   Early term             6065   17251


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
![](/tmp/6d8dc147-e772-41dd-a047-dc70e10f7452/a2f5bfed-1484-4d36-8ca0-3f7a1d6537d2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6d8dc147-e772-41dd-a047-dc70e10f7452/a2f5bfed-1484-4d36-8ca0-3f7a1d6537d2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6d8dc147-e772-41dd-a047-dc70e10f7452/a2f5bfed-1484-4d36-8ca0-3f7a1d6537d2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Full or late term    NA                -0.7710029   -0.8299714   -0.7120345
Birth       Preterm              NA                -0.8558192   -0.9613048   -0.7503336
Birth       Early term           NA                -0.8418370   -0.9115351   -0.7721390
6 months    Full or late term    NA                -0.0082859   -0.0452325    0.0286608
6 months    Preterm              NA                -0.1004304   -0.1552169   -0.0456438
6 months    Early term           NA                -0.0402277   -0.0845768    0.0041214
24 months   Full or late term    NA                -0.5350735   -0.5701246   -0.5000224
24 months   Preterm              NA                -0.7534003   -0.8073665   -0.6994341
24 months   Early term           NA                -0.5357504   -0.5751876   -0.4963133


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8110438   -0.8504655   -0.7716221
6 months    NA                   NA                -0.0409724   -0.0641863   -0.0177585
24 months   NA                   NA                -0.5683463   -0.5918475   -0.5448451


### Parameter: ATE


agecat      intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  -------------------  ------------------  -----------  -----------  -----------
Birth       Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       Preterm              Full or late term    -0.0848163   -0.2057928    0.0361602
Birth       Early term           Full or late term    -0.0708341   -0.1624794    0.0208111
6 months    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    Preterm              Full or late term    -0.0921445   -0.1582729   -0.0260160
6 months    Early term           Full or late term    -0.0319418   -0.0897468    0.0258632
24 months   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   Preterm              Full or late term    -0.2183268   -0.2823018   -0.1543517
24 months   Early term           Full or late term    -0.0006769   -0.0530229    0.0516690


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Full or late term    NA                -0.0400409   -0.0840660    0.0039843
6 months    Full or late term    NA                -0.0326865   -0.0617450   -0.0036280
24 months   Full or late term    NA                -0.0332728   -0.0608933   -0.0056523
