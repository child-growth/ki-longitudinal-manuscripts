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

**Intervention Variable:** nrooms

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nchldlt5
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
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      nrooms    n_cell       n
----------  -------  -------  ------
Birth       4+          1203   22602
Birth       1          13682   22602
Birth       2           5945   22602
Birth       3           1772   22602
6 months    4+          2317   31090
6 months    1          17221   31090
6 months    2           8464   31090
6 months    3           3088   31090
24 months   4+          1784   21062
24 months   1          11481   21062
24 months   2           5723   21062
24 months   3           2074   21062


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
![](/tmp/ed0a37b8-a893-4749-bc2a-36f3884f3be9/749c2ccd-144c-472d-8b9b-924ea10e3b53/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ed0a37b8-a893-4749-bc2a-36f3884f3be9/749c2ccd-144c-472d-8b9b-924ea10e3b53/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ed0a37b8-a893-4749-bc2a-36f3884f3be9/749c2ccd-144c-472d-8b9b-924ea10e3b53/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       4+                   NA                -0.5948723   -0.7003467   -0.4893979
Birth       1                    NA                -0.7604978   -0.8065507   -0.7144449
Birth       2                    NA                -0.7325905   -0.8022521   -0.6629289
Birth       3                    NA                -0.6540120   -0.7679440   -0.5400801
6 months    4+                   NA                -0.2461953   -0.3271985   -0.1651922
6 months    1                    NA                -0.5377802   -0.5764978   -0.4990625
6 months    2                    NA                -0.5064573   -0.5627691   -0.4501456
6 months    3                    NA                -0.4184502   -0.4994769   -0.3374235
24 months   4+                   NA                -0.7767592   -0.8684023   -0.6851162
24 months   1                    NA                -1.0624438   -1.1049528   -1.0199348
24 months   2                    NA                -1.0307525   -1.0875383   -0.9739666
24 months   3                    NA                -0.8445896   -0.9403236   -0.7488557


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7432860   -0.7727665   -0.7138055
6 months    NA                   NA                -0.4953424   -0.5212043   -0.4694806
24 months   NA                   NA                -1.0187310   -1.0437280   -0.9937341


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       1                    4+                -0.1656255   -0.2804248   -0.0508261
Birth       2                    4+                -0.1377182   -0.2637786   -0.0116579
Birth       3                    4+                -0.0591397   -0.2141434    0.0958640
6 months    4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    1                    4+                -0.2915848   -0.3808280   -0.2023416
6 months    2                    4+                -0.2602620   -0.3583128   -0.1622113
6 months    3                    4+                -0.1722549   -0.2863814   -0.0581284
24 months   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   1                    4+                -0.2856846   -0.3863372   -0.1850319
24 months   2                    4+                -0.2539932   -0.3613653   -0.1466211
24 months   3                    4+                -0.0678304   -0.2001090    0.0644483


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       4+                   NA                -0.1484137   -0.2526887   -0.0441386
6 months    4+                   NA                -0.2491471   -0.3289703   -0.1693239
24 months   4+                   NA                -0.2419718   -0.3313125   -0.1526311
