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
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      parity    n_cell       n  outcome_variable 
----------  -------  -------  ------  -----------------
Birth       1          15862   48247  haz              
Birth       2          14418   48247  haz              
Birth       3+         17967   48247  haz              
6 months    1          12952   39941  haz              
6 months    2          11747   39941  haz              
6 months    3+         15242   39941  haz              
24 months   1           5546   19608  haz              
24 months   2           5456   19608  haz              
24 months   3+          8606   19608  haz              


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
![](/tmp/9681b30d-065a-43cd-9d45-7a08236f735c/9d3f353d-4a91-414e-ba3d-449ba42086f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9681b30d-065a-43cd-9d45-7a08236f735c/9d3f353d-4a91-414e-ba3d-449ba42086f2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9681b30d-065a-43cd-9d45-7a08236f735c/9d3f353d-4a91-414e-ba3d-449ba42086f2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -1.2105535   -1.2620655   -1.1590416
Birth       2                    NA                -1.0202877   -1.0609201   -0.9796553
Birth       3+                   NA                -0.9032342   -0.9346977   -0.8717707
6 months    1                    NA                -1.1326119   -1.1781888   -1.0870349
6 months    2                    NA                -1.0829215   -1.1221461   -1.0436969
6 months    3+                   NA                -1.1897669   -1.2196481   -1.1598856
24 months   1                    NA                -1.8724568   -1.9520587   -1.7928548
24 months   2                    NA                -2.0046915   -2.0734903   -1.9358927
24 months   3+                   NA                -2.2246395   -2.2624510   -2.1868281


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NA                   NA                -1.016214   -1.031467   -1.000960
6 months    NA                   NA                -1.139606   -1.155410   -1.123801
24 months   NA                   NA                -2.076123   -2.098660   -2.053587


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       2                    1                  0.1902658    0.1242706    0.2562611
Birth       3+                   1                  0.3073193    0.2465625    0.3680761
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    2                    1                  0.0496904   -0.0100709    0.1094517
6 months    3+                   1                 -0.0571550   -0.1112573   -0.0030527
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   2                    1                 -0.1322348   -0.2371026   -0.0273669
24 months   3+                   1                 -0.3521828   -0.4399358   -0.2644297


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                 0.1943399    0.1447402    0.2439395
6 months    1                    NA                -0.0069941   -0.0501104    0.0361222
24 months   1                    NA                -0.2036666   -0.2806129   -0.1267204
