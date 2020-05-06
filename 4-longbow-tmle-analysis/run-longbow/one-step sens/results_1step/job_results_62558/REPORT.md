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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat

## Data Summary

agecat      month    n_cell       n  outcome_variable 
----------  ------  -------  ------  -----------------
Birth       1          4776   58786  haz              
Birth       2          4370   58786  haz              
Birth       3          5013   58786  haz              
Birth       4          4314   58786  haz              
Birth       5          3829   58786  haz              
Birth       6          4125   58786  haz              
Birth       7          4701   58786  haz              
Birth       8          5179   58786  haz              
Birth       9          5464   58786  haz              
Birth       10         5495   58786  haz              
Birth       11         5555   58786  haz              
Birth       12         5965   58786  haz              
6 months    1          4347   57686  haz              
6 months    2          3907   57686  haz              
6 months    3          4618   57686  haz              
6 months    4          4676   57686  haz              
6 months    5          4345   57686  haz              
6 months    6          4369   57686  haz              
6 months    7          5175   57686  haz              
6 months    8          5285   57686  haz              
6 months    9          5146   57686  haz              
6 months    10         5220   57686  haz              
6 months    11         5216   57686  haz              
6 months    12         5382   57686  haz              
24 months   1          1707   25128  haz              
24 months   2          1865   25128  haz              
24 months   3          2156   25128  haz              
24 months   4          2320   25128  haz              
24 months   5          1910   25128  haz              
24 months   6          1952   25128  haz              
24 months   7          2537   25128  haz              
24 months   8          2192   25128  haz              
24 months   9          1954   25128  haz              
24 months   10         2020   25128  haz              
24 months   11         2088   25128  haz              
24 months   12         2427   25128  haz              


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
![](/tmp/caaa24e1-8c6e-43e9-9731-c7722afa3006/7b963c99-3a88-4947-9185-d44005d21f37/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/caaa24e1-8c6e-43e9-9731-c7722afa3006/7b963c99-3a88-4947-9185-d44005d21f37/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/caaa24e1-8c6e-43e9-9731-c7722afa3006/7b963c99-3a88-4947-9185-d44005d21f37/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       1                    NA                -0.8122529   -0.8819787   -0.7425272
Birth       2                    NA                -0.8095858   -0.8789109   -0.7402608
Birth       3                    NA                -0.6888650   -0.7508197   -0.6269102
Birth       4                    NA                -0.5411590   -0.6104915   -0.4718266
Birth       5                    NA                -0.4264926   -0.5078594   -0.3451257
Birth       6                    NA                -0.4423273   -0.5228870   -0.3617676
Birth       7                    NA                -0.3516571   -0.4213928   -0.2819214
Birth       8                    NA                -0.4576559   -0.5167271   -0.3985847
Birth       9                    NA                -0.4918695   -0.5459336   -0.4378054
Birth       10                   NA                -0.5136742   -0.5663137   -0.4610348
Birth       11                   NA                -0.6093951   -0.6649410   -0.5538492
Birth       12                   NA                -0.6289732   -0.6837373   -0.5742090
6 months    1                    NA                -0.8974836   -0.9731390   -0.8218282
6 months    2                    NA                -0.9013780   -0.9782107   -0.8245453
6 months    3                    NA                -0.8620494   -0.9374335   -0.7866653
6 months    4                    NA                -0.8766008   -0.9396821   -0.8135196
6 months    5                    NA                -0.8210976   -0.8894955   -0.7526996
6 months    6                    NA                -0.8300773   -0.9007334   -0.7594213
6 months    7                    NA                -0.8661641   -0.9250710   -0.8072572
6 months    8                    NA                -0.8084408   -0.8647753   -0.7521064
6 months    9                    NA                -0.7534060   -0.8141662   -0.6926458
6 months    10                   NA                -0.7830255   -0.8426278   -0.7234231
6 months    11                   NA                -0.8221452   -0.8826545   -0.7616359
6 months    12                   NA                -0.7651268   -0.8279553   -0.7022984
24 months   1                    NA                -1.6471192   -1.7891585   -1.5050800
24 months   2                    NA                -1.7009664   -1.8292646   -1.5726682
24 months   3                    NA                -1.5570041   -1.6744558   -1.4395524
24 months   4                    NA                -1.5995040   -1.6901239   -1.5088840
24 months   5                    NA                -1.5299459   -1.6486793   -1.4112125
24 months   6                    NA                -1.5716638   -1.6833048   -1.4600229
24 months   7                    NA                -1.5923986   -1.6775677   -1.5072295
24 months   8                    NA                -1.5168438   -1.6052164   -1.4284713
24 months   9                    NA                -1.4897980   -1.5682819   -1.4113141
24 months   10                   NA                -1.5332271   -1.6212925   -1.4451617
24 months   11                   NA                -1.6860087   -1.7762727   -1.5957447
24 months   12                   NA                -1.6987941   -1.7881137   -1.6094745


### Parameter: E(Y)


agecat      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NA                   NA                -0.5670272   -0.5856665   -0.5483879
6 months    NA                   NA                -0.8290210   -0.8479330   -0.8101089
24 months   NA                   NA                -1.5941639   -1.6235772   -1.5647505


### Parameter: ATE


agecat      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------------  -----------  -----------  ----------
Birth       1                    1                  0.0000000    0.0000000   0.0000000
Birth       2                    1                  0.0026671   -0.0956456   0.1009798
Birth       3                    1                  0.1233880    0.0301515   0.2166244
Birth       4                    1                  0.2710939    0.1728507   0.3693371
Birth       5                    1                  0.3857604    0.2787049   0.4928159
Birth       6                    1                  0.3699257    0.2634302   0.4764211
Birth       7                    1                  0.4605958    0.3620629   0.5591288
Birth       8                    1                  0.3545970    0.2633312   0.4458628
Birth       9                    1                  0.3203834    0.2322125   0.4085543
Birth       10                   1                  0.2985787    0.2113022   0.3858551
Birth       11                   1                  0.2028578    0.1137914   0.2919241
Birth       12                   1                  0.1832798    0.0947042   0.2718553
6 months    1                    1                  0.0000000    0.0000000   0.0000000
6 months    2                    1                 -0.0038944   -0.1117352   0.1039464
6 months    3                    1                  0.0354342   -0.0714448   0.1423132
6 months    4                    1                  0.0208827   -0.0775055   0.1192709
6 months    5                    1                  0.0763860   -0.0254684   0.1782404
6 months    6                    1                  0.0674063   -0.0361200   0.1709325
6 months    7                    1                  0.0313195   -0.0645538   0.1271928
6 months    8                    1                  0.0890428   -0.0050605   0.1831460
6 months    9                    1                  0.1440776    0.0471259   0.2410292
6 months    10                   1                  0.1144581    0.0182349   0.2106813
6 months    11                   1                  0.0753384   -0.0214812   0.1721581
6 months    12                   1                  0.1323567    0.0340523   0.2306612
24 months   1                    1                  0.0000000    0.0000000   0.0000000
24 months   2                    1                 -0.0538472   -0.2451145   0.1374201
24 months   3                    1                  0.0901151   -0.0942328   0.2744631
24 months   4                    1                  0.0476153   -0.1208276   0.2160581
24 months   5                    1                  0.1171733   -0.0679046   0.3022512
24 months   6                    1                  0.0754554   -0.1049542   0.2558650
24 months   7                    1                  0.0547206   -0.1108703   0.2203116
24 months   8                    1                  0.1302754   -0.0369469   0.2974977
24 months   9                    1                  0.1573212   -0.0050253   0.3196677
24 months   10                   1                  0.1138922   -0.0531706   0.2809549
24 months   11                   1                 -0.0388895   -0.2073474   0.1295684
24 months   12                   1                 -0.0516749   -0.2198118   0.1164620


### Parameter: PAR


agecat      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  ---------------  ----------  -----------  ----------
Birth       1                    NA                0.2452257    0.1787580   0.3116934
6 months    1                    NA                0.0684626   -0.0037007   0.1406260
24 months   1                    NA                0.0529553   -0.0822884   0.1881991
