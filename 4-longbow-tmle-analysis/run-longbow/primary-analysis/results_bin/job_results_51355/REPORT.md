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

**Intervention Variable:** fhtcm

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country     fhtcm           ever_wasted   n_cell       n
------------  -------------------------  ----------  -------------  ------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0      255     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1      152     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0      130     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       96     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0      145     895
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1      117     895
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       53     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1       53     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       75     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1       88     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       83     399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1       47     399
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      758    1933
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      490    1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       80    1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       52    1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      324    1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      229    1933
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0     8471   12537
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1     3273   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0      121   12537
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1       47   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0      444   12537
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1      181   12537
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0       54     495
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        9     495
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0      224     495
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1       69     495
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0      105     495
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1       34     495
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0      335     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       72     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0      183     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       40     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0      200     888
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       58     888
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       85     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1       21     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0      130     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1       33     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0      112     399
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1       18     399
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  0      923    1705
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  1      180    1705
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   0      100    1705
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   1       23    1705
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              0      409    1705
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              1       70    1705
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  0     8557   12537
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  1     3187   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   0      121   12537
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   1       47   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              0      448   12537
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              1      177   12537
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  0       44     334
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        4     334
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   0      170     334
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   1       25     334
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              0       76     334
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              1       15     334
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0      275     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1      113     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0      133     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       67     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0      165     836
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       83     836
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       66     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1       39     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       96     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1       63     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       92     392
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1       36     392
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      791    1851
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      395    1851
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       93    1851
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       38    1851
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      347    1851
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      187    1851
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0    11615   12530
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1      123   12530
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0      166   12530
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1        2   12530
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0      619   12530
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1        5   12530
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0       57     489
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        6     489
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0      240     489
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1       48     489
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0      117     489
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1       21     489


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/e3089026-5e13-4ac4-be41-7e9b2fb5fbf5/29284c6a-ec7f-4c26-812d-555e8946eaae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e3089026-5e13-4ac4-be41-7e9b2fb5fbf5/29284c6a-ec7f-4c26-812d-555e8946eaae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e3089026-5e13-4ac4-be41-7e9b2fb5fbf5/29284c6a-ec7f-4c26-812d-555e8946eaae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e3089026-5e13-4ac4-be41-7e9b2fb5fbf5/29284c6a-ec7f-4c26-812d-555e8946eaae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.3772016   0.3153105   0.4390926
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.4141360   0.2837717   0.5445003
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.4502463   0.3643244   0.5361681
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.5141393   0.4180388   0.6102398
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.5389677   0.4615263   0.6164091
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3658581   0.2831598   0.4485565
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3944918   0.3668118   0.4221718
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.4077923   0.3219922   0.4935924
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4030010   0.3605830   0.4454190
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.2779576   0.2149181   0.3409971
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.2965519   0.2648399   0.3282639
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.2959786   0.2272729   0.3646843
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1428571   0.0563614   0.2293528
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.2354949   0.1868615   0.2841282
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.2446043   0.1730725   0.3161361
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1777974   0.1418552   0.2137396
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.1764480   0.1226029   0.2302931
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.2293304   0.1403281   0.3183328
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1971734   0.1211994   0.2731473
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.2024798   0.1399093   0.2650503
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1392651   0.0791165   0.1994136
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1613098   0.1393501   0.1832695
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1708959   0.1020659   0.2397260
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1407944   0.1083847   0.1732040
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.2706119   0.2070351   0.3341886
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.2845471   0.2536147   0.3154795
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.2936697   0.2229508   0.3643887
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2946019   0.2345911   0.3546127
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.3315116   0.2073902   0.4556329
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3322587   0.2751169   0.3894005
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3701679   0.2770830   0.4632529
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.3988680   0.3224661   0.4752700
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.2865085   0.2082413   0.3647756
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3371865   0.3093715   0.3650016
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3290971   0.2456196   0.4125745
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.3397521   0.2982312   0.3812729
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.0952381   0.0226785   0.1677977
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1666667   0.1235813   0.2097521
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.1521739   0.0921842   0.2121636


### Parameter: E(Y)


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.4078212   0.3382171   0.4774254
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4711779   0.4221376   0.5202183
0-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3988619   0.3770274   0.4206964
0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.2792534   0.2170833   0.3414235
0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.2262626   0.1893659   0.2631594
0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.1914414   0.1418556   0.2410273
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1804511   0.1426701   0.2182322
0-6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1601173   0.1427056   0.1775290
0-6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.2720747   0.2092007   0.3349486
6-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3145933   0.2482331   0.3809535
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.3520408   0.3047006   0.3993810
6-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3349541   0.3134470   0.3564611
6-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1533742   0.1214029   0.1853455


### Parameter: RR


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.0979169   0.8026302   1.501839
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1936489   1.0193766   1.397715
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0482911   0.8281074   1.327019
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7115934   0.5305275   0.954456
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.0337155   0.8281738   1.290270
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0215700   0.9005497   1.158853
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.0668961   0.8596037   1.324177
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.0648337   0.9136186   1.241077
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.6484642   0.8694655   3.125408
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.7122302   0.8740675   3.354126
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          0.9924103   0.7708021   1.277732
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.2898412   0.9440519   1.762287
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0269126   0.6269729   1.681970
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7063076   0.3959955   1.259788
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.0594267   0.6923162   1.621203
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          0.8728196   0.6687404   1.139178
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.0514954   0.8437547   1.310384
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.0852065   0.9274751   1.269762
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1252867   0.8431728   1.501792
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1278226   0.9893786   1.285639
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0775327   0.7853066   1.478501
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7739959   0.5335120   1.122879
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          0.9760089   0.7475364   1.274310
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0076087   0.8698152   1.167231
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.7499999   0.7827645   3.912415
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.5978260   0.6776121   3.767713


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0306197   -0.0189242   0.0801635
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0429613   -0.1254271   0.0395044
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0043701   -0.0124800   0.0212202
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0012958   -0.0010787   0.0036703
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0834055    0.0001079   0.1667031
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0136440   -0.0161606   0.0434487
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0167223   -0.0810432   0.0475987
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0011925   -0.0142705   0.0118854
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0014628   -0.0006841   0.0036097
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0199914   -0.0080779   0.0480607
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0181271   -0.0975272   0.0612730
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0022324   -0.0193969   0.0149320
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0581361   -0.0120811   0.1283534


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0750811   -0.0480209   0.1837233
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0911786   -0.2812777   0.0707161
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0109564   -0.0322135   0.0523208
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0046403   -0.0043166   0.0135174
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.3686224   -0.1255915   0.6458417
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0712700   -0.0838686   0.2042029
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0926692   -0.5137106   0.2112588
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0074478   -0.0925162   0.0709968
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0053765   -0.0030211   0.0137037
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0635469   -0.0247487   0.1442345
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0514915   -0.3030449   0.1514995
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0066649   -0.0592276   0.0432894
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.3790476   -0.2868794   0.7003745
