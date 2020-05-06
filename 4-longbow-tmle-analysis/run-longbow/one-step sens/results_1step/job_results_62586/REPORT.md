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
Birth       1            1050   2193  haz              
Birth       0            1143   2193  haz              
6 months    1            1229   2422  haz              
6 months    0            1193   2422  haz              
24 months   1            1078   2195  haz              
24 months   0            1117   2195  haz              


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
![](/tmp/207cb080-621d-4e94-996e-48cf312d2cb4/b5471107-c604-4cfe-a7e0-f9cc8ba735a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/207cb080-621d-4e94-996e-48cf312d2cb4/b5471107-c604-4cfe-a7e0-f9cc8ba735a7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/207cb080-621d-4e94-996e-48cf312d2cb4/b5471107-c604-4cfe-a7e0-f9cc8ba735a7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.7385193   -0.8649334   -0.6121051
Birth       0                    NA                -0.9438184   -1.0836679   -0.8039689
6 months    1                    NA                -1.1197726   -1.2632112   -0.9763341
6 months    0                    NA                -1.3362492   -1.4406667   -1.2318316
24 months   1                    NA                -1.6323401   -1.7428154   -1.5218647
24 months   0                    NA                -1.9586148   -2.0786485   -1.8385812


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8555404   -0.9025933   -0.8084874
6 months    NA                   NA                -1.2360212   -1.2785427   -1.1934997
24 months   NA                   NA                -1.8101458   -1.8561019   -1.7641896


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       0                    1                 -0.2052992   -0.3935022   -0.0170961
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    0                    1                 -0.2164765   -0.3937536   -0.0391995
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   0                    1                 -0.3262748   -0.4895316   -0.1630180


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.1170211   -0.2374673    0.0034251
6 months    1                    NA                -0.1162486   -0.2511559    0.0186588
24 months   1                    NA                -0.1778057   -0.2818556   -0.0737558
