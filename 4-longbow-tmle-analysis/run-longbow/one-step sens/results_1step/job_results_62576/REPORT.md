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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      nhh          n_cell      n  outcome_variable 
----------  ----------  -------  -----  -----------------
Birth       3 or less       378   2267  haz              
Birth       4-5             984   2267  haz              
Birth       6-7             533   2267  haz              
Birth       8+              372   2267  haz              
6 months    3 or less       619   3459  haz              
6 months    4-5            1506   3459  haz              
6 months    6-7             831   3459  haz              
6 months    8+              503   3459  haz              
24 months   3 or less       467   2504  haz              
24 months   4-5            1084   2504  haz              
24 months   6-7             583   2504  haz              
24 months   8+              370   2504  haz              


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
![](/tmp/56a2f177-eaaf-4dbe-9640-4b7c71d1f893/21f1aad8-1b44-45ca-9e84-bc87e526d00b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/56a2f177-eaaf-4dbe-9640-4b7c71d1f893/21f1aad8-1b44-45ca-9e84-bc87e526d00b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/56a2f177-eaaf-4dbe-9640-4b7c71d1f893/21f1aad8-1b44-45ca-9e84-bc87e526d00b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       3 or less            NA                -0.8982773   -1.0497406   -0.7468140
Birth       4-5                  NA                -0.8213716   -0.8986679   -0.7440754
Birth       6-7                  NA                -0.7944494   -0.9059549   -0.6829439
Birth       8+                   NA                -0.8180719   -0.9390471   -0.6970966
6 months    3 or less            NA                -1.3338959   -1.4503165   -1.2174753
6 months    4-5                  NA                -1.4429705   -1.5029494   -1.3829917
6 months    6-7                  NA                -1.3484004   -1.4367238   -1.2600770
6 months    8+                   NA                -1.4580995   -1.5804189   -1.3357801
24 months   3 or less            NA                -1.7203681   -1.8266022   -1.6141340
24 months   4-5                  NA                -1.7810287   -1.8515219   -1.7105355
24 months   6-7                  NA                -1.7060739   -1.8132152   -1.5989325
24 months   8+                   NA                -1.9525912   -2.0693975   -1.8357849


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8065285   -0.8541247   -0.7589322
6 months    NA                   NA                -1.3982493   -1.4352601   -1.3612384
24 months   NA                   NA                -1.7712084   -1.8135154   -1.7289014


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       4-5                  3 or less          0.0769056   -0.0921712    0.2459825
Birth       6-7                  3 or less          0.1038279   -0.0831654    0.2908212
Birth       8+                   3 or less          0.0802054   -0.1126982    0.2731091
6 months    3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    4-5                  3 or less         -0.1090746   -0.2383814    0.0202321
6 months    6-7                  3 or less         -0.0145045   -0.1595162    0.1305072
6 months    8+                   3 or less         -0.1242036   -0.2919236    0.0435164
24 months   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   4-5                  3 or less         -0.0606606   -0.1871372    0.0658159
24 months   6-7                  3 or less          0.0142943   -0.1356245    0.1642130
24 months   8+                   3 or less         -0.2322231   -0.3894489   -0.0749973


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       3 or less            NA                 0.0917488   -0.0519535   0.2354511
6 months    3 or less            NA                -0.0643534   -0.1748784   0.0461716
24 months   3 or less            NA                -0.0508403   -0.1504015   0.0487209
