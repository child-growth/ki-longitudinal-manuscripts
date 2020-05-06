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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      meducyrs    n_cell       n  outcome_variable 
----------  ---------  -------  ------  -----------------
Birth       High         18871   60525  whz              
Birth       Low          20269   60525  whz              
Birth       Medium       21385   60525  whz              
6 months    High         19459   64852  whz              
6 months    Low          21109   64852  whz              
6 months    Medium       24284   64852  whz              
24 months   High          8602   30280  whz              
24 months   Low          10441   30280  whz              
24 months   Medium       11237   30280  whz              


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
![](/tmp/26776bf6-c0b0-4726-9d6e-a542bbae85e1/5bf497f3-4013-4d13-8f90-f0e1c80fddbc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/26776bf6-c0b0-4726-9d6e-a542bbae85e1/5bf497f3-4013-4d13-8f90-f0e1c80fddbc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/26776bf6-c0b0-4726-9d6e-a542bbae85e1/5bf497f3-4013-4d13-8f90-f0e1c80fddbc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.8152653   -0.8473983   -0.7831324
Birth       Low                  NA                -0.8352274   -0.8697341   -0.8007207
Birth       Medium               NA                -0.8265303   -0.8562293   -0.7968312
6 months    High                 NA                -0.0130122   -0.0464614    0.0204370
6 months    Low                  NA                -0.1458863   -0.1798724   -0.1119001
6 months    Medium               NA                -0.0853305   -0.1132896   -0.0573714
24 months   High                 NA                -0.6623031   -0.7085939   -0.6160123
24 months   Low                  NA                -0.7687181   -0.8037682   -0.7336681
24 months   Medium               NA                -0.7053638   -0.7364216   -0.6743060


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8310555   -0.8484072   -0.8137039
6 months    NA                   NA                -0.0940838   -0.1097695   -0.0783982
24 months   NA                   NA                -0.7192461   -0.7378500   -0.7006421


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 High               0.0000000    0.0000000    0.0000000
Birth       Low                  High              -0.0199621   -0.0655003    0.0255761
Birth       Medium               High              -0.0112649   -0.0532017    0.0306718
6 months    High                 High               0.0000000    0.0000000    0.0000000
6 months    Low                  High              -0.1328741   -0.1806023   -0.0851458
6 months    Medium               High              -0.0723183   -0.1159540   -0.0286827
24 months   High                 High               0.0000000    0.0000000    0.0000000
24 months   Low                  High              -0.1064150   -0.1643498   -0.0484802
24 months   Medium               High              -0.0430607   -0.0987523    0.0126309


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.0157902   -0.0431228    0.0115424
6 months    High                 NA                -0.0810716   -0.1116301   -0.0505132
24 months   High                 NA                -0.0569429   -0.0999764   -0.0139095
