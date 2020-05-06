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

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      fage       n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       >=38         1294   18277  whz              
Birth       <32         13981   18277  whz              
Birth       [32-38)      3002   18277  whz              
6 months    >=38         1677   21289  whz              
6 months    <32         16033   21289  whz              
6 months    [32-38)      3579   21289  whz              
24 months   >=38         1046    8067  whz              
24 months   <32          5461    8067  whz              
24 months   [32-38)      1560    8067  whz              


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
![](/tmp/b121cd44-d6f8-46b1-bf90-328283fa540d/cfdbd381-6af4-4a2a-849d-f34d084ca775/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b121cd44-d6f8-46b1-bf90-328283fa540d/cfdbd381-6af4-4a2a-849d-f34d084ca775/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b121cd44-d6f8-46b1-bf90-328283fa540d/cfdbd381-6af4-4a2a-849d-f34d084ca775/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=38                 NA                -0.8610533   -1.0437186   -0.6783879
Birth       <32                  NA                -1.0409035   -1.1099592   -0.9718478
Birth       [32-38)              NA                -0.9728472   -1.1053532   -0.8403411
6 months    >=38                 NA                 0.3695949    0.2561945    0.4829953
6 months    <32                  NA                 0.3355477    0.2653994    0.4056959
6 months    [32-38)              NA                 0.3470815    0.2346237    0.4595393
24 months   >=38                 NA                 0.0456711   -0.0620540    0.1533963
24 months   <32                  NA                 0.1410292    0.0676177    0.2144406
24 months   [32-38)              NA                -0.0027953   -0.1238675    0.1182769


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -1.0351384   -1.0763260   -0.9939508
6 months    NA                   NA                 0.3304061    0.2971216    0.3636906
24 months   NA                   NA                 0.0907567    0.0612872    0.1202262


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       >=38                 >=38               0.0000000    0.0000000   0.0000000
Birth       <32                  >=38              -0.1798502   -0.3748929   0.0151925
Birth       [32-38)              >=38              -0.1117939   -0.3372068   0.1136190
6 months    >=38                 >=38               0.0000000    0.0000000   0.0000000
6 months    <32                  >=38              -0.0340473   -0.1668510   0.0987565
6 months    [32-38)              >=38              -0.0225134   -0.1819273   0.1369005
24 months   >=38                 >=38               0.0000000    0.0000000   0.0000000
24 months   <32                  >=38               0.0953580   -0.0365084   0.2272245
24 months   [32-38)              >=38              -0.0484664   -0.2117211   0.1147882


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       >=38                 NA                -0.1740852   -0.3510644   0.0028941
6 months    >=38                 NA                -0.0391888   -0.1478526   0.0694750
24 months   >=38                 NA                 0.0450856   -0.0597728   0.1499440
