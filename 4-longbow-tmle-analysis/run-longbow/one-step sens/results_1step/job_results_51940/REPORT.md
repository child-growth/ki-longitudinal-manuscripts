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
Birth       0           53113   62600
Birth       1            9487   62600
6 months    0           59902   70727
6 months    1           10825   70727
24 months   0           28232   34719
24 months   1            6487   34719


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
![](/tmp/83af50e2-69e1-432d-81bb-1348e4e128cc/54eab097-727d-40e6-b95a-f37c06279be0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/83af50e2-69e1-432d-81bb-1348e4e128cc/54eab097-727d-40e6-b95a-f37c06279be0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/83af50e2-69e1-432d-81bb-1348e4e128cc/54eab097-727d-40e6-b95a-f37c06279be0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.1219912   -0.1341245   -0.1098579
Birth       1                    NA                -3.4013184   -3.4485853   -3.3540515
6 months    0                    NA                -0.6856279   -0.6993491   -0.6719067
6 months    1                    NA                -2.2818854   -2.3255985   -2.2381723
24 months   0                    NA                -1.5763312   -1.5965547   -1.5561077
24 months   1                    NA                -2.7911337   -2.8466887   -2.7355786


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.4399174   -0.4543798   -0.4254550
6 months    NA                   NA                -0.8716525   -0.8853712   -0.8579339
24 months   NA                   NA                -1.7317168   -1.7508555   -1.7125782


### Parameter: ATE


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       0                    0                  0.000000    0.000000    0.000000
Birth       1                    0                 -3.279327   -3.328318   -3.230336
6 months    0                    0                  0.000000    0.000000    0.000000
6 months    1                    0                 -1.596258   -1.642074   -1.550441
24 months   0                    0                  0.000000    0.000000    0.000000
24 months   1                    0                 -1.214803   -1.273735   -1.155870


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.3179262   -0.3276715   -0.3081809
6 months    0                    NA                -0.1860247   -0.1929151   -0.1791342
24 months   0                    NA                -0.1553856   -0.1654553   -0.1453160
