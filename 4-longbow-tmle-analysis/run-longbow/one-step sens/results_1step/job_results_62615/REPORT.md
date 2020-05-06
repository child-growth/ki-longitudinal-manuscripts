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
Birth       >=58 kg        16824   45626  whz              
Birth       <52 kg         21873   45626  whz              
Birth       [52-58) kg      6929   45626  whz              
6 months    >=58 kg        16912   45645  whz              
6 months    <52 kg         21647   45645  whz              
6 months    [52-58) kg      7086   45645  whz              
24 months   >=58 kg         4294   16538  whz              
24 months   <52 kg         10135   16538  whz              
24 months   [52-58) kg      2109   16538  whz              


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
![](/tmp/3165d4eb-e0f0-4ca3-8605-ddd735e9de62/e4c8de81-5fc1-4a7d-8000-1f3b9fd7a089/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3165d4eb-e0f0-4ca3-8605-ddd735e9de62/e4c8de81-5fc1-4a7d-8000-1f3b9fd7a089/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3165d4eb-e0f0-4ca3-8605-ddd735e9de62/e4c8de81-5fc1-4a7d-8000-1f3b9fd7a089/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=58 kg              NA                -0.7322432   -0.7727612   -0.6917252
Birth       <52 kg               NA                -0.9231578   -0.9782227   -0.8680930
Birth       [52-58) kg           NA                -0.8251535   -0.8786097   -0.7716972
6 months    >=58 kg              NA                 0.1706897    0.1345061    0.2068734
6 months    <52 kg               NA                -0.1244690   -0.1684533   -0.0804847
6 months    [52-58) kg           NA                -0.0113970   -0.0552038    0.0324099
24 months   >=58 kg              NA                -0.3101014   -0.4003837   -0.2198190
24 months   <52 kg               NA                -0.7252737   -0.7775778   -0.6729695
24 months   [52-58) kg           NA                -0.5968711   -0.6868029   -0.5069393


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8305995   -0.8551059   -0.8060932
6 months    NA                   NA                -0.0017925   -0.0215402    0.0179553
24 months   NA                   NA                -0.6295763   -0.6637872   -0.5953653


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       <52 kg               >=58 kg           -0.1909146   -0.2590056   -0.1228236
Birth       [52-58) kg           >=58 kg           -0.0929103   -0.1597139   -0.0261067
6 months    >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    <52 kg               >=58 kg           -0.2951587   -0.3522071   -0.2381103
6 months    [52-58) kg           >=58 kg           -0.1820867   -0.2391153   -0.1250581
24 months   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   <52 kg               >=58 kg           -0.4151723   -0.5190573   -0.3112873
24 months   [52-58) kg           >=58 kg           -0.2867697   -0.4141832   -0.1593562


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=58 kg              NA                -0.0983564   -0.1298726   -0.0668401
6 months    >=58 kg              NA                -0.1724822   -0.2023048   -0.1426596
24 months   >=58 kg              NA                -0.3194749   -0.4008803   -0.2380695
