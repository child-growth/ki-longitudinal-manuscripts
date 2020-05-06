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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      mhtcm           n_cell       n  outcome_variable 
----------  -------------  -------  ------  -----------------
Birth       >=155 cm         27809   56682  haz              
Birth       <151 cm          18830   56682  haz              
Birth       [151-155) cm     10043   56682  haz              
6 months    >=155 cm         27236   52747  haz              
6 months    <151 cm          16160   52747  haz              
6 months    [151-155) cm      9351   52747  haz              
24 months   >=155 cm         10000   24425  haz              
24 months   <151 cm           9489   24425  haz              
24 months   [151-155) cm      4936   24425  haz              


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
![](/tmp/b1eb7e3d-ad27-4779-9cf8-9506ce6acfd4/3b6a3287-51aa-406b-984c-3c1cb3f2b618/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b1eb7e3d-ad27-4779-9cf8-9506ce6acfd4/3b6a3287-51aa-406b-984c-3c1cb3f2b618/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b1eb7e3d-ad27-4779-9cf8-9506ce6acfd4/3b6a3287-51aa-406b-984c-3c1cb3f2b618/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=155 cm             NA                -0.2695681   -0.2968794   -0.2422569
Birth       <151 cm              NA                -1.3266624   -1.3909649   -1.2623598
Birth       [151-155) cm         NA                -0.5579543   -0.5992024   -0.5167063
6 months    >=155 cm             NA                -0.5484062   -0.5720588   -0.5247535
6 months    <151 cm              NA                -1.6583205   -1.7027543   -1.6138866
6 months    [151-155) cm         NA                -0.9467021   -0.9837899   -0.9096143
24 months   >=155 cm             NA                -1.3277563   -1.3694247   -1.2860878
24 months   <151 cm              NA                -2.5462292   -2.5926288   -2.4998296
24 months   [151-155) cm         NA                -1.7448370   -1.7944681   -1.6952059


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.4916492   -0.5085939   -0.4747045
6 months    NA                   NA                -0.8442210   -0.8603144   -0.8281276
24 months   NA                   NA                -1.6962480   -1.7185750   -1.6739211


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       <151 cm              >=155 cm          -1.0570943   -1.1269039   -0.9872846
Birth       [151-155) cm         >=155 cm          -0.2883862   -0.3376782   -0.2390942
6 months    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    <151 cm              >=155 cm          -1.1099143   -1.1603780   -1.0594506
6 months    [151-155) cm         >=155 cm          -0.3982960   -0.4422958   -0.3542962
24 months   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   <151 cm              >=155 cm          -1.2184729   -1.2814711   -1.1554747
24 months   [151-155) cm         >=155 cm          -0.4170808   -0.4820970   -0.3520645


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=155 cm             NA                -0.2220811   -0.2437995   -0.2003627
6 months    >=155 cm             NA                -0.2958149   -0.3147910   -0.2768387
24 months   >=155 cm             NA                -0.3684918   -0.4066716   -0.3303119
