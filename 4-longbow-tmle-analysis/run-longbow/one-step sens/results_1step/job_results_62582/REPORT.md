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

agecat      hfoodsec                n_cell       n  outcome_variable 
----------  ---------------------  -------  ------  -----------------
Birth       Food Secure               9647   19616  haz              
Birth       Mildly Food Insecure      6730   19616  haz              
Birth       Food Insecure             3239   19616  haz              
6 months    Food Secure              12363   24383  haz              
6 months    Mildly Food Insecure      8109   24383  haz              
6 months    Food Insecure             3911   24383  haz              
24 months   Food Secure               7621   15346  haz              
24 months   Mildly Food Insecure      5065   15346  haz              
24 months   Food Insecure             2660   15346  haz              


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
![](/tmp/b81885f5-c463-441d-93a3-8ff497005ad3/a54caf73-b892-4891-a0bd-62b5e384448f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b81885f5-c463-441d-93a3-8ff497005ad3/a54caf73-b892-4891-a0bd-62b5e384448f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b81885f5-c463-441d-93a3-8ff497005ad3/a54caf73-b892-4891-a0bd-62b5e384448f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level     baseline_level     estimate    ci_lower    ci_upper
----------  ---------------------  ---------------  ----------  ----------  ----------
Birth       Food Secure            NA                -1.452409   -1.553026   -1.351792
Birth       Mildly Food Insecure   NA                -1.470282   -1.542767   -1.397797
Birth       Food Insecure          NA                -1.496026   -1.662983   -1.329068
6 months    Food Secure            NA                -1.291850   -1.357561   -1.226139
6 months    Mildly Food Insecure   NA                -1.308339   -1.421967   -1.194710
6 months    Food Insecure          NA                -1.371043   -1.486610   -1.255476
24 months   Food Secure            NA                -1.872997   -1.945091   -1.800903
24 months   Mildly Food Insecure   NA                -1.881538   -2.003861   -1.759214
24 months   Food Insecure          NA                -1.942817   -2.057353   -1.828282


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.463397   -1.501666   -1.425128
6 months    NA                   NA                -1.303465   -1.337911   -1.269018
24 months   NA                   NA                -1.890230   -1.928146   -1.852314


### Parameter: ATE


agecat      intervention_level     baseline_level      estimate     ci_lower    ci_upper
----------  ---------------------  ---------------  -----------  -----------  ----------
Birth       Food Secure            Food Secure        0.0000000    0.0000000   0.0000000
Birth       Mildly Food Insecure   Food Secure       -0.0178728   -0.1411661   0.1054204
Birth       Food Insecure          Food Secure       -0.0436166   -0.2380474   0.1508143
6 months    Food Secure            Food Secure        0.0000000    0.0000000   0.0000000
6 months    Mildly Food Insecure   Food Secure       -0.0164885   -0.1471697   0.1141928
6 months    Food Insecure          Food Secure       -0.0791929   -0.2116330   0.0532471
24 months   Food Secure            Food Secure        0.0000000    0.0000000   0.0000000
24 months   Mildly Food Insecure   Food Secure       -0.0085402   -0.1495088   0.1324283
24 months   Food Insecure          Food Secure       -0.0698199   -0.2035978   0.0639580


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       Food Secure          NA                -0.0109881   -0.1045773   0.0826011
6 months    Food Secure          NA                -0.0116147   -0.0672103   0.0439810
24 months   Food Secure          NA                -0.0172329   -0.0777671   0.0433014
