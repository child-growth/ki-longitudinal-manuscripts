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
![](/tmp/36be3e82-7d7b-44d8-9db9-084372988328/f315cc7e-b1f8-43f8-af15-76b1d8f7dd2f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/36be3e82-7d7b-44d8-9db9-084372988328/f315cc7e-b1f8-43f8-af15-76b1d8f7dd2f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/36be3e82-7d7b-44d8-9db9-084372988328/f315cc7e-b1f8-43f8-af15-76b1d8f7dd2f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.4754364   -0.6109850   -0.3398878
0-3 months     COHORTS         GUATEMALA   <162 cm              NA                -0.4909998   -0.5477969   -0.4342027
0-3 months     COHORTS         GUATEMALA   [162-167) cm         NA                -0.5161084   -0.5904104   -0.4418064
0-3 months     Keneba          GAMBIA      >=167 cm             NA                -0.2725020   -0.3077510   -0.2372530
0-3 months     Keneba          GAMBIA      <162 cm              NA                -0.3275281   -0.4334342   -0.2216221
0-3 months     Keneba          GAMBIA      [162-167) cm         NA                -0.3312793   -0.3792425   -0.2833161
0-3 months     PROBIT          BELARUS     >=167 cm             NA                -0.4309358   -0.4886825   -0.3731891
0-3 months     PROBIT          BELARUS     <162 cm              NA                -0.5370766   -0.5873911   -0.4867621
0-3 months     PROBIT          BELARUS     [162-167) cm         NA                -0.4638768   -0.5321312   -0.3956225
0-3 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0847022   -0.1205637   -0.0488408
0-3 months     SAS-CompFeed    INDIA       <162 cm              NA                -0.1725010   -0.2134403   -0.1315617
0-3 months     SAS-CompFeed    INDIA       [162-167) cm         NA                -0.1602271   -0.2071965   -0.1132577
3-6 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0438737   -0.1209529    0.0332055
3-6 months     COHORTS         GUATEMALA   <162 cm              NA                -0.1039207   -0.1374128   -0.0704287
3-6 months     COHORTS         GUATEMALA   [162-167) cm         NA                -0.0255358   -0.0740817    0.0230102
3-6 months     Keneba          GAMBIA      >=167 cm             NA                -0.0150521   -0.0404454    0.0103411
3-6 months     Keneba          GAMBIA      <162 cm              NA                -0.0762347   -0.1744078    0.0219384
3-6 months     Keneba          GAMBIA      [162-167) cm         NA                -0.0326117   -0.0716051    0.0063818
3-6 months     PROBIT          BELARUS     >=167 cm             NA                 0.0511031    0.0318587    0.0703475
3-6 months     PROBIT          BELARUS     <162 cm              NA                 0.0504874   -0.0020246    0.1029995
3-6 months     PROBIT          BELARUS     [162-167) cm         NA                 0.0211827   -0.0131298    0.0554952
3-6 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0014411   -0.0347557    0.0318735
3-6 months     SAS-CompFeed    INDIA       <162 cm              NA                -0.0426204   -0.0727132   -0.0125275
3-6 months     SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0192522   -0.0569095    0.0184051
6-9 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0788486   -0.1356594   -0.0220378
6-9 months     COHORTS         GUATEMALA   <162 cm              NA                -0.1309323   -0.1565414   -0.1053232
6-9 months     COHORTS         GUATEMALA   [162-167) cm         NA                -0.1334582   -0.1674500   -0.0994663
6-9 months     Keneba          GAMBIA      >=167 cm             NA                -0.0135383   -0.0460095    0.0189329
6-9 months     Keneba          GAMBIA      <162 cm              NA                 0.0576084   -0.0503051    0.1655218
6-9 months     Keneba          GAMBIA      [162-167) cm         NA                -0.0467241   -0.0928803   -0.0005678
6-9 months     PROBIT          BELARUS     >=167 cm             NA                 0.0513253    0.0379115    0.0647391
6-9 months     PROBIT          BELARUS     <162 cm              NA                 0.0504862    0.0205949    0.0803775
6-9 months     PROBIT          BELARUS     [162-167) cm         NA                 0.0275255   -0.0062252    0.0612763
6-9 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0677468   -0.0938112   -0.0416825
6-9 months     SAS-CompFeed    INDIA       <162 cm              NA                -0.0914453   -0.1181224   -0.0647681
6-9 months     SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0983409   -0.1338714   -0.0628105
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1029988   -0.1317027   -0.0742949
6-9 months     SAS-FoodSuppl   INDIA       <162 cm              NA                -0.1042274   -0.1343076   -0.0741471
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.1112351   -0.1460818   -0.0763885
9-12 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.0491543   -0.1044424    0.0061338
9-12 months    COHORTS         GUATEMALA   <162 cm              NA                -0.1026474   -0.1237248   -0.0815700
9-12 months    COHORTS         GUATEMALA   [162-167) cm         NA                -0.0967212   -0.1291063   -0.0643362
9-12 months    Keneba          GAMBIA      >=167 cm             NA                -0.0977266   -0.1219652   -0.0734880
9-12 months    Keneba          GAMBIA      <162 cm              NA                -0.1561722   -0.2560483   -0.0562960
9-12 months    Keneba          GAMBIA      [162-167) cm         NA                -0.1049927   -0.1428707   -0.0671147
9-12 months    PROBIT          BELARUS     >=167 cm             NA                 0.0380387    0.0164416    0.0596358
9-12 months    PROBIT          BELARUS     <162 cm              NA                 0.0361419    0.0076283    0.0646556
9-12 months    PROBIT          BELARUS     [162-167) cm         NA                 0.0381539    0.0078873    0.0684204
9-12 months    SAS-CompFeed    INDIA       >=167 cm             NA                -0.0875579   -0.1235882   -0.0515276
9-12 months    SAS-CompFeed    INDIA       <162 cm              NA                -0.0939617   -0.1290852   -0.0588382
9-12 months    SAS-CompFeed    INDIA       [162-167) cm         NA                -0.0716616   -0.1019119   -0.0414113
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.1397911   -0.2497652   -0.0298169
9-12 months    SAS-FoodSuppl   INDIA       <162 cm              NA                -0.2012959   -0.2616277   -0.1409640
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.1035873   -0.2151603    0.0079857
12-15 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0782251   -0.1163605   -0.0400896
12-15 months   COHORTS         GUATEMALA   <162 cm              NA                -0.0864916   -0.1084452   -0.0645380
12-15 months   COHORTS         GUATEMALA   [162-167) cm         NA                -0.0661533   -0.0938827   -0.0384239
12-15 months   Keneba          GAMBIA      >=167 cm             NA                -0.0527353   -0.0703047   -0.0351659
12-15 months   Keneba          GAMBIA      <162 cm              NA                -0.0427970   -0.0978637    0.0122698
12-15 months   Keneba          GAMBIA      [162-167) cm         NA                -0.0621839   -0.0881717   -0.0361961
12-15 months   PROBIT          BELARUS     >=167 cm             NA                 0.0014830   -0.1225548    0.1255207
12-15 months   PROBIT          BELARUS     <162 cm              NA                 0.0805281   -0.0606582    0.2217144
12-15 months   PROBIT          BELARUS     [162-167) cm         NA                 0.0538327   -0.1758370    0.2835023
12-15 months   SAS-CompFeed    INDIA       >=167 cm             NA                -0.0616559   -0.0860766   -0.0372352
12-15 months   SAS-CompFeed    INDIA       <162 cm              NA                -0.1089464   -0.1519230   -0.0659697
12-15 months   SAS-CompFeed    INDIA       [162-167) cm         NA                -0.1035200   -0.1389926   -0.0680473
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0472879   -0.0019170    0.0964929
12-15 months   SAS-FoodSuppl   INDIA       <162 cm              NA                -0.0232807   -0.0867047    0.0401433
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                 0.0214060   -0.0394079    0.0822199
15-18 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.1117958   -0.1573510   -0.0662406
15-18 months   COHORTS         GUATEMALA   <162 cm              NA                -0.0491917   -0.0677517   -0.0306318
15-18 months   COHORTS         GUATEMALA   [162-167) cm         NA                -0.0537614   -0.0887484   -0.0187743
15-18 months   Keneba          GAMBIA      >=167 cm             NA                -0.0416209   -0.0572506   -0.0259912
15-18 months   Keneba          GAMBIA      <162 cm              NA                -0.0364067   -0.0823930    0.0095797
15-18 months   Keneba          GAMBIA      [162-167) cm         NA                -0.0174226   -0.0417602    0.0069150
15-18 months   SAS-CompFeed    INDIA       >=167 cm             NA                -0.0115058   -0.0320393    0.0090277
15-18 months   SAS-CompFeed    INDIA       <162 cm              NA                -0.0077612   -0.0339574    0.0184350
15-18 months   SAS-CompFeed    INDIA       [162-167) cm         NA                 0.0053159   -0.0418822    0.0525141
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0432065   -0.0699530   -0.0164600
15-18 months   SAS-FoodSuppl   INDIA       <162 cm              NA                -0.0328844   -0.0523847   -0.0133841
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                -0.0379270   -0.0613878   -0.0144663
18-21 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0034080   -0.0430150    0.0361990
18-21 months   COHORTS         GUATEMALA   <162 cm              NA                -0.0153818   -0.0331332    0.0023696
18-21 months   COHORTS         GUATEMALA   [162-167) cm         NA                -0.0414532   -0.0697734   -0.0131329
18-21 months   Keneba          GAMBIA      >=167 cm             NA                -0.0179154   -0.0345345   -0.0012964
18-21 months   Keneba          GAMBIA      <162 cm              NA                -0.0085588   -0.0501829    0.0330652
18-21 months   Keneba          GAMBIA      [162-167) cm         NA                -0.0273030   -0.0480617   -0.0065442
21-24 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0272118   -0.0642180    0.0097944
21-24 months   COHORTS         GUATEMALA   <162 cm              NA                -0.0071634   -0.0214828    0.0071560
21-24 months   COHORTS         GUATEMALA   [162-167) cm         NA                -0.0164932   -0.0354354    0.0024490
21-24 months   Keneba          GAMBIA      >=167 cm             NA                 0.0213840    0.0042631    0.0385050
21-24 months   Keneba          GAMBIA      <162 cm              NA                 0.0245169   -0.0082902    0.0573239
21-24 months   Keneba          GAMBIA      [162-167) cm         NA                 0.0101766   -0.0122212    0.0325744


### Parameter: E(Y)


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   NA                   NA                -0.4956734   -0.5391037   -0.4522430
0-3 months     Keneba          GAMBIA      NA                   NA                -0.2925541   -0.3202623   -0.2648459
0-3 months     PROBIT          BELARUS     NA                   NA                -0.4339788   -0.4920905   -0.3758672
0-3 months     SAS-CompFeed    INDIA       NA                   NA                -0.1293116   -0.1570838   -0.1015393
3-6 months     COHORTS         GUATEMALA   NA                   NA                -0.0725836   -0.0990295   -0.0461377
3-6 months     Keneba          GAMBIA      NA                   NA                -0.0243287   -0.0453184   -0.0033389
3-6 months     PROBIT          BELARUS     NA                   NA                 0.0496085    0.0303789    0.0688381
3-6 months     SAS-CompFeed    INDIA       NA                   NA                -0.0172047   -0.0462110    0.0118016
6-9 months     COHORTS         GUATEMALA   NA                   NA                -0.1250180   -0.1444785   -0.1055575
6-9 months     Keneba          GAMBIA      NA                   NA                -0.0162599   -0.0424084    0.0098886
6-9 months     PROBIT          BELARUS     NA                   NA                 0.0501252    0.0364772    0.0637733
6-9 months     SAS-CompFeed    INDIA       NA                   NA                -0.0826792   -0.0976756   -0.0676829
6-9 months     SAS-FoodSuppl   INDIA       NA                   NA                -0.1060840   -0.1243061   -0.0878619
9-12 months    COHORTS         GUATEMALA   NA                   NA                -0.0937525   -0.1108820   -0.0766229
9-12 months    Keneba          GAMBIA      NA                   NA                -0.1043948   -0.1248389   -0.0839507
9-12 months    PROBIT          BELARUS     NA                   NA                 0.0380200    0.0165057    0.0595343
9-12 months    SAS-CompFeed    INDIA       NA                   NA                -0.0844546   -0.1064588   -0.0624505
9-12 months    SAS-FoodSuppl   INDIA       NA                   NA                -0.1543023   -0.2067725   -0.1018321
12-15 months   COHORTS         GUATEMALA   NA                   NA                -0.0795786   -0.0954422   -0.0637150
12-15 months   Keneba          GAMBIA      NA                   NA                -0.0546831   -0.0687903   -0.0405758
12-15 months   PROBIT          BELARUS     NA                   NA                 0.0049023   -0.1173760    0.1271806
12-15 months   SAS-CompFeed    INDIA       NA                   NA                -0.0852063   -0.1134490   -0.0569636
12-15 months   SAS-FoodSuppl   INDIA       NA                   NA                 0.0086211   -0.0272082    0.0444504
15-18 months   COHORTS         GUATEMALA   NA                   NA                -0.0589223   -0.0748896   -0.0429550
15-18 months   Keneba          GAMBIA      NA                   NA                -0.0340694   -0.0467538   -0.0213851
15-18 months   SAS-CompFeed    INDIA       NA                   NA                -0.0056259   -0.0184980    0.0072462
15-18 months   SAS-FoodSuppl   INDIA       NA                   NA                -0.0372612   -0.0503965   -0.0241260
18-21 months   COHORTS         GUATEMALA   NA                   NA                -0.0212869   -0.0355114   -0.0070623
18-21 months   Keneba          GAMBIA      NA                   NA                -0.0200780   -0.0325402   -0.0076159
21-24 months   COHORTS         GUATEMALA   NA                   NA                -0.0126815   -0.0238129   -0.0015501
21-24 months   Keneba          GAMBIA      NA                   NA                 0.0182744    0.0054117    0.0311371


### Parameter: ATE


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0155634   -0.1625305    0.1314037
0-3 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0406720   -0.1952496    0.1139055
0-3 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     Keneba          GAMBIA      <162 cm              >=167 cm          -0.0550261   -0.1666442    0.0565919
0-3 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0587773   -0.1183001    0.0007455
0-3 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.1061408   -0.1564453   -0.0558364
0-3 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0329411   -0.0623743   -0.0035079
0-3 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0877987   -0.1440090   -0.0315885
0-3 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0755249   -0.1195454   -0.0315044
3-6 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0600471   -0.1440882    0.0239941
3-6 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0183379   -0.0727549    0.1094308
3-6 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     Keneba          GAMBIA      <162 cm              >=167 cm          -0.0611826   -0.1625866    0.0402215
3-6 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0175595   -0.0640924    0.0289734
3-6 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0006156   -0.0504408    0.0492095
3-6 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0299204   -0.0627228    0.0028821
3-6 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0411792   -0.0720410   -0.0103175
3-6 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0178111   -0.0420517    0.0064296
6-9 months     COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0520838   -0.1143998    0.0102323
6-9 months     COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0546096   -0.1208131    0.0115940
6-9 months     Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     Keneba          GAMBIA      <162 cm              >=167 cm           0.0711467   -0.0415462    0.1838396
6-9 months     Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0331858   -0.0896196    0.0232480
6-9 months     PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROBIT          BELARUS     <162 cm              >=167 cm          -0.0008392   -0.0291331    0.0274548
6-9 months     PROBIT          BELARUS     [162-167) cm         >=167 cm          -0.0237998   -0.0536015    0.0060019
6-9 months     SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0236984   -0.0707190    0.0233221
6-9 months     SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0305941   -0.0751638    0.0139756
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0012286   -0.0428067    0.0403495
6-9 months     SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0082364   -0.0533828    0.0369101
9-12 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0534931   -0.1126626    0.0056764
9-12 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0475669   -0.1116416    0.0165078
9-12 months    Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    Keneba          GAMBIA      <162 cm              >=167 cm          -0.0584456   -0.1612208    0.0443297
9-12 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0072661   -0.0522356    0.0377034
9-12 months    PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROBIT          BELARUS     <162 cm              >=167 cm          -0.0018967   -0.0292273    0.0254338
9-12 months    PROBIT          BELARUS     [162-167) cm         >=167 cm           0.0001152   -0.0236970    0.0239274
9-12 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0064038   -0.0571722    0.0443646
9-12 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0158963   -0.0287417    0.0605344
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0615048   -0.1869410    0.0639314
9-12 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0362038   -0.1204578    0.1928654
12-15 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0082665   -0.0522696    0.0357366
12-15 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0120717   -0.0350794    0.0592229
12-15 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   Keneba          GAMBIA      <162 cm              >=167 cm           0.0099384   -0.0478633    0.0677400
12-15 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0094486   -0.0408182    0.0219210
12-15 months   PROBIT          BELARUS     >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROBIT          BELARUS     <162 cm              >=167 cm           0.0790451   -0.0898092    0.2478994
12-15 months   PROBIT          BELARUS     [162-167) cm         >=167 cm           0.0523497   -0.1623274    0.2670268
12-15 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          -0.0472905   -0.0860262   -0.0085548
12-15 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          -0.0418641   -0.0666427   -0.0170855
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          -0.0705686   -0.1508415    0.0097042
12-15 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          -0.0258819   -0.1041089    0.0523450
15-18 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0626040    0.0134131    0.1117950
15-18 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0580344    0.0005943    0.1154745
15-18 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   Keneba          GAMBIA      <162 cm              >=167 cm           0.0052142   -0.0433556    0.0537841
15-18 months   Keneba          GAMBIA      [162-167) cm         >=167 cm           0.0241983   -0.0047258    0.0531224
15-18 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm           0.0037446   -0.0322537    0.0397430
15-18 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm           0.0168218   -0.0419100    0.0755535
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm           0.0103221   -0.0227783    0.0434225
15-18 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm           0.0052795   -0.0302984    0.0408573
18-21 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          -0.0119738   -0.0553768    0.0314293
18-21 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          -0.0380451   -0.0867355    0.0106452
18-21 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
18-21 months   Keneba          GAMBIA      <162 cm              >=167 cm           0.0093566   -0.0354625    0.0541757
18-21 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0093875   -0.0359793    0.0172042
21-24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm           0.0200484   -0.0196317    0.0597284
21-24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm           0.0107186   -0.0308539    0.0522910
21-24 months   Keneba          GAMBIA      >=167 cm             >=167 cm           0.0000000    0.0000000    0.0000000
21-24 months   Keneba          GAMBIA      <162 cm              >=167 cm           0.0031329   -0.0338730    0.0401387
21-24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          -0.0112074   -0.0393994    0.0169846


### Parameter: PAR


agecat         studyid         country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------  ----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0202369   -0.1433462    0.1028723
0-3 months     Keneba          GAMBIA      >=167 cm             NA                -0.0200521   -0.0396822   -0.0004220
0-3 months     PROBIT          BELARUS     >=167 cm             NA                -0.0030431   -0.0050735   -0.0010127
0-3 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0446093   -0.0661248   -0.0230938
3-6 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0287099   -0.0991095    0.0416897
3-6 months     Keneba          GAMBIA      >=167 cm             NA                -0.0092765   -0.0250382    0.0064851
3-6 months     PROBIT          BELARUS     >=167 cm             NA                -0.0014946   -0.0035359    0.0005468
3-6 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0157636   -0.0288918   -0.0026354
6-9 months     COHORTS         GUATEMALA   >=167 cm             NA                -0.0461694   -0.0989788    0.0066400
6-9 months     Keneba          GAMBIA      >=167 cm             NA                -0.0027216   -0.0209503    0.0155070
6-9 months     PROBIT          BELARUS     >=167 cm             NA                -0.0012001   -0.0028276    0.0004274
6-9 months     SAS-CompFeed    INDIA       >=167 cm             NA                -0.0149324   -0.0368742    0.0070093
6-9 months     SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0030852   -0.0292462    0.0230757
9-12 months    COHORTS         GUATEMALA   >=167 cm             NA                -0.0445981   -0.0946732    0.0054770
9-12 months    Keneba          GAMBIA      >=167 cm             NA                -0.0066682   -0.0224706    0.0091342
9-12 months    PROBIT          BELARUS     >=167 cm             NA                -0.0000187   -0.0011309    0.0010935
9-12 months    SAS-CompFeed    INDIA       >=167 cm             NA                 0.0031032   -0.0198053    0.0260118
9-12 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0145112   -0.1044749    0.0754525
12-15 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0013535   -0.0375147    0.0348076
12-15 months   Keneba          GAMBIA      >=167 cm             NA                -0.0019478   -0.0129490    0.0090535
12-15 months   PROBIT          BELARUS     >=167 cm             NA                 0.0034193   -0.0078446    0.0146833
12-15 months   SAS-CompFeed    INDIA       >=167 cm             NA                -0.0235504   -0.0373686   -0.0097321
12-15 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                -0.0386669   -0.0883685    0.0110348
15-18 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0528735    0.0108253    0.0949217
15-18 months   Keneba          GAMBIA      >=167 cm             NA                 0.0075515   -0.0023988    0.0175017
15-18 months   SAS-CompFeed    INDIA       >=167 cm             NA                 0.0058799   -0.0159707    0.0277305
15-18 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                 0.0059453   -0.0163741    0.0282646
18-21 months   COHORTS         GUATEMALA   >=167 cm             NA                -0.0178789   -0.0544497    0.0186919
18-21 months   Keneba          GAMBIA      >=167 cm             NA                -0.0021626   -0.0119194    0.0075942
21-24 months   COHORTS         GUATEMALA   >=167 cm             NA                 0.0145303   -0.0188226    0.0478832
21-24 months   Keneba          GAMBIA      >=167 cm             NA                -0.0031096   -0.0127468    0.0065275
