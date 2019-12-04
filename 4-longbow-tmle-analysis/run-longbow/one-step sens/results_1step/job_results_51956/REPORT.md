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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      meducyrs    n_cell       n
----------  ---------  -------  ------
Birth       High         17916   58873
Birth       Low          19951   58873
Birth       Medium       21006   58873
6 months    High         17693   61875
6 months    Low          21388   61875
6 months    Medium       22794   61875
24 months   High          7044   27564
24 months   Low          10674   27564
24 months   Medium        9846   27564


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
![](/tmp/13f76a39-f60e-4c69-b0d6-c50e35328043/d84009b0-4b93-4bbb-9170-a5cf26daec45/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/13f76a39-f60e-4c69-b0d6-c50e35328043/d84009b0-4b93-4bbb-9170-a5cf26daec45/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/13f76a39-f60e-4c69-b0d6-c50e35328043/d84009b0-4b93-4bbb-9170-a5cf26daec45/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.4214619   -0.4520105   -0.3909132
Birth       Low                  NA                -0.4481224   -0.4801740   -0.4160708
Birth       Medium               NA                -0.4491308   -0.4766670   -0.4215945
6 months    High                 NA                -0.7682482   -0.8011748   -0.7353216
6 months    Low                  NA                -0.9363154   -0.9709611   -0.9016696
6 months    Medium               NA                -0.8395399   -0.8662284   -0.8128513
24 months   High                 NA                -1.5808031   -1.6361861   -1.5254201
24 months   Low                  NA                -1.8897786   -1.9305835   -1.8489738
24 months   Medium               NA                -1.7413405   -1.7774624   -1.7052186


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.4377429   -0.4528470   -0.4226389
6 months    NA                   NA                -0.8496816   -0.8646049   -0.8347582
24 months   NA                   NA                -1.7422917   -1.7639110   -1.7206725


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 High               0.0000000    0.0000000    0.0000000
Birth       Low                  High              -0.0266606   -0.0703428    0.0170217
Birth       Medium               High              -0.0276689   -0.0681128    0.0127750
6 months    High                 High               0.0000000    0.0000000    0.0000000
6 months    Low                  High              -0.1680672   -0.2158164   -0.1203180
6 months    Medium               High              -0.0712917   -0.1135618   -0.0290216
24 months   High                 High               0.0000000    0.0000000    0.0000000
24 months   Low                  High              -0.3089755   -0.3777324   -0.2402187
24 months   Medium               High              -0.1605374   -0.2263483   -0.0947264


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.0162811   -0.0431289    0.0105668
6 months    High                 NA                -0.0814334   -0.1112925   -0.0515743
24 months   High                 NA                -0.1614886   -0.2131403   -0.1098370
