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

**Intervention Variable:** exclfeed3

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

agecat      exclfeed3    n_cell       n  outcome_variable 
----------  ----------  -------  ------  -----------------
Birth       1             12172   14060  whz              
Birth       0              1888   14060  whz              
6 months    1             11857   14221  whz              
6 months    0              2364   14221  whz              
24 months   1              7041    8796  whz              
24 months   0              1755    8796  whz              


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
![](/tmp/986f54f7-944f-4017-9c2c-c085f900cbaa/07b6e5d9-3845-4153-bb56-8aee93969263/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/986f54f7-944f-4017-9c2c-c085f900cbaa/07b6e5d9-3845-4153-bb56-8aee93969263/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/986f54f7-944f-4017-9c2c-c085f900cbaa/07b6e5d9-3845-4153-bb56-8aee93969263/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.8224792   -0.8734565   -0.7715019
Birth       0                    NA                -0.8142396   -0.9073702   -0.7211089
6 months    1                    NA                -0.4317999   -0.4768433   -0.3867566
6 months    0                    NA                -0.4326755   -0.5227369   -0.3426141
24 months   1                    NA                -1.0334410   -1.0884781   -0.9784039
24 months   0                    NA                -0.9770946   -1.0589158   -0.8952733


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8184346   -0.8587829   -0.7780862
6 months    NA                   NA                -0.4319117   -0.4679853   -0.3958381
24 months   NA                   NA                -1.0048491   -1.0393765   -0.9703217


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000   0.0000000
Birth       0                    1                  0.0082396   -0.0967838   0.1132630
6 months    1                    1                  0.0000000    0.0000000   0.0000000
6 months    0                    1                 -0.0008756   -0.0995054   0.0977543
24 months   1                    1                  0.0000000    0.0000000   0.0000000
24 months   0                    1                  0.0563464   -0.0425558   0.1552487


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    NA                 0.0040446   -0.0300855   0.0381748
6 months    1                    NA                -0.0001118   -0.0312832   0.0310597
24 months   1                    NA                 0.0285919   -0.0172568   0.0744406
