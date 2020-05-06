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

**Intervention Variable:** enwast

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

agecat      enwast    n_cell       n  outcome_variable 
----------  -------  -------  ------  -----------------
Birth       0          53305   63907  haz              
Birth       1          10602   63907  haz              
6 months    0          55343   65057  haz              
6 months    1           9714   65057  haz              
24 months   0          27691   32462  haz              
24 months   1           4771   32462  haz              


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
![](/tmp/5f5792ed-c9a3-4459-b4cf-aefc92a8a001/07654751-ca97-4711-bea6-82b0a3f6576d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5f5792ed-c9a3-4459-b4cf-aefc92a8a001/07654751-ca97-4711-bea6-82b0a3f6576d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5f5792ed-c9a3-4459-b4cf-aefc92a8a001/07654751-ca97-4711-bea6-82b0a3f6576d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.3895938   -0.4020777   -0.3771098
Birth       1                    NA                 0.2208383    0.1839361    0.2577405
6 months    0                    NA                -0.7726399   -0.7875962   -0.7576835
6 months    1                    NA                -0.8251293   -0.8627273   -0.7875314
24 months   0                    NA                -1.7014894   -1.7223361   -1.6806427
24 months   1                    NA                -1.6512894   -1.7037378   -1.5988411


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.2836256   -0.2960281   -0.2712231
6 months    NA                   NA                -0.7807701   -0.7947520   -0.7667883
24 months   NA                   NA                -1.7002060   -1.7195275   -1.6808845


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                  0.6104321    0.5715953    0.6492689
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.0524895   -0.0927658   -0.0122131
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                  0.0502000   -0.0063132    0.1067132


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.1059682    0.0988549    0.1130814
6 months    0                    NA                -0.0081303   -0.0143621   -0.0018984
24 months   0                    NA                 0.0012834   -0.0071409    0.0097078
