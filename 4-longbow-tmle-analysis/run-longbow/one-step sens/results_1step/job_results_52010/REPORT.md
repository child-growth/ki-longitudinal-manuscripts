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
Birth       0%             739   1627
Birth       (0%, 5%]       505   1627
Birth       >5%            383   1627
6 months    0%            2054   5636
6 months    (0%, 5%]      1706   5636
6 months    >5%           1876   5636
24 months   0%            1566   3939
24 months   (0%, 5%]      1207   3939
24 months   >5%           1166   3939


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
![](/tmp/c23c8432-49ee-41a2-97d7-d00629e5a750/51da8ab8-cbed-48f8-8319-7c54b7edcf58/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c23c8432-49ee-41a2-97d7-d00629e5a750/51da8ab8-cbed-48f8-8319-7c54b7edcf58/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c23c8432-49ee-41a2-97d7-d00629e5a750/51da8ab8-cbed-48f8-8319-7c54b7edcf58/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   NA                -0.1790981   -0.2748765   -0.0833198
Birth       (0%, 5%]             NA                -0.4608816   -0.5721967   -0.3495666
Birth       >5%                  NA                -0.5071178   -0.6289183   -0.3853172
6 months    0%                   NA                 0.1878917    0.1326428    0.2431405
6 months    (0%, 5%]             NA                 0.0647149    0.0045026    0.1249272
6 months    >5%                  NA                 0.1259302    0.0664496    0.1854108
24 months   0%                   NA                -0.2728930   -0.3334067   -0.2123793
24 months   (0%, 5%]             NA                -0.4495916   -0.5121431   -0.3870401
24 months   >5%                  NA                -0.4320547   -0.5000891   -0.3640203


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.3296128   -0.3893815   -0.2698440
6 months    NA                   NA                 0.1295767    0.0974492    0.1617043
24 months   NA                   NA                -0.3703548   -0.4063426   -0.3343669


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   0%                 0.0000000    0.0000000    0.0000000
Birth       (0%, 5%]             0%                -0.2817835   -0.4273275   -0.1362395
Birth       >5%                  0%                -0.3280196   -0.4818934   -0.1741458
6 months    0%                   0%                 0.0000000    0.0000000    0.0000000
6 months    (0%, 5%]             0%                -0.1231768   -0.2049990   -0.0413545
6 months    >5%                  0%                -0.0619615   -0.1432813    0.0193584
24 months   0%                   0%                 0.0000000    0.0000000    0.0000000
24 months   (0%, 5%]             0%                -0.1766986   -0.2633326   -0.0900645
24 months   >5%                  0%                -0.1591617   -0.2498345   -0.0684888


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       0%                   NA                -0.1505146   -0.2213514   -0.0796779
6 months    0%                   NA                -0.0583149   -0.1036393   -0.0129905
24 months   0%                   NA                -0.0974618   -0.1434780   -0.0514455
