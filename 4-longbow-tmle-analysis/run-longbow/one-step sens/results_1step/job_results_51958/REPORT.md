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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      hfoodsec                n_cell       n
----------  ---------------------  -------  ------
Birth       Food Secure               6931   14342
Birth       Mildly Food Insecure      4742   14342
Birth       Food Insecure             2669   14342
6 months    Food Secure              12362   24382
6 months    Mildly Food Insecure      8109   24382
6 months    Food Insecure             3911   24382
24 months   Food Secure               7628   15356
24 months   Mildly Food Insecure      5067   15356
24 months   Food Insecure             2661   15356


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
![](/tmp/3b433450-9f8e-4837-89ae-74363eee0c8d/b881ea43-3f1f-4926-a7a3-268ebf73781d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3b433450-9f8e-4837-89ae-74363eee0c8d/b881ea43-3f1f-4926-a7a3-268ebf73781d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3b433450-9f8e-4837-89ae-74363eee0c8d/b881ea43-3f1f-4926-a7a3-268ebf73781d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       Food Secure            NA                -1.480333   -1.561621   -1.399045
Birth       Mildly Food Insecure   NA                -1.465942   -1.628372   -1.303512
Birth       Food Insecure          NA                -1.518071   -1.612467   -1.423674
6 months    Food Secure            NA                -1.293699   -1.363479   -1.223920
6 months    Mildly Food Insecure   NA                -1.307600   -1.417657   -1.197544
6 months    Food Insecure          NA                -1.374991   -1.491987   -1.257994
24 months   Food Secure            NA                -1.864276   -1.937042   -1.791510
24 months   Mildly Food Insecure   NA                -1.872186   -1.991413   -1.752959
24 months   Food Insecure          NA                -1.942425   -2.064331   -1.820518


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.482085   -1.527667   -1.436504
6 months    NA                   NA                -1.303117   -1.337567   -1.268666
24 months   NA                   NA                -1.879098   -1.916956   -1.841240


### Parameter: ATE


agecat      intervention_level     baseline_level      estimate     ci_lower    ci_upper
----------  ---------------------  ---------------  -----------  -----------  ----------
Birth       Food Secure            Food Secure        0.0000000    0.0000000   0.0000000
Birth       Mildly Food Insecure   Food Secure        0.0143911   -0.1649896   0.1937717
Birth       Food Insecure          Food Secure       -0.0377379   -0.1596130   0.0841373
6 months    Food Secure            Food Secure        0.0000000    0.0000000   0.0000000
6 months    Mildly Food Insecure   Food Secure       -0.0139011   -0.1436024   0.1158002
6 months    Food Insecure          Food Secure       -0.0812911   -0.2169906   0.0544084
24 months   Food Secure            Food Secure        0.0000000    0.0000000   0.0000000
24 months   Mildly Food Insecure   Food Secure       -0.0079102   -0.1465927   0.1307723
24 months   Food Insecure          Food Secure       -0.0781493   -0.2185907   0.0622922


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       Food Secure          NA                -0.0017525   -0.0650303   0.0615253
6 months    Food Secure          NA                -0.0094174   -0.0696006   0.0507658
24 months   Food Secure          NA                -0.0148223   -0.0761795   0.0465349
