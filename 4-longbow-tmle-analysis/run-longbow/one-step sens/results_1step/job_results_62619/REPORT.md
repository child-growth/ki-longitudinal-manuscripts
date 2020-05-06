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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      nrooms    n_cell       n  outcome_variable 
----------  -------  -------  ------  -----------------
Birth       4+          1560   27885  whz              
Birth       1          16609   27885  whz              
Birth       2           7266   27885  whz              
Birth       3           2450   27885  whz              
6 months    4+          2318   31112  whz              
6 months    1          17237   31112  whz              
6 months    2           8467   31112  whz              
6 months    3           3090   31112  whz              
24 months   4+          1778   21052  whz              
24 months   1          11481   21052  whz              
24 months   2           5721   21052  whz              
24 months   3           2072   21052  whz              


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
![](/tmp/2830f0a4-26a4-44c4-b0c6-c019920162ac/d04ab8c2-1110-44bb-80ac-084ee7e4b7c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2830f0a4-26a4-44c4-b0c6-c019920162ac/d04ab8c2-1110-44bb-80ac-084ee7e4b7c4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2830f0a4-26a4-44c4-b0c6-c019920162ac/d04ab8c2-1110-44bb-80ac-084ee7e4b7c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       4+                   NA                -0.7082164   -0.8095240   -0.6069088
Birth       1                    NA                -0.8194055   -0.8565750   -0.7822360
Birth       2                    NA                -0.8095521   -0.8673630   -0.7517411
Birth       3                    NA                -0.8027425   -0.9071233   -0.6983618
6 months    4+                   NA                -0.2407773   -0.3197461   -0.1618084
6 months    1                    NA                -0.5234903   -0.5607059   -0.4862747
6 months    2                    NA                -0.4998805   -0.5539710   -0.4457899
6 months    3                    NA                -0.4000535   -0.4867872   -0.3133199
24 months   4+                   NA                -0.7620916   -0.8568858   -0.6672975
24 months   1                    NA                -1.0563500   -1.0983461   -1.0143538
24 months   2                    NA                -1.0315154   -1.0860909   -0.9769399
24 months   3                    NA                -0.8227383   -0.9185848   -0.7268918


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8186391   -0.8456162   -0.7916619
6 months    NA                   NA                -0.4948637   -0.5206998   -0.4690276
24 months   NA                   NA                -1.0187959   -1.0438052   -0.9937866


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       4+                   4+                 0.0000000    0.0000000    0.0000000
Birth       1                    4+                -0.1111891   -0.2187597   -0.0036186
Birth       2                    4+                -0.1013357   -0.2175745    0.0149031
Birth       3                    4+                -0.0945262   -0.2395797    0.0505274
6 months    4+                   4+                 0.0000000    0.0000000    0.0000000
6 months    1                    4+                -0.2827131   -0.3693967   -0.1960294
6 months    2                    4+                -0.2591032   -0.3541375   -0.1640689
6 months    3                    4+                -0.1592763   -0.2761334   -0.0424192
24 months   4+                   4+                 0.0000000    0.0000000    0.0000000
24 months   1                    4+                -0.2942583   -0.3974725   -0.1910442
24 months   2                    4+                -0.2694238   -0.3783298   -0.1605177
24 months   3                    4+                -0.0606466   -0.1951578    0.0738645


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       4+                   NA                -0.1104227   -0.2103401   -0.0105053
6 months    4+                   NA                -0.2540865   -0.3320225   -0.1761504
24 months   4+                   NA                -0.2567043   -0.3492886   -0.1641200
