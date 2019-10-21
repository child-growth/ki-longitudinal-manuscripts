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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      feducyrs    n_cell       n
----------  ---------  -------  ------
Birth       High          8276   47099
Birth       Low          16137   47099
Birth       Medium       22686   47099
6 months    High         11372   54223
6 months    Low          20227   54223
6 months    Medium       22624   54223
24 months   High          5577   22812
24 months   Low           9514   22812
24 months   Medium        7721   22812


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
![](/tmp/54301ae0-68d2-44ea-9fa8-b9defb113560/76f16a7f-58b3-4ad9-82aa-627e1ff45ee6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/54301ae0-68d2-44ea-9fa8-b9defb113560/76f16a7f-58b3-4ad9-82aa-627e1ff45ee6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/54301ae0-68d2-44ea-9fa8-b9defb113560/76f16a7f-58b3-4ad9-82aa-627e1ff45ee6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.7943960   -0.8519658   -0.7368262
Birth       Low                  NA                -0.7878679   -0.8411074   -0.7346285
Birth       Medium               NA                -0.7884239   -0.8146752   -0.7621726
6 months    High                 NA                -0.0368031   -0.0890054    0.0153992
6 months    Low                  NA                -0.0408255   -0.0906016    0.0089505
6 months    Medium               NA                -0.0296886   -0.0573534   -0.0020238
24 months   High                 NA                -0.6454283   -0.6907084   -0.6001483
24 months   Low                  NA                -0.7055934   -0.7557437   -0.6554432
24 months   Medium               NA                -0.7139949   -0.7547873   -0.6732025


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7852655   -0.8056831   -0.7648479
6 months    NA                   NA                -0.0308187   -0.0484377   -0.0131998
24 months   NA                   NA                -0.7012051   -0.7234511   -0.6789591


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 High               0.0000000    0.0000000    0.0000000
Birth       Low                  High               0.0065281   -0.0705946    0.0836507
Birth       Medium               High               0.0059721   -0.0555881    0.0675323
6 months    High                 High               0.0000000    0.0000000    0.0000000
6 months    Low                  High              -0.0040224   -0.0761462    0.0681013
6 months    Medium               High               0.0071145   -0.0519718    0.0662008
24 months   High                 High               0.0000000    0.0000000    0.0000000
24 months   Low                  High              -0.0601651   -0.1274255    0.0070954
24 months   Medium               High              -0.0685666   -0.1293146   -0.0078185


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                 0.0091305   -0.0455450    0.0638059
6 months    High                 NA                 0.0059844   -0.0433217    0.0552904
24 months   High                 NA                -0.0557767   -0.0959422   -0.0156113
