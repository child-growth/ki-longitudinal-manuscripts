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

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      birthlen      n_cell       n  outcome_variable 
----------  -----------  -------  ------  -----------------
Birth       >=50 cm        22546   63491  whz              
Birth       <48 cm         22526   63491  whz              
Birth       [48-50) cm     18419   63491  whz              
6 months    >=50 cm        23047   58219  whz              
6 months    <48 cm         20514   58219  whz              
6 months    [48-50) cm     14658   58219  whz              
24 months   >=50 cm         8600   27584  whz              
24 months   <48 cm         11478   27584  whz              
24 months   [48-50) cm      7506   27584  whz              


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
![](/tmp/40c1cdc5-3e6c-4894-8eb0-d407d0952f01/0212f064-305e-4bd6-bfff-423e059174c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/40c1cdc5-3e6c-4894-8eb0-d407d0952f01/0212f064-305e-4bd6-bfff-423e059174c0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/40c1cdc5-3e6c-4894-8eb0-d407d0952f01/0212f064-305e-4bd6-bfff-423e059174c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=50 cm              NA                -1.1679088   -1.1963365   -1.1394811
Birth       <48 cm               NA                -0.2800309   -0.3113503   -0.2487115
Birth       [48-50) cm           NA                -0.7455295   -0.7704279   -0.7206311
6 months    >=50 cm              NA                 0.0282041   -0.0028117    0.0592199
6 months    <48 cm               NA                -0.4209417   -0.4502277   -0.3916556
6 months    [48-50) cm           NA                -0.0775055   -0.1046821   -0.0503289
24 months   >=50 cm              NA                -0.4521721   -0.4872752   -0.4170691
24 months   <48 cm               NA                -1.1573457   -1.1893322   -1.1253591
24 months   [48-50) cm           NA                -0.6724491   -0.7040335   -0.6408646


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8429706   -0.8594520   -0.8264892
6 months    NA                   NA                -0.0902491   -0.1065523   -0.0739459
24 months   NA                   NA                -0.7117037   -0.7302076   -0.6931997


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       <48 cm               >=50 cm            0.8878779    0.8458352    0.9299206
Birth       [48-50) cm           >=50 cm            0.4223793    0.3848278    0.4599308
6 months    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    <48 cm               >=50 cm           -0.4491458   -0.4918020   -0.4064895
6 months    [48-50) cm           >=50 cm           -0.1057097   -0.1469209   -0.0644985
24 months   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   <48 cm               >=50 cm           -0.7051735   -0.7526800   -0.6576671
24 months   [48-50) cm           >=50 cm           -0.2202769   -0.2674133   -0.1731405


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=50 cm              NA                 0.3249383    0.3004563    0.3494202
6 months    >=50 cm              NA                -0.1184532   -0.1456249   -0.0912815
24 months   >=50 cm              NA                -0.2595315   -0.2901465   -0.2289166
