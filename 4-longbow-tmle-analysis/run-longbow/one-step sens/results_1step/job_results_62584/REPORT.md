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

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      pers_wast    n_cell      n  outcome_variable 
----------  ----------  -------  -----  -----------------
Birth       0              3903   4151  haz              
Birth       1               248   4151  haz              
6 months    0              8468   8880  haz              
6 months    1               412   8880  haz              
24 months   0              5055   5341  haz              
24 months   1               286   5341  haz              


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
![](/tmp/01755f3f-9e56-47b4-9936-14e7a93ce54d/7be97f90-0db4-47ec-99dc-ea3c1941b299/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/01755f3f-9e56-47b4-9936-14e7a93ce54d/7be97f90-0db4-47ec-99dc-ea3c1941b299/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/01755f3f-9e56-47b4-9936-14e7a93ce54d/7be97f90-0db4-47ec-99dc-ea3c1941b299/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.6211318   -0.6647291   -0.5775345
Birth       1                    NA                -0.4526359   -0.6269752   -0.2782966
6 months    0                    NA                -1.0038473   -1.0322342   -0.9754605
6 months    1                    NA                -1.2315496   -1.3652063   -1.0978929
24 months   0                    NA                -1.7508710   -1.7854205   -1.7163214
24 months   1                    NA                -2.0347843   -2.1770296   -1.8925390


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.6104288   -0.6530355   -0.5678221
6 months    NA                   NA                -1.0121771   -1.0400640   -0.9842902
24 months   NA                   NA                -1.7645114   -1.7980156   -1.7310071


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                  0.1684959   -0.0099958    0.3469876
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.2277023   -0.3638250   -0.0915796
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.2839133   -0.4297633   -0.1380633


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.0107030    0.0004170    0.0209890
6 months    0                    NA                -0.0083298   -0.0142134   -0.0024461
24 months   0                    NA                -0.0136404   -0.0193915   -0.0078893
