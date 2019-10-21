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

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      perdiar6    n_cell      n
----------  ---------  -------  -----
Birth       0%             771   1688
Birth       (0%, 5%]       520   1688
Birth       >5%            397   1688
6 months    0%            2055   5639
6 months    (0%, 5%]      1709   5639
6 months    >5%           1875   5639
24 months   0%            1565   3938
24 months   (0%, 5%]      1208   3938
24 months   >5%           1165   3938


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
![](/tmp/b4632683-7b91-4d68-adfe-b34ca25a3cdd/8515a984-8d88-4db0-b496-6b52dba2fc1f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b4632683-7b91-4d68-adfe-b34ca25a3cdd/8515a984-8d88-4db0-b496-6b52dba2fc1f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b4632683-7b91-4d68-adfe-b34ca25a3cdd/8515a984-8d88-4db0-b496-6b52dba2fc1f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   NA                -0.8141314   -0.8949939   -0.7332688
Birth       (0%, 5%]             NA                -0.8312586   -0.9347822   -0.7277349
Birth       >5%                  NA                -0.7983811   -0.9155738   -0.6811883
6 months    0%                   NA                -0.9154230   -0.9655241   -0.8653220
6 months    (0%, 5%]             NA                -1.0244419   -1.0810436   -0.9678401
6 months    >5%                  NA                -1.0481027   -1.0990957   -0.9971096
24 months   0%                   NA                -1.5726494   -1.6309044   -1.5143944
24 months   (0%, 5%]             NA                -1.7110677   -1.7780351   -1.6441003
24 months   >5%                  NA                -1.7511673   -1.8164714   -1.6858632


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8149882   -0.8675783   -0.7623980
6 months    NA                   NA                -0.9869442   -1.0163286   -0.9575598
24 months   NA                   NA                -1.6547810   -1.6911358   -1.6184262


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       (0%, 5%]             0%                -0.0171272   -0.1485573    0.1143029
Birth       >5%                  0%                 0.0157503   -0.1267269    0.1582275
6 months    0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    (0%, 5%]             0%                -0.1090188   -0.1846209   -0.0334168
6 months    >5%                  0%                -0.1326796   -0.2041757   -0.0611835
24 months   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   (0%, 5%]             0%                -0.1384183   -0.2264944   -0.0503422
24 months   >5%                  0%                -0.1785179   -0.2654257   -0.0916101


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   NA                -0.0008568   -0.0616475    0.0599340
6 months    0%                   NA                -0.0715211   -0.1123492   -0.0306931
24 months   0%                   NA                -0.0821316   -0.1268988   -0.0373644
