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
Birth       >=38         1362   17620
Birth       <32         13262   17620
Birth       [32-38)      2996   17620
6 months    >=38         1677   21289
6 months    <32         16033   21289
6 months    [32-38)      3579   21289
24 months   >=38         1046    8068
24 months   <32          5462    8068
24 months   [32-38)      1560    8068


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
![](/tmp/9bf5a970-1fed-463f-88b4-39ee2c8bc0c8/4fbfd0e4-0c8e-4cbe-affc-e07779d3435e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9bf5a970-1fed-463f-88b4-39ee2c8bc0c8/4fbfd0e4-0c8e-4cbe-affc-e07779d3435e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9bf5a970-1fed-463f-88b4-39ee2c8bc0c8/4fbfd0e4-0c8e-4cbe-affc-e07779d3435e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=38                 NA                -0.8899748   -1.0601211   -0.7198286
Birth       <32                  NA                -1.0517898   -1.1214441   -0.9821355
Birth       [32-38)              NA                -0.9998557   -1.1276514   -0.8720601
6 months    >=38                 NA                 0.3926544    0.2795255    0.5057833
6 months    <32                  NA                 0.3375767    0.2635978    0.4115556
6 months    [32-38)              NA                 0.3448353    0.2380330    0.4516375
24 months   >=38                 NA                 0.0176341   -0.0867047    0.1219729
24 months   <32                  NA                 0.1324958    0.0552773    0.2097143
24 months   [32-38)              NA                 0.0000255   -0.1075877    0.1076386


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -1.0406044   -1.0803236   -1.0008853
6 months    NA                   NA                 0.3340046    0.3007552    0.3672540
24 months   NA                   NA                 0.0853061    0.0558350    0.1147773


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       >=38                 >=38               0.0000000    0.0000000   0.0000000
Birth       <32                  >=38              -0.1618150   -0.3453755   0.0217455
Birth       [32-38)              >=38              -0.1098809   -0.3223474   0.1025856
6 months    >=38                 >=38               0.0000000    0.0000000   0.0000000
6 months    <32                  >=38              -0.0550777   -0.1897352   0.0795797
6 months    [32-38)              >=38              -0.0478191   -0.2030093   0.1073711
24 months   >=38                 >=38               0.0000000    0.0000000   0.0000000
24 months   <32                  >=38               0.1148617   -0.0162758   0.2459992
24 months   [32-38)              >=38              -0.0176087   -0.1685689   0.1333516


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       >=38                 NA                -0.1506296   -0.3150543   0.0137952
6 months    >=38                 NA                -0.0586498   -0.1671116   0.0498121
24 months   >=38                 NA                 0.0676720   -0.0338056   0.1691497
