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
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      mage       n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       [20-30)     36745   59203  whz              
Birth       <20         12391   59203  whz              
Birth       >=30        10067   59203  whz              
6 months    [20-30)     37555   61600  whz              
6 months    <20         13110   61600  whz              
6 months    >=30        10935   61600  whz              
24 months   [20-30)     15605   26814  whz              
24 months   <20          5839   26814  whz              
24 months   >=30         5370   26814  whz              


The following strata were considered:

* agecat: 24 months
* agecat: 6 months
* agecat: Birth



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c4aeb507-2598-48f7-a137-907fd81a70a0/a70accaf-b018-4726-be84-920d3a3f3504/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c4aeb507-2598-48f7-a137-907fd81a70a0/a70accaf-b018-4726-be84-920d3a3f3504/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c4aeb507-2598-48f7-a137-907fd81a70a0/a70accaf-b018-4726-be84-920d3a3f3504/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       [20-30)              NA                -0.8313450   -0.8526238   -0.8100662
Birth       <20                  NA                -0.9181150   -0.9665858   -0.8696443
Birth       >=30                 NA                -0.8266973   -0.8692600   -0.7841346
6 months    [20-30)              NA                -0.0655603   -0.0849524   -0.0461682
6 months    <20                  NA                -0.0356602   -0.0813509    0.0100304
6 months    >=30                 NA                -0.1171056   -0.1518123   -0.0823989
24 months   [20-30)              NA                -0.6407589   -0.6655063   -0.6160115
24 months   <20                  NA                -0.6757722   -0.7301245   -0.6214199
24 months   >=30                 NA                -0.6291207   -0.6690984   -0.5891431


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8445531   -0.8617481   -0.8273581
6 months    NA                   NA                -0.0713968   -0.0868350   -0.0559587
24 months   NA                   NA                -0.6427203   -0.6607900   -0.6246506


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       <20                  [20-30)           -0.0867700   -0.1395058   -0.0340342
Birth       >=30                 [20-30)            0.0046478   -0.0427270    0.0520225
6 months    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    <20                  [20-30)            0.0299001   -0.0197121    0.0795123
6 months    >=30                 [20-30)           -0.0515453   -0.0912871   -0.0118034
24 months   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   <20                  [20-30)           -0.0350133   -0.0946018    0.0245753
24 months   >=30                 [20-30)            0.0116382   -0.0352483    0.0585246


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       [20-30)              NA                -0.0132080   -0.0259953   -0.0004208
6 months    [20-30)              NA                -0.0058365   -0.0178783    0.0062052
24 months   [20-30)              NA                -0.0019614   -0.0185670    0.0146442
