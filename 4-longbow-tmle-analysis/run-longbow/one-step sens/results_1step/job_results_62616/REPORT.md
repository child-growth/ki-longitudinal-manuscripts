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

**Intervention Variable:** mbmi

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

agecat      mbmi             n_cell       n  outcome_variable 
----------  --------------  -------  ------  -----------------
Birth       Normal weight     35624   44168  whz              
Birth       Underweight        8544   44168  whz              
6 months    Normal weight     36405   44595  whz              
6 months    Underweight        8190   44595  whz              
24 months   Normal weight     12560   16446  whz              
24 months   Underweight        3886   16446  whz              


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
![](/tmp/27f4f670-6dac-4619-9c0a-998cc762b26f/143d9f2d-9ea9-4f42-a14c-841541346c32/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/27f4f670-6dac-4619-9c0a-998cc762b26f/143d9f2d-9ea9-4f42-a14c-841541346c32/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/27f4f670-6dac-4619-9c0a-998cc762b26f/143d9f2d-9ea9-4f42-a14c-841541346c32/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Normal weight        NA                -0.8272620   -0.8538694   -0.8006547
Birth       Underweight          NA                -0.9912036   -1.1010236   -0.8813836
6 months    Normal weight        NA                 0.0208901   -0.0001208    0.0419010
6 months    Underweight          NA                -0.2670588   -0.3628918   -0.1712258
24 months   Normal weight        NA                -0.5927486   -0.6299502   -0.5555471
24 months   Underweight          NA                -0.8912524   -1.0390794   -0.7434253


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8425119   -0.8681868   -0.8168369
6 months    NA                   NA                -0.0060266   -0.0263391    0.0142858
24 months   NA                   NA                -0.6269179   -0.6613650   -0.5924709


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       Underweight          Normal weight     -0.1639416   -0.2767775   -0.0511056
6 months    Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    Underweight          Normal weight     -0.2879489   -0.3861478   -0.1897501
24 months   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   Underweight          Normal weight     -0.2985037   -0.4509376   -0.1460699


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Normal weight        NA                -0.0152499   -0.0215974   -0.0089023
6 months    Normal weight        NA                -0.0269167   -0.0324069   -0.0214266
24 months   Normal weight        NA                -0.0341693   -0.0489000   -0.0194386
