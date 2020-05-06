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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      single    n_cell       n  outcome_variable 
----------  -------  -------  ------  -----------------
Birth       0          38289   39935  haz              
Birth       1           1646   39935  haz              
6 months    0          40044   41744  haz              
6 months    1           1700   41744  haz              
24 months   0          18519   19088  haz              
24 months   1            569   19088  haz              


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
![](/tmp/b78aa303-f362-40ad-aeca-c7da244f3e50/c5228f17-0e1d-477c-b4e3-e3393487416e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b78aa303-f362-40ad-aeca-c7da244f3e50/c5228f17-0e1d-477c-b4e3-e3393487416e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b78aa303-f362-40ad-aeca-c7da244f3e50/c5228f17-0e1d-477c-b4e3-e3393487416e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.0656812    0.0495647    0.0817978
Birth       1                    NA                -0.2756995   -0.3508368   -0.2005623
6 months    0                    NA                -0.6065072   -0.6228767   -0.5901377
6 months    1                    NA                -0.7459089   -0.8265501   -0.6652678
24 months   0                    NA                -1.6317054   -1.6561134   -1.6072974
24 months   1                    NA                -1.6245424   -1.7248718   -1.5242129


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                 0.0584147    0.0429518    0.0738775
6 months    NA                   NA                -0.6103167   -0.6261648   -0.5944686
24 months   NA                   NA                -1.6395638   -1.6627008   -1.6164268


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                 -0.3413808   -0.4186391   -0.2641224
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.1394017   -0.2218509   -0.0569526
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                  0.0071631   -0.0962064    0.1105325


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.0072665   -0.0117784   -0.0027547
6 months    0                    NA                -0.0038095   -0.0082918    0.0006728
24 months   0                    NA                -0.0078584   -0.0153116   -0.0004052
