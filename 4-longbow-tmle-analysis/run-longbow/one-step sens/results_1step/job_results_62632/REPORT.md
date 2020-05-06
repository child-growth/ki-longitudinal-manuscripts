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

**Intervention Variable:** impsan

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      impsan    n_cell       n  outcome_variable 
----------  -------  -------  ------  -----------------
Birth       1          17365   28468  whz              
Birth       0          11103   28468  whz              
6 months    1          19692   32247  whz              
6 months    0          12555   32247  whz              
24 months   1          12908   22075  whz              
24 months   0           9167   22075  whz              


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
![](/tmp/bc561ecc-6106-422a-9a7a-27e3a6a527cd/a4dd147c-3d6b-4765-816b-0ec4f53ea15a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bc561ecc-6106-422a-9a7a-27e3a6a527cd/a4dd147c-3d6b-4765-816b-0ec4f53ea15a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bc561ecc-6106-422a-9a7a-27e3a6a527cd/a4dd147c-3d6b-4765-816b-0ec4f53ea15a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.8281544   -0.8919811   -0.7643277
Birth       0                    NA                -0.8191393   -0.8620606   -0.7762180
6 months    1                    NA                -0.4431081   -0.4928005   -0.3934157
6 months    0                    NA                -0.5050347   -0.5454770   -0.4645924
24 months   1                    NA                -0.9737221   -1.0196055   -0.9278387
24 months   0                    NA                -0.9907092   -1.0303812   -0.9510373


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8096522   -0.8353830   -0.7839214
6 months    NA                   NA                -0.4538465   -0.4772531   -0.4304400
24 months   NA                   NA                -0.9609920   -0.9828265   -0.9391574


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000   0.0000000
Birth       0                    1                  0.0090151   -0.0674073   0.0854375
6 months    1                    1                  0.0000000    0.0000000   0.0000000
6 months    0                    1                 -0.0619266   -0.1249849   0.0011318
24 months   1                    1                  0.0000000    0.0000000   0.0000000
24 months   0                    1                 -0.0169871   -0.0769089   0.0429346


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    NA                 0.0185022   -0.0398781   0.0768825
6 months    1                    NA                -0.0107384   -0.0564905   0.0350136
24 months   1                    NA                 0.0127301   -0.0290342   0.0544945
