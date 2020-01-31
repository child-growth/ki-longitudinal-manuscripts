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
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
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
Birth       High          9015   52197
Birth       Low          18336   52197
Birth       Medium       24846   52197
6 months    High         11383   54290
6 months    Low          20255   54290
6 months    Medium       22652   54290
24 months   High          5610   22961
24 months   Low           9572   22961
24 months   Medium        7779   22961


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
![](/tmp/09743075-b13f-4c25-a1c6-4d52bc93605a/2f9b6dc8-23b2-40fb-a45e-7f2c88e0846b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/09743075-b13f-4c25-a1c6-4d52bc93605a/2f9b6dc8-23b2-40fb-a45e-7f2c88e0846b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/09743075-b13f-4c25-a1c6-4d52bc93605a/2f9b6dc8-23b2-40fb-a45e-7f2c88e0846b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.3802292   -0.4342422   -0.3262162
Birth       Low                  NA                -0.4274347   -0.4720254   -0.3828441
Birth       Medium               NA                -0.4101173   -0.4337565   -0.3864781
6 months    High                 NA                -0.7317644   -0.7810970   -0.6824319
6 months    Low                  NA                -0.8994628   -0.9435888   -0.8553367
6 months    Medium               NA                -0.8143285   -0.8414420   -0.7872150
24 months   High                 NA                -1.5900964   -1.6531115   -1.5270813
24 months   Low                  NA                -1.7838553   -1.8361937   -1.7315169
24 months   Medium               NA                -1.7214965   -1.7687595   -1.6742335


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.4110721   -0.4279773   -0.3941669
6 months    NA                   NA                -0.8161006   -0.8330958   -0.7991054
24 months   NA                   NA                -1.7006574   -1.7263773   -1.6749375


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 High               0.0000000    0.0000000    0.0000000
Birth       Low                  High              -0.0472055   -0.1168074    0.0223964
Birth       Medium               High              -0.0298881   -0.0882750    0.0284988
6 months    High                 High               0.0000000    0.0000000    0.0000000
6 months    Low                  High              -0.1676983   -0.2337868   -0.1016098
6 months    Medium               High              -0.0825641   -0.1386649   -0.0264633
24 months   High                 High               0.0000000    0.0000000    0.0000000
24 months   Low                  High              -0.1937589   -0.2761008   -0.1114169
24 months   Medium               High              -0.1314001   -0.2102988   -0.0525013


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       High                 NA                -0.0308429   -0.0823701    0.0206844
6 months    High                 NA                -0.0843361   -0.1310871   -0.0375852
24 months   High                 NA                -0.1105610   -0.1685826   -0.0525394
