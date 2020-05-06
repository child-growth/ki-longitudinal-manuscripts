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
Birth       1            11839   19573  whz              
Birth       2+            7734   19573  whz              
6 months    1            13685   21329  whz              
6 months    2+            7644   21329  whz              
24 months   1             6586   10656  whz              
24 months   2+            4070   10656  whz              


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
![](/tmp/01e796d3-bb58-4983-be44-591f0f8968c8/39b5f7bf-0d3d-4b1f-a64c-fe422a590ca5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/01e796d3-bb58-4983-be44-591f0f8968c8/39b5f7bf-0d3d-4b1f-a64c-fe422a590ca5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/01e796d3-bb58-4983-be44-591f0f8968c8/39b5f7bf-0d3d-4b1f-a64c-fe422a590ca5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.8091365   -0.8612072   -0.7570658
Birth       2+                   NA                -0.7844709   -0.8689513   -0.6999905
6 months    1                    NA                -0.4268703   -0.4701015   -0.3836391
6 months    2+                   NA                -0.4992428   -0.5995404   -0.3989453
24 months   1                    NA                -1.1507629   -1.2089402   -1.0925857
24 months   2+                   NA                -1.1161454   -1.1874966   -1.0447943


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8127535   -0.8538271   -0.7716799
6 months    NA                   NA                -0.4583722   -0.4915912   -0.4251532
24 months   NA                   NA                -1.1556366   -1.1991039   -1.1121692


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000   0.0000000
Birth       2+                   1                  0.0246656   -0.0738441   0.1231753
6 months    1                    1                  0.0000000    0.0000000   0.0000000
6 months    2+                   1                 -0.0723725   -0.1812498   0.0365048
24 months   1                    1                  0.0000000    0.0000000   0.0000000
24 months   2+                   1                  0.0346175   -0.0540587   0.1232937


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.0036170   -0.0332929    0.0260589
6 months    1                    NA                -0.0315019   -0.0586402   -0.0043636
24 months   1                    NA                -0.0048736   -0.0399715    0.0302242
