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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      hdlvry    n_cell       n  outcome_variable 
----------  -------  -------  ------  -----------------
Birth       0           5395   11556  haz              
Birth       1           6161   11556  haz              
6 months    0           8272   15452  haz              
6 months    1           7180   15452  haz              
24 months   0           5122   10349  haz              
24 months   1           5227   10349  haz              


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
![](/tmp/95770948-2d69-42e0-b569-ae6de7cdebde/031cb358-6ff4-425b-8505-c5d0bc53e061/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/95770948-2d69-42e0-b569-ae6de7cdebde/031cb358-6ff4-425b-8505-c5d0bc53e061/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/95770948-2d69-42e0-b569-ae6de7cdebde/031cb358-6ff4-425b-8505-c5d0bc53e061/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------  ---------------  ----------  ----------  -----------
Birth       0                    NA                -1.001385   -1.038337   -0.9644338
Birth       1                    NA                -1.088885   -1.138086   -1.0396835
6 months    0                    NA                -1.128447   -1.158624   -1.0982708
6 months    1                    NA                -1.297978   -1.369198   -1.2267572
24 months   0                    NA                -1.890267   -1.930673   -1.8498620
24 months   1                    NA                -2.046244   -2.106797   -1.9856921


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.035416   -1.061475   -1.009357
6 months    NA                   NA                -1.175627   -1.199167   -1.152086
24 months   NA                   NA                -1.959409   -1.989894   -1.928924


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                 -0.0874996   -0.1485522   -0.0264470
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.1695305   -0.2465272   -0.0925338
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.1559771   -0.2265047   -0.0854495


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.0340310   -0.0589192   -0.0091427
6 months    0                    NA                -0.0471795   -0.0658834   -0.0284756
24 months   0                    NA                -0.0691415   -0.0960335   -0.0422496
