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

**Intervention Variable:** enstunt

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

agecat      enstunt    n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       0           58185   63492  whz              
Birth       1            5307   63492  whz              
6 months    0           58475   69330  whz              
6 months    1           10855   69330  whz              
24 months   0           27276   33711  whz              
24 months   1            6435   33711  whz              


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
![](/tmp/06f9ee8a-c01d-4120-880d-e0bc55e96648/85a4470d-c0af-4a4f-89d5-86de31fe3590/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/06f9ee8a-c01d-4120-880d-e0bc55e96648/85a4470d-c0af-4a4f-89d5-86de31fe3590/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/06f9ee8a-c01d-4120-880d-e0bc55e96648/85a4470d-c0af-4a4f-89d5-86de31fe3590/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.8626747   -0.8794370   -0.8459125
Birth       1                    NA                -0.2550083   -0.3381603   -0.1718562
6 months    0                    NA                -0.0799623   -0.0955311   -0.0643935
6 months    1                    NA                -0.5120234   -0.5601887   -0.4638581
24 months   0                    NA                -0.6458979   -0.6640666   -0.6277292
24 months   1                    NA                -1.3684869   -1.4204253   -1.3165484


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8429902   -0.8594713   -0.8265091
6 months    NA                   NA                -0.1067985   -0.1215768   -0.0920202
24 months   NA                   NA                -0.7109539   -0.7278520   -0.6940558


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                  0.6076665    0.5230139    0.6923191
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.4320611   -0.4826641   -0.3814581
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.7225890   -0.7776754   -0.6675026


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.0196845    0.0149433    0.0244257
6 months    0                    NA                -0.0268362   -0.0325472   -0.0211252
24 months   0                    NA                -0.0650560   -0.0720954   -0.0580166
