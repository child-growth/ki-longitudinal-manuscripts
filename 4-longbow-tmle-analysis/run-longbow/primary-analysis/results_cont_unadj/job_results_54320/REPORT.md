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

**Outcome Variable:** y_rate_haz

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
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm           631    965
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm             75    965
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm       259    965
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm          5492   5879
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm             76   5879
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm       311   5879
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            12     81
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm             39     81
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        30     81
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm            83    187
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm             48    187
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        56    187
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm           673   1037
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm             74   1037
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm       290   1037
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm          4945   5292
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm             69   5292
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm       278   5292
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            18    117
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm             61    117
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        38    117
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm            81    180
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm             43    180
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        56    180
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            15     73
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm             27     73
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        31     73
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm           442    663
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm             53    663
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm       168    663
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm          4677   5008
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm             66   5008
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm       265   5008
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm            17    135
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm             77    135
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm        41    135
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm            88    193
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm             42    193
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        63    193
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            16     76
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm             30     76
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        30     76
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm           420    653
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm             52    653
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm       181    653
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm          4673   5012
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm             65   5012
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm       274   5012
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm            21    163
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm             93    163
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm        49    163
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm            94    203
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm             43    203
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        66    203
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            14     75
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm             31     75
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        30     75
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm           652   1041
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm             85   1041
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm       304   1041
12-15 months   ki1119695-PROBIT           BELARUS     >=167 cm           247    264
12-15 months   ki1119695-PROBIT           BELARUS     <162 cm              3    264
12-15 months   ki1119695-PROBIT           BELARUS     [162-167) cm        14    264
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            22    175
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm             95    175
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm        58    175
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm            93    196
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm             41    196
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm        62    196
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm            14     71
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm             29     71
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm        28     71
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm           658   1050
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm             82   1050
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm       310   1050
15-18 months   ki1119695-PROBIT           BELARUS     >=167 cm            33     34
15-18 months   ki1119695-PROBIT           BELARUS     <162 cm              0     34
15-18 months   ki1119695-PROBIT           BELARUS     [162-167) cm         1     34
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            21    157
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm             84    157
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm        52    157
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm           635   1043
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm             84   1043
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm       324   1043
18-21 months   ki1119695-PROBIT           BELARUS     >=167 cm            21     21
18-21 months   ki1119695-PROBIT           BELARUS     <162 cm              0     21
18-21 months   ki1119695-PROBIT           BELARUS     [162-167) cm         0     21
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            23    170
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm             86    170
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm        61    170
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm           582    933
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm             72    933
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm       279    933
21-24 months   ki1119695-PROBIT           BELARUS     >=167 cm            29     30
21-24 months   ki1119695-PROBIT           BELARUS     <162 cm              1     30
21-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm         0     30
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm            24    194
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm            101    194
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm        69    194


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
![](/tmp/c5674a66-ba18-44db-9540-db37834e5d84/25953a8d-d843-4eaf-9dfa-b9d6340518bf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c5674a66-ba18-44db-9540-db37834e5d84/25953a8d-d843-4eaf-9dfa-b9d6340518bf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c5674a66-ba18-44db-9540-db37834e5d84/25953a8d-d843-4eaf-9dfa-b9d6340518bf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0667148   -0.1407638    0.0073342
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.0798556   -0.1416123   -0.0180989
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.1364988   -0.2738244    0.0008269
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.2725020   -0.3077510   -0.2372530
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.3275281   -0.4334342   -0.2216221
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.3312793   -0.3792425   -0.2833161
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.4647069   -0.5523337   -0.3770802
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                -0.5622480   -0.6415420   -0.4829539
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                -0.4806048   -0.5805436   -0.3806659
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.5420412   -0.7931910   -0.2908914
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.5807370   -0.6687739   -0.4927001
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.5164154   -0.6182069   -0.4146239
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0030554   -0.0474001    0.0412892
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.0012621   -0.0788355    0.0763113
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0609381   -0.1293906    0.0075143
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0150521   -0.0404454    0.0103411
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0762347   -0.1744078    0.0219384
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0326117   -0.0716051    0.0063818
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0531978    0.0224067    0.0839889
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.0104273   -0.0904617    0.1113164
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.0323491   -0.0105124    0.0752105
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0431638   -0.1705764    0.0842488
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.1563111   -0.2123596   -0.1002625
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0587279   -0.1285844    0.0111286
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0450240   -0.1042714    0.0142233
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.1304955   -0.2400223   -0.0209686
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.1066718   -0.1646643   -0.0486794
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0620523   -0.1256423    0.0015377
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -0.1007355   -0.1720353   -0.0294356
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.1366949   -0.1848739   -0.0885159
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0135383   -0.0460095    0.0189329
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                 0.0576084   -0.0503051    0.1655218
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0467241   -0.0928803   -0.0005678
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0568551    0.0358674    0.0778428
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.0825265    0.0427309    0.1223220
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.0249583   -0.0128241    0.0627407
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0562326   -0.1577142    0.0452491
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.1653884   -0.2020082   -0.1287686
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.1440534   -0.1899717   -0.0981350
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0997829   -0.1488729   -0.0506930
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.0938478   -0.1517919   -0.0359038
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.1053635   -0.1385043   -0.0722226
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2351492   -0.2822653   -0.1880332
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -0.0572907   -0.3003631    0.1857817
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                 0.0502490   -0.2445965    0.3450945
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0977266   -0.1219652   -0.0734880
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.1561722   -0.2560483   -0.0562960
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.1049927   -0.1428707   -0.0671147
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0343527    0.0111547    0.0575507
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                 0.0023354   -0.0470540    0.0517249
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                 0.0490594    0.0145255    0.0835932
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1002748   -0.1733888   -0.0271609
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.1100867   -0.1387439   -0.0814295
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0772867   -0.1194566   -0.0351167
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0526838   -0.1054592    0.0000915
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                -0.0522412   -0.1006019   -0.0038806
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0517721   -0.0901749   -0.0133693
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0842637   -0.0065096    0.1750369
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -0.0459678   -0.2245589    0.1326233
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.0404632   -0.2208588    0.1399323
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0527353   -0.0703047   -0.0351659
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0427970   -0.0978637    0.0122698
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0621839   -0.0881717   -0.0361961
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0784462   -0.1377380   -0.0191544
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.0910413   -0.1203790   -0.0617036
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.1039161   -0.1372850   -0.0705473
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0318448   -0.0264956    0.0901852
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                 0.0103329   -0.0647584    0.0854241
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                 0.0430921   -0.0818542    0.1680385
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0846170   -0.1466244   -0.0226096
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                -0.0216025   -0.0523781    0.0091731
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                 0.0019901   -0.0393124    0.0432926
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0416209   -0.0572506   -0.0259912
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0364067   -0.0823930    0.0095797
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0174226   -0.0417602    0.0069150
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1324264   -0.2100509   -0.0548020
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.0510526   -0.0777475   -0.0243578
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0725064   -0.1138404   -0.0311724
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0179154   -0.0345345   -0.0012964
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                -0.0085588   -0.0501829    0.0330652
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                -0.0273030   -0.0480617   -0.0065442
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0010173   -0.0640944    0.0620599
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.0212598   -0.0493273    0.0068077
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0475073   -0.0828544   -0.0121601
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0213840    0.0042631    0.0385050
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                 0.0245169   -0.0082902    0.0573239
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                 0.0101766   -0.0122212    0.0325744
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0266078   -0.0836745    0.0304589
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                -0.0220914   -0.0463224    0.0021396
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                -0.0411336   -0.0669397   -0.0153275


### Parameter: E(Y)


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.0913960   -0.1548167   -0.0279753
0-3 months     ki1101329-Keneba           GAMBIA      NA                   NA                -0.2925541   -0.3202623   -0.2648459
0-3 months     ki1119695-PROBIT           BELARUS     NA                   NA                -0.4668089   -0.5550752   -0.3785425
0-3 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.5511815   -0.6193340   -0.4830290
3-6 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.0199290   -0.0809943    0.0411364
3-6 months     ki1101329-Keneba           GAMBIA      NA                   NA                -0.0243287   -0.0453184   -0.0033389
3-6 months     ki1119695-PROBIT           BELARUS     NA                   NA                 0.0515449    0.0204515    0.0826383
3-6 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.1072101   -0.1501138   -0.0643064
6-9 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.0846215   -0.1281707   -0.0410724
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.1080573   -0.1444937   -0.0716210
6-9 months     ki1101329-Keneba           GAMBIA      NA                   NA                -0.0162599   -0.0424084    0.0098886
6-9 months     ki1119695-PROBIT           BELARUS     NA                   NA                 0.0555056    0.0349845    0.0760267
6-9 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.1451633   -0.1739608   -0.1163658
9-12 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.1003130   -0.1216935   -0.0789325
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.0522847   -0.2053342    0.1007648
9-12 months    ki1101329-Keneba           GAMBIA      NA                   NA                -0.1043948   -0.1248389   -0.0839507
9-12 months    ki1119695-PROBIT           BELARUS     NA                   NA                 0.0347415    0.0121962    0.0572867
9-12 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.0989624   -0.1218053   -0.0761196
12-15 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                -0.0522937   -0.0834078   -0.0211795
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.0194561   -0.1246771    0.0857649
12-15 months   ki1101329-Keneba           GAMBIA      NA                   NA                -0.0546831   -0.0687903   -0.0405758
12-15 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.0937250   -0.1145338   -0.0729162
15-18 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                 0.0309027   -0.0393007    0.1011061
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                -0.0247238   -0.0497697    0.0003221
15-18 months   ki1101329-Keneba           GAMBIA      NA                   NA                -0.0340694   -0.0467538   -0.0213851
15-18 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.0690427   -0.0917763   -0.0463092
18-21 months   ki1101329-Keneba           GAMBIA      NA                   NA                -0.0200780   -0.0325402   -0.0076159
18-21 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.0279393   -0.0489434   -0.0069353
21-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                 0.0182744    0.0054117    0.0311371
21-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                -0.0294229   -0.0465918   -0.0122539


### Parameter: ATE


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0131408   -0.1089261    0.0826444
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0697840   -0.2063258    0.0667578
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0550261   -0.1666442    0.0565919
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0587773   -0.1183001    0.0007455
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0975410   -0.1728961   -0.0221860
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0158978   -0.0460083    0.0142126
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0386958   -0.3048287    0.2274371
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0256258   -0.2453681    0.2966197
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0017933   -0.0326996    0.0362863
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0578827   -0.0981625   -0.0176028
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0611826   -0.1625866    0.0402215
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0175595   -0.0640924    0.0289734
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0427705   -0.1338009    0.0482600
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0208487   -0.0609053    0.0192078
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1131473   -0.2523428    0.0260483
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0155641   -0.1608703    0.1297421
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0854715   -0.2148768    0.0439339
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0616478   -0.0781362   -0.0451594
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0386832   -0.1342204    0.0568540
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0746426   -0.1544230    0.0051377
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0711467   -0.0415462    0.1838396
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0331858   -0.0896196    0.0232480
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0256714   -0.0161100    0.0674527
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0318968   -0.0667160    0.0029224
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.1091558   -0.2170424   -0.0012692
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0878208   -0.1992076    0.0235660
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0059351   -0.0919344    0.1038046
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0055805   -0.0623368    0.0511757
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.1778585   -0.0697382    0.4254552
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.2853982   -0.0131881    0.5839845
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0584456   -0.1612208    0.0443297
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0072661   -0.0522356    0.0377034
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0320173   -0.0768192    0.0127847
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm           0.0147067   -0.0237386    0.0531520
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0098118   -0.0883414    0.0687177
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0229882   -0.0614153    0.1073917
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0004426   -0.0778234    0.0787086
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0009117   -0.0663137    0.0681371
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.1302315   -0.3305676    0.0701046
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.1247269   -0.3266733    0.0772194
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0099384   -0.0478633    0.0677400
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0094486   -0.0408182    0.0219210
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0125951   -0.0787481    0.0535579
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0254699   -0.0935066    0.0425669
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0215119   -0.0965992    0.0535754
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0112474   -0.0975062    0.1200010
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0630145   -0.0062102    0.1322392
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0866071    0.0121032    0.1611109
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0052142   -0.0433556    0.0537841
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0241983   -0.0047258    0.0531224
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0813738   -0.0007125    0.1634602
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0599200   -0.0280235    0.1478635
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0093566   -0.0354625    0.0541757
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0093875   -0.0359793    0.0172042
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0202425   -0.0892825    0.0487974
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0464900   -0.1187959    0.0258160
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0031329   -0.0338730    0.0401387
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0112074   -0.0393994    0.0169846
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0045164   -0.0574816    0.0665144
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0145258   -0.0771561    0.0481046


### Parameter: PAR


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0246812   -0.0826793    0.0333168
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0200521   -0.0396822   -0.0004220
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0021019   -0.0048116    0.0006077
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0091403   -0.2305714    0.2122908
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0168735   -0.0369081    0.0031611
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0092765   -0.0250382    0.0064851
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0016529   -0.0044602    0.0011544
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0640463   -0.1784125    0.0503199
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0395975   -0.0700072   -0.0091878
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0460050   -0.1069108    0.0149007
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0027216   -0.0209503    0.0155070
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0013495   -0.0034808    0.0007818
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0889307   -0.1813110    0.0034495
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0005301   -0.0379260    0.0368659
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.1828645    0.0256723    0.3400566
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0066682   -0.0224706    0.0091342
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                 0.0003888   -0.0013813    0.0021588
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0013124   -0.0656954    0.0683202
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                 0.0003902   -0.0379901    0.0387705
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1037198   -0.2311366    0.0236971
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0019478   -0.0129490    0.0090535
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0152788   -0.0706378    0.0400803
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0009421   -0.0473280    0.0454438
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0598932    0.0055249    0.1142615
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0075515   -0.0023988    0.0175017
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0633837   -0.0068334    0.1336008
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0021626   -0.0119194    0.0075942
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0269220   -0.0847433    0.0308992
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0031096   -0.0127468    0.0065275
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0028151   -0.0552138    0.0495836
