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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      feducyrs    n_cell       n  outcome_variable 
----------  ---------  -------  ------  -----------------
Birth       High         11195   60027  haz              
Birth       Low          21206   60027  haz              
Birth       Medium       27626   60027  haz              
6 months    High         12173   56620  haz              
6 months    Low          20048   56620  haz              
6 months    Medium       24399   56620  haz              
24 months   High          6447   26033  haz              
24 months   Low           9502   26033  haz              
24 months   Medium       10084   26033  haz              


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
![](/tmp/ace720c3-f0fb-443e-be5e-8856a121b05f/70fdbdf2-8e3d-4aac-b3e9-af1e5298f426/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ace720c3-f0fb-443e-be5e-8856a121b05f/70fdbdf2-8e3d-4aac-b3e9-af1e5298f426/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ace720c3-f0fb-443e-be5e-8856a121b05f/70fdbdf2-8e3d-4aac-b3e9-af1e5298f426/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.5065865   -0.5563007   -0.4568723
Birth       Low                  NA                -0.5628085   -0.6048672   -0.5207498
Birth       Medium               NA                -0.5503119   -0.5730972   -0.5275267
6 months    High                 NA                -0.7355155   -0.7861388   -0.6848922
6 months    Low                  NA                -0.9147290   -0.9583292   -0.8711287
6 months    Medium               NA                -0.8301726   -0.8570943   -0.8032510
24 months   High                 NA                -1.6025340   -1.6647892   -1.5402787
24 months   Low                  NA                -1.7946190   -1.8501378   -1.7391003
24 months   Medium               NA                -1.7297407   -1.7726339   -1.6868475


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.5498174   -0.5660816   -0.5335533
6 months    NA                   NA                -0.8338469   -0.8507377   -0.8169561
24 months   NA                   NA                -1.7144763   -1.7390423   -1.6899103


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 High               0.0000000    0.0000000    0.0000000
Birth       Low                  High              -0.0562219   -0.1207588    0.0083149
Birth       Medium               High              -0.0437254   -0.0976825    0.0102317
6 months    High                 High               0.0000000    0.0000000    0.0000000
6 months    Low                  High              -0.1792134   -0.2458951   -0.1125318
6 months    Medium               High              -0.0946571   -0.1517663   -0.0375479
24 months   High                 High               0.0000000    0.0000000    0.0000000
24 months   Low                  High              -0.1920851   -0.2754786   -0.1086916
24 months   Medium               High              -0.1272067   -0.2025352   -0.0518783


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.0432309   -0.0904739    0.0040122
6 months    High                 NA                -0.0983314   -0.1464443   -0.0502184
24 months   High                 NA                -0.1119423   -0.1694902   -0.0543945
