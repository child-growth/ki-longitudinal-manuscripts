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
Birth       >=50 cm        22899   70599  haz              
Birth       <48 cm         29145   70599  haz              
Birth       [48-50) cm     18555   70599  haz              
6 months    >=50 cm        23131   58416  haz              
6 months    <48 cm         20543   58416  haz              
6 months    [48-50) cm     14742   58416  haz              
24 months   >=50 cm         8947   28896  haz              
24 months   <48 cm         11952   28896  haz              
24 months   [48-50) cm      7997   28896  haz              


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
![](/tmp/e3a546ce-4ca4-47ca-987a-47d0a1136edc/d56e281f-d21d-475a-a7f7-cc2aeb30229b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e3a546ce-4ca4-47ca-987a-47d0a1136edc/d56e281f-d21d-475a-a7f7-cc2aeb30229b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e3a546ce-4ca4-47ca-987a-47d0a1136edc/d56e281f-d21d-475a-a7f7-cc2aeb30229b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=50 cm              NA                 0.9688453    0.9501370    0.9875537
Birth       <48 cm               NA                -2.3959039   -2.4140634   -2.3777444
Birth       [48-50) cm           NA                -0.4260868   -0.4332565   -0.4189171
6 months    >=50 cm              NA                -0.1720725   -0.1989434   -0.1452016
6 months    <48 cm               NA                -1.9653095   -1.9921792   -1.9384398
6 months    [48-50) cm           NA                -0.8081126   -0.8313718   -0.7848535
24 months   >=50 cm              NA                -1.1875748   -1.2245002   -1.1506494
24 months   <48 cm               NA                -2.4042350   -2.4393418   -2.3691281
24 months   [48-50) cm           NA                -1.6062337   -1.6397533   -1.5727140


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.5605357   -0.5745350   -0.5465364
6 months    NA                   NA                -0.8282852   -0.8435622   -0.8130082
24 months   NA                   NA                -1.7345667   -1.7550782   -1.7140552


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
Birth       <48 cm               >=50 cm           -3.3647492   -3.3912955   -3.3382030
Birth       [48-50) cm           >=50 cm           -1.3949321   -1.4145592   -1.3753050
6 months    >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6 months    <48 cm               >=50 cm           -1.7932370   -1.8311755   -1.7552985
6 months    [48-50) cm           >=50 cm           -0.6360401   -0.6714464   -0.6006339
24 months   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
24 months   <48 cm               >=50 cm           -1.2166602   -1.2672392   -1.1660812
24 months   [48-50) cm           >=50 cm           -0.4186588   -0.4680488   -0.3692689


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=50 cm              NA                -1.5293810   -1.5457588   -1.5130033
6 months    >=50 cm              NA                -0.6562127   -0.6802622   -0.6321633
24 months   >=50 cm              NA                -0.5469919   -0.5799443   -0.5140395
