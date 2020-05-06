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

**Intervention Variable:** safeh20

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
* impsan
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
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      safeh20    n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       1           21779   22424  whz              
Birth       0             645   22424  whz              
6 months    1           24166   25722  whz              
6 months    0            1556   25722  whz              
24 months   1           14957   16302  whz              
24 months   0            1345   16302  whz              


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
![](/tmp/47b120e3-de0b-48a4-b89e-4c236eada5dd/f4ea153b-012c-43f5-9b10-e137b043f975/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/47b120e3-de0b-48a4-b89e-4c236eada5dd/f4ea153b-012c-43f5-9b10-e137b043f975/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/47b120e3-de0b-48a4-b89e-4c236eada5dd/f4ea153b-012c-43f5-9b10-e137b043f975/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.7699552   -0.8689062   -0.6710042
Birth       0                    NA                -0.9080140   -0.9871792   -0.8288489
6 months    1                    NA                -0.4380560   -0.5239756   -0.3521364
6 months    0                    NA                 0.0687590    0.0129938    0.1245241
24 months   1                    NA                -1.0805342   -1.1932418   -0.9678267
24 months   0                    NA                -0.2350296   -0.2920874   -0.1779717


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7817361   -0.8266814   -0.7367908
6 months    NA                   NA                -0.4481663   -0.4864640   -0.4098685
24 months   NA                   NA                -1.1020075   -1.1411586   -1.0628563


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       0                    1                 -0.1380589   -0.2611524   -0.0149653
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    0                    1                  0.5068150    0.4048821    0.6087478
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   0                    1                  0.8455047    0.7189286    0.9720808


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    NA                -0.0117809   -0.0963285   0.0727667
6 months    1                    NA                -0.0101103   -0.0880257   0.0678051
24 months   1                    NA                -0.0214732   -0.1263793   0.0834328
