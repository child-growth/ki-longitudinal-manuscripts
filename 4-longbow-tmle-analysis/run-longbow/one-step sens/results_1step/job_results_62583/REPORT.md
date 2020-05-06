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

**Intervention Variable:** anywast06

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      anywast06    n_cell      n  outcome_variable 
----------  ----------  -------  -----  -----------------
Birth       0              2952   4396  haz              
Birth       1              1444   4396  haz              
6 months    0              6830   9071  haz              
6 months    1              2241   9071  haz              
24 months   0              3914   5472  haz              
24 months   1              1558   5472  haz              


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
![](/tmp/7fdd88a9-2e6a-42b2-aa35-bd908ae4fdc5/174ed125-27f2-4c3f-9b1f-c01ca72a057d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7fdd88a9-2e6a-42b2-aa35-bd908ae4fdc5/174ed125-27f2-4c3f-9b1f-c01ca72a057d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7fdd88a9-2e6a-42b2-aa35-bd908ae4fdc5/174ed125-27f2-4c3f-9b1f-c01ca72a057d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.7593720   -0.8053853   -0.7133587
Birth       1                    NA                -0.2992747   -0.3740859   -0.2244635
6 months    0                    NA                -1.0007932   -1.0316440   -0.9699424
6 months    1                    NA                -1.0303461   -1.0928912   -0.9678010
24 months   0                    NA                -1.7266452   -1.7663257   -1.6869647
24 months   1                    NA                -1.8419993   -1.9036313   -1.7803672


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  -------------------  ---------------  -----------  ----------  -----------
Birth       NA                   NA                -0.6045405   -0.645941   -0.5631400
6 months    NA                   NA                -1.0080185   -1.035762   -0.9802746
24 months   NA                   NA                -1.7560728   -1.789314   -1.7228316


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                  0.4600973    0.3753933    0.5448013
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.0295529   -0.0981484    0.0390426
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.1153541   -0.1874259   -0.0432822


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.1548315    0.1256700    0.1839930
6 months    0                    NA                -0.0072253   -0.0219357    0.0074851
24 months   0                    NA                -0.0294276   -0.0485227   -0.0103325
