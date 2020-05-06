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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      cleanck    n_cell      n  outcome_variable 
----------  --------  -------  -----  -----------------
Birth       1            1014   2070  whz              
Birth       0            1056   2070  whz              
6 months    1            1226   2420  whz              
6 months    0            1194   2420  whz              
24 months   1            1079   2196  whz              
24 months   0            1117   2196  whz              


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
![](/tmp/88ca6511-6009-4c9a-b0aa-3ff633600195/245df7cd-180c-4403-b6ee-7473f7ed809d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/88ca6511-6009-4c9a-b0aa-3ff633600195/245df7cd-180c-4403-b6ee-7473f7ed809d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/88ca6511-6009-4c9a-b0aa-3ff633600195/245df7cd-180c-4403-b6ee-7473f7ed809d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -1.2011203   -1.3796152   -1.0226254
Birth       0                    NA                -1.1554881   -1.2790282   -1.0319481
6 months    1                    NA                -0.3800733   -0.4759407   -0.2842059
6 months    0                    NA                -0.4384769   -0.5574686   -0.3194853
24 months   1                    NA                -0.6560765   -0.7829097   -0.5292432
24 months   0                    NA                -0.8504842   -0.9799196   -0.7210488


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -1.1305459   -1.1818232   -1.0792686
6 months    NA                   NA                -0.3428822   -0.3909260   -0.2948385
24 months   NA                   NA                -0.7907635   -0.8372995   -0.7442276


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       0                    1                  0.0456321   -0.1714599    0.2627242
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    0                    1                 -0.0584037   -0.2096418    0.0928344
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   0                    1                 -0.1944077   -0.3754192   -0.0133962


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                 0.0705744   -0.0984943    0.2396431
6 months    1                    NA                 0.0371910   -0.0487905    0.1231725
24 months   1                    NA                -0.1346870   -0.2549253   -0.0144488
