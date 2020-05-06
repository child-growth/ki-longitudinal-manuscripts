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
Birth       1             3847   23734  whz              
Birth       0            19887   23734  whz              
6 months    1             5516   26319  whz              
6 months    0            20803   26319  whz              
24 months   1             4236   17410  whz              
24 months   0            13174   17410  whz              


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
![](/tmp/67322b83-50e2-446e-8657-82fcd714a803/fa1a6d44-e04c-416d-a99e-bed1a6a9b649/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/67322b83-50e2-446e-8657-82fcd714a803/fa1a6d44-e04c-416d-a99e-bed1a6a9b649/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/67322b83-50e2-446e-8657-82fcd714a803/fa1a6d44-e04c-416d-a99e-bed1a6a9b649/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.7536173   -0.8288072   -0.6784275
Birth       0                    NA                -0.7935673   -0.9199025   -0.6672322
6 months    1                    NA                -0.4094462   -0.4646543   -0.3542380
6 months    0                    NA                -0.4446781   -0.5503345   -0.3390217
24 months   1                    NA                -1.0390891   -1.1053288   -0.9728494
24 months   0                    NA                -1.1016745   -1.2089302   -0.9944188


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7977781   -0.8370390   -0.7585172
6 months    NA                   NA                -0.4518335   -0.4872777   -0.4163894
24 months   NA                   NA                -1.0970616   -1.1328830   -1.0612402


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000   0.0000000
Birth       0                    1                 -0.0399500   -0.1853002   0.1054002
6 months    1                    1                  0.0000000    0.0000000   0.0000000
6 months    0                    1                 -0.0352319   -0.1529584   0.0824946
24 months   1                    1                  0.0000000    0.0000000   0.0000000
24 months   0                    1                 -0.0625854   -0.1865064   0.0613356


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.0441608   -0.1078895    0.0195679
6 months    1                    NA                -0.0423874   -0.0853540    0.0005793
24 months   1                    NA                -0.0579725   -0.1129992   -0.0029458
