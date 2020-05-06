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
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
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

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      feducyrs    n_cell       n  outcome_variable 
----------  ---------  -------  ------  -----------------
Birth       High         10237   53800  whz              
Birth       Low          18547   53800  whz              
Birth       Medium       25016   53800  whz              
6 months    High         12148   56423  whz              
6 months    Low          20000   56423  whz              
6 months    Medium       24275   56423  whz              
24 months   High          6333   24730  whz              
24 months   Low           9255   24730  whz              
24 months   Medium        9142   24730  whz              


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
![](/tmp/51107483-44ef-4655-bd2f-1a8e2e35f201/5af68274-2bc3-4367-aae1-188e323bbb94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/51107483-44ef-4655-bd2f-1a8e2e35f201/5af68274-2bc3-4367-aae1-188e323bbb94/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/51107483-44ef-4655-bd2f-1a8e2e35f201/5af68274-2bc3-4367-aae1-188e323bbb94/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.8211901   -0.8783670   -0.7640132
Birth       Low                  NA                -0.8223798   -0.8722476   -0.7725120
Birth       Medium               NA                -0.8150303   -0.8408859   -0.7891747
6 months    High                 NA                -0.0361402   -0.0872165    0.0149360
6 months    Low                  NA                -0.0456984   -0.0936788    0.0022820
6 months    Medium               NA                -0.0422621   -0.0701277   -0.0143965
24 months   High                 NA                -0.6915970   -0.7372291   -0.6459649
24 months   Low                  NA                -0.7401785   -0.7958288   -0.6845281
24 months   Medium               NA                -0.7583609   -0.7983336   -0.7183882


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8143109   -0.8340034   -0.7946184
6 months    NA                   NA                -0.0422551   -0.0597530   -0.0247573
24 months   NA                   NA                -0.7397714   -0.7620155   -0.7175274


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 High               0.0000000    0.0000000    0.0000000
Birth       Low                  High              -0.0011897   -0.0760691    0.0736897
Birth       Medium               High               0.0061598   -0.0553075    0.0676271
6 months    High                 High               0.0000000    0.0000000    0.0000000
6 months    Low                  High              -0.0095582   -0.0796081    0.0604917
6 months    Medium               High              -0.0061218   -0.0643133    0.0520696
24 months   High                 High               0.0000000    0.0000000    0.0000000
24 months   Low                  High              -0.0485814   -0.1202601    0.0230972
24 months   Medium               High              -0.0667639   -0.1272432   -0.0062846


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                 0.0068792   -0.0475785    0.0613369
6 months    High                 NA                -0.0061149   -0.0544324    0.0422026
24 months   High                 NA                -0.0481744   -0.0889571   -0.0073917
