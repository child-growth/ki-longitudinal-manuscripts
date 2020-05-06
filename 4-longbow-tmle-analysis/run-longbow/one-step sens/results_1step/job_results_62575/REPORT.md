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

**Intervention Variable:** nrooms

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
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      nrooms    n_cell       n  outcome_variable 
----------  -------  -------  ------  -----------------
Birth       4+          1713   33236  haz              
Birth       1          19959   33236  haz              
Birth       2           8709   33236  haz              
Birth       3           2855   33236  haz              
6 months    4+          2320   31145  haz              
6 months    1          17259   31145  haz              
6 months    2           8474   31145  haz              
6 months    3           3092   31145  haz              
24 months   4+          1781   21124  haz              
24 months   1          11515   21124  haz              
24 months   2           5748   21124  haz              
24 months   3           2080   21124  haz              


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
![](/tmp/27fdc044-eb8c-4ecc-909e-1e14acd38799/0e380a46-523e-4cc3-bd4c-c062083a82c1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/27fdc044-eb8c-4ecc-909e-1e14acd38799/0e380a46-523e-4cc3-bd4c-c062083a82c1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/27fdc044-eb8c-4ecc-909e-1e14acd38799/0e380a46-523e-4cc3-bd4c-c062083a82c1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       4+                   NA                -1.205217   -1.295565   -1.114870
Birth       1                    NA                -1.396978   -1.434136   -1.359820
Birth       2                    NA                -1.369793   -1.428225   -1.311360
Birth       3                    NA                -1.319017   -1.434724   -1.203311
6 months    4+                   NA                -1.076920   -1.147878   -1.005961
6 months    1                    NA                -1.267173   -1.300692   -1.233654
6 months    2                    NA                -1.216086   -1.263702   -1.168470
6 months    3                    NA                -1.160893   -1.240904   -1.080882
24 months   4+                   NA                -1.681172   -1.767824   -1.594519
24 months   1                    NA                -1.981765   -2.021512   -1.942017
24 months   2                    NA                -1.912888   -1.967169   -1.858606
24 months   3                    NA                -1.829730   -1.926196   -1.733263


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.384495   -1.409630   -1.359360
6 months    NA                   NA                -1.243774   -1.267250   -1.220298
24 months   NA                   NA                -1.938001   -1.965685   -1.910316


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       1                    4+                -0.1917608   -0.2890500   -0.0944716
Birth       2                    4+                -0.1645753   -0.2718086   -0.0573421
Birth       3                    4+                -0.1138001   -0.2602878    0.0326876
6 months    4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    1                    4+                -0.1902533   -0.2682815   -0.1122250
6 months    2                    4+                -0.1391665   -0.2241122   -0.0542209
6 months    3                    4+                -0.0839739   -0.1905606    0.0226127
24 months   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   1                    4+                -0.3005929   -0.3947013   -0.2064845
24 months   2                    4+                -0.2317158   -0.3328277   -0.1306039
24 months   3                    4+                -0.1485578   -0.2773753   -0.0197402


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       4+                   NA                -0.1792778   -0.2686536   -0.0899019
6 months    4+                   NA                -0.1668543   -0.2376547   -0.0960538
24 months   4+                   NA                -0.2568288   -0.3418581   -0.1717994
