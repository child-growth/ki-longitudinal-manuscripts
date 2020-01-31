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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      hdlvry    n_cell       n
----------  -------  -------  ------
Birth       0           3263    5948
Birth       1           2685    5948
6 months    0           8253   15429
6 months    1           7176   15429
24 months   0           4991   10157
24 months   1           5166   10157


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
![](/tmp/06daec43-4179-4a34-ae82-9431c868a1b1/1ccef712-e682-482d-a4bd-cb31e478471b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/06daec43-4179-4a34-ae82-9431c868a1b1/1ccef712-e682-482d-a4bd-cb31e478471b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/06daec43-4179-4a34-ae82-9431c868a1b1/1ccef712-e682-482d-a4bd-cb31e478471b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.8442785   -0.8957520   -0.7928051
Birth       1                    NA                -0.9286263   -1.0166187   -0.8406338
6 months    0                    NA                -0.4026748   -0.4340911   -0.3712585
6 months    1                    NA                -0.5150003   -0.5833373   -0.4466634
24 months   0                    NA                -0.8793137   -0.9157476   -0.8428798
24 months   1                    NA                -1.0203409   -1.0755948   -0.9650870


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8760827   -0.9090427   -0.8431227
6 months    NA                   NA                -0.4653937   -0.4896223   -0.4411651
24 months   NA                   NA                -0.9347401   -0.9613856   -0.9080946


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                 -0.0843477   -0.1858066    0.0171111
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.1123255   -0.1870068   -0.0376442
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.1410272   -0.2066274   -0.0754270


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.0318042   -0.0701101    0.0065018
6 months    0                    NA                -0.0627189   -0.0824014   -0.0430364
24 months   0                    NA                -0.0554264   -0.0799833   -0.0308695
