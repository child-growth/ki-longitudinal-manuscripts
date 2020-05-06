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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
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
* month
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
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      exclfeed36    n_cell       n  outcome_variable 
----------  -----------  -------  ------  -----------------
Birth       1               9348   13693  whz              
Birth       0               4345   13693  whz              
6 months    1              11001   17787  whz              
6 months    0               6786   17787  whz              
24 months   1               7470   12450  whz              
24 months   0               4980   12450  whz              


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
![](/tmp/02d5d186-9b83-43fe-b8ad-b00ce38a3205/bbfd66f2-40f4-4af3-9b76-2ec830fcd96d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/02d5d186-9b83-43fe-b8ad-b00ce38a3205/bbfd66f2-40f4-4af3-9b76-2ec830fcd96d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/02d5d186-9b83-43fe-b8ad-b00ce38a3205/bbfd66f2-40f4-4af3-9b76-2ec830fcd96d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.8455438   -0.9196309   -0.7714566
Birth       0                    NA                -0.8157610   -0.8682209   -0.7633011
6 months    1                    NA                -0.3483352   -0.4243445   -0.2723260
6 months    0                    NA                -0.4510791   -0.4929891   -0.4091692
24 months   1                    NA                -1.0646924   -1.1266261   -1.0027588
24 months   0                    NA                -1.0626227   -1.1039478   -1.0212977


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       NA                   NA                -0.8153652   -0.8567843   -0.773946
6 months    NA                   NA                -0.3990287   -0.4345594   -0.363498
24 months   NA                   NA                -1.0573220   -1.0920773   -1.022567


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000    0.000000
Birth       0                    1                  0.0297828   -0.0604555    0.120021
6 months    1                    1                  0.0000000    0.0000000    0.000000
6 months    0                    1                 -0.1027439   -0.1872178   -0.018270
24 months   1                    1                  0.0000000    0.0000000    0.000000
24 months   0                    1                  0.0020697   -0.0693656    0.073505


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    NA                 0.0301786   -0.0376393   0.0979965
6 months    1                    NA                -0.0506935   -0.1198384   0.0184515
24 months   1                    NA                 0.0073705   -0.0495083   0.0642492
