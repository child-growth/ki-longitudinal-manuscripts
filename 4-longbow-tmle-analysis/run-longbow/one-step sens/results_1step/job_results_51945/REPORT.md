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

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      fage       n_cell       n
----------  --------  -------  ------
Birth       >=38         1418   17951
Birth       <32         13472   17951
Birth       [32-38)      3061   17951
6 months    >=38         1676   21296
6 months    <32         16039   21296
6 months    [32-38)      3581   21296
24 months   >=38         1045    8116
24 months   <32          5504    8116
24 months   [32-38)      1567    8116


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
![](/tmp/aa6b0e41-1fce-4426-bfe3-8d9de697cf02/831c7220-d0aa-4d36-a0cf-c185ea17dd24/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/aa6b0e41-1fce-4426-bfe3-8d9de697cf02/831c7220-d0aa-4d36-a0cf-c185ea17dd24/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/aa6b0e41-1fce-4426-bfe3-8d9de697cf02/831c7220-d0aa-4d36-a0cf-c185ea17dd24/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=38                 NA                 0.6573670    0.5021999    0.8125340
Birth       <32                  NA                 0.9267042    0.8494783    1.0039301
Birth       [32-38)              NA                 0.8314991    0.6452534    1.0177447
6 months    >=38                 NA                -0.3874183   -0.5164416   -0.2583950
6 months    <32                  NA                -0.2803121   -0.3693810   -0.1912431
6 months    [32-38)              NA                -0.3464056   -0.4909829   -0.2018283
24 months   >=38                 NA                -1.5761845   -1.7089045   -1.4434645
24 months   <32                  NA                -1.2289931   -1.3119348   -1.1460515
24 months   [32-38)              NA                -1.3953226   -1.5366631   -1.2539821


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                 0.9171712    0.8829174    0.9514250
6 months    NA                   NA                -0.3018486   -0.3342585   -0.2694387
24 months   NA                   NA                -1.2884824   -1.3247386   -1.2522263


### Parameter: ATE


agecat      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  ---------------  ----------  -----------  ----------
Birth       >=38                 >=38              0.0000000    0.0000000   0.0000000
Birth       <32                  >=38              0.2693372    0.0909715   0.4477029
Birth       [32-38)              >=38              0.1741321   -0.0728612   0.4211255
6 months    >=38                 >=38              0.0000000    0.0000000   0.0000000
6 months    <32                  >=38              0.1071062   -0.0537192   0.2679317
6 months    [32-38)              >=38              0.0410127   -0.1565182   0.2385436
24 months   >=38                 >=38              0.0000000    0.0000000   0.0000000
24 months   <32                  >=38              0.3471914    0.1876594   0.5067233
24 months   [32-38)              >=38              0.1808619   -0.0155934   0.3773172


### Parameter: PAR


agecat      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  ---------------  ----------  -----------  ----------
Birth       >=38                 NA                0.2598042    0.1075560   0.4120524
6 months    >=38                 NA                0.0855697   -0.0409967   0.2121361
24 months   >=38                 NA                0.2877021    0.1586025   0.4168017
