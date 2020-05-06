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

**Intervention Variable:** trth2o

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
* W_nhh
* W_nchldlt5
* brthmon
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_brthmon
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      trth2o    n_cell      n  outcome_variable 
----------  -------  -------  -----  -----------------
Birth       1            691   1576  whz              
Birth       0            885   1576  whz              
6 months    1            917   1995  whz              
6 months    0           1078   1995  whz              
24 months   1            763   1770  whz              
24 months   0           1007   1770  whz              


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
![](/tmp/754e6522-3ae0-4f39-9340-7311bb49e5b7/0c3a6e76-1b91-48a1-8654-1d86aed2e8bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/754e6522-3ae0-4f39-9340-7311bb49e5b7/0c3a6e76-1b91-48a1-8654-1d86aed2e8bc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/754e6522-3ae0-4f39-9340-7311bb49e5b7/0c3a6e76-1b91-48a1-8654-1d86aed2e8bc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -1.0378509   -1.2248086   -0.8508932
Birth       0                    NA                -1.0659744   -1.2013375   -0.9306112
6 months    1                    NA                 0.1478162   -0.0092843    0.3049166
6 months    0                    NA                -0.0120917   -0.1057458    0.0815623
24 months   1                    NA                -0.4640404   -0.6197889   -0.3082919
24 months   0                    NA                -0.5119215   -0.6191789   -0.4046641


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -1.1275761   -1.1842915   -1.0708608
6 months    NA                   NA                -0.0317519   -0.0836511    0.0201474
24 months   NA                   NA                -0.5984049   -0.6510438   -0.5457660


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000   0.0000000
Birth       0                    1                 -0.0281234   -0.2589348   0.2026879
6 months    1                    1                  0.0000000    0.0000000   0.0000000
6 months    0                    1                 -0.1599079   -0.3421700   0.0223542
24 months   1                    1                  0.0000000    0.0000000   0.0000000
24 months   0                    1                 -0.0478811   -0.2366572   0.1408950


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.0897252   -0.2670900    0.0876395
6 months    1                    NA                -0.1795680   -0.3290103   -0.0301258
24 months   1                    NA                -0.1343645   -0.2845810    0.0158521
