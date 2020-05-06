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

**Intervention Variable:** earlybf

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
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
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
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      earlybf    n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       1            9325   35187  whz              
Birth       0           25862   35187  whz              
6 months    1            9173   33785  whz              
6 months    0           24612   33785  whz              
24 months   1            4749   16324  whz              
24 months   0           11575   16324  whz              


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
![](/tmp/10c10144-c73e-41b5-95a6-c0e68982f5ef/454a01d3-01fc-4e31-ba6c-f2b9a89bd4ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/10c10144-c73e-41b5-95a6-c0e68982f5ef/454a01d3-01fc-4e31-ba6c-f2b9a89bd4ac/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/10c10144-c73e-41b5-95a6-c0e68982f5ef/454a01d3-01fc-4e31-ba6c-f2b9a89bd4ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.6100086   -0.6436966   -0.5763206
Birth       0                    NA                -0.7011533   -0.7415625   -0.6607440
6 months    1                    NA                -0.0053495   -0.0368228    0.0261239
6 months    0                    NA                -0.3129414   -0.3623365   -0.2635462
24 months   1                    NA                -0.0706016   -0.1217951   -0.0194081
24 months   0                    NA                -1.1381733   -1.2700464   -1.0063002


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.6866215   -0.7111984   -0.6620446
6 months    NA                   NA                -0.3073380   -0.3304554   -0.2842207
24 months   NA                   NA                -1.1428252   -1.1836424   -1.1020080


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       0                    1                 -0.0911447   -0.1412317   -0.0410577
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    0                    1                 -0.3075919   -0.3658169   -0.2493668
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   0                    1                 -1.0675717   -1.2074200   -0.9277234


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.0766129   -0.0996398   -0.0535860
6 months    1                    NA                -0.3019885   -0.3236737   -0.2803033
24 months   1                    NA                -1.0722236   -1.1094469   -1.0350003
