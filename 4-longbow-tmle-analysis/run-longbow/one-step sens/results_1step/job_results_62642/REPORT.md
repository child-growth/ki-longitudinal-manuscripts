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

**Intervention Variable:** predexfd6

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      predexfd6    n_cell       n  outcome_variable 
----------  ----------  -------  ------  -----------------
Birth       1             11683   16435  whz              
Birth       0              4752   16435  whz              
6 months    1             12803   19750  whz              
6 months    0              6947   19750  whz              
24 months   1              8462   13474  whz              
24 months   0              5012   13474  whz              


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
![](/tmp/656dfe43-7922-4bfd-a8ae-d4d039d24be5/9dd6350c-7603-4283-8c7c-fd21c2747575/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/656dfe43-7922-4bfd-a8ae-d4d039d24be5/9dd6350c-7603-4283-8c7c-fd21c2747575/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/656dfe43-7922-4bfd-a8ae-d4d039d24be5/9dd6350c-7603-4283-8c7c-fd21c2747575/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.8146632   -0.8863187   -0.7430077
Birth       0                    NA                -0.8141787   -0.8672581   -0.7610993
6 months    1                    NA                -0.3528289   -0.4231896   -0.2824683
6 months    0                    NA                -0.4539180   -0.4959694   -0.4118666
24 months   1                    NA                -1.0558433   -1.1204581   -0.9912285
24 months   0                    NA                -1.0616650   -1.1041626   -1.0191675


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8068068   -0.8471018   -0.7665119
6 months    NA                   NA                -0.4191108   -0.4544890   -0.3837325
24 months   NA                   NA                -1.0647481   -1.0989345   -1.0305617


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       0                    1                  0.0004845   -0.0872525    0.0882216
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    0                    1                 -0.1010891   -0.1802149   -0.0219632
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   0                    1                 -0.0058217   -0.0798096    0.0681662


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                 0.0078564   -0.0530985    0.0688113
6 months    1                    NA                -0.0662818   -0.1264316   -0.0061321
24 months   1                    NA                -0.0089048   -0.0659210    0.0481114
