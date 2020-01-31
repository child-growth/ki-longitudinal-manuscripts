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
Birth       4+          1308   27050
Birth       1          16477   27050
Birth       2           7160   27050
Birth       3           2105   27050
6 months    4+          2319   31123
6 months    1          17243   31123
6 months    2           8471   31123
6 months    3           3090   31123
24 months   4+          1787   21138
24 months   1          11518   21138
24 months   2           5751   21138
24 months   3           2082   21138


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
![](/tmp/9c43c651-3274-4eb0-bf95-7e760d6f9169/e683dea7-8ff7-4383-988a-bbe32acbd614/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9c43c651-3274-4eb0-bf95-7e760d6f9169/e683dea7-8ff7-4383-988a-bbe32acbd614/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9c43c651-3274-4eb0-bf95-7e760d6f9169/e683dea7-8ff7-4383-988a-bbe32acbd614/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------  ---------------  ----------  ----------  -----------
Birth       4+                   NA                -1.082772   -1.184978   -0.9805660
Birth       1                    NA                -1.366202   -1.404958   -1.3274456
Birth       2                    NA                -1.361879   -1.423656   -1.3001023
Birth       3                    NA                -1.296865   -1.427491   -1.1662391
6 months    4+                   NA                -1.061499   -1.129162   -0.9938355
6 months    1                    NA                -1.267443   -1.301684   -1.2332023
6 months    2                    NA                -1.220182   -1.268437   -1.1719265
6 months    3                    NA                -1.169451   -1.253551   -1.0853508
24 months   4+                   NA                -1.574788   -1.665210   -1.4843668
24 months   1                    NA                -1.951722   -1.994575   -1.9088690
24 months   2                    NA                -1.867245   -1.924029   -1.8104614
24 months   3                    NA                -1.791093   -1.886943   -1.6952431


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.357946   -1.385515   -1.330377
6 months    NA                   NA                -1.243698   -1.267227   -1.220170
24 months   NA                   NA                -1.891806   -1.919120   -1.864491


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       1                    4+                -0.2834298   -0.3923428   -0.1745168
Birth       2                    4+                -0.2791073   -0.3981757   -0.1600389
Birth       3                    4+                -0.2140930   -0.3796323   -0.0485536
6 months    4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    1                    4+                -0.2059447   -0.2812995   -0.1305900
6 months    2                    4+                -0.1586832   -0.2412693   -0.0760971
6 months    3                    4+                -0.1079521   -0.2155088   -0.0003954
24 months   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   1                    4+                -0.3769337   -0.4760599   -0.2778075
24 months   2                    4+                -0.2924569   -0.3982927   -0.1866212
24 months   3                    4+                -0.2163047   -0.3473134   -0.0852961


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       4+                   NA                -0.2751737   -0.3763225   -0.1740249
6 months    4+                   NA                -0.1821996   -0.2497709   -0.1146282
24 months   4+                   NA                -0.3170173   -0.4058325   -0.2282020
