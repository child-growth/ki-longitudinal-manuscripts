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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      single    n_cell       n  outcome_variable 
----------  -------  -------  ------  -----------------
Birth       0          36349   37899  whz              
Birth       1           1550   37899  whz              
6 months    0          39880   41570  whz              
6 months    1           1690   41570  whz              
24 months   0          17281   17789  whz              
24 months   1            508   17789  whz              


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
![](/tmp/1cc48d3d-90df-4bcb-97ce-fd9a2eed8699/3e08abb8-aa3b-4751-b428-0624a8fb8196/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1cc48d3d-90df-4bcb-97ce-fd9a2eed8699/3e08abb8-aa3b-4751-b428-0624a8fb8196/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1cc48d3d-90df-4bcb-97ce-fd9a2eed8699/3e08abb8-aa3b-4751-b428-0624a8fb8196/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.8278980   -0.8472739   -0.8085221
Birth       1                    NA                -0.7937064   -0.8786017   -0.7088110
6 months    0                    NA                 0.1523006    0.1350982    0.1695030
6 months    1                    NA                 0.1622066    0.0920852    0.2323281
24 months   0                    NA                -0.4544612   -0.4761218   -0.4328005
24 months   1                    NA                -0.1020093   -0.1736527   -0.0303660


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8320495   -0.8505781   -0.8135209
6 months    NA                   NA                 0.1537031    0.1369786    0.1704275
24 months   NA                   NA                -0.4501775   -0.4706213   -0.4297336


### Parameter: ATE


agecat      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  ---------------  ----------  -----------  ----------
Birth       0                    0                 0.0000000    0.0000000   0.0000000
Birth       1                    0                 0.0341916   -0.0528104   0.1211937
6 months    0                    0                 0.0000000    0.0000000   0.0000000
6 months    1                    0                 0.0099061   -0.0620183   0.0818304
24 months   0                    0                 0.0000000    0.0000000   0.0000000
24 months   1                    0                 0.3524518    0.2775076   0.4273960


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       0                    NA                -0.0041515   -0.0094078   0.0011048
6 months    0                    NA                 0.0014025   -0.0028219   0.0056268
24 months   0                    NA                 0.0042837   -0.0025942   0.0111616
