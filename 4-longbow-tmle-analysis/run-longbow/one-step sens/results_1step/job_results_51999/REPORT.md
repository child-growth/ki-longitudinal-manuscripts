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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      parity    n_cell       n
----------  -------  -------  ------
Birth       1          11723   37575
Birth       2          11355   37575
Birth       3+         14497   37575
6 months    1          12824   39462
6 months    2          11606   39462
6 months    3+         15032   39462
24 months   1           5054   18354
24 months   2           5045   18354
24 months   3+          8255   18354


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
![](/tmp/0219e1de-39d2-4295-abbd-dbd0bb2487cc/0db96f1a-6b3b-4107-83f9-97c8b9229922/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0219e1de-39d2-4295-abbd-dbd0bb2487cc/0db96f1a-6b3b-4107-83f9-97c8b9229922/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0219e1de-39d2-4295-abbd-dbd0bb2487cc/0db96f1a-6b3b-4107-83f9-97c8b9229922/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.9253927   -0.9804714   -0.8703140
Birth       2                    NA                -0.5840450   -0.6378779   -0.5302122
Birth       3+                   NA                -0.4262344   -0.4683144   -0.3841543
6 months    1                    NA                -0.3356933   -0.3809525   -0.2904341
6 months    2                    NA                -0.3149587   -0.3574981   -0.2724193
6 months    3+                   NA                -0.3367455   -0.3725995   -0.3008914
24 months   1                    NA                -0.8996813   -0.9595760   -0.8397865
24 months   2                    NA                -0.9511317   -1.0090371   -0.8932262
24 months   3+                   NA                -0.9643832   -0.9972631   -0.9315033


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.5977999   -0.6176428   -0.5779569
6 months    NA                   NA                -0.3278324   -0.3445531   -0.3111116
24 months   NA                   NA                -0.9698768   -0.9895773   -0.9501764


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000   0.0000000
Birth       2                    1                  0.3413477    0.2643545   0.4183409
Birth       3+                   1                  0.4991584    0.4297958   0.5685209
6 months    1                    1                  0.0000000    0.0000000   0.0000000
6 months    2                    1                  0.0207346   -0.0410311   0.0825003
6 months    3+                   1                 -0.0010521   -0.0583423   0.0562380
24 months   1                    1                  0.0000000    0.0000000   0.0000000
24 months   2                    1                 -0.0514504   -0.1344201   0.0315193
24 months   3+                   1                 -0.0647019   -0.1326048   0.0032009


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                 0.3275929    0.2748890    0.3802968
6 months    1                    NA                 0.0078610   -0.0350773    0.0507992
24 months   1                    NA                -0.0701956   -0.1277849   -0.0126063
