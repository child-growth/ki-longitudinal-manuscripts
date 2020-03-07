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

agecat         studyid         country     fhtcm           n_cell       n
-------------  --------------  ----------  -------------  -------  ------
0-3 months     COHORTS         GUATEMALA   >=167 cm            25     180
0-3 months     COHORTS         GUATEMALA   <162 cm            106     180
0-3 months     COHORTS         GUATEMALA   [162-167) cm        49     180
0-3 months     Keneba          GAMBIA      >=167 cm           631     965
0-3 months     Keneba          GAMBIA      <162 cm             75     965
0-3 months     Keneba          GAMBIA      [162-167) cm       259     965
0-3 months     PROBIT          BELARUS     >=167 cm         10775   11502
0-3 months     PROBIT          BELARUS     <162 cm            151   11502
0-3 months     PROBIT          BELARUS     [162-167) cm       576   11502
0-3 months     SAS-CompFeed    INDIA       >=167 cm           345     765
0-3 months     SAS-CompFeed    INDIA       <162 cm            196     765
0-3 months     SAS-CompFeed    INDIA       [162-167) cm       224     765
3-6 months     COHORTS         GUATEMALA   >=167 cm            37     261
3-6 months     COHORTS         GUATEMALA   <162 cm            148     261
3-6 months     COHORTS         GUATEMALA   [162-167) cm        76     261
3-6 months     Keneba          GAMBIA      >=167 cm           673    1037
3-6 months     Keneba          GAMBIA      <162 cm             74    1037
3-6 months     Keneba          GAMBIA      [162-167) cm       290    1037
3-6 months     PROBIT          BELARUS     >=167 cm          9472   10103
3-6 months     PROBIT          BELARUS     <162 cm            129   10103
3-6 months     PROBIT          BELARUS     [162-167) cm       502   10103
3-6 months     SAS-CompFeed    INDIA       >=167 cm           308     682
3-6 months     SAS-CompFeed    INDIA       <162 cm            175     682
3-6 months     SAS-CompFeed    INDIA       [162-167) cm       199     682
6-9 months     COHORTS         GUATEMALA   >=167 cm            39     308
6-9 months     COHORTS         GUATEMALA   <162 cm            186     308
6-9 months     COHORTS         GUATEMALA   [162-167) cm        83     308
6-9 months     Keneba          GAMBIA      >=167 cm           442     663
6-9 months     Keneba          GAMBIA      <162 cm             53     663
6-9 months     Keneba          GAMBIA      [162-167) cm       168     663
6-9 months     PROBIT          BELARUS     >=167 cm          8926    9528
6-9 months     PROBIT          BELARUS     <162 cm            126    9528
6-9 months     PROBIT          BELARUS     [162-167) cm       476    9528
6-9 months     SAS-CompFeed    INDIA       >=167 cm           312     683
6-9 months     SAS-CompFeed    INDIA       <162 cm            167     683
6-9 months     SAS-CompFeed    INDIA       [162-167) cm       204     683
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm            89     311
6-9 months     SAS-FoodSuppl   INDIA       <162 cm            124     311
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm        98     311
9-12 months    COHORTS         GUATEMALA   >=167 cm            51     370
9-12 months    COHORTS         GUATEMALA   <162 cm            224     370
9-12 months    COHORTS         GUATEMALA   [162-167) cm        95     370
9-12 months    Keneba          GAMBIA      >=167 cm           420     653
9-12 months    Keneba          GAMBIA      <162 cm             52     653
9-12 months    Keneba          GAMBIA      [162-167) cm       181     653
9-12 months    PROBIT          BELARUS     >=167 cm          9107    9729
9-12 months    PROBIT          BELARUS     <162 cm            126    9729
9-12 months    PROBIT          BELARUS     [162-167) cm       496    9729
9-12 months    SAS-CompFeed    INDIA       >=167 cm           317     685
9-12 months    SAS-CompFeed    INDIA       <162 cm            167     685
9-12 months    SAS-CompFeed    INDIA       [162-167) cm       201     685
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm            86     308
9-12 months    SAS-FoodSuppl   INDIA       <162 cm            128     308
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm        94     308
12-15 months   COHORTS         GUATEMALA   >=167 cm            53     387
12-15 months   COHORTS         GUATEMALA   <162 cm            224     387
12-15 months   COHORTS         GUATEMALA   [162-167) cm       110     387
12-15 months   Keneba          GAMBIA      >=167 cm           652    1041
12-15 months   Keneba          GAMBIA      <162 cm             85    1041
12-15 months   Keneba          GAMBIA      [162-167) cm       304    1041
12-15 months   PROBIT          BELARUS     >=167 cm           843     897
12-15 months   PROBIT          BELARUS     <162 cm              9     897
12-15 months   PROBIT          BELARUS     [162-167) cm        45     897
12-15 months   SAS-CompFeed    INDIA       >=167 cm           329     702
12-15 months   SAS-CompFeed    INDIA       <162 cm            169     702
12-15 months   SAS-CompFeed    INDIA       [162-167) cm       204     702
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm            77     302
12-15 months   SAS-FoodSuppl   INDIA       <162 cm            131     302
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm        94     302
15-18 months   COHORTS         GUATEMALA   >=167 cm            47     347
15-18 months   COHORTS         GUATEMALA   <162 cm            205     347
15-18 months   COHORTS         GUATEMALA   [162-167) cm        95     347
15-18 months   Keneba          GAMBIA      >=167 cm           658    1050
15-18 months   Keneba          GAMBIA      <162 cm             82    1050
15-18 months   Keneba          GAMBIA      [162-167) cm       310    1050
15-18 months   PROBIT          BELARUS     >=167 cm           226     239
15-18 months   PROBIT          BELARUS     <162 cm              1     239
15-18 months   PROBIT          BELARUS     [162-167) cm        12     239
15-18 months   SAS-CompFeed    INDIA       >=167 cm           335     717
15-18 months   SAS-CompFeed    INDIA       <162 cm            169     717
15-18 months   SAS-CompFeed    INDIA       [162-167) cm       213     717
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm            79     290
15-18 months   SAS-FoodSuppl   INDIA       <162 cm            121     290
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm        90     290
18-21 months   COHORTS         GUATEMALA   >=167 cm            51     369
18-21 months   COHORTS         GUATEMALA   <162 cm            211     369
18-21 months   COHORTS         GUATEMALA   [162-167) cm       107     369
18-21 months   Keneba          GAMBIA      >=167 cm           635    1043
18-21 months   Keneba          GAMBIA      <162 cm             84    1043
18-21 months   Keneba          GAMBIA      [162-167) cm       324    1043
18-21 months   PROBIT          BELARUS     >=167 cm           183     194
18-21 months   PROBIT          BELARUS     <162 cm              2     194
18-21 months   PROBIT          BELARUS     [162-167) cm         9     194
21-24 months   COHORTS         GUATEMALA   >=167 cm            58     417
21-24 months   COHORTS         GUATEMALA   <162 cm            237     417
21-24 months   COHORTS         GUATEMALA   [162-167) cm       122     417
21-24 months   Keneba          GAMBIA      >=167 cm           582     933
21-24 months   Keneba          GAMBIA      <162 cm             72     933
21-24 months   Keneba          GAMBIA      [162-167) cm       279     933
21-24 months   PROBIT          BELARUS     >=167 cm           175     185
21-24 months   PROBIT          BELARUS     <162 cm              4     185
21-24 months   PROBIT          BELARUS     [162-167) cm         6     185


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
![](/tmp/abdd3879-d513-41e1-8c43-3849546165ca/73f85431-a6e5-42a9-a87c-abf3584d42c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/abdd3879-d513-41e1-8c43-3849546165ca/73f85431-a6e5-42a9-a87c-abf3584d42c4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/abdd3879-d513-41e1-8c43-3849546165ca/73f85431-a6e5-42a9-a87c-abf3584d42c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             NA                2.7100945   2.4320732   2.9881158
0-3 months     COHORTS         GUATEMALA   <162 cm              NA                2.6289035   2.5143166   2.7434903
0-3 months     COHORTS         GUATEMALA   [162-167) cm         NA                2.6112386   2.4541916   2.7682855
0-3 months     Keneba          GAMBIA      >=167 cm             NA                3.1319025   3.0628593   3.2009457
0-3 months     Keneba          GAMBIA      <162 cm              NA                3.0615278   2.8487174   3.2743382
0-3 months     Keneba          GAMBIA      [162-167) cm         NA                3.0126540   2.9174204   3.1078875
0-3 months     PROBIT          BELARUS     >=167 cm             NA                2.8114802   2.7004843   2.9224762
0-3 months     PROBIT          BELARUS     <162 cm              NA                2.5690811   2.4716054   2.6665568
0-3 months     PROBIT          BELARUS     [162-167) cm         NA                2.7259642   2.5962755   2.8556530
0-3 months     SAS-CompFeed    INDIA       >=167 cm             NA                3.4217578   3.3503420   3.4931735
0-3 months     SAS-CompFeed    INDIA       <162 cm              NA                3.2613181   3.1844280   3.3382082
0-3 months     SAS-CompFeed    INDIA       [162-167) cm         NA                3.2998200   3.1988823   3.4007577
3-6 months     COHORTS         GUATEMALA   >=167 cm             NA                1.8648547   1.7108707   2.0188386
3-6 months     COHORTS         GUATEMALA   <162 cm              NA                1.7205451   1.6495259   1.7915643
3-6 months     COHORTS         GUATEMALA   [162-167) cm         NA                1.9162695   1.8141898   2.0183492
3-6 months     Keneba          GAMBIA      >=167 cm             NA                2.0003581   1.9461897   2.0545264
3-6 months     Keneba          GAMBIA      <162 cm              NA                1.8704267   1.6601132   2.0807401
3-6 months     Keneba          GAMBIA      [162-167) cm         NA                1.9588819   1.8760217   2.0417421
3-6 months     PROBIT          BELARUS     >=167 cm             NA                2.0960976   2.0550580   2.1371372
3-6 months     PROBIT          BELARUS     <162 cm              NA                2.0625817   1.9480747   2.1770887
3-6 months     PROBIT          BELARUS     [162-167) cm         NA                2.0180506   1.9434438   2.0926574
3-6 months     SAS-CompFeed    INDIA       >=167 cm             NA                1.9759003   1.9057450   2.0460556
3-6 months     SAS-CompFeed    INDIA       <162 cm              NA                1.8770998   1.8034484   1.9507513
3-6 months     SAS-CompFeed    INDIA       [162-167) cm         NA                1.9332958   1.8486358   2.0179559
6-9 months     COHORTS         GUATEMALA   >=167 cm             NA                1.2032980   1.0765829   1.3300132
6-9 months     COHORTS         GUATEMALA   <162 cm              NA                1.0681606   1.0098967   1.1264245
6-9 months     COHORTS         GUATEMALA   [162-167) cm         NA                1.0824850   1.0064342   1.1585358
6-9 months     Keneba          GAMBIA      >=167 cm             NA                1.4065899   1.3319448   1.4812350
6-9 months     Keneba          GAMBIA      <162 cm              NA                1.5537799   1.3145006   1.7930593
6-9 months     Keneba          GAMBIA      [162-167) cm         NA                1.3210977   1.2169956   1.4251998
6-9 months     PROBIT          BELARUS     >=167 cm             NA                1.5751440   1.5461193   1.6041688
6-9 months     PROBIT          BELARUS     <162 cm              NA                1.5443119   1.4770445   1.6115794
6-9 months     PROBIT          BELARUS     [162-167) cm         NA                1.5041147   1.4303158   1.5779137
6-9 months     SAS-CompFeed    INDIA       >=167 cm             NA                1.2593844   1.2003859   1.3183829
6-9 months     SAS-CompFeed    INDIA       <162 cm              NA                1.1807845   1.1180909   1.2434780
6-9 months     SAS-CompFeed    INDIA       [162-167) cm         NA                1.1733760   1.0910193   1.2557328
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             NA                1.1605011   1.0945040   1.2264981
6-9 months     SAS-FoodSuppl   INDIA       <162 cm              NA                1.1360497   1.0691378   1.2029616
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm         NA                1.1280102   1.0507952   1.2052253
9-12 months    COHORTS         GUATEMALA   >=167 cm             NA                1.0623889   0.9263672   1.1984106
9-12 months    COHORTS         GUATEMALA   <162 cm              NA                0.8975493   0.8461560   0.9489426
9-12 months    COHORTS         GUATEMALA   [162-167) cm         NA                0.9327319   0.8547963   1.0106675
9-12 months    Keneba          GAMBIA      >=167 cm             NA                0.9894737   0.9317663   1.0471811
9-12 months    Keneba          GAMBIA      <162 cm              NA                0.8498664   0.6174844   1.0822485
9-12 months    Keneba          GAMBIA      [162-167) cm         NA                0.9625335   0.8717400   1.0533271
9-12 months    PROBIT          BELARUS     >=167 cm             NA                1.3766452   1.3237615   1.4295289
9-12 months    PROBIT          BELARUS     <162 cm              NA                1.3370177   1.2682971   1.4057382
9-12 months    PROBIT          BELARUS     [162-167) cm         NA                1.3577566   1.2843909   1.4311222
9-12 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.9978083   0.9097059   1.0859107
9-12 months    SAS-CompFeed    INDIA       <162 cm              NA                0.9553321   0.8737277   1.0369366
9-12 months    SAS-CompFeed    INDIA       [162-167) cm         NA                1.0169984   0.9419090   1.0920878
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.8420089   0.5680091   1.1160087
9-12 months    SAS-FoodSuppl   INDIA       <162 cm              NA                0.6637598   0.5203455   0.8071740
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.9197960   0.6398970   1.1996949
12-15 months   COHORTS         GUATEMALA   >=167 cm             NA                0.8358978   0.7366022   0.9351935
12-15 months   COHORTS         GUATEMALA   <162 cm              NA                0.7720776   0.7144719   0.8296834
12-15 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.8460772   0.7734451   0.9187092
12-15 months   Keneba          GAMBIA      >=167 cm             NA                0.9417394   0.8970240   0.9864548
12-15 months   Keneba          GAMBIA      <162 cm              NA                0.9462792   0.8095666   1.0829918
12-15 months   Keneba          GAMBIA      [162-167) cm         NA                0.9034631   0.8379188   0.9690075
12-15 months   PROBIT          BELARUS     >=167 cm             NA                1.1725526   0.8471348   1.4979705
12-15 months   PROBIT          BELARUS     <162 cm              NA                1.3492496   0.9957939   1.7027052
12-15 months   PROBIT          BELARUS     [162-167) cm         NA                1.2893796   0.6866184   1.8921407
12-15 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.9034380   0.8441237   0.9627524
12-15 months   SAS-CompFeed    INDIA       <162 cm              NA                0.7487118   0.6363804   0.8610432
12-15 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.7740068   0.6817602   0.8662534
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                1.1413348   1.0171161   1.2655535
12-15 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.9334705   0.7779212   1.0890198
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                1.0600958   0.9035996   1.2165920
15-18 months   COHORTS         GUATEMALA   >=167 cm             NA                0.6222729   0.5004462   0.7440997
15-18 months   COHORTS         GUATEMALA   <162 cm              NA                0.7451317   0.6946009   0.7956625
15-18 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.7561074   0.6627717   0.8494432
15-18 months   Keneba          GAMBIA      >=167 cm             NA                0.8573590   0.8150621   0.8996560
15-18 months   Keneba          GAMBIA      <162 cm              NA                0.8584030   0.7326799   0.9841261
15-18 months   Keneba          GAMBIA      [162-167) cm         NA                0.9089364   0.8438789   0.9739939
15-18 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.9211888   0.8618735   0.9805040
15-18 months   SAS-CompFeed    INDIA       <162 cm              NA                0.8932997   0.8252896   0.9613098
15-18 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.9359503   0.8120585   1.0598420
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.7939638   0.7214710   0.8664565
15-18 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.7892546   0.7351719   0.8433372
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.7990084   0.7361961   0.8618207
18-21 months   COHORTS         GUATEMALA   >=167 cm             NA                0.8185835   0.7018587   0.9353082
18-21 months   COHORTS         GUATEMALA   <162 cm              NA                0.7484970   0.6957548   0.8012392
18-21 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.6922400   0.6114748   0.7730052
18-21 months   Keneba          GAMBIA      >=167 cm             NA                0.8297373   0.7816906   0.8777841
18-21 months   Keneba          GAMBIA      <162 cm              NA                0.8295460   0.7121008   0.9469912
18-21 months   Keneba          GAMBIA      [162-167) cm         NA                0.7916195   0.7318021   0.8514369
21-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.6558511   0.5458910   0.7658111
21-24 months   COHORTS         GUATEMALA   <162 cm              NA                0.6827877   0.6393316   0.7262437
21-24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.6748495   0.6172988   0.7324002
21-24 months   Keneba          GAMBIA      >=167 cm             NA                0.7386936   0.6873794   0.7900077
21-24 months   Keneba          GAMBIA      <162 cm              NA                0.7154225   0.6211537   0.8096913
21-24 months   Keneba          GAMBIA      [162-167) cm         NA                0.6963642   0.6308598   0.7618686


### Parameter: E(Y)


agecat         studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS         GUATEMALA   NA                   NA                2.6353712   2.5465302   2.7242122
0-3 months     Keneba          GAMBIA      NA                   NA                3.0944274   3.0398727   3.1489822
0-3 months     PROBIT          BELARUS     NA                   NA                2.8040155   2.6922827   2.9157483
0-3 months     SAS-CompFeed    INDIA       NA                   NA                3.3449470   3.2851675   3.4047265
3-6 months     COHORTS         GUATEMALA   NA                   NA                1.7979953   1.7423030   1.8536877
3-6 months     Keneba          GAMBIA      NA                   NA                1.9794873   1.9347361   2.0242384
3-6 months     PROBIT          BELARUS     NA                   NA                2.0917916   2.0507260   2.1328572
3-6 months     SAS-CompFeed    INDIA       NA                   NA                1.9381168   1.8722991   2.0039344
6-9 months     COHORTS         GUATEMALA   NA                   NA                1.0891323   1.0450915   1.1331731
6-9 months     Keneba          GAMBIA      NA                   NA                1.3966930   1.3370412   1.4563449
6-9 months     PROBIT          BELARUS     NA                   NA                1.5711878   1.5417167   1.6006589
6-9 months     SAS-CompFeed    INDIA       NA                   NA                1.2144768   1.1795030   1.2494506
6-9 months     SAS-FoodSuppl   INDIA       NA                   NA                1.1405137   1.0997387   1.1812887
9-12 months    COHORTS         GUATEMALA   NA                   NA                0.9293038   0.8874492   0.9711585
9-12 months    Keneba          GAMBIA      NA                   NA                0.9708891   0.9222915   1.0194866
9-12 months    PROBIT          BELARUS     NA                   NA                1.3751690   1.3226496   1.4276884
9-12 months    SAS-CompFeed    INDIA       NA                   NA                0.9930838   0.9436059   1.0425616
9-12 months    SAS-FoodSuppl   INDIA       NA                   NA                0.7916715   0.6618281   0.9215150
12-15 months   COHORTS         GUATEMALA   NA                   NA                0.8018513   0.7601969   0.8435058
12-15 months   Keneba          GAMBIA      NA                   NA                0.9309324   0.8952046   0.9666602
12-15 months   PROBIT          BELARUS     NA                   NA                1.1801864   0.8594720   1.5009008
12-15 months   SAS-CompFeed    INDIA       NA                   NA                0.8285766   0.7562994   0.9008539
12-15 months   SAS-FoodSuppl   INDIA       NA                   NA                1.0258822   0.9363066   1.1154578
15-18 months   COHORTS         GUATEMALA   NA                   NA                0.7314958   0.6886307   0.7743608
15-18 months   Keneba          GAMBIA      NA                   NA                0.8726682   0.8384641   0.9068722
15-18 months   SAS-CompFeed    INDIA       NA                   NA                0.9190004   0.8846761   0.9533247
15-18 months   SAS-FoodSuppl   INDIA       NA                   NA                0.7935645   0.7577956   0.8293333
18-21 months   COHORTS         GUATEMALA   NA                   NA                0.7418707   0.7002233   0.7835182
18-21 months   Keneba          GAMBIA      NA                   NA                0.8178809   0.7819425   0.8538193
21-24 months   COHORTS         GUATEMALA   NA                   NA                0.6767187   0.6431305   0.7103068
21-24 months   Keneba          GAMBIA      NA                   NA                0.7242397   0.6859939   0.7624856


### Parameter: ATE


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0811911   -0.3819002    0.2195180
0-3 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0988560   -0.4181671    0.2204551
0-3 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     Keneba          GAMBIA      <162 cm              >=167 cm          -0.0703748   -0.2941050    0.1533555
0-3 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.1192486   -0.2368768   -0.0016204
0-3 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.2423991   -0.3416466   -0.1431517
0-3 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0855160   -0.1393427   -0.0316893
0-3 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.1604397   -0.2548697   -0.0660097
0-3 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1219378   -0.2177827   -0.0260928
3-6 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.1443095   -0.3138819    0.0252628
3-6 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0514148   -0.1333318    0.2361615
3-6 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     Keneba          GAMBIA      <162 cm              >=167 cm          -0.1299314   -0.3471086    0.0872459
3-6 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0414761   -0.1404712    0.0575189
3-6 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0335159   -0.1415876    0.0745557
3-6 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0780470   -0.1499207   -0.0061733
3-6 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0988005   -0.1618544   -0.0357465
3-6 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0426045   -0.0879008    0.0026919
6-9 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.1351374   -0.2746057    0.0043309
6-9 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.1208131   -0.2685982    0.0269721
6-9 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     Keneba          GAMBIA      <162 cm              >=167 cm           0.1471900   -0.1034621    0.3978422
6-9 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0854922   -0.2135904    0.0426060
6-9 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0308321   -0.0946056    0.0329414
6-9 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0710293   -0.1364846   -0.0055740
6-9 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0785999   -0.1836180    0.0264181
6-9 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0860084   -0.1904473    0.0184306
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0244514   -0.1184344    0.0695317
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0324908   -0.1340673    0.0690856
9-12 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.1648396   -0.3102466   -0.0194327
9-12 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.1296571   -0.2864240    0.0271099
9-12 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    Keneba          GAMBIA      <162 cm              >=167 cm          -0.1396073   -0.3790474    0.0998328
9-12 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0269402   -0.1345209    0.0806406
9-12 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROBIT          BELARUS     <162 cm              >=167 cm          -0.0396275   -0.1056370    0.0263820
9-12 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0188886   -0.0783377    0.0405604
9-12 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0424761   -0.1697636    0.0848113
9-12 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0191901   -0.0941716    0.1325519
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.1782491   -0.4875120    0.1310138
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0777871   -0.3139007    0.4694748
12-15 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0638202   -0.1786159    0.0509755
12-15 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0101794   -0.1128452    0.1332039
12-15 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   Keneba          GAMBIA      <162 cm              >=167 cm           0.0045398   -0.1392997    0.1483793
12-15 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0382763   -0.1176207    0.0410681
12-15 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROBIT          BELARUS     <162 cm              >=167 cm           0.1766969   -0.2590238    0.6124177
12-15 months   PROBIT          BELARUS     [162-167) cm         >=167 cm           0.1168269   -0.4444099    0.6780637
12-15 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.1547263   -0.2620402   -0.0474123
12-15 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.1294312   -0.1905640   -0.0682984
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.2078643   -0.4069268   -0.0088019
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0812391   -0.2810424    0.1185642
15-18 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.1228588   -0.0090318    0.2547494
15-18 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.1338345   -0.0196364    0.2873054
15-18 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   Keneba          GAMBIA      <162 cm              >=167 cm           0.0010440   -0.1316034    0.1336914
15-18 months   Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0515773   -0.0260211    0.1291757
15-18 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0278891   -0.1212083    0.0654301
15-18 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0147615   -0.1434041    0.1729271
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0047092   -0.0951533    0.0857348
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0050446   -0.0908750    0.1009643
18-21 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0700865   -0.1981740    0.0580011
18-21 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.1263435   -0.2682860    0.0155991
18-21 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0001913   -0.1270845    0.1267018
18-21 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0381178   -0.1148421    0.0386064
21-24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0269366   -0.0912989    0.1451722
21-24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0189984   -0.1051116    0.1431084
21-24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   Keneba          GAMBIA      <162 cm              >=167 cm          -0.0232711   -0.1306012    0.0840590
21-24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0423294   -0.1255398    0.0408810


### Parameter: PAR


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0747233   -0.3271466    0.1776999
0-3 months     Keneba          GAMBIA      >=167 cm             NA                -0.0374751   -0.0763220    0.0013718
0-3 months     PROBIT          BELARUS     >=167 cm             NA                -0.0074647   -0.0114735   -0.0034560
0-3 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0768108   -0.1174469   -0.0361746
3-6 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0668593   -0.2085986    0.0748799
3-6 months     Keneba          GAMBIA      >=167 cm             NA                -0.0208708   -0.0544616    0.0127200
3-6 months     PROBIT          BELARUS     >=167 cm             NA                -0.0043060   -0.0087463    0.0001344
3-6 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0377835   -0.0610356   -0.0145314
6-9 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.1141657   -0.2321911    0.0038597
6-9 months     Keneba          GAMBIA      >=167 cm             NA                -0.0098969   -0.0511406    0.0313469
6-9 months     PROBIT          BELARUS     >=167 cm             NA                -0.0039562   -0.0076115   -0.0003009
6-9 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0449076   -0.0944349    0.0046197
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0199874   -0.0793615    0.0393868
9-12 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.1330851   -0.2561834   -0.0099868
9-12 months    Keneba          GAMBIA      >=167 cm             NA                -0.0185846   -0.0561088    0.0189396
9-12 months    PROBIT          BELARUS     >=167 cm             NA                -0.0014762   -0.0042902    0.0013378
9-12 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.0047245   -0.0636231    0.0541740
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0503373   -0.2739659    0.1732912
12-15 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0340465   -0.1283553    0.0602623
12-15 months   Keneba          GAMBIA      >=167 cm             NA                -0.0108070   -0.0385798    0.0169658
12-15 months   PROBIT          BELARUS     >=167 cm             NA                 0.0076338   -0.0216943    0.0369618
12-15 months   SAS-CompFeed    INDIA       >=167 cm             NA                -0.0748614   -0.1138162   -0.0359067
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1154527   -0.2402951    0.0093898
15-18 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.1092229   -0.0032877    0.2217335
15-18 months   Keneba          GAMBIA      >=167 cm             NA                 0.0153091   -0.0114621    0.0420803
15-18 months   SAS-CompFeed    INDIA       >=167 cm             NA                -0.0021884   -0.0606552    0.0562784
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0003993   -0.0609916    0.0601930
18-21 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0767127   -0.1843836    0.0309581
18-21 months   Keneba          GAMBIA      >=167 cm             NA                -0.0118564   -0.0399481    0.0162353
21-24 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0208676   -0.0784091    0.1201444
21-24 months   Keneba          GAMBIA      >=167 cm             NA                -0.0144538   -0.0429285    0.0140208
