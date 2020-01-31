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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      hhwealth_quart    n_cell       n
----------  ---------------  -------  ------
Birth       Wealth Q4           4942   20714
Birth       Wealth Q1           5105   20714
Birth       Wealth Q2           5257   20714
Birth       Wealth Q3           5410   20714
6 months    Wealth Q4           8307   30557
6 months    Wealth Q1           7082   30557
6 months    Wealth Q2           7263   30557
6 months    Wealth Q3           7905   30557
24 months   Wealth Q4           5208   19750
24 months   Wealth Q1           4592   19750
24 months   Wealth Q2           4732   19750
24 months   Wealth Q3           5218   19750


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
![](/tmp/3b6013f9-dbf1-48ca-8ca2-a0401c786309/81945a03-2982-4a56-954d-4293cc2ff743/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3b6013f9-dbf1-48ca-8ca2-a0401c786309/81945a03-2982-4a56-954d-4293cc2ff743/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3b6013f9-dbf1-48ca-8ca2-a0401c786309/81945a03-2982-4a56-954d-4293cc2ff743/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Wealth Q4            NA                -0.7234438   -0.7955449   -0.6513426
Birth       Wealth Q1            NA                -0.7740407   -0.8561207   -0.6919606
Birth       Wealth Q2            NA                -0.7309098   -0.8109492   -0.6508705
Birth       Wealth Q3            NA                -0.7280732   -0.7929647   -0.6631818
6 months    Wealth Q4            NA                -0.3484679   -0.3976175   -0.2993184
6 months    Wealth Q1            NA                -0.4738648   -0.5323882   -0.4153413
6 months    Wealth Q2            NA                -0.4408142   -0.5001161   -0.3815123
6 months    Wealth Q3            NA                -0.3927422   -0.4434801   -0.3420043
24 months   Wealth Q4            NA                -0.9812404   -1.0299451   -0.9325357
24 months   Wealth Q1            NA                -1.0949507   -1.1547437   -1.0351578
24 months   Wealth Q2            NA                -1.0457379   -1.1031106   -0.9883651
24 months   Wealth Q3            NA                -1.0344668   -1.0825432   -0.9863903


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.7280878   -0.7642972   -0.6918783
6 months    NA                   NA                -0.4112383   -0.4367243   -0.3857523
24 months   NA                   NA                -1.0310136   -1.0565484   -1.0054788


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       Wealth Q1            Wealth Q4         -0.0505969   -0.1567938    0.0556001
Birth       Wealth Q2            Wealth Q4         -0.0074660   -0.1122309    0.0972989
Birth       Wealth Q3            Wealth Q4         -0.0046294   -0.0982293    0.0889704
6 months    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    Wealth Q1            Wealth Q4         -0.1253968   -0.2013231   -0.0494706
6 months    Wealth Q2            Wealth Q4         -0.0923463   -0.1689466   -0.0157460
6 months    Wealth Q3            Wealth Q4         -0.0442743   -0.1144873    0.0259387
24 months   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   Wealth Q1            Wealth Q4         -0.1137103   -0.1897950   -0.0376256
24 months   Wealth Q2            Wealth Q4         -0.0644975   -0.1387925    0.0097976
24 months   Wealth Q3            Wealth Q4         -0.0532264   -0.1206496    0.0141968


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       Wealth Q4            NA                -0.0046440   -0.0656798    0.0563919
6 months    Wealth Q4            NA                -0.0627703   -0.1054856   -0.0200551
24 months   Wealth Q4            NA                -0.0497732   -0.0911733   -0.0083731
