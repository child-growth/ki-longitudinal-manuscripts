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







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid   country       hhwealth_quart    ever_wasted   n_cell      n
------------  --------  ------------  ---------------  ------------  -------  -----
0-24 months   COHORTS   GUATEMALA     Wealth Q4                   0      366   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q4                   1      110   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q1                   0      166   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q1                   1       78   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q2                   0      190   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q2                   1       68   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q3                   0      211   1263
0-24 months   COHORTS   GUATEMALA     Wealth Q3                   1       74   1263
0-24 months   COHORTS   PHILIPPINES   Wealth Q4                   0      531   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q4                   1      309   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q1                   0      372   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q1                   1      309   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q2                   0      330   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q2                   1      210   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q3                   0      582   3044
0-24 months   COHORTS   PHILIPPINES   Wealth Q3                   1      401   3044
0-6 months    COHORTS   GUATEMALA     Wealth Q4                   0      297   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q4                   1       72   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q1                   0      146   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q1                   1       50   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q2                   0      166   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q2                   1       36   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q3                   0      200   1015
0-6 months    COHORTS   GUATEMALA     Wealth Q3                   1       48   1015
0-6 months    COHORTS   PHILIPPINES   Wealth Q4                   0      627   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q4                   1      213   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q1                   0      504   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q1                   1      176   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q2                   0      424   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q2                   1      116   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q3                   0      771   3043
0-6 months    COHORTS   PHILIPPINES   Wealth Q3                   1      212   3043
6-24 months   COHORTS   GUATEMALA     Wealth Q4                   0      386   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q4                   1       47   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q1                   0      191   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q1                   1       34   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q2                   0      203   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q2                   1       38   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q3                   0      225   1154
6-24 months   COHORTS   GUATEMALA     Wealth Q3                   1       30   1154
6-24 months   COHORTS   PHILIPPINES   Wealth Q4                   0      626   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q4                   1      145   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q1                   0      406   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q1                   1      200   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q2                   0      368   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q2                   1      136   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q3                   0      660   2809
6-24 months   COHORTS   PHILIPPINES   Wealth Q3                   1      268   2809


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES



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




# Results Detail

## Results Plots
![](/tmp/4ce76507-3cb3-460c-a002-d27c4d01200d/5e868945-ad5b-4557-af91-a9ca1a1e5468/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4ce76507-3cb3-460c-a002-d27c4d01200d/5e868945-ad5b-4557-af91-a9ca1a1e5468/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4ce76507-3cb3-460c-a002-d27c4d01200d/5e868945-ad5b-4557-af91-a9ca1a1e5468/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4ce76507-3cb3-460c-a002-d27c4d01200d/5e868945-ad5b-4557-af91-a9ca1a1e5468/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.2310924   0.1932092   0.2689756
0-24 months   COHORTS   GUATEMALA     Wealth Q1            NA                0.3196721   0.2611343   0.3782100
0-24 months   COHORTS   GUATEMALA     Wealth Q2            NA                0.2635659   0.2097858   0.3173460
0-24 months   COHORTS   GUATEMALA     Wealth Q3            NA                0.2596491   0.2087266   0.3105716
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.3678571   0.3352414   0.4004729
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.4537445   0.4163464   0.4911426
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.3888889   0.3477649   0.4300129
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.4079349   0.3772077   0.4386621
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                0.1951220   0.1546674   0.2355765
0-6 months    COHORTS   GUATEMALA     Wealth Q1            NA                0.2551020   0.1940445   0.3161596
0-6 months    COHORTS   GUATEMALA     Wealth Q2            NA                0.1782178   0.1254170   0.2310186
0-6 months    COHORTS   GUATEMALA     Wealth Q3            NA                0.1935484   0.1443535   0.2427433
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                0.2535714   0.2241459   0.2829969
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            NA                0.2588235   0.2258984   0.2917487
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            NA                0.2148148   0.1801698   0.2494598
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            NA                0.2156663   0.1899515   0.2413812
6-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                0.1085450   0.0792329   0.1378571
6-24 months   COHORTS   GUATEMALA     Wealth Q1            NA                0.1511111   0.1042925   0.1979297
6-24 months   COHORTS   GUATEMALA     Wealth Q2            NA                0.1576763   0.1116453   0.2037074
6-24 months   COHORTS   GUATEMALA     Wealth Q3            NA                0.1176471   0.0780851   0.1572090
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                0.1880674   0.1604798   0.2156551
6-24 months   COHORTS   PHILIPPINES   Wealth Q1            NA                0.3300330   0.2925879   0.3674781
6-24 months   COHORTS   PHILIPPINES   Wealth Q2            NA                0.2698413   0.2310822   0.3086003
6-24 months   COHORTS   PHILIPPINES   Wealth Q3            NA                0.2887931   0.2596294   0.3179568


### Parameter: E(Y)


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS   GUATEMALA     NA                   NA                0.2612827   0.2370438   0.2855216
0-24 months   COHORTS   PHILIPPINES   NA                   NA                0.4037451   0.3863123   0.4211779
0-6 months    COHORTS   GUATEMALA     NA                   NA                0.2029557   0.1782002   0.2277111
0-6 months    COHORTS   PHILIPPINES   NA                   NA                0.2356227   0.2205417   0.2507038
6-24 months   COHORTS   GUATEMALA     NA                   NA                0.1291161   0.1097606   0.1484716
6-24 months   COHORTS   PHILIPPINES   NA                   NA                0.2666429   0.2502871   0.2829988


### Parameter: RR


agecat        studyid   country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.3833085   1.0818823   1.768716
0-24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.1405215   0.8778702   1.481756
0-24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         1.1235726   0.8701438   1.450812
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.2334802   1.0928441   1.392214
0-24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.0571737   0.9209031   1.213609
0-24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.1089492   0.9871561   1.245769
0-6 months    COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.3073980   0.9525446   1.794446
0-6 months    COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         0.9133663   0.6362087   1.311265
0-6 months    COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         0.9919355   0.7145473   1.377006
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
0-6 months    COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.0207125   0.8592567   1.212506
0-6 months    COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         0.8471570   0.6945039   1.033364
0-6 months    COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         0.8505151   0.7201501   1.004479
6-24 months   COHORTS   GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   COHORTS   GUATEMALA     Wealth Q1            Wealth Q4         1.3921513   0.9229806   2.099811
6-24 months   COHORTS   GUATEMALA     Wealth Q2            Wealth Q4         1.4526353   0.9759917   2.162057
6-24 months   COHORTS   GUATEMALA     Wealth Q3            Wealth Q4         1.0838548   0.7041520   1.668306
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6-24 months   COHORTS   PHILIPPINES   Wealth Q1            Wealth Q4         1.7548651   1.4578230   2.112432
6-24 months   COHORTS   PHILIPPINES   Wealth Q2            Wealth Q4         1.4348112   1.1685105   1.761801
6-24 months   COHORTS   PHILIPPINES   Wealth Q3            Wealth Q4         1.5355826   1.2850789   1.834918


### Parameter: PAR


agecat        studyid   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                 0.0301902   -0.0004840   0.0608645
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0358879    0.0079491   0.0638268
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                 0.0078337   -0.0247157   0.0403831
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                -0.0179487   -0.0427533   0.0068559
6-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                 0.0205711   -0.0036995   0.0448417
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0785755    0.0538612   0.1032898


### Parameter: PAF


agecat        studyid   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                 0.1155462   -0.0097913   0.2253265
0-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                 0.0888876    0.0169659   0.1555473
0-6 months    COHORTS   GUATEMALA     Wealth Q4            NA                 0.0385982   -0.1358896   0.1862823
0-6 months    COHORTS   PHILIPPINES   Wealth Q4            NA                -0.0761755   -0.1867271   0.0240775
6-24 months   COHORTS   GUATEMALA     Wealth Q4            NA                 0.1593223   -0.0498983   0.3268501
6-24 months   COHORTS   PHILIPPINES   Wealth Q4            NA                 0.2946843    0.1966146   0.3807826
