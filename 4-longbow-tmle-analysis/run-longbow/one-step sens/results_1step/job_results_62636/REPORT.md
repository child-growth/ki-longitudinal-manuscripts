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

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      predfeed3    n_cell       n  outcome_variable 
----------  ----------  -------  ------  -----------------
Birth       1             10531   11908  whz              
Birth       0              1377   11908  whz              
6 months    1              9829   11461  whz              
6 months    0              1632   11461  whz              
24 months   1              5635    6776  whz              
24 months   0              1141    6776  whz              


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
![](/tmp/e037ae52-0d15-4fcf-9ec7-3edab1dd22a5/8f4bb2f1-0bac-4078-92d9-38c010d10fd7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e037ae52-0d15-4fcf-9ec7-3edab1dd22a5/8f4bb2f1-0bac-4078-92d9-38c010d10fd7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e037ae52-0d15-4fcf-9ec7-3edab1dd22a5/8f4bb2f1-0bac-4078-92d9-38c010d10fd7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.7626935   -0.8225362   -0.7028507
Birth       0                    NA                -0.7149336   -0.8377378   -0.5921293
6 months    1                    NA                -0.4725042   -0.5348415   -0.4101669
6 months    0                    NA                -0.4472563   -0.5431234   -0.3513891
24 months   1                    NA                -1.0901255   -1.1609350   -1.0193160
24 months   0                    NA                -0.9594013   -1.0649115   -0.8538911


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7538193   -0.8068018   -0.7008367
6 months    NA                   NA                -0.4714574   -0.5225028   -0.4204120
24 months   NA                   NA                -1.0600671   -1.1086993   -1.0114350


### Parameter: ATE


agecat      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  ---------------  ----------  -----------  ----------
Birth       1                    1                 0.0000000    0.0000000   0.0000000
Birth       0                    1                 0.0477599   -0.0883992   0.1839191
6 months    1                    1                 0.0000000    0.0000000   0.0000000
6 months    0                    1                 0.0252479   -0.0829835   0.1334794
24 months   1                    1                 0.0000000    0.0000000   0.0000000
24 months   0                    1                 0.1307242    0.0007865   0.2606619


### Parameter: PAR


agecat      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  ---------------  ----------  -----------  ----------
Birth       1                    NA                0.0088742   -0.0329745   0.0507228
6 months    1                    NA                0.0010468   -0.0419491   0.0440427
24 months   1                    NA                0.0300584   -0.0286444   0.0887611
