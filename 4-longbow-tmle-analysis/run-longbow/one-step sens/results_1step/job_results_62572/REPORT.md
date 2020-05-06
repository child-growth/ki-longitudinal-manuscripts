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

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      mbmi             n_cell       n  outcome_variable 
----------  --------------  -------  ------  -----------------
Birth       Normal weight     39251   49547  haz              
Birth       Underweight       10296   49547  haz              
6 months    Normal weight     36536   44750  haz              
6 months    Underweight        8214   44750  haz              
24 months   Normal weight     13629   17563  haz              
24 months   Underweight        3934   17563  haz              


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
![](/tmp/abb485af-8cf3-4805-88f0-ca4c571450b7/1706d279-4578-446e-9ede-701378bbc8dc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/abb485af-8cf3-4805-88f0-ca4c571450b7/1706d279-4578-446e-9ede-701378bbc8dc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/abb485af-8cf3-4805-88f0-ca4c571450b7/1706d279-4578-446e-9ede-701378bbc8dc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Normal weight        NA                -0.5267814   -0.5484344   -0.5051285
Birth       Underweight          NA                -0.7731263   -0.8724989   -0.6737537
6 months    Normal weight        NA                -0.7929940   -0.8133211   -0.7726669
6 months    Underweight          NA                -0.9569273   -1.0384286   -0.8754261
24 months   Normal weight        NA                -1.5016864   -1.5343257   -1.4690471
24 months   Underweight          NA                -1.6350320   -1.7609402   -1.5091238


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.5291901   -0.5500652   -0.5083150
6 months    NA                   NA                -0.7872172   -0.8067742   -0.7676601
24 months   NA                   NA                -1.4943609   -1.5248281   -1.4638937


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       Underweight          Normal weight     -0.2463449   -0.3479783   -0.1447115
6 months    Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    Underweight          Normal weight     -0.1639333   -0.2480051   -0.0798616
24 months   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   Underweight          Normal weight     -0.1333456   -0.2634958   -0.0031954


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       Normal weight        NA                -0.0024086   -0.0082869   0.0034696
6 months    Normal weight        NA                 0.0057768    0.0004880   0.0110657
24 months   Normal weight        NA                 0.0073255   -0.0041803   0.0188313
