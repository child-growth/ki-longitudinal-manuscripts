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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      single    n_cell       n
----------  -------  -------  ------
Birth       0          34523   36150
Birth       1           1627   36150
6 months    0          34839   36506
6 months    1           1667   36506
24 months   0          12552   13053
24 months   1            501   13053


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
![](/tmp/a2d3a15e-81d3-43c1-bf3f-a62ff0367092/2d553081-4dc4-4963-b9c5-2a858d015936/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a2d3a15e-81d3-43c1-bf3f-a62ff0367092/2d553081-4dc4-4963-b9c5-2a858d015936/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a2d3a15e-81d3-43c1-bf3f-a62ff0367092/2d553081-4dc4-4963-b9c5-2a858d015936/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.8319375   -0.8511686   -0.8127065
Birth       1                    NA                -0.7763119   -0.8611334   -0.6914904
6 months    0                    NA                 0.2252270    0.2074939    0.2429600
6 months    1                    NA                 0.2012545    0.1323371    0.2701718
24 months   0                    NA                -0.1709790   -0.1939207   -0.1480373
24 months   1                    NA                -0.1881916   -0.2612431   -0.1151400


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8334728   -0.8519646   -0.8149809
6 months    NA                   NA                 0.2252428    0.2082026    0.2422829
24 months   NA                   NA                -0.1727304   -0.1939592   -0.1515017


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       0                    0                  0.0000000    0.0000000   0.0000000
Birth       1                    0                  0.0556256   -0.0312685   0.1425197
6 months    0                    0                  0.0000000    0.0000000   0.0000000
6 months    1                    0                 -0.0239725   -0.0948776   0.0469326
24 months   0                    0                  0.0000000    0.0000000   0.0000000
24 months   1                    0                 -0.0172126   -0.0938658   0.0594406


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       0                    NA                -0.0015352   -0.0065699   0.0034995
6 months    0                    NA                 0.0000158   -0.0046260   0.0046576
24 months   0                    NA                -0.0017514   -0.0094705   0.0059676
