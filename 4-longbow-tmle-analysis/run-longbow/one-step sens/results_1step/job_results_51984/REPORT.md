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

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      enstunt    n_cell       n
----------  --------  -------  ------
Birth       0           52561   56639
Birth       1            4078   56639
6 months    0           59803   70656
6 months    1           10853   70656
24 months   0           28040   34524
24 months   1            6484   34524


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
![](/tmp/bc7f3c03-12bf-432d-91fd-3dbb95824c31/abf1764d-e2c4-416d-97bb-5158d8f47332/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bc7f3c03-12bf-432d-91fd-3dbb95824c31/abf1764d-e2c4-416d-97bb-5158d8f47332/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bc7f3c03-12bf-432d-91fd-3dbb95824c31/abf1764d-e2c4-416d-97bb-5158d8f47332/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.7568171   -0.7750115   -0.7386228
Birth       1                    NA                -0.1420668   -0.2338950   -0.0502386
6 months    0                    NA                -0.0720221   -0.0872387   -0.0568055
6 months    1                    NA                -0.4834980   -0.5318599   -0.4351360
24 months   0                    NA                -0.6196832   -0.6377536   -0.6016127
24 months   1                    NA                -1.2993056   -1.3499434   -1.2486677


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7370653   -0.7549795   -0.7191511
6 months    NA                   NA                -0.0987239   -0.1131619   -0.0842858
24 months   NA                   NA                -0.6847718   -0.7014929   -0.6680508


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                  0.6147503    0.5213986    0.7081020
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.4114759   -0.4621635   -0.3607882
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.6796224   -0.7333798   -0.6258650


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.0197519    0.0148165    0.0246872
6 months    0                    NA                -0.0267018   -0.0322097   -0.0211940
24 months   0                    NA                -0.0650887   -0.0721088   -0.0580685
