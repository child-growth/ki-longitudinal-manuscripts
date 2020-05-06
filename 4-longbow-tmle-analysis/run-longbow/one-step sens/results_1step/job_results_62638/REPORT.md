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

**Intervention Variable:** predfeed36

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

agecat      predfeed36    n_cell       n  outcome_variable 
----------  -----------  -------  ------  -----------------
Birth       1               8998   12012  whz              
Birth       0               3014   12012  whz              
6 months    1              10512   15381  whz              
6 months    0               4869   15381  whz              
24 months   1               7034   10465  whz              
24 months   0               3431   10465  whz              


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
![](/tmp/7275dd50-aaff-40c4-bca5-093fb699e60d/635b4a9f-3be8-4214-8773-d86d33930f28/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7275dd50-aaff-40c4-bca5-093fb699e60d/635b4a9f-3be8-4214-8773-d86d33930f28/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7275dd50-aaff-40c4-bca5-093fb699e60d/635b4a9f-3be8-4214-8773-d86d33930f28/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.7776643   -0.8601943   -0.6951344
Birth       0                    NA                -0.7430134   -0.8273671   -0.6586597
6 months    1                    NA                -0.3630923   -0.4818203   -0.2443643
6 months    0                    NA                -0.4846048   -0.5403555   -0.4288540
24 months   1                    NA                -1.1392822   -1.2836672   -0.9948973
24 months   0                    NA                -1.1036393   -1.1617800   -1.0454985


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7503022   -0.8031891   -0.6974153
6 months    NA                   NA                -0.4296943   -0.4790414   -0.3803473
24 months   NA                   NA                -1.1015999   -1.1489968   -1.0542031


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000   0.0000000
Birth       0                    1                  0.0346509   -0.0850205   0.1543224
6 months    1                    1                  0.0000000    0.0000000   0.0000000
6 months    0                    1                 -0.1215125   -0.2467521   0.0037271
24 months   1                    1                  0.0000000    0.0000000   0.0000000
24 months   0                    1                  0.0356430   -0.1232518   0.1945377


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    NA                 0.0273621   -0.0554220   0.1101463
6 months    1                    NA                -0.0666020   -0.1749172   0.0417131
24 months   1                    NA                 0.0376823   -0.1062520   0.1816166
