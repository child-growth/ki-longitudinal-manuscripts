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
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      674    1933
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      574    1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       69    1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       63    1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      291    1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      262    1933
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
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  0      799    1725
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  1      317    1725
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   0       80    1725
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   1       43    1725
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              0      361    1725
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              1      125    1725
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
![](/tmp/a29cece5-778c-435f-ba16-58a2e9155d9c/0a18f796-e6f0-46b0-be95-8c1ef4ed9fd0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a29cece5-778c-435f-ba16-58a2e9155d9c/0a18f796-e6f0-46b0-be95-8c1ef4ed9fd0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a29cece5-778c-435f-ba16-58a2e9155d9c/0a18f796-e6f0-46b0-be95-8c1ef4ed9fd0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a29cece5-778c-435f-ba16-58a2e9155d9c/0a18f796-e6f0-46b0-be95-8c1ef4ed9fd0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.3759157   0.3159611   0.4358703
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.4148985   0.2856407   0.5441563
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.4520849   0.3681256   0.5360443
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.5019624   0.4050018   0.5989230
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.5368670   0.4596994   0.6140347
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3605605   0.2772503   0.4438707
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.4588568   0.4304650   0.4872487
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.4956874   0.4089984   0.5823765
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4716901   0.4284463   0.5149339
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.2777910   0.2147236   0.3408585
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.2831051   0.2539275   0.3122826
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.3044429   0.2331780   0.3757077
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1428571   0.0563614   0.2293528
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.2354949   0.1868615   0.2841282
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.2446043   0.1730725   0.3161361
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1765934   0.1410786   0.2121081
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.1751496   0.1222201   0.2280790
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.2309799   0.1408743   0.3210856
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1994378   0.1217242   0.2771514
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.2013517   0.1388697   0.2638337
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1390567   0.0784898   0.1996237
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.2830699   0.2560132   0.3101266
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3612827   0.2724968   0.4500685
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.2582845   0.2177325   0.2988365
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.2705580   0.2069174   0.3341987
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.2931796   0.2621170   0.3242421
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.2905785   0.2198469   0.3613102
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2940602   0.2345804   0.3535399
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.3289792   0.2056821   0.4522764
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3349952   0.2778016   0.3921888
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3680494   0.2757477   0.4603512
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.3984085   0.3217199   0.4750971
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.2833837   0.2047622   0.3620052
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3352575   0.3076645   0.3628504
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3222546   0.2394769   0.4050323
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.3462821   0.3045208   0.3880434
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.0952381   0.0226785   0.1677977
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1666667   0.1235813   0.2097521
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.1521739   0.0921842   0.2121636


### Parameter: E(Y)


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.4078212   0.3382171   0.4774254
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4711779   0.4221376   0.5202183
0-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.4650802   0.4428393   0.4873211
0-24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.2792534   0.2170833   0.3414235
0-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.2262626   0.1893659   0.2631594
0-6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.1914414   0.1418556   0.2410273
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1804511   0.1426701   0.2182322
0-6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.2811594   0.2599381   0.3023807
0-6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.2720747   0.2092007   0.3349486
6-24 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3145933   0.2482331   0.3809535
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.3520408   0.3047006   0.3993810
6-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3349541   0.3134470   0.3564611
6-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1533742   0.1214029   0.1853455


### Parameter: RR


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1037008   0.8176929   1.4897469
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.2026231   1.0317274   1.4018260
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0695363   0.8405339   1.3609302
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7183018   0.5313784   0.9709794
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.0802661   0.8974648   1.3003015
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0279680   0.9205775   1.1478862
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.0191297   0.8192260   1.2678129
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.0959421   0.9350007   1.2845863
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.6484642   0.8694655   3.1254076
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.7122302   0.8740675   3.3541258
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          0.9918241   0.7733251   1.2720588
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.3079763   0.9630636   1.7764163
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0095966   0.6134320   1.6616111
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.6972437   0.3885364   1.2512312
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.2763019   0.9806053   1.6611644
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          0.9124408   0.7594273   1.0962842
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.0836106   0.8701474   1.3494402
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.0739971   0.9205981   1.2529569
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1187480   0.8410691   1.4881025
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1392063   1.0028645   1.2940841
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0824864   0.7890812   1.4849889
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7699611   0.5294473   1.1197339
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          0.9612154   0.7340175   1.2587371
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0328841   0.8928748   1.1948479
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.7499999   0.7827645   3.9124152
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.5978260   0.6776121   3.7677129


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0319055   -0.0148847   0.0786957
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0307845   -0.1139717   0.0524027
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0062234   -0.0111247   0.0235715
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0014624   -0.0009773   0.0039020
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0834055    0.0001079   0.1667031
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0148481   -0.0140780   0.0437741
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0189867   -0.0850276   0.0470543
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0019105   -0.0182583   0.0144373
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0015166   -0.0006990   0.0037323
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0205331   -0.0068506   0.0479168
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0160086   -0.0948021   0.0627849
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0003034   -0.0172524   0.0166457
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0581361   -0.0120811   0.1283534


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0782340   -0.0366587   0.1803932
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0653351   -0.2574384   0.0974199
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0133813   -0.0246488   0.0499999
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0052367   -0.0040163   0.0144045
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.3686224   -0.1255915   0.6458417
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0775593   -0.0708126   0.2053728
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1052178   -0.5384517   0.2060158
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0067950   -0.0666421   0.0496942
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0055743   -0.0031185   0.0141918
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0652688   -0.0202809   0.1436453
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0454737   -0.2950886   0.1560305
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0009057   -0.0528068   0.0484368
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.3790476   -0.2868794   0.7003745
