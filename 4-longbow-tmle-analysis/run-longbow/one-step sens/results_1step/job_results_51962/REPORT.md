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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      cleanck    n_cell      n
----------  --------  -------  -----
Birth       1             270    492
Birth       0             222    492
6 months    1            1213   2400
6 months    0            1187   2400
24 months   1            1080   2206
24 months   0            1126   2206


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
![](/tmp/cb130b29-92b2-4dd8-ad11-15cda6e76ae5/27c4f721-03cb-4490-9dbc-b5834aa7cf35/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cb130b29-92b2-4dd8-ad11-15cda6e76ae5/27c4f721-03cb-4490-9dbc-b5834aa7cf35/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cb130b29-92b2-4dd8-ad11-15cda6e76ae5/27c4f721-03cb-4490-9dbc-b5834aa7cf35/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.4787307   -0.6672523   -0.2902090
Birth       0                    NA                -0.4658964   -0.7265020   -0.2052908
6 months    1                    NA                -1.0956964   -1.2102173   -0.9811756
6 months    0                    NA                -1.3366925   -1.4513800   -1.2220051
24 months   1                    NA                -1.5905809   -1.6902982   -1.4908635
24 months   0                    NA                -1.9405085   -2.0673819   -1.8136352


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.4742073   -0.6178618   -0.3305528
6 months    NA                   NA                -1.2322965   -1.2751640   -1.1894291
24 months   NA                   NA                -1.8012942   -1.8471730   -1.7554154


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       0                    1                  0.0128343   -0.3075625    0.3332310
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    0                    1                 -0.2409961   -0.4028565   -0.0791357
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   0                    1                 -0.3499277   -0.5117096   -0.1881458


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                 0.0045234   -0.1350193    0.1440660
6 months    1                    NA                -0.1366001   -0.2418891   -0.0313111
24 months   1                    NA                -0.2107133   -0.3042387   -0.1171880
