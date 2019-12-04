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
Birth       [20-30)     33684   53987
Birth       <20         10973   53987
Birth       >=30         9330   53987
6 months    [20-30)     37370   61338
6 months    <20         13073   61338
6 months    >=30        10895   61338
24 months   [20-30)     15540   26647
24 months   <20          5841   26647
24 months   >=30         5266   26647


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
![](/tmp/a3758b68-a385-4b74-8372-a3fe85fd2e22/4f5cf67f-505e-4542-a144-95b3cd75c822/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a3758b68-a385-4b74-8372-a3fe85fd2e22/4f5cf67f-505e-4542-a144-95b3cd75c822/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a3758b68-a385-4b74-8372-a3fe85fd2e22/4f5cf67f-505e-4542-a144-95b3cd75c822/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       [20-30)              NA                -0.7240083   -0.7475390   -0.7004777
Birth       <20                  NA                -0.8097323   -0.8596124   -0.7598522
Birth       >=30                 NA                -0.6790923   -0.7229474   -0.6352371
6 months    [20-30)              NA                -0.0680226   -0.0873099   -0.0487352
6 months    <20                  NA                -0.0520836   -0.0963554   -0.0078117
6 months    >=30                 NA                -0.0849062   -0.1195897   -0.0502227
24 months   [20-30)              NA                -0.6436454   -0.6670798   -0.6202111
24 months   <20                  NA                -0.6960149   -0.7490910   -0.6429389
24 months   >=30                 NA                -0.5996850   -0.6372643   -0.5621056


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7340773   -0.7528874   -0.7152671
6 months    NA                   NA                -0.0721577   -0.0876182   -0.0566973
24 months   NA                   NA                -0.6418192   -0.6598901   -0.6237484


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       <20                  [20-30)           -0.0857239   -0.1402908   -0.0311571
Birth       >=30                 [20-30)            0.0449161   -0.0042179    0.0940500
6 months    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    <20                  [20-30)            0.0159390   -0.0323427    0.0642207
6 months    >=30                 [20-30)           -0.0168836   -0.0565686    0.0228013
24 months   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   <20                  [20-30)           -0.0523695   -0.1102915    0.0055526
24 months   >=30                 [20-30)            0.0439605   -0.0002372    0.0881582


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       [20-30)              NA                -0.0100689   -0.0242047   0.0040668
6 months    [20-30)              NA                -0.0041352   -0.0160832   0.0078129
24 months   [20-30)              NA                 0.0018262   -0.0130789   0.0167314
