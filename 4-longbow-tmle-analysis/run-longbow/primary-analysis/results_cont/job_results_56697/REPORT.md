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
      - exclude2
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.csv'
  nodes:
    value:
      strata: ['parity_cat']
      id: ['subjid']
      W: ['mage', 'meducyrs']
      A: ['sex']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "Male"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---





```
## $data
## $data$uri
## [1] "https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.csv"
## 
## $data$type
## [1] "web"
## 
## 
## $nodes
## $nodes$A
## [1] "sex"
## 
## $nodes$Y
## [1] "haz"
## 
## $nodes$id
## [1] "subjid"
## 
## $nodes$strata
## [1] "ses"
## 
## 
## $roles
## [1] "exclude" "strata"  "id"      "W"       "A"       "Y"      
## 
## $script_params
## $script_params$count_A
## [1] TRUE
## 
## $script_params$count_Y
## [1] FALSE
## 
## $script_params$parallelize
## [1] FALSE
## 
## $script_params$baseline_level
## NULL
## 
## 
## $output_directory
## [1] "/tmp/cbae66f9-18a8-4da4-84ec-b2a57dcd9d87/690b4fd7-b1c2-4f5f-b9a8-98a649daedf8"
```


```
##       subjid          ses    sex        haz
##    1:      1       Middle   Male  2.6100000
##    2:      1       Middle   Male  1.3500000
##    3:      2            .   Male  0.5000000
##    4:      2            .   Male -1.1700000
##    5:      2            .   Male -1.4664795
##   ---                                      
## 1424:    500 Lower-middle Female  1.4400000
## 1425:    500 Lower-middle Female  1.1500000
## 1426:    500 Lower-middle Female  0.9455342
## 1427:    501       Middle   Male -2.1400000
## 1428:    501       Middle   Male  0.5100000
```

```
## $A
## [1] "sex"
## 
## $Y
## [1] "haz"
## 
## $id
## [1] "subjid"
## 
## $strata
## [1] "ses"
```




## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* ses

## Data Summary

ses            sex       n_cell     n  outcome_variable 
-------------  -------  -------  ----  -----------------
.              Female        88   160  haz              
.              Male          72   160  haz              
Low            Female         5     5  haz              
Low            Male           0     5  haz              
Lower-middle   Female       113   232  haz              
Lower-middle   Male         119   232  haz              
Middle         Female       225   483  haz              
Middle         Male         258   483  haz              
Upper          Female        62   112  haz              
Upper          Male          50   112  haz              
Upper-middle   Female       218   436  haz              
Upper-middle   Male         218   436  haz              



The following strata were considered:

* ses:            .
* ses: Low
* ses: Lower-middle
* ses: Middle
* ses: Upper
* ses: Upper-middle

### Dropped Strata

Some strata were dropped due to rare outcomes:

* ses: Low

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




# Results Detail

## Results Plots
![](/tmp/cbae66f9-18a8-4da4-84ec-b2a57dcd9d87/690b4fd7-b1c2-4f5f-b9a8-98a649daedf8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cbae66f9-18a8-4da4-84ec-b2a57dcd9d87/690b4fd7-b1c2-4f5f-b9a8-98a649daedf8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cbae66f9-18a8-4da4-84ec-b2a57dcd9d87/690b4fd7-b1c2-4f5f-b9a8-98a649daedf8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


ses            intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------  ---------------  -----------  -----------  -----------
.              Female               NA                 0.3015280   -0.0716396    0.6746956
.              Male                 NA                 0.3342940   -0.1437351    0.8123231
Lower-middle   Female               NA                 0.2084250   -0.0836228    0.5004728
Lower-middle   Male                 NA                 0.1047689   -0.1297872    0.3393250
Middle         Female               NA                -0.2136989   -0.4203251   -0.0070727
Middle         Male                 NA                 0.0625613   -0.1457715    0.2708941
Upper          Female               NA                 0.0435457   -0.3692850    0.4563764
Upper          Male                 NA                 0.3777419   -0.1743487    0.9298325
Upper-middle   Female               NA                 0.3686204    0.1629634    0.5742774
Upper-middle   Male                 NA                 0.3991411    0.2122311    0.5860512


### Parameter: E(Y)


ses            intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------  ---------------  -----------  -----------  ----------
.              NA                   NA                 0.3162727    0.0196704   0.6128750
Lower-middle   NA                   NA                 0.1552566   -0.0311575   0.3416707
Middle         NA                   NA                -0.0661313   -0.2137862   0.0815235
Upper          NA                   NA                 0.1927404   -0.1409880   0.5264689
Upper-middle   NA                   NA                 0.3838808    0.2451429   0.5226187


### Parameter: ATE


ses            intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------  ---------------  -----------  -----------  ----------
.              Female               Female             0.0000000    0.0000000   0.0000000
.              Male                 Female             0.0327660   -0.5749248   0.6404568
Lower-middle   Female               Female             0.0000000    0.0000000   0.0000000
Lower-middle   Male                 Female            -0.1036561   -0.4784984   0.2711862
Middle         Female               Female             0.0000000    0.0000000   0.0000000
Middle         Male                 Female             0.2762603   -0.0182651   0.5707856
Upper          Female               Female             0.0000000    0.0000000   0.0000000
Upper          Male                 Female             0.3341962   -0.3520029   1.0203953
Upper-middle   Female               Female             0.0000000    0.0000000   0.0000000
Upper-middle   Male                 Female             0.0305207   -0.2477304   0.3087718


### Parameter: PAR


ses            intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  -------------------  ---------------  -----------  -----------  ----------
.              Female               NA                 0.0147447   -0.2591315   0.2886209
Lower-middle   Female               NA                -0.0531684   -0.2451615   0.1388246
Middle         Female               NA                 0.1475676   -0.0137971   0.3089323
Upper          Female               NA                 0.1491947   -0.1643411   0.4627306
Upper-middle   Female               NA                 0.0152604   -0.1240680   0.1545888
