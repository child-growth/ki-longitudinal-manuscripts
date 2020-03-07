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

agecat         studyid         country     fhtcm           n_cell       n
-------------  --------------  ----------  -------------  -------  ------
0-3 months     COHORTS         GUATEMALA   >=167 cm            37     243
0-3 months     COHORTS         GUATEMALA   <162 cm            141     243
0-3 months     COHORTS         GUATEMALA   [162-167) cm        65     243
0-3 months     Keneba          GAMBIA      >=167 cm           768    1181
0-3 months     Keneba          GAMBIA      <162 cm             82    1181
0-3 months     Keneba          GAMBIA      [162-167) cm       331    1181
0-3 months     PROBIT          BELARUS     >=167 cm         10778   11505
0-3 months     PROBIT          BELARUS     <162 cm            151   11505
0-3 months     PROBIT          BELARUS     [162-167) cm       576   11505
0-3 months     SAS-CompFeed    INDIA       >=167 cm           347     768
0-3 months     SAS-CompFeed    INDIA       <162 cm            197     768
0-3 months     SAS-CompFeed    INDIA       [162-167) cm       224     768
3-6 months     COHORTS         GUATEMALA   >=167 cm            37     263
3-6 months     COHORTS         GUATEMALA   <162 cm            150     263
3-6 months     COHORTS         GUATEMALA   [162-167) cm        76     263
3-6 months     Keneba          GAMBIA      >=167 cm           673    1039
3-6 months     Keneba          GAMBIA      <162 cm             75    1039
3-6 months     Keneba          GAMBIA      [162-167) cm       291    1039
3-6 months     PROBIT          BELARUS     >=167 cm          9478   10109
3-6 months     PROBIT          BELARUS     <162 cm            129   10109
3-6 months     PROBIT          BELARUS     [162-167) cm       502   10109
3-6 months     SAS-CompFeed    INDIA       >=167 cm           309     681
3-6 months     SAS-CompFeed    INDIA       <162 cm            173     681
3-6 months     SAS-CompFeed    INDIA       [162-167) cm       199     681
6-9 months     COHORTS         GUATEMALA   >=167 cm            40     309
6-9 months     COHORTS         GUATEMALA   <162 cm            187     309
6-9 months     COHORTS         GUATEMALA   [162-167) cm        82     309
6-9 months     Keneba          GAMBIA      >=167 cm           442     663
6-9 months     Keneba          GAMBIA      <162 cm             53     663
6-9 months     Keneba          GAMBIA      [162-167) cm       168     663
6-9 months     PROBIT          BELARUS     >=167 cm          8932    9534
6-9 months     PROBIT          BELARUS     <162 cm            126    9534
6-9 months     PROBIT          BELARUS     [162-167) cm       476    9534
6-9 months     SAS-CompFeed    INDIA       >=167 cm           311     681
6-9 months     SAS-CompFeed    INDIA       <162 cm            166     681
6-9 months     SAS-CompFeed    INDIA       [162-167) cm       204     681
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm            89     306
6-9 months     SAS-FoodSuppl   INDIA       <162 cm            122     306
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm        95     306
9-12 months    COHORTS         GUATEMALA   >=167 cm            51     371
9-12 months    COHORTS         GUATEMALA   <162 cm            226     371
9-12 months    COHORTS         GUATEMALA   [162-167) cm        94     371
9-12 months    Keneba          GAMBIA      >=167 cm           419     652
9-12 months    Keneba          GAMBIA      <162 cm             52     652
9-12 months    Keneba          GAMBIA      [162-167) cm       181     652
9-12 months    PROBIT          BELARUS     >=167 cm          9112    9734
9-12 months    PROBIT          BELARUS     <162 cm            126    9734
9-12 months    PROBIT          BELARUS     [162-167) cm       496    9734
9-12 months    SAS-CompFeed    INDIA       >=167 cm           317     683
9-12 months    SAS-CompFeed    INDIA       <162 cm            165     683
9-12 months    SAS-CompFeed    INDIA       [162-167) cm       201     683
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm            83     297
9-12 months    SAS-FoodSuppl   INDIA       <162 cm            125     297
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm        89     297
12-15 months   COHORTS         GUATEMALA   >=167 cm            53     391
12-15 months   COHORTS         GUATEMALA   <162 cm            228     391
12-15 months   COHORTS         GUATEMALA   [162-167) cm       110     391
12-15 months   Keneba          GAMBIA      >=167 cm           652    1041
12-15 months   Keneba          GAMBIA      <162 cm             85    1041
12-15 months   Keneba          GAMBIA      [162-167) cm       304    1041
12-15 months   PROBIT          BELARUS     >=167 cm           842     898
12-15 months   PROBIT          BELARUS     <162 cm              9     898
12-15 months   PROBIT          BELARUS     [162-167) cm        47     898
12-15 months   SAS-CompFeed    INDIA       >=167 cm           330     701
12-15 months   SAS-CompFeed    INDIA       <162 cm            166     701
12-15 months   SAS-CompFeed    INDIA       [162-167) cm       205     701
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm            77     299
12-15 months   SAS-FoodSuppl   INDIA       <162 cm            130     299
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm        92     299
15-18 months   COHORTS         GUATEMALA   >=167 cm            48     356
15-18 months   COHORTS         GUATEMALA   <162 cm            213     356
15-18 months   COHORTS         GUATEMALA   [162-167) cm        95     356
15-18 months   Keneba          GAMBIA      >=167 cm           660    1053
15-18 months   Keneba          GAMBIA      <162 cm             82    1053
15-18 months   Keneba          GAMBIA      [162-167) cm       311    1053
15-18 months   PROBIT          BELARUS     >=167 cm           229     242
15-18 months   PROBIT          BELARUS     <162 cm              1     242
15-18 months   PROBIT          BELARUS     [162-167) cm        12     242
15-18 months   SAS-CompFeed    INDIA       >=167 cm           335     716
15-18 months   SAS-CompFeed    INDIA       <162 cm            168     716
15-18 months   SAS-CompFeed    INDIA       [162-167) cm       213     716
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm            79     289
15-18 months   SAS-FoodSuppl   INDIA       <162 cm            120     289
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm        90     289
18-21 months   COHORTS         GUATEMALA   >=167 cm            53     384
18-21 months   COHORTS         GUATEMALA   <162 cm            224     384
18-21 months   COHORTS         GUATEMALA   [162-167) cm       107     384
18-21 months   Keneba          GAMBIA      >=167 cm           636    1044
18-21 months   Keneba          GAMBIA      <162 cm             84    1044
18-21 months   Keneba          GAMBIA      [162-167) cm       324    1044
18-21 months   PROBIT          BELARUS     >=167 cm           179     190
18-21 months   PROBIT          BELARUS     <162 cm              2     190
18-21 months   PROBIT          BELARUS     [162-167) cm         9     190
21-24 months   COHORTS         GUATEMALA   >=167 cm            60     428
21-24 months   COHORTS         GUATEMALA   <162 cm            246     428
21-24 months   COHORTS         GUATEMALA   [162-167) cm       122     428
21-24 months   Keneba          GAMBIA      >=167 cm           584     935
21-24 months   Keneba          GAMBIA      <162 cm             72     935
21-24 months   Keneba          GAMBIA      [162-167) cm       279     935
21-24 months   PROBIT          BELARUS     >=167 cm           175     186
21-24 months   PROBIT          BELARUS     <162 cm              4     186
21-24 months   PROBIT          BELARUS     [162-167) cm         7     186


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS

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
![](/tmp/b14c4d1d-5f7c-4944-9564-5105a333acc4/b07857e8-d610-4f36-a10d-411f07d1f37c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b14c4d1d-5f7c-4944-9564-5105a333acc4/b07857e8-d610-4f36-a10d-411f07d1f37c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b14c4d1d-5f7c-4944-9564-5105a333acc4/b07857e8-d610-4f36-a10d-411f07d1f37c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             NA                0.7637871   0.6881753   0.8393989
0-3 months     COHORTS         GUATEMALA   <162 cm              NA                0.7489013   0.7044401   0.7933625
0-3 months     COHORTS         GUATEMALA   [162-167) cm         NA                0.8024712   0.7509540   0.8539884
0-3 months     Keneba          GAMBIA      >=167 cm             NA                0.9218303   0.9064932   0.9371673
0-3 months     Keneba          GAMBIA      <162 cm              NA                0.9523053   0.9078085   0.9968021
0-3 months     Keneba          GAMBIA      [162-167) cm         NA                0.9118378   0.8884908   0.9351848
0-3 months     PROBIT          BELARUS     >=167 cm             NA                0.8374233   0.8269572   0.8478893
0-3 months     PROBIT          BELARUS     <162 cm              NA                0.7831043   0.7675162   0.7986923
0-3 months     PROBIT          BELARUS     [162-167) cm         NA                0.8165455   0.7995884   0.8335027
0-3 months     SAS-CompFeed    INDIA       >=167 cm             NA                0.8260324   0.7967179   0.8553470
0-3 months     SAS-CompFeed    INDIA       <162 cm              NA                0.7594388   0.7156490   0.8032285
0-3 months     SAS-CompFeed    INDIA       [162-167) cm         NA                0.7817877   0.7488102   0.8147653
3-6 months     COHORTS         GUATEMALA   >=167 cm             NA                0.4674021   0.4107958   0.5240084
3-6 months     COHORTS         GUATEMALA   <162 cm              NA                0.4221089   0.3961974   0.4480203
3-6 months     COHORTS         GUATEMALA   [162-167) cm         NA                0.4638764   0.4302781   0.4974747
3-6 months     Keneba          GAMBIA      >=167 cm             NA                0.4510309   0.4377209   0.4643409
3-6 months     Keneba          GAMBIA      <162 cm              NA                0.4240612   0.3911826   0.4569399
3-6 months     Keneba          GAMBIA      [162-167) cm         NA                0.4235976   0.4024279   0.4447673
3-6 months     PROBIT          BELARUS     >=167 cm             NA                0.6671991   0.6592626   0.6751355
3-6 months     PROBIT          BELARUS     <162 cm              NA                0.6409965   0.6151714   0.6668216
3-6 months     PROBIT          BELARUS     [162-167) cm         NA                0.6385414   0.6215364   0.6555465
3-6 months     SAS-CompFeed    INDIA       >=167 cm             NA                0.4589931   0.4334804   0.4845058
3-6 months     SAS-CompFeed    INDIA       <162 cm              NA                0.4031514   0.3733537   0.4329490
3-6 months     SAS-CompFeed    INDIA       [162-167) cm         NA                0.4277390   0.4028002   0.4526778
6-9 months     COHORTS         GUATEMALA   >=167 cm             NA                0.2197857   0.1694418   0.2701297
6-9 months     COHORTS         GUATEMALA   <162 cm              NA                0.2028251   0.1813126   0.2243375
6-9 months     COHORTS         GUATEMALA   [162-167) cm         NA                0.2006475   0.1685949   0.2327001
6-9 months     Keneba          GAMBIA      >=167 cm             NA                0.2007183   0.1834928   0.2179438
6-9 months     Keneba          GAMBIA      <162 cm              NA                0.2348273   0.1807017   0.2889530
6-9 months     Keneba          GAMBIA      [162-167) cm         NA                0.1858075   0.1587517   0.2128633
6-9 months     PROBIT          BELARUS     >=167 cm             NA                0.4745793   0.4657153   0.4834433
6-9 months     PROBIT          BELARUS     <162 cm              NA                0.4136280   0.3921209   0.4351351
6-9 months     PROBIT          BELARUS     [162-167) cm         NA                0.4555565   0.4335667   0.4775462
6-9 months     SAS-CompFeed    INDIA       >=167 cm             NA                0.1905608   0.1694287   0.2116929
6-9 months     SAS-CompFeed    INDIA       <162 cm              NA                0.1784724   0.1401229   0.2168219
6-9 months     SAS-CompFeed    INDIA       [162-167) cm         NA                0.1775674   0.1634599   0.1916749
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1939967   0.1646276   0.2233659
6-9 months     SAS-FoodSuppl   INDIA       <162 cm              NA                0.2038896   0.1792395   0.2285397
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1971873   0.1647181   0.2296565
9-12 months    COHORTS         GUATEMALA   >=167 cm             NA                0.1816154   0.1507094   0.2125214
9-12 months    COHORTS         GUATEMALA   <162 cm              NA                0.1454665   0.1268747   0.1640584
9-12 months    COHORTS         GUATEMALA   [162-167) cm         NA                0.1367187   0.1054130   0.1680244
9-12 months    Keneba          GAMBIA      >=167 cm             NA                0.1544949   0.1380682   0.1709215
9-12 months    Keneba          GAMBIA      <162 cm              NA                0.1720747   0.1264156   0.2177338
9-12 months    Keneba          GAMBIA      [162-167) cm         NA                0.1394319   0.1140910   0.1647728
9-12 months    PROBIT          BELARUS     >=167 cm             NA                0.3657563   0.3514430   0.3800695
9-12 months    PROBIT          BELARUS     <162 cm              NA                0.3948086   0.3719823   0.4176349
9-12 months    PROBIT          BELARUS     [162-167) cm         NA                0.3583735   0.3361685   0.3805785
9-12 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.2212041   0.2007358   0.2416724
9-12 months    SAS-CompFeed    INDIA       <162 cm              NA                0.2075471   0.1939804   0.2211138
9-12 months    SAS-CompFeed    INDIA       [162-167) cm         NA                0.2228060   0.1930358   0.2525761
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1410788   0.1074018   0.1747558
9-12 months    SAS-FoodSuppl   INDIA       <162 cm              NA                0.1415593   0.1116074   0.1715112
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1435608   0.1077204   0.1794011
12-15 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1419966   0.1033731   0.1806200
12-15 months   COHORTS         GUATEMALA   <162 cm              NA                0.1356382   0.1170888   0.1541877
12-15 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.1820584   0.1505420   0.2135748
12-15 months   Keneba          GAMBIA      >=167 cm             NA                0.1729612   0.1590427   0.1868796
12-15 months   Keneba          GAMBIA      <162 cm              NA                0.1988207   0.1656096   0.2320318
12-15 months   Keneba          GAMBIA      [162-167) cm         NA                0.2067044   0.1860210   0.2273877
12-15 months   PROBIT          BELARUS     >=167 cm             NA                0.2205378   0.1433380   0.2977377
12-15 months   PROBIT          BELARUS     <162 cm              NA                0.1525218   0.0164661   0.2885774
12-15 months   PROBIT          BELARUS     [162-167) cm         NA                0.2225256   0.0339597   0.4110915
12-15 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.1977690   0.1767893   0.2187488
12-15 months   SAS-CompFeed    INDIA       <162 cm              NA                0.2064157   0.1709592   0.2418722
12-15 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.1922966   0.1720027   0.2125905
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1696749   0.1381430   0.2012069
12-15 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.1726258   0.1479730   0.1972786
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1800720   0.1514638   0.2086803
15-18 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1184427   0.0729776   0.1639078
15-18 months   COHORTS         GUATEMALA   <162 cm              NA                0.1608383   0.1400646   0.1816120
15-18 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.1012917   0.0665563   0.1360270
15-18 months   Keneba          GAMBIA      >=167 cm             NA                0.1661384   0.1518994   0.1803774
15-18 months   Keneba          GAMBIA      <162 cm              NA                0.1364112   0.0997758   0.1730466
15-18 months   Keneba          GAMBIA      [162-167) cm         NA                0.1573647   0.1357113   0.1790181
15-18 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.1617963   0.1277247   0.1958680
15-18 months   SAS-CompFeed    INDIA       <162 cm              NA                0.1582797   0.1349522   0.1816073
15-18 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.1742909   0.1532275   0.1953543
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1523204   0.1232869   0.1813540
15-18 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.1759350   0.1503047   0.2015653
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.1599920   0.1326926   0.1872915
18-21 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1677302   0.1169127   0.2185476
18-21 months   COHORTS         GUATEMALA   <162 cm              NA                0.1701195   0.1506292   0.1896099
18-21 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.1824190   0.1523299   0.2125080
18-21 months   Keneba          GAMBIA      >=167 cm             NA                0.1592566   0.1444087   0.1741044
18-21 months   Keneba          GAMBIA      <162 cm              NA                0.1369743   0.1007378   0.1732107
18-21 months   Keneba          GAMBIA      [162-167) cm         NA                0.1553044   0.1319995   0.1786093
21-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.2294749   0.1908395   0.2681104
21-24 months   COHORTS         GUATEMALA   <162 cm              NA                0.1792766   0.1594164   0.1991367
21-24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.1882101   0.1610926   0.2153276
21-24 months   Keneba          GAMBIA      >=167 cm             NA                0.1720211   0.1575729   0.1864692
21-24 months   Keneba          GAMBIA      <162 cm              NA                0.1198027   0.0709963   0.1686091
21-24 months   Keneba          GAMBIA      [162-167) cm         NA                0.1552692   0.1341430   0.1763954


### Parameter: E(Y)


agecat         studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS         GUATEMALA   NA                   NA                0.7654973   0.7339322   0.7970623
0-3 months     Keneba          GAMBIA      NA                   NA                0.9211456   0.9088113   0.9334799
0-3 months     PROBIT          BELARUS     NA                   NA                0.8356651   0.8251745   0.8461557
0-3 months     SAS-CompFeed    INDIA       NA                   NA                0.7960458   0.7686355   0.8234560
3-6 months     COHORTS         GUATEMALA   NA                   NA                0.4405506   0.4209873   0.4601139
3-6 months     Keneba          GAMBIA      NA                   NA                0.4414007   0.4306421   0.4521592
3-6 months     PROBIT          BELARUS     NA                   NA                0.6654416   0.6574980   0.6733852
3-6 months     SAS-CompFeed    INDIA       NA                   NA                0.4356742   0.4152410   0.4561073
6-9 months     COHORTS         GUATEMALA   NA                   NA                0.2044428   0.1875679   0.2213176
6-9 months     Keneba          GAMBIA      NA                   NA                0.1996667   0.1855792   0.2137542
6-9 months     PROBIT          BELARUS     NA                   NA                0.4728240   0.4638757   0.4817724
6-9 months     SAS-CompFeed    INDIA       NA                   NA                0.1837219   0.1641903   0.2032534
6-9 months     SAS-FoodSuppl   INDIA       NA                   NA                0.1989315   0.1824576   0.2154054
9-12 months    COHORTS         GUATEMALA   NA                   NA                0.1482194   0.1336860   0.1627527
9-12 months    Keneba          GAMBIA      NA                   NA                0.1517153   0.1384995   0.1649312
9-12 months    PROBIT          BELARUS     NA                   NA                0.3657561   0.3510684   0.3804439
9-12 months    SAS-CompFeed    INDIA       NA                   NA                0.2183762   0.2032601   0.2334924
9-12 months    SAS-FoodSuppl   INDIA       NA                   NA                0.1420248   0.1229762   0.1610734
12-15 months   COHORTS         GUATEMALA   NA                   NA                0.1495595   0.1344884   0.1646306
12-15 months   Keneba          GAMBIA      NA                   NA                0.1849266   0.1739388   0.1959143
12-15 months   PROBIT          BELARUS     NA                   NA                0.2199602   0.1433467   0.2965737
12-15 months   SAS-CompFeed    INDIA       NA                   NA                0.1982163   0.1855655   0.2108670
12-15 months   SAS-FoodSuppl   INDIA       NA                   NA                0.1741570   0.1580782   0.1902359
15-18 months   COHORTS         GUATEMALA   NA                   NA                0.1392318   0.1223264   0.1561372
15-18 months   Keneba          GAMBIA      NA                   NA                0.1612322   0.1498772   0.1725872
15-18 months   SAS-CompFeed    INDIA       NA                   NA                0.1646882   0.1450730   0.1843033
15-18 months   SAS-FoodSuppl   INDIA       NA                   NA                0.1645149   0.1487075   0.1803222
18-21 months   COHORTS         GUATEMALA   NA                   NA                0.1732169   0.1574345   0.1889994
18-21 months   Keneba          GAMBIA      NA                   NA                0.1562372   0.1442891   0.1681853
21-24 months   COHORTS         GUATEMALA   NA                   NA                0.1888602   0.1739625   0.2037579
21-24 months   Keneba          GAMBIA      NA                   NA                0.1630013   0.1513318   0.1746708


### Parameter: ATE


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0148858   -0.1026009    0.0728293
0-3 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0386841   -0.0528099    0.1301782
0-3 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     Keneba          GAMBIA      <162 cm              >=167 cm           0.0304750   -0.0165908    0.0775408
0-3 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0099925   -0.0379264    0.0179415
0-3 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0543190   -0.0681568   -0.0404812
0-3 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0208778   -0.0364307   -0.0053248
0-3 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0665936   -0.1046629   -0.0285244
0-3 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0442447   -0.0708553   -0.0176341
3-6 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0452932   -0.1075482    0.0169617
3-6 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0035257   -0.0693521    0.0623007
3-6 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     Keneba          GAMBIA      <162 cm              >=167 cm          -0.0269697   -0.0624403    0.0085009
3-6 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0274333   -0.0524395   -0.0024271
3-6 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0262026   -0.0490889   -0.0033162
3-6 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0286576   -0.0463342   -0.0109811
3-6 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0558418   -0.0805161   -0.0311674
3-6 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0312541   -0.0611674   -0.0013408
6-9 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0169607   -0.0717082    0.0377869
6-9 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0191382   -0.0788197    0.0405433
6-9 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     Keneba          GAMBIA      <162 cm              >=167 cm           0.0341090   -0.0226916    0.0909096
6-9 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0149108   -0.0469847    0.0171631
6-9 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0609513   -0.0816147   -0.0402879
6-9 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0190228   -0.0387819    0.0007363
6-9 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0120884   -0.0444617    0.0202849
6-9 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0129934   -0.0336815    0.0076948
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0098929   -0.0284500    0.0482357
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0031905   -0.0405907    0.0469718
9-12 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0361489   -0.0722160   -0.0000818
9-12 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0448967   -0.0888879   -0.0009055
9-12 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    Keneba          GAMBIA      <162 cm              >=167 cm           0.0175799   -0.0309442    0.0661040
9-12 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0150630   -0.0452623    0.0151363
9-12 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROBIT          BELARUS     <162 cm              >=167 cm           0.0290523    0.0095569    0.0485477
9-12 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0073827   -0.0201831    0.0054176
9-12 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0136570   -0.0357683    0.0084543
9-12 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0016019   -0.0314893    0.0346931
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0004805   -0.0445890    0.0455500
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0024820   -0.0466980    0.0516620
12-15 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0063583   -0.0492052    0.0364885
12-15 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0400618   -0.0097885    0.0899121
12-15 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   Keneba          GAMBIA      <162 cm              >=167 cm           0.0258595   -0.0101502    0.0618692
12-15 months   Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0337432    0.0088128    0.0586736
12-15 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROBIT          BELARUS     <162 cm              >=167 cm          -0.0680161   -0.2100108    0.0739787
12-15 months   PROBIT          BELARUS     [162-167) cm         >=167 cm           0.0019877   -0.1773121    0.1812875
12-15 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0086467   -0.0297587    0.0470521
12-15 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0054724   -0.0399614    0.0290165
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0029509   -0.0370744    0.0429761
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0103971   -0.0321786    0.0529728
15-18 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0423956   -0.0075905    0.0923818
15-18 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0171510   -0.0743666    0.0400645
15-18 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0297272   -0.0690324    0.0095780
15-18 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0087737   -0.0346893    0.0171420
15-18 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0035166   -0.0420911    0.0350579
15-18 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0124945   -0.0238115    0.0488005
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0236146   -0.0151134    0.0623425
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0076716   -0.0321807    0.0475239
18-21 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0023894   -0.0520375    0.0568163
18-21 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0146888   -0.0443685    0.0737461
18-21 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0222823   -0.0614427    0.0168781
18-21 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0039521   -0.0315850    0.0236807
21-24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0501983   -0.0936394   -0.0067573
21-24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0412648   -0.0884671    0.0059375
21-24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0522183   -0.1031184   -0.0013183
21-24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0167519   -0.0423462    0.0088424


### Parameter: PAR


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             NA                 0.0017102   -0.0688056    0.0722259
0-3 months     Keneba          GAMBIA      >=167 cm             NA                -0.0006846   -0.0097084    0.0083391
0-3 months     PROBIT          BELARUS     >=167 cm             NA                -0.0017582   -0.0026188   -0.0008976
0-3 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0299867   -0.0430015   -0.0169718
3-6 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0268515   -0.0786724    0.0249695
3-6 months     Keneba          GAMBIA      >=167 cm             NA                -0.0096302   -0.0175927   -0.0016677
3-6 months     PROBIT          BELARUS     >=167 cm             NA                -0.0017575   -0.0027514   -0.0007635
3-6 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0233189   -0.0359075   -0.0107303
6-9 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0153430   -0.0618520    0.0311660
6-9 months     Keneba          GAMBIA      >=167 cm             NA                -0.0010516   -0.0110292    0.0089259
6-9 months     PROBIT          BELARUS     >=167 cm             NA                -0.0017553   -0.0029490   -0.0005616
6-9 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0068389   -0.0194027    0.0057248
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0049347   -0.0202087    0.0300782
9-12 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.0333961   -0.0634592   -0.0033330
9-12 months    Keneba          GAMBIA      >=167 cm             NA                -0.0027795   -0.0126629    0.0071038
9-12 months    PROBIT          BELARUS     >=167 cm             NA                -0.0000001   -0.0008144    0.0008142
9-12 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.0028279   -0.0160755    0.0104198
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0009460   -0.0284324    0.0303244
12-15 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0075629   -0.0286930    0.0438188
12-15 months   Keneba          GAMBIA      >=167 cm             NA                 0.0119654    0.0034926    0.0204382
12-15 months   PROBIT          BELARUS     >=167 cm             NA                -0.0005776   -0.0103493    0.0091940
12-15 months   SAS-CompFeed    INDIA       >=167 cm             NA                 0.0004472   -0.0147933    0.0156877
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0044821   -0.0227337    0.0316979
15-18 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0207891   -0.0215837    0.0631619
15-18 months   Keneba          GAMBIA      >=167 cm             NA                -0.0049062   -0.0137111    0.0038987
15-18 months   SAS-CompFeed    INDIA       >=167 cm             NA                 0.0028918   -0.0155406    0.0213243
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0121944   -0.0129446    0.0373334
18-21 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0054868   -0.0405419    0.0515155
18-21 months   Keneba          GAMBIA      >=167 cm             NA                -0.0030194   -0.0127462    0.0067075
21-24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0406147   -0.0766165   -0.0046130
21-24 months   Keneba          GAMBIA      >=167 cm             NA                -0.0090198   -0.0181935    0.0001539
