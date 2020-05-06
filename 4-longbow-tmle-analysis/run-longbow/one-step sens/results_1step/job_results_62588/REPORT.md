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
Birth       1          20628   33845  haz              
Birth       0          13217   33845  haz              
6 months    1          19717   32279  haz              
6 months    0          12562   32279  haz              
24 months   1          12962   22152  haz              
24 months   0           9190   22152  haz              


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
![](/tmp/f1cec209-0964-45f8-8a7c-84790089d468/9db55f5b-1754-42bd-8510-46b12310d828/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f1cec209-0964-45f8-8a7c-84790089d468/9db55f5b-1754-42bd-8510-46b12310d828/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f1cec209-0964-45f8-8a7c-84790089d468/9db55f5b-1754-42bd-8510-46b12310d828/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       1                    NA                -1.313071   -1.366145   -1.259998
Birth       0                    NA                -1.379272   -1.421453   -1.337092
6 months    1                    NA                -1.205120   -1.253044   -1.157196
6 months    0                    NA                -1.319477   -1.355126   -1.283828
24 months   1                    NA                -1.886181   -1.933371   -1.838990
24 months   0                    NA                -2.127652   -2.164346   -2.090958


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.345978   -1.369661   -1.322296
6 months    NA                   NA                -1.266972   -1.288884   -1.245059
24 months   NA                   NA                -2.016344   -2.041698   -1.990991


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       0                    1                 -0.0662010   -0.1333917    0.0009898
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    0                    1                 -0.1143569   -0.1733533   -0.0553605
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   0                    1                 -0.2414713   -0.2993554   -0.1835871


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.0329069   -0.0808445    0.0150306
6 months    1                    NA                -0.0618518   -0.1059482   -0.0177554
24 months   1                    NA                -0.1301638   -0.1733285   -0.0869991
