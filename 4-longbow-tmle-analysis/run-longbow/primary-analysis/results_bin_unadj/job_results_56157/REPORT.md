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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** fhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country     fhtcm           stunted   n_cell       n  outcome_variable 
----------  -------------------------  ----------  -------------  --------  -------  ------  -----------------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      253     746  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       90     746  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      126     746  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm               1       64     746  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      148     746  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1       65     746  stunted          
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              0      735    1167  stunted          
Birth       ki1101329-Keneba           GAMBIA      >=167 cm              1       37    1167  stunted          
Birth       ki1101329-Keneba           GAMBIA      <162 cm               0       82    1167  stunted          
Birth       ki1101329-Keneba           GAMBIA      <162 cm               1        5    1167  stunted          
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          0      291    1167  stunted          
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm          1       17    1167  stunted          
Birth       ki1119695-PROBIT           BELARUS     >=167 cm              0    11714   12533  stunted          
Birth       ki1119695-PROBIT           BELARUS     >=167 cm              1       26   12533  stunted          
Birth       ki1119695-PROBIT           BELARUS     <162 cm               0      168   12533  stunted          
Birth       ki1119695-PROBIT           BELARUS     <162 cm               1        0   12533  stunted          
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm          0      622   12533  stunted          
Birth       ki1119695-PROBIT           BELARUS     [162-167) cm          1        3   12533  stunted          
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm              0       26     206  stunted          
Birth       ki1135781-COHORTS          GUATEMALA   >=167 cm              1        3     206  stunted          
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm               0      111     206  stunted          
Birth       ki1135781-COHORTS          GUATEMALA   <162 cm               1       10     206  stunted          
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       54     206  stunted          
Birth       ki1135781-COHORTS          GUATEMALA   [162-167) cm          1        2     206  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              0      281     807  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm              1       88     807  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               0      129     807  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm               1       65     807  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          0      168     807  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm          1       76     807  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              0       64     372  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm              1       38     372  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               0       72     372  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm               1       76     372  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          0       77     372  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm          1       45     372  stunted          
6 months    ki1101329-Keneba           GAMBIA      >=167 cm              0      849    1511  stunted          
6 months    ki1101329-Keneba           GAMBIA      >=167 cm              1      130    1511  stunted          
6 months    ki1101329-Keneba           GAMBIA      <162 cm               0       98    1511  stunted          
6 months    ki1101329-Keneba           GAMBIA      <162 cm               1       15    1511  stunted          
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          0      355    1511  stunted          
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm          1       64    1511  stunted          
6 months    ki1119695-PROBIT           BELARUS     >=167 cm              0    10535   11895  stunted          
6 months    ki1119695-PROBIT           BELARUS     >=167 cm              1      611   11895  stunted          
6 months    ki1119695-PROBIT           BELARUS     <162 cm               0      131   11895  stunted          
6 months    ki1119695-PROBIT           BELARUS     <162 cm               1       25   11895  stunted          
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          0      529   11895  stunted          
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm          1       64   11895  stunted          
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              0       31     336  stunted          
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm              1       14     336  stunted          
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               0       88     336  stunted          
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm               1      109     336  stunted          
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       61     336  stunted          
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm          1       33     336  stunted          
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              0      565    1297  stunted          
24 months   ki1101329-Keneba           GAMBIA      >=167 cm              1      256    1297  stunted          
24 months   ki1101329-Keneba           GAMBIA      <162 cm               0       63    1297  stunted          
24 months   ki1101329-Keneba           GAMBIA      <162 cm               1       34    1297  stunted          
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          0      216    1297  stunted          
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm          1      163    1297  stunted          
24 months   ki1119695-PROBIT           BELARUS     >=167 cm              0     3161    3670  stunted          
24 months   ki1119695-PROBIT           BELARUS     >=167 cm              1      284    3670  stunted          
24 months   ki1119695-PROBIT           BELARUS     <162 cm               0       42    3670  stunted          
24 months   ki1119695-PROBIT           BELARUS     <162 cm               1       11    3670  stunted          
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          0      149    3670  stunted          
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm          1       23    3670  stunted          
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              0       24     526  stunted          
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm              1       46     526  stunted          
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               0       40     526  stunted          
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm               1      267     526  stunted          
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          0       36     526  stunted          
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm          1      113     526  stunted          


The following strata were considered:

* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA

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
![](/tmp/e428b410-e7a5-4cea-8b74-d4f897178aef/31af4233-3d01-41e9-a76a-e082a33713d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e428b410-e7a5-4cea-8b74-d4f897178aef/31af4233-3d01-41e9-a76a-e082a33713d7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e428b410-e7a5-4cea-8b74-d4f897178aef/31af4233-3d01-41e9-a76a-e082a33713d7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e428b410-e7a5-4cea-8b74-d4f897178aef/31af4233-3d01-41e9-a76a-e082a33713d7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2623907   0.2124843   0.3122971
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.3368421   0.2782656   0.3954186
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3051643   0.2363113   0.3740173
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0479275   0.0328526   0.0630023
Birth       ki1101329-Keneba           GAMBIA      <162 cm              NA                0.0574713   0.0085444   0.1063981
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.0551948   0.0296808   0.0807088
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2384824   0.2006277   0.2763371
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.3350515   0.2623570   0.4077461
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3114754   0.2471012   0.3758496
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3725490   0.2785953   0.4665028
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.5135135   0.4328805   0.5941466
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3688525   0.2831202   0.4545848
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1327886   0.1115246   0.1540525
6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1327434   0.0701638   0.1953230
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1527446   0.1182878   0.1872014
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0548179   0.0428904   0.0667454
6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.1602564   0.1221730   0.1983398
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.1079258   0.0752963   0.1405553
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.3111111   0.1756479   0.4465743
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.5532995   0.4837730   0.6228260
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.3510638   0.2544308   0.4476968
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3118149   0.2801159   0.3435138
24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3505155   0.2555277   0.4455032
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4300792   0.3802163   0.4799420
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0824383   0.0499847   0.1148919
24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.2075472   0.0901218   0.3249726
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.1337209   0.0646535   0.2027883
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.6571429   0.5458419   0.7684438
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.8697068   0.8320157   0.9073980
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.7583893   0.6895918   0.8271867


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2935657   0.2562276   0.3309038
Birth       ki1101329-Keneba           GAMBIA      NA                   NA                0.0505570   0.0379815   0.0631324
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2837670   0.2471555   0.3203786
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4274194   0.3770801   0.4777586
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1383190   0.1209060   0.1557320
6 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.0588483   0.0462144   0.0714821
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.4642857   0.4108803   0.5176911
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3492675   0.3233122   0.3752228
24 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.0866485   0.0534930   0.1198040
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.8098859   0.7763209   0.8434510


### Parameter: RR


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.2837427   1.0555961   1.561199
Birth       ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1630151   0.8785387   1.539607
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.1991302   0.4838515   2.971807
Birth       ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.1516321   0.6584043   2.014350
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.4049321   1.1967308   1.649355
6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.3060730   1.0084750   1.691491
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.3783784   1.0241137   1.855191
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.9900777   0.7026223   1.395136
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          0.9996596   0.6076065   1.644682
6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.1502846   0.8722901   1.516874
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          2.9234336   2.2442964   3.808082
6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.9688068   1.4850414   2.610163
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.7784627   1.1303897   2.798088
6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.1284195   0.6741461   1.888805
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.1241140   0.8416088   1.501449
24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.3792773   1.1821838   1.609230
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          2.5176056   1.5319528   4.137424
24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.6220726   0.9071693   2.900362
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.3234669   1.1111852   1.576303
24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.1540706   0.9523340   1.398542


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0311750    0.0048673   0.0574827
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0026295   -0.0065753   0.0118343
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.0452847    0.0214626   0.0691068
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0548703   -0.0258797   0.1356203
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0055304   -0.0074869   0.0185478
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0040304    0.0022472   0.0058135
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1531746    0.0255534   0.2807958
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0374527    0.0172934   0.0576119
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0042102    0.0005163   0.0079040
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1527431    0.0516622   0.2538240


### Parameter: PAF


agecat      studyid                    country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1061943    0.0078114   0.1948219
Birth       ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0520111   -0.1482148   0.2173215
6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1595839    0.0747613   0.2366303
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1283759   -0.0828128   0.2983749
6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.0399832   -0.0587926   0.1295441
6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0684877    0.0411052   0.0950883
6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.3299145   -0.0105470   0.5556718
24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1072321    0.0476312   0.1631030
24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.0485892    0.0054909   0.0898198
24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1885983    0.0519990   0.3055146
