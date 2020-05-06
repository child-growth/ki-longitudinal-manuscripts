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

**Intervention Variable:** enstunt

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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      enstunt    n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       0           58749   70599  haz              
Birth       1           11850   70599  haz              
6 months    0           58701   69534  haz              
6 months    1           10833   69534  haz              
24 months   0           28509   35072  haz              
24 months   1            6563   35072  haz              


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
![](/tmp/790f0f51-804e-4242-8b2f-ea6eab4f9bf4/bc30c070-e7cb-4d20-8741-4daa19f94605/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/790f0f51-804e-4242-8b2f-ea6eab4f9bf4/bc30c070-e7cb-4d20-8741-4daa19f94605/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/790f0f51-804e-4242-8b2f-ea6eab4f9bf4/bc30c070-e7cb-4d20-8741-4daa19f94605/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.2139706   -0.2257973   -0.2021439
Birth       1                    NA                -3.3390734   -3.3893179   -3.2888290
6 months    0                    NA                -0.6919268   -0.7060163   -0.6778373
6 months    1                    NA                -2.2509638   -2.2951537   -2.2067739
24 months   0                    NA                -1.6237115   -1.6440078   -1.6034152
24 months   1                    NA                -2.7739766   -2.8290679   -2.7188853


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.5605357   -0.5745350   -0.5465364
6 months    NA                   NA                -0.8774310   -0.8914874   -0.8633747
24 months   NA                   NA                -1.7718690   -1.7910003   -1.7527377


### Parameter: ATE


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       0                    0                  0.000000    0.000000    0.000000
Birth       1                    0                 -3.125103   -3.177050   -3.073156
6 months    0                    0                  0.000000    0.000000    0.000000
6 months    1                    0                 -1.559037   -1.605428   -1.512647
24 months   0                    0                  0.000000    0.000000    0.000000
24 months   1                    0                 -1.150265   -1.208740   -1.091790


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.3465651   -0.3557426   -0.3373877
6 months    0                    NA                -0.1855042   -0.1925210   -0.1784874
24 months   0                    NA                -0.1481575   -0.1583529   -0.1379622
