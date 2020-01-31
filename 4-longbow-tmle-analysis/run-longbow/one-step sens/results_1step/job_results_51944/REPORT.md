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

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      mage       n_cell       n
----------  --------  -------  ------
Birth       [20-30)     36391   59655
Birth       <20         13205   59655
Birth       >=30        10059   59655
6 months    [20-30)     37424   61408
6 months    <20         13079   61408
6 months    >=30        10905   61408
24 months   [20-30)     15656   26805
24 months   <20          5859   26805
24 months   >=30         5290   26805


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
![](/tmp/d71562bf-7b93-48d2-abec-aa3b04599614/f744bf21-82eb-429a-90a7-f70ff6d4081b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d71562bf-7b93-48d2-abec-aa3b04599614/f744bf21-82eb-429a-90a7-f70ff6d4081b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d71562bf-7b93-48d2-abec-aa3b04599614/f744bf21-82eb-429a-90a7-f70ff6d4081b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       [20-30)              NA                -0.3904704   -0.4093128   -0.3716279
Birth       <20                  NA                -0.6589590   -0.6995065   -0.6184115
Birth       >=30                 NA                -0.2339801   -0.2721920   -0.1957681
6 months    [20-30)              NA                -0.8092269   -0.8276293   -0.7908246
6 months    <20                  NA                -0.9369694   -0.9776703   -0.8962685
6 months    >=30                 NA                -0.7824600   -0.8162650   -0.7486549
24 months   [20-30)              NA                -1.7164177   -1.7443301   -1.6885054
24 months   <20                  NA                -1.8332314   -1.8939408   -1.7725221
24 months   >=30                 NA                -1.6902208   -1.7364207   -1.6440210


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.4190267   -0.4340738   -0.4039796
6 months    NA                   NA                -0.8355148   -0.8502621   -0.8207675
24 months   NA                   NA                -1.7344290   -1.7556361   -1.7132220


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       <20                  [20-30)           -0.2684886   -0.3131373   -0.2238399
Birth       >=30                 [20-30)            0.1564903    0.1139526    0.1990280
6 months    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    <20                  [20-30)           -0.1277425   -0.1723890   -0.0830960
6 months    >=30                 [20-30)            0.0267669   -0.0116716    0.0652055
24 months   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   <20                  [20-30)           -0.1168137   -0.1836788   -0.0499486
24 months   >=30                 [20-30)            0.0261969   -0.0277511    0.0801450


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       [20-30)              NA                -0.0285564   -0.0402753   -0.0168374
6 months    [20-30)              NA                -0.0262879   -0.0377445   -0.0148313
24 months   [20-30)              NA                -0.0180113   -0.0362211    0.0001985
