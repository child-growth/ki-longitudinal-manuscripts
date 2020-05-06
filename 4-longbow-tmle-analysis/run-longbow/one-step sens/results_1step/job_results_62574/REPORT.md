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
Birth       >=167 cm         12886   14654  haz              
Birth       <162 cm            566   14654  haz              
Birth       [162-167) cm      1202   14654  haz              
6 months    >=167 cm         12641   14920  haz              
6 months    <162 cm            808   14920  haz              
6 months    [162-167) cm      1471   14920  haz              
24 months   >=167 cm          4336    5493  haz              
24 months   <162 cm            457    5493  haz              
24 months   [162-167) cm       700    5493  haz              


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
![](/tmp/40bd29bd-4c91-4977-ad4b-8ff5e2320f58/565a96c4-51a1-430e-aeaa-b81c4f5fd41a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/40bd29bd-4c91-4977-ad4b-8ff5e2320f58/565a96c4-51a1-430e-aeaa-b81c4f5fd41a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/40bd29bd-4c91-4977-ad4b-8ff5e2320f58/565a96c4-51a1-430e-aeaa-b81c4f5fd41a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=167 cm             NA                 1.0692605    0.9560129    1.1825080
Birth       <162 cm              NA                 0.0234942   -0.2354244    0.2824128
Birth       [162-167) cm         NA                 0.7687033    0.5786465    0.9587601
6 months    >=167 cm             NA                -0.1390819   -0.2367902   -0.0413735
6 months    <162 cm              NA                -1.2381165   -1.3954621   -1.0807709
6 months    [162-167) cm         NA                -0.5469323   -0.6698589   -0.4240056
24 months   >=167 cm             NA                -0.5586495   -0.8220973   -0.2952017
24 months   <162 cm              NA                -1.8755453   -2.0706923   -1.6803983
24 months   [162-167) cm         NA                -1.1332773   -1.2866799   -0.9798747


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                 1.0571172    0.9904723    1.1237620
6 months    NA                   NA                -0.1752574   -0.2245260   -0.1259887
24 months   NA                   NA                -0.7660331   -0.8232082   -0.7088580


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
Birth       <162 cm              >=167 cm          -1.0457663   -1.3344024   -0.7571301
Birth       [162-167) cm         >=167 cm          -0.3005571   -0.5335571   -0.0675572
6 months    >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6 months    <162 cm              >=167 cm          -1.0990346   -1.2926805   -0.9053887
6 months    [162-167) cm         >=167 cm          -0.4078504   -0.5747643   -0.2409365
24 months   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
24 months   <162 cm              >=167 cm          -1.3168958   -1.6543832   -0.9794083
24 months   [162-167) cm         >=167 cm          -0.5746277   -0.8915687   -0.2576867


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       >=167 cm             NA                -0.0121433   -0.1001344   0.0758479
6 months    >=167 cm             NA                -0.0361755   -0.1274060   0.0550550
24 months   >=167 cm             NA                -0.2073836   -0.4717763   0.0570091
