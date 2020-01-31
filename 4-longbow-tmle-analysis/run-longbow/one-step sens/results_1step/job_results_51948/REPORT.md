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

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      mbmi             n_cell       n
----------  --------------  -------  ------
Birth       Normal weight     23789   24967
Birth       Underweight        1178   24967
6 months    Normal weight     25976   27704
6 months    Underweight        1728   27704
24 months   Normal weight      7379    7967
24 months   Underweight         588    7967


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
![](/tmp/290416c0-d6f3-4220-96a0-bcfa4e2b2966/f152028c-0df6-4c7c-a597-f9ddba71bb85/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/290416c0-d6f3-4220-96a0-bcfa4e2b2966/f152028c-0df6-4c7c-a597-f9ddba71bb85/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/290416c0-d6f3-4220-96a0-bcfa4e2b2966/f152028c-0df6-4c7c-a597-f9ddba71bb85/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Normal weight        NA                 0.5042128    0.4805997    0.5278259
Birth       Underweight          NA                 0.0430601   -0.0954257    0.1815458
6 months    Normal weight        NA                -0.4559191   -0.4764235   -0.4354146
6 months    Underweight          NA                -0.6770773   -0.7601349   -0.5940196
24 months   Normal weight        NA                -0.9142929   -0.9546741   -0.8739117
24 months   Underweight          NA                -1.3416854   -1.5000427   -1.1833281


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                 0.4854664    0.4628773    0.5080556
6 months    NA                   NA                -0.4689418   -0.4888086   -0.4490750
24 months   NA                   NA                -0.9428925   -0.9800761   -0.9057088


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       Underweight          Normal weight     -0.4611527   -0.6041753   -0.3181301
6 months    Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    Underweight          Normal weight     -0.2211582   -0.3066260   -0.1356903
24 months   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   Underweight          Normal weight     -0.4273925   -0.5949490   -0.2598360


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Normal weight        NA                -0.0187464   -0.0269097   -0.0105831
6 months    Normal weight        NA                -0.0130227   -0.0182991   -0.0077464
24 months   Normal weight        NA                -0.0285996   -0.0466502   -0.0105489
