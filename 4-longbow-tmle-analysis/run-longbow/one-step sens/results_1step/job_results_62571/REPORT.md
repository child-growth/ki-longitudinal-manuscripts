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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      mwtkg         n_cell       n  outcome_variable 
----------  -----------  -------  ------  -----------------
Birth       >=58 kg        17268   51128  haz              
Birth       <52 kg         26424   51128  haz              
Birth       [52-58) kg      7436   51128  haz              
6 months    >=58 kg        17021   45822  haz              
6 months    <52 kg         21691   45822  haz              
6 months    [52-58) kg      7110   45822  haz              
24 months   >=58 kg         5018   17815  haz              
24 months   <52 kg         10375   17815  haz              
24 months   [52-58) kg      2422   17815  haz              


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
![](/tmp/807c15c8-0bb3-4347-b7f7-e4cbffe880ad/d38b39a9-f10d-4334-a3e3-0499056757fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/807c15c8-0bb3-4347-b7f7-e4cbffe880ad/d38b39a9-f10d-4334-a3e3-0499056757fe/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/807c15c8-0bb3-4347-b7f7-e4cbffe880ad/d38b39a9-f10d-4334-a3e3-0499056757fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=58 kg              NA                -0.2248637   -0.2602471   -0.1894804
Birth       <52 kg               NA                -0.7317325   -0.7738575   -0.6896075
Birth       [52-58) kg           NA                -0.5377546   -0.5828127   -0.4926964
6 months    >=58 kg              NA                -0.5614897   -0.5944177   -0.5285616
6 months    <52 kg               NA                -1.0036359   -1.0459620   -0.9613097
6 months    [52-58) kg           NA                -0.7870621   -0.8274324   -0.7466918
24 months   >=58 kg              NA                -1.2109018   -1.2760759   -1.1457277
24 months   <52 kg               NA                -1.6560717   -1.7153395   -1.5968039
24 months   [52-58) kg           NA                -1.4386840   -1.5131524   -1.3642156


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.5335982   -0.5534696   -0.5137269
6 months    NA                   NA                -0.7898238   -0.8088747   -0.7707730
24 months   NA                   NA                -1.4963553   -1.5262163   -1.4664944


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       <52 kg               >=58 kg           -0.5068688   -0.5618342   -0.4519034
Birth       [52-58) kg           >=58 kg           -0.3128908   -0.3700490   -0.2557327
6 months    >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    <52 kg               >=58 kg           -0.4421462   -0.4958555   -0.3884369
6 months    [52-58) kg           >=58 kg           -0.2255724   -0.2776388   -0.1735061
24 months   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   <52 kg               >=58 kg           -0.4451698   -0.5331500   -0.3571897
24 months   [52-58) kg           >=58 kg           -0.2277822   -0.3263793   -0.1291851


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=58 kg              NA                -0.3087345   -0.3381210   -0.2793481
6 months    >=58 kg              NA                -0.2283341   -0.2550808   -0.2015875
24 months   >=58 kg              NA                -0.2854535   -0.3437547   -0.2271522
