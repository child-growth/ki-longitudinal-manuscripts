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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      single    n_cell       n
----------  -------  -------  ------
Birth       0          35988   37709
Birth       1           1721   37709
6 months    0          34881   36550
6 months    1           1669   36550
24 months   0          12667   13169
24 months   1            502   13169


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
![](/tmp/e94d7c28-964a-44b6-9a94-3bcf0523603f/a439914d-36de-4e50-af4f-e9a43b6cf463/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e94d7c28-964a-44b6-9a94-3bcf0523603f/a439914d-36de-4e50-af4f-e9a43b6cf463/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e94d7c28-964a-44b6-9a94-3bcf0523603f/a439914d-36de-4e50-af4f-e9a43b6cf463/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.1763989    0.1602203    0.1925775
Birth       1                    NA                -0.3822409   -0.4558129   -0.3086689
6 months    0                    NA                -0.5036098   -0.5204921   -0.4867274
6 months    1                    NA                -0.8594811   -0.9365060   -0.7824562
24 months   0                    NA                -1.5245478   -1.5523025   -1.4967930
24 months   1                    NA                -1.8392687   -1.9234508   -1.7550866


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                 0.1673025    0.1519575    0.1826475
6 months    NA                   NA                -0.5121458   -0.5282732   -0.4960184
24 months   NA                   NA                -1.5370737   -1.5625614   -1.5115859


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    0                  0.0000000    0.0000000    0.0000000
Birth       1                    0                 -0.5586398   -0.6343977   -0.4828819
6 months    0                    0                  0.0000000    0.0000000    0.0000000
6 months    1                    0                 -0.3558713   -0.4349297   -0.2768129
24 months   0                    0                  0.0000000    0.0000000    0.0000000
24 months   1                    0                 -0.3147210   -0.4036789   -0.2257631


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.0090964   -0.0142078   -0.0039850
6 months    0                    NA                -0.0085360   -0.0136008   -0.0034713
24 months   0                    NA                -0.0125259   -0.0220547   -0.0029971
