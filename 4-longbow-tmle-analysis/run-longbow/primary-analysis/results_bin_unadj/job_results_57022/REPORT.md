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

**Outcome Variable:** ever_swasted

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

agecat        studyid         country     fhtcm           ever_swasted   n_cell       n
------------  --------------  ----------  -------------  -------------  -------  ------
0-24 months   COHORTS         GUATEMALA   >=167 cm                   0       61     495
0-24 months   COHORTS         GUATEMALA   >=167 cm                   1        2     495
0-24 months   COHORTS         GUATEMALA   <162 cm                    0      273     495
0-24 months   COHORTS         GUATEMALA   <162 cm                    1       20     495
0-24 months   COHORTS         GUATEMALA   [162-167) cm               0      130     495
0-24 months   COHORTS         GUATEMALA   [162-167) cm               1        9     495
0-24 months   Keneba          GAMBIA      >=167 cm                   0     1012    1933
0-24 months   Keneba          GAMBIA      >=167 cm                   1      236    1933
0-24 months   Keneba          GAMBIA      <162 cm                    0       99    1933
0-24 months   Keneba          GAMBIA      <162 cm                    1       33    1933
0-24 months   Keneba          GAMBIA      [162-167) cm               0      454    1933
0-24 months   Keneba          GAMBIA      [162-167) cm               1       99    1933
0-24 months   PROBIT          BELARUS     >=167 cm                   0    10716   12537
0-24 months   PROBIT          BELARUS     >=167 cm                   1     1028   12537
0-24 months   PROBIT          BELARUS     <162 cm                    0      153   12537
0-24 months   PROBIT          BELARUS     <162 cm                    1       15   12537
0-24 months   PROBIT          BELARUS     [162-167) cm               0      573   12537
0-24 months   PROBIT          BELARUS     [162-167) cm               1       52   12537
0-24 months   SAS-CompFeed    INDIA       >=167 cm                   0      357     895
0-24 months   SAS-CompFeed    INDIA       >=167 cm                   1       50     895
0-24 months   SAS-CompFeed    INDIA       <162 cm                    0      195     895
0-24 months   SAS-CompFeed    INDIA       <162 cm                    1       31     895
0-24 months   SAS-CompFeed    INDIA       [162-167) cm               0      221     895
0-24 months   SAS-CompFeed    INDIA       [162-167) cm               1       41     895
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   0       91     399
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   1       15     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                    0      131     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                    1       32     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               0      110     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               1       20     399
0-6 months    COHORTS         GUATEMALA   >=167 cm                   0       47     334
0-6 months    COHORTS         GUATEMALA   >=167 cm                   1        1     334
0-6 months    COHORTS         GUATEMALA   <162 cm                    0      186     334
0-6 months    COHORTS         GUATEMALA   <162 cm                    1        9     334
0-6 months    COHORTS         GUATEMALA   [162-167) cm               0       88     334
0-6 months    COHORTS         GUATEMALA   [162-167) cm               1        3     334
0-6 months    Keneba          GAMBIA      >=167 cm                   0     1009    1725
0-6 months    Keneba          GAMBIA      >=167 cm                   1      107    1725
0-6 months    Keneba          GAMBIA      <162 cm                    0      107    1725
0-6 months    Keneba          GAMBIA      <162 cm                    1       16    1725
0-6 months    Keneba          GAMBIA      [162-167) cm               0      448    1725
0-6 months    Keneba          GAMBIA      [162-167) cm               1       38    1725
0-6 months    PROBIT          BELARUS     >=167 cm                   0    10725   12537
0-6 months    PROBIT          BELARUS     >=167 cm                   1     1019   12537
0-6 months    PROBIT          BELARUS     <162 cm                    0      153   12537
0-6 months    PROBIT          BELARUS     <162 cm                    1       15   12537
0-6 months    PROBIT          BELARUS     [162-167) cm               0      573   12537
0-6 months    PROBIT          BELARUS     [162-167) cm               1       52   12537
0-6 months    SAS-CompFeed    INDIA       >=167 cm                   0      389     888
0-6 months    SAS-CompFeed    INDIA       >=167 cm                   1       18     888
0-6 months    SAS-CompFeed    INDIA       <162 cm                    0      212     888
0-6 months    SAS-CompFeed    INDIA       <162 cm                    1       11     888
0-6 months    SAS-CompFeed    INDIA       [162-167) cm               0      245     888
0-6 months    SAS-CompFeed    INDIA       [162-167) cm               1       13     888
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                   0      104     399
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                   1        2     399
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                    0      152     399
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                    1       11     399
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm               0      124     399
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm               1        6     399
6-24 months   COHORTS         GUATEMALA   >=167 cm                   0       62     489
6-24 months   COHORTS         GUATEMALA   >=167 cm                   1        1     489
6-24 months   COHORTS         GUATEMALA   <162 cm                    0      277     489
6-24 months   COHORTS         GUATEMALA   <162 cm                    1       11     489
6-24 months   COHORTS         GUATEMALA   [162-167) cm               0      132     489
6-24 months   COHORTS         GUATEMALA   [162-167) cm               1        6     489
6-24 months   Keneba          GAMBIA      >=167 cm                   0     1043    1851
6-24 months   Keneba          GAMBIA      >=167 cm                   1      143    1851
6-24 months   Keneba          GAMBIA      <162 cm                    0      113    1851
6-24 months   Keneba          GAMBIA      <162 cm                    1       18    1851
6-24 months   Keneba          GAMBIA      [162-167) cm               0      467    1851
6-24 months   Keneba          GAMBIA      [162-167) cm               1       67    1851
6-24 months   PROBIT          BELARUS     >=167 cm                   0    11729   12530
6-24 months   PROBIT          BELARUS     >=167 cm                   1        9   12530
6-24 months   PROBIT          BELARUS     <162 cm                    0      168   12530
6-24 months   PROBIT          BELARUS     <162 cm                    1        0   12530
6-24 months   PROBIT          BELARUS     [162-167) cm               0      624   12530
6-24 months   PROBIT          BELARUS     [162-167) cm               1        0   12530
6-24 months   SAS-CompFeed    INDIA       >=167 cm                   0      353     836
6-24 months   SAS-CompFeed    INDIA       >=167 cm                   1       35     836
6-24 months   SAS-CompFeed    INDIA       <162 cm                    0      180     836
6-24 months   SAS-CompFeed    INDIA       <162 cm                    1       20     836
6-24 months   SAS-CompFeed    INDIA       [162-167) cm               0      219     836
6-24 months   SAS-CompFeed    INDIA       [162-167) cm               1       29     836
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   0       92     392
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   1       13     392
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                    0      138     392
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                    1       21     392
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               0      114     392
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               1       14     392


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/81a7ce7a-4187-4a89-a789-4ad9f90fd06a/a8e43987-460f-4e76-aeeb-12d454584a1c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/81a7ce7a-4187-4a89-a789-4ad9f90fd06a/a8e43987-460f-4e76-aeeb-12d454584a1c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/81a7ce7a-4187-4a89-a789-4ad9f90fd06a/a8e43987-460f-4e76-aeeb-12d454584a1c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/81a7ce7a-4187-4a89-a789-4ad9f90fd06a/a8e43987-460f-4e76-aeeb-12d454584a1c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                0.1891026   0.1673713   0.2108338
0-24 months   Keneba          GAMBIA    <162 cm              NA                0.2500000   0.1761120   0.3238880
0-24 months   Keneba          GAMBIA    [162-167) cm         NA                0.1790235   0.1470627   0.2109844
0-24 months   PROBIT          BELARUS   >=167 cm             NA                0.0875341   0.0530252   0.1220429
0-24 months   PROBIT          BELARUS   <162 cm              NA                0.0892857   0.0581871   0.1203843
0-24 months   PROBIT          BELARUS   [162-167) cm         NA                0.0832000   0.0451732   0.1212268
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.1228501   0.0824766   0.1632236
0-24 months   SAS-CompFeed    INDIA     <162 cm              NA                0.1371681   0.0940387   0.1802976
0-24 months   SAS-CompFeed    INDIA     [162-167) cm         NA                0.1564885   0.1129364   0.2000407
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1415094   0.0750739   0.2079450
0-24 months   SAS-FoodSuppl   INDIA     <162 cm              NA                0.1963190   0.1352639   0.2573742
0-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1538462   0.0917465   0.2159458
0-6 months    Keneba          GAMBIA    >=167 cm             NA                0.0958781   0.0785993   0.1131570
0-6 months    Keneba          GAMBIA    <162 cm              NA                0.1300813   0.0706154   0.1895472
0-6 months    Keneba          GAMBIA    [162-167) cm         NA                0.0781893   0.0543139   0.1020647
0-6 months    PROBIT          BELARUS   >=167 cm             NA                0.0867677   0.0522765   0.1212589
0-6 months    PROBIT          BELARUS   <162 cm              NA                0.0892857   0.0581871   0.1203843
0-6 months    PROBIT          BELARUS   [162-167) cm         NA                0.0832000   0.0451732   0.1212268
0-6 months    SAS-CompFeed    INDIA     >=167 cm             NA                0.0442260   0.0182321   0.0702200
0-6 months    SAS-CompFeed    INDIA     <162 cm              NA                0.0493274   0.0302386   0.0684162
0-6 months    SAS-CompFeed    INDIA     [162-167) cm         NA                0.0503876   0.0139316   0.0868436
6-24 months   Keneba          GAMBIA    >=167 cm             NA                0.1205734   0.1020360   0.1391107
6-24 months   Keneba          GAMBIA    <162 cm              NA                0.1374046   0.0784342   0.1963750
6-24 months   Keneba          GAMBIA    [162-167) cm         NA                0.1254682   0.0973654   0.1535710
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                0.0902062   0.0605940   0.1198184
6-24 months   SAS-CompFeed    INDIA     <162 cm              NA                0.1000000   0.0561864   0.1438136
6-24 months   SAS-CompFeed    INDIA     [162-167) cm         NA                0.1169355   0.0669204   0.1669506
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                0.1238095   0.0607306   0.1868885
6-24 months   SAS-FoodSuppl   INDIA     <162 cm              NA                0.1320755   0.0793821   0.1847689
6-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         NA                0.1093750   0.0552367   0.1635133


### Parameter: E(Y)


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   Keneba          GAMBIA    NA                   NA                0.1903777   0.1728714   0.2078839
0-24 months   PROBIT          BELARUS   NA                   NA                0.0873415   0.0532447   0.1214382
0-24 months   SAS-CompFeed    INDIA     NA                   NA                0.1363128   0.1083079   0.1643178
0-24 months   SAS-FoodSuppl   INDIA     NA                   NA                0.1679198   0.1311966   0.2046430
0-6 months    Keneba          GAMBIA    NA                   NA                0.0933333   0.0796017   0.1070650
0-6 months    PROBIT          BELARUS   NA                   NA                0.0866236   0.0525316   0.1207156
0-6 months    SAS-CompFeed    INDIA     NA                   NA                0.0472973   0.0247949   0.0697997
6-24 months   Keneba          GAMBIA    NA                   NA                0.1231767   0.1082011   0.1381522
6-24 months   SAS-CompFeed    INDIA     NA                   NA                0.1004785   0.0697945   0.1311624
6-24 months   SAS-FoodSuppl   INDIA     NA                   NA                0.1224490   0.0899572   0.1549408


### Parameter: RR


agecat        studyid         country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   Keneba          GAMBIA    <162 cm              >=167 cm          1.3220339   0.9627744   1.815351
0-24 months   Keneba          GAMBIA    [162-167) cm         >=167 cm          0.9467006   0.7656044   1.170633
0-24 months   PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   PROBIT          BELARUS   <162 cm              >=167 cm          1.0200111   0.7049967   1.475784
0-24 months   PROBIT          BELARUS   [162-167) cm         >=167 cm          0.9504872   0.6839466   1.320901
0-24 months   SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.1165487   0.7235335   1.723045
0-24 months   SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.2738168   0.8714557   1.861953
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.3873211   0.7899635   2.436391
0-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          1.0871795   0.5853421   2.019262
0-6 months    Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    Keneba          GAMBIA    <162 cm              >=167 cm          1.3567358   0.8300219   2.217691
0-6 months    Keneba          GAMBIA    [162-167) cm         >=167 cm          0.8155071   0.5720586   1.162559
0-6 months    PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    PROBIT          BELARUS   <162 cm              >=167 cm          1.0290200   0.7104798   1.490376
0-6 months    PROBIT          BELARUS   [162-167) cm         >=167 cm          0.9588820   0.6913127   1.330013
0-6 months    SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.1153463   0.5847078   2.127554
0-6 months    SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.1393196   0.6195970   2.094989
6-24 months   Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   Keneba          GAMBIA    <162 cm              >=167 cm          1.1395932   0.7223764   1.797778
6-24 months   Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0405961   0.7930426   1.365425
6-24 months   SAS-CompFeed    INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed    INDIA     <162 cm              >=167 cm          1.1085714   0.7450190   1.649529
6-24 months   SAS-CompFeed    INDIA     [162-167) cm         >=167 cm          1.2963134   0.8359607   2.010176
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA     <162 cm              >=167 cm          1.0667634   0.5585133   2.037524
6-24 months   SAS-FoodSuppl   INDIA     [162-167) cm         >=167 cm          0.8834135   0.4341792   1.797459


### Parameter: PAR


agecat        studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                 0.0012751   -0.0117220   0.0142722
0-24 months   PROBIT          BELARUS   >=167 cm             NA                -0.0001926   -0.0017308   0.0013457
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                 0.0134627   -0.0116304   0.0385558
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.0264104   -0.0320461   0.0848668
0-6 months    Keneba          GAMBIA    >=167 cm             NA                -0.0025448   -0.0125851   0.0074955
0-6 months    PROBIT          BELARUS   >=167 cm             NA                -0.0001441   -0.0016639   0.0013757
0-6 months    SAS-CompFeed    INDIA     >=167 cm             NA                 0.0030713   -0.0110564   0.0171989
6-24 months   Keneba          GAMBIA    >=167 cm             NA                 0.0026033   -0.0086902   0.0138968
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                 0.0102723   -0.0096717   0.0302162
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                -0.0013605   -0.0552408   0.0525198


### Parameter: PAF


agecat        studyid         country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   Keneba          GAMBIA    >=167 cm             NA                 0.0066977   -0.0639716   0.0726730
0-24 months   PROBIT          BELARUS   >=167 cm             NA                -0.0022050   -0.0197766   0.0150638
0-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                 0.0987634   -0.1106214   0.2686731
0-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                 0.1572796   -0.2720625   0.4417117
0-6 months    Keneba          GAMBIA    >=167 cm             NA                -0.0272657   -0.1406089   0.0748144
0-6 months    PROBIT          BELARUS   >=167 cm             NA                -0.0016637   -0.0192141   0.0155844
0-6 months    SAS-CompFeed    INDIA     >=167 cm             NA                 0.0649351   -0.2871609   0.3207171
6-24 months   Keneba          GAMBIA    >=167 cm             NA                 0.0211347   -0.0749535   0.1086338
6-24 months   SAS-CompFeed    INDIA     >=167 cm             NA                 0.1022337   -0.1080342   0.2725997
6-24 months   SAS-FoodSuppl   INDIA     >=167 cm             NA                -0.0111111   -0.5624105   0.3456613
