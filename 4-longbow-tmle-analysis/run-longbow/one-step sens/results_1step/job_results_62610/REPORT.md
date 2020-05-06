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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* W_nrooms
* brthmon
* W_parity
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      vagbrth    n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       0            3630   48437  whz              
Birth       1           44807   48437  whz              
6 months    0            4538   48795  whz              
6 months    1           44257   48795  whz              
24 months   0            1621   18585  whz              
24 months   1           16964   18585  whz              


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
![](/tmp/8df85d62-b53e-45fc-9bad-8dff572f1dea/43e01179-f517-41a1-b28e-dc51d33f2f19/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8df85d62-b53e-45fc-9bad-8dff572f1dea/43e01179-f517-41a1-b28e-dc51d33f2f19/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8df85d62-b53e-45fc-9bad-8dff572f1dea/43e01179-f517-41a1-b28e-dc51d33f2f19/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.9826510   -1.0665499   -0.8987521
Birth       1                    NA                -0.8170477   -0.8421627   -0.7919328
6 months    0                    NA                 0.1379402    0.0572853    0.2185950
6 months    1                    NA                -0.0094427   -0.0322791    0.0133936
24 months   0                    NA                -0.6745835   -0.8452780   -0.5038890
24 months   1                    NA                -0.8188999   -0.8664802   -0.7713196


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8206352   -0.8443584   -0.7969119
6 months    NA                   NA                -0.0027683   -0.0238872    0.0183505
24 months   NA                   NA                -0.8109707   -0.8508712   -0.7710702


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                  0.1656033    0.0782047    0.2530019
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.1473829   -0.2313413   -0.0634245
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.1443165   -0.3212482    0.0326152


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.1620159    0.0814275    0.2426042
6 months    0                    NA                -0.1407085   -0.2181002   -0.0633169
24 months   0                    NA                -0.1363872   -0.3013308    0.0285564
