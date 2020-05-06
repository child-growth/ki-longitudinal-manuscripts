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

**Intervention Variable:** birthwt

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

agecat      birthwt                       n_cell       n  outcome_variable 
----------  ---------------------------  -------  ------  -----------------
Birth       Normal or high birthweight     53609   63491  whz              
Birth       Low birthweight                 9882   63491  whz              
6 months    Normal or high birthweight     50831   61933  whz              
6 months    Low birthweight                11102   61933  whz              
24 months   Normal or high birthweight     22575   28987  whz              
24 months   Low birthweight                 6412   28987  whz              


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
![](/tmp/5d4c4842-3a7d-438e-a28e-8275b45c4da9/3b8b508f-b29e-452d-9c21-14253e98b336/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5d4c4842-3a7d-438e-a28e-8275b45c4da9/3b8b508f-b29e-452d-9c21-14253e98b336/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5d4c4842-3a7d-438e-a28e-8275b45c4da9/3b8b508f-b29e-452d-9c21-14253e98b336/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       Normal or high birthweight   NA                -0.6388573   -0.6550643   -0.6226502
Birth       Low birthweight              NA                -2.4184577   -2.4579951   -2.3789203
6 months    Normal or high birthweight   NA                -0.0107089   -0.0270227    0.0056050
6 months    Low birthweight              NA                -1.3519219   -1.4150380   -1.2888059
24 months   Normal or high birthweight   NA                -0.5946598   -0.6143189   -0.5750008
24 months   Low birthweight              NA                -1.7085189   -1.7772263   -1.6398115


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8429706   -0.8594520   -0.8264892
6 months    NA                   NA                -0.0837019   -0.0991144   -0.0682894
24 months   NA                   NA                -0.6973714   -0.7155551   -0.6791877


### Parameter: ATE


agecat      intervention_level           baseline_level                 estimate    ci_lower    ci_upper
----------  ---------------------------  ---------------------------  ----------  ----------  ----------
Birth       Normal or high birthweight   Normal or high birthweight     0.000000    0.000000    0.000000
Birth       Low birthweight              Normal or high birthweight    -1.779600   -1.822392   -1.736809
6 months    Normal or high birthweight   Normal or high birthweight     0.000000    0.000000    0.000000
6 months    Low birthweight              Normal or high birthweight    -1.341213   -1.406496   -1.275930
24 months   Normal or high birthweight   Normal or high birthweight     0.000000    0.000000    0.000000
24 months   Low birthweight              Normal or high birthweight    -1.113859   -1.185539   -1.042180


### Parameter: PAR


agecat      intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       Normal or high birthweight   NA                -0.2041133   -0.2121738   -0.1960528
6 months    Normal or high birthweight   NA                -0.0729930   -0.0801043   -0.0658818
24 months   Normal or high birthweight   NA                -0.1027116   -0.1113450   -0.0940782
