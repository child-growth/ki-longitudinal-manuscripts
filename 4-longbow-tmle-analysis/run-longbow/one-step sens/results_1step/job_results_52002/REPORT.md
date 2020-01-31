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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
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
* delta_vagbrth
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

agecat      hfoodsec                n_cell       n
----------  ---------------------  -------  ------
Birth       Food Secure               5834   11861
Birth       Mildly Food Insecure      3845   11861
Birth       Food Insecure             2182   11861
6 months    Food Secure              12346   24356
6 months    Mildly Food Insecure      8095   24356
6 months    Food Insecure             3915   24356
24 months   Food Secure               7599   15313
24 months   Mildly Food Insecure      5052   15313
24 months   Food Insecure             2662   15313


The following strata were considered:

* agecat: 24 months
* agecat: 6 months
* agecat: Birth



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/65518d92-e8bd-445e-aeec-33a8dd54fad2/1832b0a7-2e71-47f5-b65f-8c03d5ce4c86/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/65518d92-e8bd-445e-aeec-33a8dd54fad2/1832b0a7-2e71-47f5-b65f-8c03d5ce4c86/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/65518d92-e8bd-445e-aeec-33a8dd54fad2/1832b0a7-2e71-47f5-b65f-8c03d5ce4c86/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  ---------------------  ---------------  -----------  -----------  -----------
Birth       Food Secure            NA                -0.6583606   -0.7322380   -0.5844833
Birth       Mildly Food Insecure   NA                -0.6786906   -0.8640082   -0.4933730
Birth       Food Insecure          NA                -0.6729473   -0.8480893   -0.4978053
6 months    Food Secure            NA                -0.4930655   -0.5648923   -0.4212386
6 months    Mildly Food Insecure   NA                -0.4812303   -0.6172515   -0.3452091
6 months    Food Insecure          NA                -0.5544742   -0.6732908   -0.4356576
24 months   Food Secure            NA                -1.1661100   -1.2440214   -1.0881985
24 months   Mildly Food Insecure   NA                -1.1450266   -1.2800226   -1.0100305
24 months   Food Insecure          NA                -1.1961572   -1.3230329   -1.0692815


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.6672110   -0.7162976   -0.6181244
6 months    NA                   NA                -0.4993139   -0.5401313   -0.4584964
24 months   NA                   NA                -1.1667966   -1.2092074   -1.1243857


### Parameter: ATE


agecat      intervention_level     baseline_level      estimate     ci_lower    ci_upper
----------  ---------------------  ---------------  -----------  -----------  ----------
Birth       Food Secure            Food Secure        0.0000000    0.0000000   0.0000000
Birth       Mildly Food Insecure   Food Secure       -0.0203300   -0.2190966   0.1784365
Birth       Food Insecure          Food Secure       -0.0145867   -0.2033498   0.1741765
6 months    Food Secure            Food Secure        0.0000000    0.0000000   0.0000000
6 months    Mildly Food Insecure   Food Secure        0.0118352   -0.1406723   0.1643426
6 months    Food Insecure          Food Secure       -0.0614087   -0.1985966   0.0757791
24 months   Food Secure            Food Secure        0.0000000    0.0000000   0.0000000
24 months   Mildly Food Insecure   Food Secure        0.0210834   -0.1329813   0.1751481
24 months   Food Insecure          Food Secure       -0.0300472   -0.1766964   0.1166019


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       Food Secure          NA                -0.0088504   -0.0617183   0.0440175
6 months    Food Secure          NA                -0.0062484   -0.0659578   0.0534611
24 months   Food Secure          NA                -0.0006866   -0.0652676   0.0638943
