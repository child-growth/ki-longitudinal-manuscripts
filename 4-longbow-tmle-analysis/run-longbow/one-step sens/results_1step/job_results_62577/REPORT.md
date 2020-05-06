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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
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
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      nchldlt5    n_cell       n  outcome_variable 
----------  ---------  -------  ------  -----------------
Birth       1            14983   24090  haz              
Birth       2+            9107   24090  haz              
6 months    1            13702   21357  haz              
6 months    2+            7655   21357  haz              
24 months   1             6612   10700  haz              
24 months   2+            4088   10700  haz              


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
![](/tmp/7225d6f4-98d2-4477-b8dd-9b1983fc8d70/33fe8b7c-bdce-4ff3-a10a-4a799bab68dd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7225d6f4-98d2-4477-b8dd-9b1983fc8d70/33fe8b7c-bdce-4ff3-a10a-4a799bab68dd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7225d6f4-98d2-4477-b8dd-9b1983fc8d70/33fe8b7c-bdce-4ff3-a10a-4a799bab68dd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       1                    NA                -1.574010   -1.622451   -1.525569
Birth       2+                   NA                -1.471083   -1.538321   -1.403844
6 months    1                    NA                -1.236596   -1.275624   -1.197568
6 months    2+                   NA                -1.257743   -1.330178   -1.185308
24 months   1                    NA                -1.902715   -1.952633   -1.852798
24 months   2+                   NA                -2.005228   -2.076583   -1.933873


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.532626   -1.571144   -1.494109
6 months    NA                   NA                -1.241348   -1.273324   -1.209373
24 months   NA                   NA                -1.947977   -1.987296   -1.908657


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       2+                   1                  0.1029273    0.0225568    0.1832978
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    2+                   1                 -0.0211470   -0.1014590    0.0591649
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   2+                   1                 -0.1025128   -0.1867460   -0.0182796


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                 0.0413834    0.0141997    0.0685670
6 months    1                    NA                -0.0047524   -0.0279029    0.0183980
24 months   1                    NA                -0.0452613   -0.0751390   -0.0153837
