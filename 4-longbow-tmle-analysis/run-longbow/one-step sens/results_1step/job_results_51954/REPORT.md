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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      hhwealth_quart    n_cell       n
----------  ---------------  -------  ------
Birth       Wealth Q4           5663   25049
Birth       Wealth Q1           6444   25049
Birth       Wealth Q2           6456   25049
Birth       Wealth Q3           6486   25049
6 months    Wealth Q4           8316   30585
6 months    Wealth Q1           7088   30585
6 months    Wealth Q2           7266   30585
6 months    Wealth Q3           7915   30585
24 months   Wealth Q4           5234   19800
24 months   Wealth Q1           4596   19800
24 months   Wealth Q2           4745   19800
24 months   Wealth Q3           5225   19800


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
![](/tmp/3cbd053e-f55d-4388-9e0c-ebfe8bb02900/140978f5-b86c-4af8-bf21-469f3d5527e7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3cbd053e-f55d-4388-9e0c-ebfe8bb02900/140978f5-b86c-4af8-bf21-469f3d5527e7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3cbd053e-f55d-4388-9e0c-ebfe8bb02900/140978f5-b86c-4af8-bf21-469f3d5527e7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       Wealth Q4            NA                -1.295064   -1.368068   -1.222061
Birth       Wealth Q1            NA                -1.337586   -1.440427   -1.234745
Birth       Wealth Q2            NA                -1.335147   -1.435356   -1.234937
Birth       Wealth Q3            NA                -1.329273   -1.404631   -1.253914
6 months    Wealth Q4            NA                -1.217928   -1.264320   -1.171535
6 months    Wealth Q1            NA                -1.328651   -1.383422   -1.273881
6 months    Wealth Q2            NA                -1.301849   -1.356565   -1.247133
6 months    Wealth Q3            NA                -1.253504   -1.299418   -1.207590
24 months   Wealth Q4            NA                -1.875266   -1.928074   -1.822458
24 months   Wealth Q1            NA                -2.159844   -2.228067   -2.091622
24 months   Wealth Q2            NA                -2.065155   -2.128420   -2.001890
24 months   Wealth Q3            NA                -2.016004   -2.075373   -1.956635


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.325420   -1.358764   -1.292075
6 months    NA                   NA                -1.263565   -1.289192   -1.237938
24 months   NA                   NA                -2.015746   -2.046052   -1.985440


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       Wealth Q1            Wealth Q4         -0.0425211   -0.1700643    0.0850221
Birth       Wealth Q2            Wealth Q4         -0.0400822   -0.1650517    0.0848874
Birth       Wealth Q3            Wealth Q4         -0.0342080   -0.1404371    0.0720210
6 months    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    Wealth Q1            Wealth Q4         -0.1107235   -0.1801432   -0.0413038
6 months    Wealth Q2            Wealth Q4         -0.0839213   -0.1534034   -0.0144392
6 months    Wealth Q3            Wealth Q4         -0.0355760   -0.0983448    0.0271927
24 months   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   Wealth Q1            Wealth Q4         -0.2845780   -0.3688299   -0.2003262
24 months   Wealth Q2            Wealth Q4         -0.1898885   -0.2696172   -0.1101599
24 months   Wealth Q3            Wealth Q4         -0.1407377   -0.2172456   -0.0642297


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Wealth Q4            NA                -0.0303554   -0.0942246    0.0335139
6 months    Wealth Q4            NA                -0.0456372   -0.0848276   -0.0064468
24 months   Wealth Q4            NA                -0.1404796   -0.1854860   -0.0954732
