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
* W_mhtcm
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      vagbrth    n_cell       n
----------  --------  -------  ------
Birth       0            2772   43457
Birth       1           40685   43457
6 months    0            4519   48534
6 months    1           44015   48534
24 months   0            1621   18576
24 months   1           16955   18576


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
![](/tmp/d8a4eac2-0517-4b65-a800-dd201d8673d4/a52bd34e-0440-4edd-84e6-a30684f9defd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d8a4eac2-0517-4b65-a800-dd201d8673d4/a52bd34e-0440-4edd-84e6-a30684f9defd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d8a4eac2-0517-4b65-a800-dd201d8673d4/a52bd34e-0440-4edd-84e6-a30684f9defd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.9913111   -1.0844758   -0.8981464
Birth       1                    NA                -0.7941200   -0.8202175   -0.7680224
6 months    0                    NA                 0.1519846    0.0695898    0.2343795
6 months    1                    NA                -0.0131659   -0.0361327    0.0098010
24 months   0                    NA                -0.6370940   -0.8218060   -0.4523820
24 months   1                    NA                -0.8242177   -0.8704902   -0.7779452


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7936928   -0.8185156   -0.7688701
6 months    NA                   NA                -0.0037520   -0.0251058    0.0176018
24 months   NA                   NA                -0.8130862   -0.8530688   -0.7731035


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                  0.1971911    0.1005493    0.2938329
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.1651505   -0.2507772   -0.0795238
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.1871237   -0.3774075    0.0031602


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.1976182    0.1078361    0.2874004
6 months    0                    NA                -0.1557367   -0.2347631   -0.0767102
24 months   0                    NA                -0.1759922   -0.3548236    0.0028393
