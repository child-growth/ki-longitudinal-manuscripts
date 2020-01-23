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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country     fhtcm           ever_wasted   n_cell       n  outcome_variable 
------------  -------------------------  ----------  -------------  ------------  -------  ------  -----------------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0      255     895  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1      152     895  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0      130     895  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       96     895  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0      145     895  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1      117     895  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       53     399  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1       53     399  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       75     399  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1       88     399  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       83     399  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1       47     399  ever_wasted      
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      674    1933  ever_wasted      
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      574    1933  ever_wasted      
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       69    1933  ever_wasted      
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       63    1933  ever_wasted      
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      291    1933  ever_wasted      
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      262    1933  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0     8471   12537  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1     3273   12537  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0      121   12537  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1       47   12537  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0      444   12537  ever_wasted      
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1      181   12537  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0       54     495  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        9     495  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0      224     495  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1       69     495  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0      105     495  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1       34     495  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0      335     888  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       72     888  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0      183     888  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       40     888  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0      200     888  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       58     888  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       85     399  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1       21     399  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0      130     399  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1       33     399  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0      112     399  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1       18     399  ever_wasted      
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  0      799    1725  ever_wasted      
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  1      317    1725  ever_wasted      
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   0       80    1725  ever_wasted      
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   1       43    1725  ever_wasted      
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              0      361    1725  ever_wasted      
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              1      125    1725  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  0     8557   12537  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  1     3187   12537  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   0      121   12537  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   1       47   12537  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              0      448   12537  ever_wasted      
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              1      177   12537  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  0       44     334  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        4     334  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   0      170     334  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   1       25     334  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              0       76     334  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              1       15     334  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0      275     836  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1      113     836  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0      133     836  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1       67     836  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0      165     836  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       83     836  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       66     392  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1       39     392  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       96     392  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1       63     392  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       92     392  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1       36     392  ever_wasted      
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      791    1851  ever_wasted      
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      395    1851  ever_wasted      
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       93    1851  ever_wasted      
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       38    1851  ever_wasted      
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      347    1851  ever_wasted      
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      187    1851  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0    11615   12530  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1      123   12530  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0      166   12530  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1        2   12530  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0      619   12530  ever_wasted      
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1        5   12530  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0       57     489  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        6     489  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0      240     489  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1       48     489  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0      117     489  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1       21     489  ever_wasted      


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




# Results Detail

## Results Plots
![](/tmp/9eff225a-c8ce-4819-a10a-bddf7fbcd8f3/5b85fd12-ccfb-444b-8ec0-d9157af68e41/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9eff225a-c8ce-4819-a10a-bddf7fbcd8f3/5b85fd12-ccfb-444b-8ec0-d9157af68e41/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9eff225a-c8ce-4819-a10a-bddf7fbcd8f3/5b85fd12-ccfb-444b-8ec0-d9157af68e41/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9eff225a-c8ce-4819-a10a-bddf7fbcd8f3/5b85fd12-ccfb-444b-8ec0-d9157af68e41/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.3734644   0.3098827   0.4370461
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.4247788   0.2907944   0.5587632
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.4465649   0.3672291   0.5259007
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.5000000   0.4046962   0.5953038
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.5398773   0.4632676   0.6164870
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3615385   0.2788460   0.4442309
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.4599359   0.4322777   0.4875941
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.4772727   0.3920424   0.5625031
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4737794   0.4321529   0.5154059
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.2786955   0.2159099   0.3414811
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              NA                0.2797619   0.2431554   0.3163684
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.2896000   0.2178061   0.3613939
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1428571   0.0563614   0.2293528
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.2354949   0.1868615   0.2841282
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.2446043   0.1730725   0.3161361
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1769042   0.1391685   0.2146399
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.1793722   0.1216647   0.2370797
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.2248062   0.1384005   0.3112119
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1981132   0.1221413   0.2740852
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.2024540   0.1406893   0.2642187
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1384615   0.0790155   0.1979076
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.2840502   0.2575846   0.3105157
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.3495935   0.2652997   0.4338873
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.2572016   0.2183304   0.2960729
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.2713726   0.2079737   0.3347715
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.2797619   0.2431554   0.3163684
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.2832000   0.2106698   0.3557302
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2912371   0.2281039   0.3543703
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.3350000   0.2095927   0.4604073
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3346774   0.2801832   0.3891716
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3714286   0.2788899   0.4639672
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.3962264   0.3201039   0.4723489
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.2812500   0.2032611   0.3592389
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.3330523   0.3062220   0.3598826
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.2900763   0.2123458   0.3678069
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.3501873   0.3097167   0.3906578
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


agecat        studyid                    country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1374010   0.8398275   1.540413
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1957362   1.0246383   1.395405
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0797546   0.8513815   1.369386
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7230769   0.5368835   0.973843
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.0376940   0.8594779   1.252864
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0300987   0.9260616   1.145824
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.0038264   0.8094969   1.244807
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.0391269   0.9029993   1.195776
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.6484642   0.8694655   3.125408
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.7122302   0.8740675   3.354126
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.0139512   0.7805718   1.317108
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.2707795   0.9378504   1.721896
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0219106   0.6260310   1.668130
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.6989011   0.3930165   1.242855
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          1.2307456   0.9503977   1.593790
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          0.9054796   0.7581803   1.081396
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          1.0309143   0.8264062   1.286031
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          1.0435836   0.9122510   1.193823
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.1502655   0.8763443   1.509807
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.1491579   0.9872806   1.337577
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.0667634   0.7788132   1.461177
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          0.7572115   0.5215807   1.099292
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          0.8709634   0.6583829   1.152182
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          1.0514483   0.9132859   1.210512
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          1.7499999   0.7827645   3.912415
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          1.5978260   0.6776121   3.767713


### Parameter: PAR


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0343569   -0.0115936   0.0803073
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0288221   -0.1104420   0.0527979
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0051443   -0.0113437   0.0216323
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0005579   -0.0017208   0.0028366
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0834055    0.0001079   0.1667031
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0145373   -0.0134900   0.0425645
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0176621   -0.0819463   0.0466221
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0028908   -0.0185266   0.0127451
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0007020   -0.0014324   0.0028365
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0233562   -0.0026871   0.0493995
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0193878   -0.0982354   0.0594599
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0019018   -0.0142206   0.0180242
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0581361   -0.0120811   0.1283534


### Parameter: PAF


agecat        studyid                    country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0842449   -0.0291369   0.1851352
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0611702   -0.2494586   0.0987439
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0110611   -0.0250369   0.0458878
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0019978   -0.0063204   0.0102473
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.3686224   -0.1255915   0.6458417
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0759358   -0.0686662   0.2009717
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0978774   -0.5182879   0.2061224
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0102816   -0.0674515   0.0438265
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0025803   -0.0054550   0.0105515
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0742425   -0.0084685   0.1501698
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0550725   -0.3046159   0.1467390
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0056778   -0.0436395   0.0526646
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.3790476   -0.2868794   0.7003745
