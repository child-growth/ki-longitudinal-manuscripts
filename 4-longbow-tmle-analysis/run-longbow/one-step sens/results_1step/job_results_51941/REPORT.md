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

**Intervention Variable:** enwast

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

agecat      enwast    n_cell       n
----------  -------  -------  ------
Birth       0          48233   57100
Birth       1           8867   57100
6 months    0          57028   66409
6 months    1           9381   66409
24 months   0          27843   32284
24 months   1           4441   32284


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
![](/tmp/b4963f06-e194-4346-84e6-96f206345113/4bd778dc-6dde-4482-8424-19cb3d6226fb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b4963f06-e194-4346-84e6-96f206345113/4bd778dc-6dde-4482-8424-19cb3d6226fb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b4963f06-e194-4346-84e6-96f206345113/4bd778dc-6dde-4482-8424-19cb3d6226fb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                -0.2867768   -0.2997065   -0.2738471
Birth       1                    NA                 0.4104262    0.3686920    0.4521603
6 months    0                    NA                -0.7713733   -0.7859321   -0.7568145
6 months    1                    NA                -0.8105267   -0.8510121   -0.7700414
24 months   0                    NA                -1.6551642   -1.6759077   -1.6344207
24 months   1                    NA                -1.6596287   -1.7185184   -1.6007390


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.1761716   -0.1889306   -0.1634127
6 months    NA                   NA                -0.7784459   -0.7920660   -0.7648259
24 months   NA                   NA                -1.6596406   -1.6789169   -1.6403644


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       0                    0                  0.0000000    0.0000000   0.0000000
Birth       1                    0                  0.6972030    0.6534231   0.7409828
6 months    0                    0                  0.0000000    0.0000000   0.0000000
6 months    1                    0                 -0.0391535   -0.0822049   0.0038979
24 months   0                    0                  0.0000000    0.0000000   0.0000000
24 months   1                    0                 -0.0044645   -0.0669269   0.0579979


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0                    NA                 0.1106052    0.1036738    0.1175366
6 months    0                    NA                -0.0070727   -0.0131036   -0.0010417
24 months   0                    NA                -0.0044764   -0.0127706    0.0038177
