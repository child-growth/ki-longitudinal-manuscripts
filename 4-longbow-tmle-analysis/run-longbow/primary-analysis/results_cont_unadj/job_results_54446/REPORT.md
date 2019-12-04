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

**Outcome Variable:** y_rate_wtkg

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

agecat         studyid                    country     fhtcm           n_cell      n
-------------  -------------------------  ----------  -------------  -------  -----
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm            94    212
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm             53    212
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        65    212
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm           768   1181
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm             82   1181
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm       331   1181
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm          5497   5884
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm             76   5884
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm       311   5884
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            18    110
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm             58    110
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        34    110
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm            83    186
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm             47    186
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        56    186
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm           673   1039
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm             75   1039
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm       291   1039
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm          4950   5297
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm             69   5297
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm       278   5297
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            17    116
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm             61    116
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        38    116
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm            81    180
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm             43    180
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        56    180
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            15     73
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm             27     73
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        31     73
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm           442    663
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm             53    663
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm       168    663
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm          4681   5012
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm             66   5012
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm       265   5012
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            17    135
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm             78    135
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        40    135
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm            88    193
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm             42    193
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        63    193
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            16     71
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm             28     71
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        27     71
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm           419    652
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm             52    652
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm       181    652
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm          4675   5014
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm             65   5014
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm       274   5014
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            21    165
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm             96    165
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        48    165
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm            94    203
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm             43    203
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        66    203
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            14     73
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm             30     73
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        29     73
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm           652   1041
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm             85   1041
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm       304   1041
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm           246    264
12-15 months   ki1119695-PROBIT           BELARUS     <162 cm              3    264
12-15 months   ki1119695-PROBIT           BELARUS     [162-167) cm        15    264
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            22    177
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm             97    177
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm        58    177
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm            93    196
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm             41    196
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        62    196
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            14     71
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm             29     71
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        28     71
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm           660   1053
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm             82   1053
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm       311   1053
15-18 months   ki1119695-PROBIT           BELARUS     >=167 cm            33     34
15-18 months   ki1119695-PROBIT           BELARUS     <162 cm              0     34
15-18 months   ki1119695-PROBIT           BELARUS     [162-167) cm         1     34
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            21    162
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm             89    162
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm        52    162
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm           636   1044
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm             84   1044
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm       324   1044
18-21 months   ki1119695-PROBIT           BELARUS     >=167 cm            19     19
18-21 months   ki1119695-PROBIT           BELARUS     <162 cm              0     19
18-21 months   ki1119695-PROBIT           BELARUS     [162-167) cm         0     19
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            24    179
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm             94    179
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm        61    179
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm           584    935
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm             72    935
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       279    935
21-24 months   ki1119695-PROBIT           BELARUS     >=167 cm            30     31
21-24 months   ki1119695-PROBIT           BELARUS     <162 cm              1     31
21-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         0     31
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            26    200
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            105    200
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm        69    200


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/4ab75433-a4e4-4a14-aed6-b5cdc7e18de4/6530b63c-c200-4a42-817c-06b3f10c8d13/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4ab75433-a4e4-4a14-aed6-b5cdc7e18de4/6530b63c-c200-4a42-817c-06b3f10c8d13/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4ab75433-a4e4-4a14-aed6-b5cdc7e18de4/6530b63c-c200-4a42-817c-06b3f10c8d13/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.8221166   0.7988335   0.8453996
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.8206412   0.7597955   0.8814870
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.7745989   0.7203581   0.8288396
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.9218303   0.9064932   0.9371673
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                0.9523053   0.9078085   0.9968021
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.9118378   0.8884908   0.9351848
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.8252297   0.8095615   0.8408978
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                0.7622877   0.7398977   0.7846776
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.8170110   0.7798261   0.8541959
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7616245   0.6442668   0.8789822
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.6891013   0.6154640   0.7627387
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.8556983   0.7914416   0.9199549
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.3832837   0.3562243   0.4103431
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.3716833   0.3408697   0.4024968
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.3827366   0.3334464   0.4320269
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.4510309   0.4377209   0.4643409
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                0.4240612   0.3911826   0.4569399
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.4235976   0.4024279   0.4447673
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.6707673   0.6554204   0.6861142
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                0.6449419   0.5970670   0.6928168
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.6349226   0.6066112   0.6632340
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.4720617   0.4201028   0.5240207
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.3678730   0.3291153   0.4066306
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.4688748   0.4187420   0.5190076
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2773582   0.2395889   0.3151275
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.2059215   0.1517621   0.2600809
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.2420191   0.2166376   0.2674005
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.2426962   0.1728130   0.3125793
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.1780284   0.1224967   0.2335601
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1932408   0.1457603   0.2407213
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.2007183   0.1834928   0.2179438
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                0.2348273   0.1807017   0.2889530
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1858075   0.1587517   0.2128633
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.4794829   0.4643347   0.4946311
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                0.4312616   0.4045587   0.4579645
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.4704557   0.4397121   0.5011994
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.2278991   0.1287330   0.3270653
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.2012482   0.1706873   0.2318090
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.2010343   0.1486888   0.2533799
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.2875186   0.2245213   0.3505160
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.2558113   0.2288738   0.2827488
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.2913933   0.2159570   0.3668296
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1368929   0.0203287   0.2534570
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.1737988   0.1223007   0.2252970
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1528302   0.0928191   0.2128412
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1544949   0.1380682   0.1709215
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1720747   0.1264156   0.2177338
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1394319   0.1140910   0.1647728
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                0.3700089   0.3443168   0.3957011
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                0.3979045   0.3543137   0.4414953
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                0.3654756   0.3330061   0.3979450
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1649282   0.1184257   0.2114307
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1348383   0.1071782   0.1624984
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.1353362   0.0988745   0.1717979
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1485029   0.0762645   0.2207412
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.2390837   0.2059210   0.2722463
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.1444898   0.0776926   0.2112870
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1353362   0.0624677   0.2082047
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.1658255   0.1288453   0.2028056
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.2173000   0.1730267   0.2615733
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1729612   0.1590427   0.1868796
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1988207   0.1656096   0.2320318
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.2067044   0.1860210   0.2273877
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1226737   0.0712680   0.1740793
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1316466   0.1043613   0.1589320
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.1573335   0.1146510   0.2000159
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.1241829   0.0935083   0.1548576
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.0640691   0.0043778   0.1237603
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.1508941   0.0989565   0.2028317
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1512733   0.0595179   0.2430287
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.2022593   0.1488336   0.2556851
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1579005   0.1136683   0.2021326
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1661384   0.1518994   0.1803774
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1364112   0.0997758   0.1730466
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1573647   0.1357113   0.1790181
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1004818   0.0414268   0.1595367
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1361710   0.1039897   0.1683522
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.0595607   0.0149093   0.1042121
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1592566   0.1444087   0.1741044
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1369743   0.1007378   0.1732107
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1553044   0.1319995   0.1786093
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.1320703   0.0537643   0.2103764
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1498753   0.1186692   0.1810814
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.1596233   0.1165043   0.2027423
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.1720211   0.1575729   0.1864692
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.1198027   0.0709963   0.1686091
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.1552692   0.1341430   0.1763954
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.2251626   0.1610683   0.2892568
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.1600687   0.1285762   0.1915613
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.1766330   0.1348196   0.2184465


### Parameter: E(Y)


agecat         studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.8071786   0.7733424   0.8410149
0-3 months     ki1101329-Keneba           GAMBIA      NA                   NA                0.9211456   0.9088113   0.9334799
0-3 months     ki1119695-PROBIT           BELARUS     NA                   NA                0.8239823   0.8076461   0.8403185
0-3 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7524624   0.7028441   0.8020806
3-6 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3801877   0.3590679   0.4013076
3-6 months     ki1101329-Keneba           GAMBIA      NA                   NA                0.4414007   0.4306421   0.4521592
3-6 months     ki1119695-PROBIT           BELARUS     NA                   NA                0.6685496   0.6529825   0.6841168
3-6 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                0.4162288   0.3874235   0.4450342
6-9 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2492984   0.2183092   0.2802876
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1977764   0.1651439   0.2304089
6-9 months     ki1101329-Keneba           GAMBIA      NA                   NA                0.1996667   0.1855792   0.2137542
6-9 months     ki1119695-PROBIT           BELARUS     NA                   NA                0.4783706   0.4634008   0.4933404
6-9 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                0.2045409   0.1778851   0.2311966
9-12 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.2818834   0.2662532   0.2975135
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1575080   0.1170763   0.1979397
9-12 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1517153   0.1384995   0.1649312
9-12 months    ki1119695-PROBIT           BELARUS     NA                   NA                0.3701228   0.3438261   0.3964196
9-12 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1388128   0.1185925   0.1590330
12-15 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.1663852   0.1509217   0.1818488
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1804270   0.1523220   0.2085320
12-15 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.1849266   0.1739388   0.1959143
12-15 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1389485   0.1174123   0.1604847
15-18 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.1200575   0.1025929   0.1375222
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.1747121   0.1409944   0.2084298
15-18 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.1612322   0.1498772   0.1725872
15-18 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1069536   0.0823544   0.1315529
18-21 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.1562372   0.1442891   0.1681853
18-21 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1508100   0.1263907   0.1752293
21-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.1630013   0.1513318   0.1746708
21-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.1742456   0.1505926   0.1978987


### Parameter: ATE


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0014753   -0.0435968    0.0406461
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0475177   -0.0959926    0.0009572
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0304750   -0.0165908    0.0775408
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0099925   -0.0379264    0.0179415
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0629420   -0.0831825   -0.0427014
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0082186   -0.0379629    0.0215256
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0725232   -0.2110702    0.0660239
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0940737   -0.0397237    0.2278712
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0116004   -0.0553725    0.0321716
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0005471   -0.0404739    0.0393797
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0269697   -0.0624403    0.0085009
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0274333   -0.0524395   -0.0024271
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0258253   -0.0669269    0.0152762
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0358447   -0.0639485   -0.0077408
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1041888   -0.1690107   -0.0393668
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0031869   -0.0753882    0.0690144
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0714367   -0.1296056   -0.0132678
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0353391   -0.0849318    0.0142536
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0646678   -0.1539282    0.0245927
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0494554   -0.1339424    0.0350316
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0341090   -0.0226916    0.0909096
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0149108   -0.0469847    0.0171631
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0482213   -0.0765248   -0.0199178
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0090272   -0.0367216    0.0186673
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0266510   -0.1304194    0.0771175
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0268648   -0.1389986    0.0852690
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0317073   -0.1073237    0.0439091
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0038747   -0.1307352    0.1384845
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0369060   -0.0905274    0.1643393
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0159373   -0.1151677    0.1470423
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0175799   -0.0309442    0.0661040
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0150630   -0.0452623    0.0151363
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0278955   -0.0058924    0.0616835
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0045334   -0.0189645    0.0098977
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0300899   -0.0841969    0.0240171
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0295920   -0.0886846    0.0295006
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0905808    0.0073955    0.1737662
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0040130   -0.1401344    0.1321083
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0304893   -0.0512258    0.1122043
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0819638   -0.0033002    0.1672278
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0258595   -0.0101502    0.0618692
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0337432    0.0088128    0.0586736
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0089730   -0.0492252    0.0671711
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0346598   -0.0321559    0.1014754
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0601139   -0.1340086    0.0137809
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0267111   -0.0247759    0.0781982
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0509860   -0.0551901    0.1571621
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0066272   -0.0952332    0.1084875
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0297272   -0.0690324    0.0095780
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0087737   -0.0346893    0.0171420
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0356892   -0.0315649    0.1029433
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0409211   -0.1149564    0.0331142
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0222823   -0.0614427    0.0168781
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0039521   -0.0315850    0.0236807
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0178050   -0.0664901    0.1021001
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0275530   -0.0618399    0.1169459
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0522183   -0.1031184   -0.0013183
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0167519   -0.0423462    0.0088424
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0650938   -0.1365071    0.0063195
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0485295   -0.1250569    0.0279978


### Parameter: PAR


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0149379   -0.0331161    0.0032402
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0006846   -0.0097084    0.0083391
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0012474   -0.0030305    0.0005358
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0091621   -0.1174550    0.0991307
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0030960   -0.0136872    0.0074952
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0096302   -0.0175927   -0.0016677
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0022176   -0.0039363   -0.0004989
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0558329   -0.1081605   -0.0035053
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0280598   -0.0548271   -0.0012926
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0449198   -0.1077016    0.0178620
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0010516   -0.0110292    0.0089259
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0011123   -0.0029351    0.0007105
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0233583   -0.1131790    0.0664624
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0056353   -0.0639706    0.0527001
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0206151   -0.0747689    0.1159992
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0027795   -0.0126629    0.0071038
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0001139   -0.0011911    0.0014189
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0261154   -0.0710698    0.0188389
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0178823   -0.0405185    0.0762831
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0450908   -0.0186514    0.1088330
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0119654    0.0034926    0.0204382
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0162748   -0.0332170    0.0657667
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0041254   -0.0195712    0.0113204
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0234388   -0.0555280    0.1024056
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0049062   -0.0137111    0.0038987
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0064719   -0.0499944    0.0629382
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0030194   -0.0127462    0.0067075
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0187397   -0.0525614    0.0900408
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0090198   -0.0181935    0.0001539
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0509169   -0.1109123    0.0090784
