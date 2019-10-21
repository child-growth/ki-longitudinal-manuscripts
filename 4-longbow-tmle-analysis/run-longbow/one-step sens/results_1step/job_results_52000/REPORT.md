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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      meducyrs    n_cell       n
----------  ---------  -------  ------
Birth       High         16417   53231
Birth       Low          17664   53231
Birth       Medium       19150   53231
6 months    High         17663   61807
6 months    Low          21371   61807
6 months    Medium       22773   61807
24 months   High          6978   27391
24 months   Low          10626   27391
24 months   Medium        9787   27391


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
![](/tmp/bbd4aed9-39e1-4efb-a47b-9e48d614e242/dcdcf263-96ed-4ff7-a889-226ff63c0a47/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bbd4aed9-39e1-4efb-a47b-9e48d614e242/dcdcf263-96ed-4ff7-a889-226ff63c0a47/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bbd4aed9-39e1-4efb-a47b-9e48d614e242/dcdcf263-96ed-4ff7-a889-226ff63c0a47/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.7796716   -0.8141402   -0.7452031
Birth       Low                  NA                -0.7981605   -0.8343963   -0.7619247
Birth       Medium               NA                -0.7987615   -0.8290794   -0.7684436
6 months    High                 NA                -0.0116500   -0.0460596    0.0227596
6 months    Low                  NA                -0.1282923   -0.1637895   -0.0927951
6 months    Medium               NA                -0.0717417   -0.0999247   -0.0435587
24 months   High                 NA                -0.5951263   -0.6439911   -0.5462614
24 months   Low                  NA                -0.7273206   -0.7617715   -0.6928698
24 months   Medium               NA                -0.6410850   -0.6727605   -0.6094094


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8004383   -0.8184408   -0.7824357
6 months    NA                   NA                -0.0818820   -0.0975445   -0.0662195
24 months   NA                   NA                -0.6688145   -0.6874169   -0.6502122


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 High               0.0000000    0.0000000    0.0000000
Birth       Low                  High              -0.0184889   -0.0665589    0.0295812
Birth       Medium               High              -0.0190899   -0.0628023    0.0246226
6 months    High                 High               0.0000000    0.0000000    0.0000000
6 months    Low                  High              -0.1166423   -0.1661249   -0.0671597
6 months    Medium               High              -0.0600917   -0.1045914   -0.0155920
24 months   High                 High               0.0000000    0.0000000    0.0000000
24 months   Low                  High              -0.1321944   -0.1918267   -0.0725620
24 months   Medium               High              -0.0459587   -0.1040897    0.0121723


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.0207666   -0.0502902    0.0087569
6 months    High                 NA                -0.0702320   -0.1017012   -0.0387628
24 months   High                 NA                -0.0736883   -0.1190703   -0.0283062
