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

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      fage       n_cell       n  outcome_variable 
----------  --------  -------  ------  -----------------
Birth       >=38         1356   18748  haz              
Birth       <32         14309   18748  haz              
Birth       [32-38)      3083   18748  haz              
6 months    >=38         1676   21295  haz              
6 months    <32         16038   21295  haz              
6 months    [32-38)      3581   21295  haz              
24 months   >=38         1045    8113  haz              
24 months   <32          5503    8113  haz              
24 months   [32-38)      1565    8113  haz              


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
![](/tmp/c283d934-8874-4590-bd97-dc7834543921/0c4d5123-effa-44c3-a7b6-e21a0b08f443/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c283d934-8874-4590-bd97-dc7834543921/0c4d5123-effa-44c3-a7b6-e21a0b08f443/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c283d934-8874-4590-bd97-dc7834543921/0c4d5123-effa-44c3-a7b6-e21a0b08f443/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       >=38                 NA                 0.5800079    0.4016040    0.7584117
Birth       <32                  NA                 0.8115170    0.7364444    0.8865896
Birth       [32-38)              NA                 0.7085738    0.5095905    0.9075572
6 months    >=38                 NA                -0.4650508   -0.5995414   -0.3305602
6 months    <32                  NA                -0.2851016   -0.3779344   -0.1922688
6 months    [32-38)              NA                -0.3533849   -0.5029170   -0.2038527
24 months   >=38                 NA                -1.6735496   -1.8059786   -1.5411205
24 months   <32                  NA                -1.2580730   -1.3516755   -1.1644704
24 months   [32-38)              NA                -1.4390811   -1.5778143   -1.3003480


### Parameter: E(Y)


agecat      intervention_level   baseline_level     estimate     ci_lower     ci_upper
----------  -------------------  ---------------  ----------  -----------  -----------
Birth       NA                   NA                 0.797820    0.7623805    0.8332596
6 months    NA                   NA                -0.308885   -0.3412925   -0.2764776
24 months   NA                   NA                -1.320486   -1.3571087   -1.2838638


### Parameter: ATE


agecat      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  ---------------  ----------  -----------  ----------
Birth       >=38                 >=38              0.0000000    0.0000000   0.0000000
Birth       <32                  >=38              0.2315091    0.0336688   0.4293495
Birth       [32-38)              >=38              0.1285660   -0.1427082   0.3998401
6 months    >=38                 >=38              0.0000000    0.0000000   0.0000000
6 months    <32                  >=38              0.1799492    0.0119778   0.3479205
6 months    [32-38)              >=38              0.1116659   -0.0937382   0.3170701
24 months   >=38                 >=38              0.0000000    0.0000000   0.0000000
24 months   <32                  >=38              0.4154766    0.2502193   0.5807339
24 months   [32-38)              >=38              0.2344684    0.0399484   0.4289884


### Parameter: PAR


agecat      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------------  ----------  ----------  ----------
Birth       >=38                 NA                0.2178122   0.0425255   0.3930988
6 months    >=38                 NA                0.1561658   0.0244069   0.2879246
24 months   >=38                 NA                0.3530633   0.2243605   0.4817661
