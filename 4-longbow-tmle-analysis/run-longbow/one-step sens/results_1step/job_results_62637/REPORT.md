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

**Intervention Variable:** predfeed6

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

agecat      predfeed6    n_cell       n  outcome_variable 
----------  ----------  -------  ------  -----------------
Birth       1             10761   14232  whz              
Birth       0              3471   14232  whz              
6 months    1             11681   16811  whz              
6 months    0              5130   16811  whz              
24 months   1              7792   11348  whz              
24 months   0              3556   11348  whz              


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
![](/tmp/bfd60af8-76dc-4af9-bcfa-3d12d7d4ef43/b504326c-e04d-4213-a754-a545324c9088/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bfd60af8-76dc-4af9-bcfa-3d12d7d4ef43/b504326c-e04d-4213-a754-a545324c9088/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bfd60af8-76dc-4af9-bcfa-3d12d7d4ef43/b504326c-e04d-4213-a754-a545324c9088/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.7684202   -0.8377252   -0.6991153
Birth       0                    NA                -0.7402580   -0.8235540   -0.6569621
6 months    1                    NA                -0.3900928   -0.4889856   -0.2912000
6 months    0                    NA                -0.4868633   -0.5447587   -0.4289678
24 months   1                    NA                -1.1282359   -1.2129544   -1.0435173
24 months   0                    NA                -1.1041582   -1.1610333   -1.0472831


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7497548   -0.8032303   -0.6962792
6 months    NA                   NA                -0.4465621   -0.4964469   -0.3966773
24 months   NA                   NA                -1.1098678   -1.1572527   -1.0624830


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000   0.0000000
Birth       0                    1                  0.0281622   -0.0810612   0.1373856
6 months    1                    1                  0.0000000    0.0000000   0.0000000
6 months    0                    1                 -0.0967705   -0.2048475   0.0113065
24 months   1                    1                  0.0000000    0.0000000   0.0000000
24 months   0                    1                  0.0240776   -0.0712391   0.1193944


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    NA                 0.0186655   -0.0497387   0.0870696
6 months    1                    NA                -0.0564693   -0.1457535   0.0328149
24 months   1                    NA                 0.0183680   -0.0625076   0.0992437
