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

**Outcome Variable:** y_rate_len

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
![](/tmp/9b29ea86-0251-4c99-814c-7ae0fa102809/b3dfb887-cd3d-4694-a909-7b626497cce6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9b29ea86-0251-4c99-814c-7ae0fa102809/b3dfb887-cd3d-4694-a909-7b626497cce6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9b29ea86-0251-4c99-814c-7ae0fa102809/b3dfb887-cd3d-4694-a909-7b626497cce6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                3.4678208   3.3567480   3.5788936
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                3.4642186   3.3544467   3.5739904
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                3.3562763   3.0820249   3.6305276
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                3.1319025   3.0628593   3.2009457
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                3.0615278   2.8487174   3.2743382
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                3.0126540   2.9174204   3.1078875
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                2.7442926   2.5779446   2.9106406
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                2.4980927   2.3316706   2.6645148
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                2.6843350   2.4917589   2.8769110
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                2.5430812   2.0247574   3.0614051
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                2.4657325   2.2769915   2.6544735
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                2.6505981   2.4329150   2.8682812
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                1.9753386   1.8652722   2.0854049
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                1.9787676   1.8163258   2.1412094
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                1.8496967   1.7210284   1.9783650
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                2.0003581   1.9461897   2.0545264
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                1.8704267   1.6601132   2.0807401
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                1.9588819   1.8760217   2.0417421
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                2.1046383   2.0393700   2.1699066
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                1.9776112   1.7639349   2.1912874
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                2.0414963   1.9491798   2.1338128
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                1.8459410   1.5976954   2.0941867
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                1.6140580   1.4957232   1.7323927
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                1.8662420   1.7220854   2.0103987
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                1.3147658   1.1806797   1.4488518
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                1.1017831   0.8586230   1.3449432
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                1.1553985   1.0213661   1.2894309
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                1.2358043   1.0833093   1.3882992
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                1.1479091   0.9866915   1.3091266
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                1.0655954   0.9598771   1.1713137
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                1.4065899   1.3319448   1.4812350
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm              NA                1.5537799   1.3145006   1.7930593
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm         NA                1.3210977   1.2169956   1.4251998
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                1.5901660   1.5447994   1.6355325
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm              NA                1.6188849   1.5296827   1.7080872
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm         NA                1.5002085   1.4158358   1.5845812
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                1.2327906   1.0046202   1.4609610
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.9823461   0.8986121   1.0660801
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                1.0598153   0.9578955   1.1617352
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.9688552   0.8449586   1.0927518
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.9609605   0.8230568   1.0988641
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.9370780   0.8564101   1.0177459
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.5950272   0.4907442   0.6993101
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                1.0086450   0.4299396   1.5873504
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                1.2997099   0.5630990   2.0363208
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.9894737   0.9317663   1.0471811
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm              NA                0.8498664   0.6174844   1.0822485
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.9625335   0.8717400   1.0533271
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                1.3677366   1.3111857   1.4242876
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm              NA                1.2742421   1.1519281   1.3965560
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         NA                1.3798149   1.2991110   1.4605187
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.9183902   0.7312839   1.1054964
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.8676109   0.7978764   0.9373455
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.9768270   0.8800401   1.0736139
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                0.9322398   0.7941971   1.0702825
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.8975107   0.7724673   1.0225541
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                0.9067386   0.8048838   1.0085934
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                1.2374193   0.9875595   1.4872792
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.8882703   0.4608167   1.3157239
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.9026185   0.4394881   1.3657490
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.9417394   0.8970240   0.9864548
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.9462792   0.8095666   1.0829918
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.9034631   0.8379188   0.9690075
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.8130155   0.6535789   0.9724522
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.7458008   0.6679339   0.8236676
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.7427466   0.6558967   0.8295965
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                1.0470623   0.8672111   1.2269134
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              NA                0.9502467   0.7589314   1.1415620
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         NA                1.0406589   0.6944016   1.3869163
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                0.6742220   0.5004043   0.8480396
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              NA                0.8243827   0.7408116   0.9079538
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.9069194   0.7928634   1.0209754
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.8573590   0.8150621   0.8996560
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.8584030   0.7326799   0.9841261
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.9089364   0.8438789   0.9739939
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.5395741   0.3331501   0.7459981
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.7257988   0.6528169   0.7987807
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.6935676   0.5845683   0.8025669
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.8297373   0.7816906   0.8777841
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.8295460   0.7121008   0.9469912
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.7916195   0.7318021   0.8514369
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.7992922   0.6134096   0.9851747
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.7190250   0.6352844   0.8027656
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.6624715   0.5606664   0.7642765
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                0.7386936   0.6873794   0.7900077
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm              NA                0.7154225   0.6211537   0.8096913
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         NA                0.6963642   0.6308598   0.7618686
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                0.6058929   0.4498837   0.7619021
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              NA                0.6145176   0.5429895   0.6860457
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         NA                0.5919923   0.5133066   0.6706780


### Parameter: E(Y)


agecat         studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                3.4327203   3.3283835   3.5370571
0-3 months     ki1101329-Keneba           GAMBIA      NA                   NA                3.0944274   3.0398727   3.1489822
0-3 months     ki1119695-PROBIT           BELARUS     NA                   NA                2.7379381   2.5700480   2.9058282
0-3 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                2.5456603   2.4007516   2.6905691
3-6 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                1.9385934   1.8051379   2.0720489
3-6 months     ki1101329-Keneba           GAMBIA      NA                   NA                1.9794873   1.9347361   2.0242384
3-6 months     ki1119695-PROBIT           BELARUS     NA                   NA                2.0996651   2.0336995   2.1656306
3-6 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                1.7316382   1.6424348   1.8208416
6-9 months     ki1000304b-SAS-CompFeed    INDIA       NA                   NA                1.2143056   1.1169612   1.3116501
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                1.1310146   1.0486990   1.2133302
6-9 months     ki1101329-Keneba           GAMBIA      NA                   NA                1.3966930   1.3370412   1.4563449
6-9 months     ki1119695-PROBIT           BELARUS     NA                   NA                1.5857843   1.5415886   1.6299801
6-9 months     ki1135781-COHORTS          GUATEMALA   NA                   NA                1.0374113   0.9721703   1.1026523
9-12 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.9567643   0.9076860   1.0058427
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                1.0364616   0.6613231   1.4116001
9-12 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.9708891   0.9222915   1.0194866
9-12 months    ki1119695-PROBIT           BELARUS     NA                   NA                1.3671844   1.3123647   1.4220041
9-12 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.9069849   0.8516062   0.9623635
12-15 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.9165924   0.8288732   1.0043116
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.9591841   0.6972026   1.2211656
12-15 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.9309324   0.8952046   0.9666602
12-15 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7532384   0.6982068   0.8082700
15-18 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                1.0247845   0.8342343   1.2153347
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.8273232   0.7583739   0.8962726
15-18 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.8726682   0.8384641   0.9068722
15-18 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.6902145   0.6295356   0.7508934
18-21 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.8178809   0.7819425   0.8538193
18-21 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.7095919   0.6479040   0.7712798
21-24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.7242397   0.6859939   0.7624856
21-24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.6054390   0.5549952   0.6558829


### Parameter: ATE


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0036022   -0.1729948    0.1657904
0-3 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1115445   -0.4004175    0.1773284
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0703748   -0.2941050    0.1533555
0-3 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.1192486   -0.2368768   -0.0016204
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.2461999   -0.4016340   -0.0907659
0-3 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0599577   -0.1197968   -0.0001185
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0773488   -0.6289671    0.4742696
0-3 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.1075169   -0.4546624    0.6696962
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0034290   -0.0674897    0.0743478
3-6 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1256418   -0.1669884   -0.0842952
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.1299314   -0.3471086    0.0872459
3-6 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0414761   -0.1404712    0.0575189
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.1270271   -0.3190057    0.0649514
3-6 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0631420   -0.1501396    0.0238557
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.2318831   -0.5068904    0.0431242
3-6 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0203010   -0.2667653    0.3073673
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.2129827   -0.5106105    0.0846452
6-9 months     ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1593673   -0.1859048   -0.1328297
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0878952   -0.3098092    0.1340188
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.1702089   -0.3557650    0.0153473
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.1471900   -0.1034621    0.3978422
6-9 months     ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0854922   -0.2135904    0.0426060
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm           0.0287190   -0.0641786    0.1216165
6-9 months     ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm          -0.0899575   -0.1685469   -0.0113680
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.2504445   -0.4934941   -0.0073949
6-9 months     ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1729753   -0.4228740    0.0769235
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0078947   -0.2408542    0.2250647
9-12 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0317772   -0.1881165    0.1245620
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.4136178   -0.1744084    1.0016441
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.7046827   -0.0392733    1.4486388
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.1396073   -0.3790474    0.0998328
9-12 months    ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0269402   -0.1345209    0.0806406
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS     <162 cm              >=167 cm          -0.0934946   -0.2048374    0.0178482
9-12 months    ki1119695-PROBIT           BELARUS     [162-167) cm         >=167 cm           0.0120782   -0.0786346    0.1027911
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0507792   -0.2504581    0.1488996
9-12 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.0584368   -0.1522204    0.2690940
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0347291   -0.2315062    0.1620480
12-15 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0255012   -0.1957232    0.1447208
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.3491490   -0.8442717    0.1459738
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.3348008   -0.8610325    0.1914309
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0045398   -0.1392997    0.1483793
12-15 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0382763   -0.1176207    0.0410681
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0672148   -0.2446500    0.1102205
12-15 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0702689   -0.2518259    0.1112881
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0968155   -0.3112254    0.1175943
15-18 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0064033   -0.3194310    0.3066244
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.1501607   -0.0427038    0.3430252
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.2326974    0.0248000    0.4405949
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm           0.0010440   -0.1316034    0.1336914
15-18 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm           0.0515773   -0.0260211    0.1291757
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.1862247   -0.0327210    0.4051704
15-18 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm           0.1539935   -0.0794411    0.3874281
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0001913   -0.1270845    0.1267018
18-21 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0381178   -0.1148421    0.0386064
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm          -0.0802672   -0.2841417    0.1236073
18-21 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.1368207   -0.3487560    0.0751146
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA      <162 cm              >=167 cm          -0.0232711   -0.1306012    0.0840590
21-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm         >=167 cm          -0.0423294   -0.1255398    0.0408810
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm              >=167 cm           0.0086247   -0.1630003    0.1802497
21-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm         >=167 cm          -0.0139006   -0.1886299    0.1608287


### Parameter: PAR


agecat         studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0351005   -0.1483725    0.0781714
0-3 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0374751   -0.0763220    0.0013718
0-3 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0063545   -0.0119724   -0.0007365
0-3 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.0025791   -0.4557388    0.4608970
3-6 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0367452   -0.0610318   -0.0124585
3-6 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0208708   -0.0544616    0.0127200
3-6 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0049732   -0.0110155    0.0010690
3-6 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1143028   -0.3392946    0.1106890
6-9 months     ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.1004601   -0.1714096   -0.0295107
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1047897   -0.2478765    0.0382972
6-9 months     ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0098969   -0.0511406    0.0313469
6-9 months     ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0043816   -0.0093139    0.0005506
6-9 months     ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.1953794   -0.4032406    0.0124818
9-12 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0120909   -0.1067168    0.0825350
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.4414344    0.0579962    0.8248727
9-12 months    ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0185846   -0.0561088    0.0189396
9-12 months    ki1119695-PROBIT           BELARUS     >=167 cm             NA                -0.0005522   -0.0048493    0.0037449
9-12 months    ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0114053   -0.1818602    0.1590496
12-15 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0156474   -0.1128827    0.0815878
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.2782352   -0.6064990    0.0500285
12-15 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0108070   -0.0385798    0.0169658
12-15 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0597771   -0.2082938    0.0887395
15-18 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm             NA                -0.0222778   -0.1498580    0.1053025
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.1531012    0.0012731    0.3049294
15-18 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                 0.0153091   -0.0114621    0.0420803
15-18 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                 0.1506404   -0.0361582    0.3374389
18-21 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0118564   -0.0399481    0.0162353
18-21 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0897002   -0.2600184    0.0806179
21-24 months   ki1101329-Keneba           GAMBIA      >=167 cm             NA                -0.0144538   -0.0429285    0.0140208
21-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm             NA                -0.0004538   -0.1448889    0.1439812
