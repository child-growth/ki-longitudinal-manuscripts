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

**Intervention Variable:** fhtcm

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      fhtcm           n_cell       n  outcome_variable 
----------  -------------  -------  ------  -----------------
Birth       >=167 cm         12743   14424  whz              
Birth       <162 cm            522   14424  whz              
Birth       [162-167) cm      1159   14424  whz              
6 months    >=167 cm         12637   14915  whz              
6 months    <162 cm            808   14915  whz              
6 months    [162-167) cm      1470   14915  whz              
24 months   >=167 cm          4281    5438  whz              
24 months   <162 cm            459    5438  whz              
24 months   [162-167) cm       698    5438  whz              


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
![](/tmp/fe4728b3-bd27-4c38-982b-ef393fe58f78/78c6562a-edc4-4ec4-9160-d29b42128701/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fe4728b3-bd27-4c38-982b-ef393fe58f78/78c6562a-edc4-4ec4-9160-d29b42128701/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fe4728b3-bd27-4c38-982b-ef393fe58f78/78c6562a-edc4-4ec4-9160-d29b42128701/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=167 cm             NA                -1.1091058   -1.2267218   -0.9914898
Birth       <162 cm              NA                -1.1092080   -1.3498521   -0.8685639
Birth       [162-167) cm         NA                -1.1523154   -1.2907310   -1.0138998
6 months    >=167 cm             NA                 0.3774017    0.2944688    0.4603345
6 months    <162 cm              NA                -0.0336943   -0.2135840    0.1461954
6 months    [162-167) cm         NA                 0.2783790    0.1716874    0.3850706
24 months   >=167 cm             NA                 0.2655075    0.1754940    0.3555210
24 months   <162 cm              NA                -0.2056696   -0.4397707    0.0284314
24 months   [162-167) cm         NA                 0.0872807   -0.0301639    0.2047254


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -1.1148974   -1.1838970   -1.0458978
6 months    NA                   NA                 0.3763937    0.3263802    0.4264072
24 months   NA                   NA                 0.2369392    0.1915283    0.2823500


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       <162 cm              >=167 cm          -0.0001023   -0.2672552    0.2670506
Birth       [162-167) cm         >=167 cm          -0.0432096   -0.2236960    0.1372768
6 months    >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    <162 cm              >=167 cm          -0.4110960   -0.6119532   -0.2102388
6 months    [162-167) cm         >=167 cm          -0.0990226   -0.2392082    0.0411629
24 months   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   <162 cm              >=167 cm          -0.4711772   -0.7270553   -0.2152990
24 months   [162-167) cm         >=167 cm          -0.1782268   -0.3366560   -0.0197976


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       >=167 cm             NA                -0.0057916   -0.1015896   0.0900064
6 months    >=167 cm             NA                -0.0010080   -0.0704144   0.0683985
24 months   >=167 cm             NA                -0.0285684   -0.1072793   0.0501426
