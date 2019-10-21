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
Birth       1          13929   43041
Birth       2          12895   43041
Birth       3+         16217   43041
6 months    1          12838   39530
6 months    2          11633   39530
6 months    3+         15059   39530
24 months   1           5083   18433
24 months   2           5085   18433
24 months   3+          8265   18433


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
![](/tmp/9e51100b-2e41-4348-b9e3-b12e1bd1206b/cf364035-a05d-4924-9e91-54552c0597db/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9e51100b-2e41-4348-b9e3-b12e1bd1206b/cf364035-a05d-4924-9e91-54552c0597db/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9e51100b-2e41-4348-b9e3-b12e1bd1206b/cf364035-a05d-4924-9e91-54552c0597db/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -1.1608233   -1.2130558   -1.1085908
Birth       2                    NA                -0.9776189   -1.0205400   -0.9346978
Birth       3+                   NA                -0.8681413   -0.9021563   -0.8341263
6 months    1                    NA                -1.1399152   -1.1856372   -1.0941932
6 months    2                    NA                -1.0904658   -1.1297360   -1.0511957
6 months    3+                   NA                -1.1890506   -1.2199973   -1.1581038
24 months   1                    NA                -1.8693688   -1.9450092   -1.7937284
24 months   2                    NA                -2.0017960   -2.0685716   -1.9350204
24 months   3+                   NA                -2.1726259   -2.2094384   -2.1358133


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.9623575   -0.9778858   -0.9468293
6 months    NA                   NA                -1.1463787   -1.1622714   -1.1304860
24 months   NA                   NA                -2.0742260   -2.0976651   -2.0507868


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       2                    1                  0.1832044    0.1152908    0.2511180
Birth       3+                   1                  0.2926820    0.2300205    0.3553435
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    2                    1                  0.0494493   -0.0104764    0.1093751
6 months    3+                   1                 -0.0491354   -0.1039927    0.0057219
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   2                    1                 -0.1324272   -0.2321124   -0.0327421
24 months   3+                   1                 -0.3032571   -0.3861099   -0.2204042


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                 0.1984658    0.1481453    0.2487863
6 months    1                    NA                -0.0064635   -0.0497644    0.0368374
24 months   1                    NA                -0.2048572   -0.2774024   -0.1323120
