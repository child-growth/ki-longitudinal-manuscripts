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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      birthlen      n_cell       n
----------  -----------  -------  ------
Birth       >=50 cm        21948   62600
Birth       <48 cm         24463   62600
Birth       [48-50) cm     16189   62600
6 months    >=50 cm        24559   60251
6 months    <48 cm         20665   60251
6 months    [48-50) cm     15027   60251
24 months   >=50 cm         9352   28664
24 months   <48 cm         11580   28664
24 months   [48-50) cm      7732   28664


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
![](/tmp/b815dc95-8c86-432a-88c7-ee73649d82cf/f77f578a-cc46-4225-8d5b-9a0334cf9d30/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b815dc95-8c86-432a-88c7-ee73649d82cf/f77f578a-cc46-4225-8d5b-9a0334cf9d30/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b815dc95-8c86-432a-88c7-ee73649d82cf/f77f578a-cc46-4225-8d5b-9a0334cf9d30/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=50 cm              NA                 1.0222560    1.0034529    1.0410592
Birth       <48 cm               NA                -2.4155422   -2.4353260   -2.3957584
Birth       [48-50) cm           NA                -0.3789009   -0.3863702   -0.3714315
6 months    >=50 cm              NA                -0.3430805   -0.3696584   -0.3165026
6 months    <48 cm               NA                -1.9756515   -2.0029987   -1.9483043
6 months    [48-50) cm           NA                -0.8263276   -0.8496553   -0.8029999
24 months   >=50 cm              NA                -1.2719222   -1.3139840   -1.2298605
24 months   <48 cm               NA                -2.3578965   -2.3958021   -2.3199910
24 months   [48-50) cm           NA                -1.5815827   -1.6171676   -1.5459977


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.4399174   -0.4543798   -0.4254550
6 months    NA                   NA                -0.8322291   -0.8475757   -0.8168826
24 months   NA                   NA                -1.6919623   -1.7134978   -1.6704268


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       <48 cm               >=50 cm           -3.4377982   -3.4653316   -3.4102649
Birth       [48-50) cm           >=50 cm           -1.4011569   -1.4207927   -1.3815211
6 months    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    <48 cm               >=50 cm           -1.6325710   -1.6706535   -1.5944885
6 months    [48-50) cm           >=50 cm           -0.4832471   -0.5184781   -0.4480160
24 months   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   <48 cm               >=50 cm           -1.0859743   -1.1423261   -1.0296225
24 months   [48-50) cm           >=50 cm           -0.3096605   -0.3643508   -0.2549701


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=50 cm              NA                -1.4621735   -1.4793002   -1.4450467
6 months    >=50 cm              NA                -0.4891486   -0.5130781   -0.4652192
24 months   >=50 cm              NA                -0.4200401   -0.4580514   -0.3820287
