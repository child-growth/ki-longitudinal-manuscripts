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

**Intervention Variable:** birthwt

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

agecat      birthwt                       n_cell       n
----------  ---------------------------  -------  ------
Birth       Normal or high birthweight     48891   56639
Birth       Low birth weight                7748   56639
6 months    Normal or high birthweight     52777   63814
6 months    Low birth weight               11037   63814
24 months   Normal or high birthweight     23405   29650
24 months   Low birth weight                6245   29650


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
![](/tmp/c4e946ab-e1e0-4273-bb5c-e9e34a0d8d72/05357d91-c3f8-46d7-87a1-91c31f664662/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c4e946ab-e1e0-4273-bb5c-e9e34a0d8d72/05357d91-c3f8-46d7-87a1-91c31f664662/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c4e946ab-e1e0-4273-bb5c-e9e34a0d8d72/05357d91-c3f8-46d7-87a1-91c31f664662/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       Normal or high birthweight   NA                -0.5551545   -0.5727105   -0.5375984
Birth       Low birth weight             NA                -2.2817258   -2.3333317   -2.2301198
6 months    Normal or high birthweight   NA                -0.0274372   -0.0437727   -0.0111018
6 months    Low birth weight             NA                -1.3050521   -1.3721421   -1.2379621
24 months   Normal or high birthweight   NA                -0.6193244   -0.6389590   -0.5996898
24 months   Low birth weight             NA                -1.6689959   -1.7384513   -1.5995406


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7370653   -0.7549795   -0.7191511
6 months    NA                   NA                -0.0956434   -0.1111241   -0.0801626
24 months   NA                   NA                -0.7143141   -0.7325437   -0.6960845


### Parameter: ATE


agecat      intervention_level           baseline_level                 estimate    ci_lower     ci_upper
----------  ---------------------------  ---------------------------  ----------  ----------  -----------
Birth       Normal or high birthweight   Normal or high birthweight     0.000000    0.000000    0.0000000
Birth       Low birth weight             Normal or high birthweight    -1.726571   -1.780910   -1.6722324
6 months    Normal or high birthweight   Normal or high birthweight     0.000000    0.000000    0.0000000
6 months    Low birth weight             Normal or high birthweight    -1.277615   -1.346737   -1.2084926
24 months   Normal or high birthweight   Normal or high birthweight     0.000000    0.000000    0.0000000
24 months   Low birth weight             Normal or high birthweight    -1.049672   -1.122051   -0.9772917


### Parameter: PAR


agecat      intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       Normal or high birthweight   NA                -0.1819108   -0.1902696   -0.1735519
6 months    Normal or high birthweight   NA                -0.0682061   -0.0752619   -0.0611504
24 months   Normal or high birthweight   NA                -0.0949897   -0.1032770   -0.0867024
