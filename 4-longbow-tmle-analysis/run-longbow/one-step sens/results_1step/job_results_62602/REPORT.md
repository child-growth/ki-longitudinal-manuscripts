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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      month    n_cell       n  outcome_variable 
----------  ------  -------  ------  -----------------
Birth       1          4113   52405  whz              
Birth       2          3838   52405  whz              
Birth       3          4455   52405  whz              
Birth       4          3911   52405  whz              
Birth       5          3438   52405  whz              
Birth       6          3740   52405  whz              
Birth       7          4319   52405  whz              
Birth       8          4696   52405  whz              
Birth       9          4956   52405  whz              
Birth       10         4863   52405  whz              
Birth       11         4871   52405  whz              
Birth       12         5205   52405  whz              
6 months    1          4335   57493  whz              
6 months    2          3891   57493  whz              
6 months    3          4603   57493  whz              
6 months    4          4667   57493  whz              
6 months    5          4327   57493  whz              
6 months    6          4353   57493  whz              
6 months    7          5155   57493  whz              
6 months    8          5271   57493  whz              
6 months    9          5133   57493  whz              
6 months    10         5208   57493  whz              
6 months    11         5203   57493  whz              
6 months    12         5347   57493  whz              
24 months   1          1563   23796  whz              
24 months   2          1727   23796  whz              
24 months   3          1986   23796  whz              
24 months   4          2168   23796  whz              
24 months   5          1785   23796  whz              
24 months   6          1793   23796  whz              
24 months   7          2431   23796  whz              
24 months   8          2086   23796  whz              
24 months   9          1930   23796  whz              
24 months   10         1995   23796  whz              
24 months   11         2032   23796  whz              
24 months   12         2300   23796  whz              


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/64746b2a-563e-4f37-a057-0b01ea9bd867/03758231-5215-4364-bf02-93ddbef0715d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/64746b2a-563e-4f37-a057-0b01ea9bd867/03758231-5215-4364-bf02-93ddbef0715d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/64746b2a-563e-4f37-a057-0b01ea9bd867/03758231-5215-4364-bf02-93ddbef0715d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.6921772   -0.7831376   -0.6012168
Birth       2                    NA                -0.6471209   -0.7345014   -0.5597404
Birth       3                    NA                -0.7724198   -0.8510531   -0.6937864
Birth       4                    NA                -0.7638686   -0.8459613   -0.6817758
Birth       5                    NA                -0.8431050   -0.9425281   -0.7436819
Birth       6                    NA                -0.8703650   -0.9621486   -0.7785813
Birth       7                    NA                -0.8886733   -0.9710140   -0.8063326
Birth       8                    NA                -0.8905196   -0.9671047   -0.8139344
Birth       9                    NA                -0.8668059   -0.9388722   -0.7947396
Birth       10                   NA                -0.9197337   -0.9864448   -0.8530226
Birth       11                   NA                -0.8497362   -0.9192563   -0.7802161
Birth       12                   NA                -0.7795264   -0.8473242   -0.7117286
6 months    1                    NA                -0.0835996   -0.1655061   -0.0016930
6 months    2                    NA                -0.0444997   -0.1209079    0.0319085
6 months    3                    NA                -0.0364448   -0.1116022    0.0387126
6 months    4                    NA                -0.0938836   -0.1576341   -0.0301332
6 months    5                    NA                 0.0014387   -0.0719714    0.0748488
6 months    6                    NA                 0.0017412   -0.0714258    0.0749083
6 months    7                    NA                -0.0296703   -0.0903130    0.0309724
6 months    8                    NA                -0.0056397   -0.0686512    0.0573717
6 months    9                    NA                -0.0145329   -0.0793516    0.0502859
6 months    10                   NA                -0.0341878   -0.0922978    0.0239222
6 months    11                   NA                -0.0546066   -0.1177077    0.0084945
6 months    12                   NA                -0.0220117   -0.0856482    0.0416249
24 months   1                    NA                -0.6246074   -0.7666038   -0.4826110
24 months   2                    NA                -0.6425239   -0.7709536   -0.5140943
24 months   3                    NA                -0.6713598   -0.7853354   -0.5573841
24 months   4                    NA                -0.7883441   -0.8783648   -0.6983234
24 months   5                    NA                -0.7410966   -0.8714597   -0.6107336
24 months   6                    NA                -0.8909314   -1.0036226   -0.7782402
24 months   7                    NA                -0.8764572   -0.9715146   -0.7813998
24 months   8                    NA                -0.8674436   -0.9543299   -0.7805574
24 months   9                    NA                -0.8098439   -0.9016223   -0.7180654
24 months   10                   NA                -0.7716984   -0.8762004   -0.6671964
24 months   11                   NA                -0.7107492   -0.8119422   -0.6095561
24 months   12                   NA                -0.6908192   -0.7960600   -0.5855784


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.8185873   -0.8412894   -0.7958853
6 months    NA                   NA                -0.0341745   -0.0535053   -0.0148437
24 months   NA                   NA                -0.7616602   -0.7929774   -0.7303431


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    1                  0.0000000    0.0000000    0.0000000
Birth       2                    1                  0.0450563   -0.0811882    0.1713009
Birth       3                    1                 -0.0802425   -0.2006195    0.0401344
Birth       4                    1                 -0.0716913   -0.1943571    0.0509744
Birth       5                    1                 -0.1509278   -0.2858320   -0.0160235
Birth       6                    1                 -0.1781877   -0.3075267   -0.0488488
Birth       7                    1                 -0.1964961   -0.3192736   -0.0737185
Birth       8                    1                 -0.1983423   -0.3172885   -0.0793962
Birth       9                    1                 -0.1746286   -0.2907905   -0.0584668
Birth       10                   1                 -0.2275565   -0.3404508   -0.1146621
Birth       11                   1                 -0.1575590   -0.2720953   -0.0430226
Birth       12                   1                 -0.0873492   -0.2008787    0.0261804
6 months    1                    1                  0.0000000    0.0000000    0.0000000
6 months    2                    1                  0.0390999   -0.0729332    0.1511329
6 months    3                    1                  0.0471548   -0.0642282    0.1585378
6 months    4                    1                 -0.0102841   -0.1142670    0.0936988
6 months    5                    1                  0.0850383   -0.0250940    0.1951706
6 months    6                    1                  0.0853408   -0.0245721    0.1952537
6 months    7                    1                  0.0539293   -0.0480304    0.1558890
6 months    8                    1                  0.0779598   -0.0254146    0.1813343
6 months    9                    1                  0.0690667   -0.0354734    0.1736069
6 months    10                   1                  0.0494118   -0.0510759    0.1498995
6 months    11                   1                  0.0289930   -0.0744866    0.1324725
6 months    12                   1                  0.0615879   -0.0422025    0.1653783
24 months   1                    1                  0.0000000    0.0000000    0.0000000
24 months   2                    1                 -0.0179166   -0.2092109    0.1733778
24 months   3                    1                 -0.0467524   -0.2287693    0.1352646
24 months   4                    1                 -0.1637367   -0.3314441    0.0039707
24 months   5                    1                 -0.1164893   -0.3093266    0.0763480
24 months   6                    1                 -0.2663240   -0.4472371   -0.0854109
24 months   7                    1                 -0.2518498   -0.4221676   -0.0815321
24 months   8                    1                 -0.2428363   -0.4092303   -0.0764422
24 months   9                    1                 -0.1852365   -0.3543646   -0.0161084
24 months   10                   1                 -0.1470910   -0.3233175    0.0291354
24 months   11                   1                 -0.0861418   -0.2606704    0.0883868
24 months   12                   1                 -0.0662118   -0.2428663    0.1104426


### Parameter: PAR


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.1264101   -0.2129993   -0.0398209
6 months    1                    NA                 0.0494250   -0.0286468    0.1274968
24 months   1                    NA                -0.1370528   -0.2731107   -0.0009950
