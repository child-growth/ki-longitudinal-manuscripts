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
Birth       High         20705   67421  haz              
Birth       Low          23067   67421  haz              
Birth       Medium       23649   67421  haz              
6 months    High         19569   65052  haz              
6 months    Low          21153   65052  haz              
6 months    Medium       24330   65052  haz              
24 months   High          9329   31629  haz              
24 months   Low          10710   31629  haz              
24 months   Medium       11590   31629  haz              


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
![](/tmp/79a1a6cb-819e-47e7-9daa-3d6e4bacfc70/43151a00-87b7-4520-b753-245be2fdad65/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/79a1a6cb-819e-47e7-9daa-3d6e4bacfc70/43151a00-87b7-4520-b753-245be2fdad65/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/79a1a6cb-819e-47e7-9daa-3d6e4bacfc70/43151a00-87b7-4520-b753-245be2fdad65/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.5517629   -0.5799092   -0.5236166
Birth       Low                  NA                -0.5867400   -0.6162507   -0.5572294
Birth       Medium               NA                -0.5827754   -0.6086795   -0.5568713
6 months    High                 NA                -0.7786515   -0.8104997   -0.7468034
6 months    Low                  NA                -0.9636704   -0.9970376   -0.9303031
6 months    Medium               NA                -0.8711395   -0.8974305   -0.8448486
24 months   High                 NA                -1.6052678   -1.6559593   -1.5545763
24 months   Low                  NA                -1.9502221   -1.9887537   -1.9116905
24 months   Medium               NA                -1.7843577   -1.8193940   -1.7493213


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.5699889   -0.5845386   -0.5554392
6 months    NA                   NA                -0.8700930   -0.8849394   -0.8552467
24 months   NA                   NA                -1.7736110   -1.7944510   -1.7527711


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 High               0.0000000    0.0000000    0.0000000
Birth       Low                  High              -0.0349772   -0.0750084    0.0050541
Birth       Medium               High              -0.0310125   -0.0684243    0.0063993
6 months    High                 High               0.0000000    0.0000000    0.0000000
6 months    Low                  High              -0.1850188   -0.2310809   -0.1389568
6 months    Medium               High              -0.0924880   -0.1336111   -0.0513649
24 months   High                 High               0.0000000    0.0000000    0.0000000
24 months   Low                  High              -0.3449543   -0.4085991   -0.2813095
24 months   Medium               High              -0.1790899   -0.2404224   -0.1177574


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.0182260   -0.0426542    0.0062022
6 months    High                 NA                -0.0914415   -0.1201975   -0.0626855
24 months   High                 NA                -0.1683433   -0.2160245   -0.1206621
