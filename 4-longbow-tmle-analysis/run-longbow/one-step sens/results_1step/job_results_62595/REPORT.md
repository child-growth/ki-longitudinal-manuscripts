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
Birth       1             14729   16922  haz              
Birth       0              2193   16922  haz              
6 months    1             11875   14243  haz              
6 months    0              2368   14243  haz              
24 months   1              7059    8814  haz              
24 months   0              1755    8814  haz              


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
![](/tmp/c9f0d36e-71f2-4847-bbd5-339234dde26e/e7045eac-53cf-4c56-aef7-32102c412afe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c9f0d36e-71f2-4847-bbd5-339234dde26e/e7045eac-53cf-4c56-aef7-32102c412afe/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c9f0d36e-71f2-4847-bbd5-339234dde26e/e7045eac-53cf-4c56-aef7-32102c412afe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       1                    NA                -1.397937   -1.448506   -1.347369
Birth       0                    NA                -1.396326   -1.512870   -1.279781
6 months    1                    NA                -1.229890   -1.269276   -1.190503
6 months    0                    NA                -1.286311   -1.368879   -1.203743
24 months   1                    NA                -1.849419   -1.889893   -1.808945
24 months   0                    NA                -1.950298   -2.026460   -1.874136


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.393073   -1.437503   -1.348643
6 months    NA                   NA                -1.237928   -1.268734   -1.207123
24 months   NA                   NA                -1.857094   -1.889949   -1.824239


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       0                    1                  0.0016115   -0.1224780    0.1257011
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    0                    1                 -0.0564209   -0.1472133    0.0343716
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   0                    1                 -0.1008788   -0.1863121   -0.0154454


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    NA                 0.0048641   -0.0211497   0.0308779
6 months    1                    NA                -0.0080387   -0.0353318   0.0192545
24 months   1                    NA                -0.0076745   -0.0357106   0.0203617
