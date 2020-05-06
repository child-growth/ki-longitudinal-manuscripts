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

**Intervention Variable:** impfloor

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
* impsan
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
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      impfloor    n_cell       n  outcome_variable 
----------  ---------  -------  ------  -----------------
Birth       1             4175   28769  haz              
Birth       0            24594   28769  haz              
6 months    1             5517   26344  haz              
6 months    0            20827   26344  haz              
24 months   1             4239   17456  haz              
24 months   0            13217   17456  haz              


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
![](/tmp/2acc5fe9-0a4c-4181-8b20-4e02bd370fbd/59e14f6f-8557-4f7e-b312-b33a1cc212d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2acc5fe9-0a4c-4181-8b20-4e02bd370fbd/59e14f6f-8557-4f7e-b312-b33a1cc212d7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2acc5fe9-0a4c-4181-8b20-4e02bd370fbd/59e14f6f-8557-4f7e-b312-b33a1cc212d7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       1                    NA                -1.400424   -1.476384   -1.324464
Birth       0                    NA                -1.501492   -1.609378   -1.393605
6 months    1                    NA                -1.159034   -1.205117   -1.112951
6 months    0                    NA                -1.304284   -1.398162   -1.210406
24 months   1                    NA                -1.724562   -1.780070   -1.669054
24 months   0                    NA                -1.910825   -2.022234   -1.799417


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.497556   -1.530990   -1.464122
6 months    NA                   NA                -1.282944   -1.312596   -1.253291
24 months   NA                   NA                -1.880162   -1.913981   -1.846342


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       0                    1                 -0.1010682   -0.2324841    0.0303477
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    0                    1                 -0.1452503   -0.2487256   -0.0417749
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   0                    1                 -0.1862634   -0.3085264   -0.0640003


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.0971324   -0.1631983   -0.0310664
6 months    1                    NA                -0.1239098   -0.1600207   -0.0877989
24 months   1                    NA                -0.1555996   -0.2006031   -0.1105961
