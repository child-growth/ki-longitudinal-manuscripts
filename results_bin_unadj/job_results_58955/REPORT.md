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

**Outcome Variable:** ever_stunted

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

agecat        studyid         country     fhtcm           ever_stunted   n_cell       n
------------  --------------  ----------  -------------  -------------  -------  ------
0-24 months   COHORTS         GUATEMALA   >=167 cm                   0       16     496
0-24 months   COHORTS         GUATEMALA   >=167 cm                   1       48     496
0-24 months   COHORTS         GUATEMALA   <162 cm                    0       24     496
0-24 months   COHORTS         GUATEMALA   <162 cm                    1      269     496
0-24 months   COHORTS         GUATEMALA   [162-167) cm               0       24     496
0-24 months   COHORTS         GUATEMALA   [162-167) cm               1      115     496
0-24 months   Keneba          GAMBIA      >=167 cm                   0      598    1929
0-24 months   Keneba          GAMBIA      >=167 cm                   1      647    1929
0-24 months   Keneba          GAMBIA      <162 cm                    0       52    1929
0-24 months   Keneba          GAMBIA      <162 cm                    1       80    1929
0-24 months   Keneba          GAMBIA      [162-167) cm               0      207    1929
0-24 months   Keneba          GAMBIA      [162-167) cm               1      345    1929
0-24 months   PROBIT          BELARUS     >=167 cm                   0    10314   12537
0-24 months   PROBIT          BELARUS     >=167 cm                   1     1430   12537
0-24 months   PROBIT          BELARUS     <162 cm                    0      122   12537
0-24 months   PROBIT          BELARUS     <162 cm                    1       46   12537
0-24 months   PROBIT          BELARUS     [162-167) cm               0      495   12537
0-24 months   PROBIT          BELARUS     [162-167) cm               1      130   12537
0-24 months   SAS-CompFeed    INDIA       >=167 cm                   0      137     907
0-24 months   SAS-CompFeed    INDIA       >=167 cm                   1      273     907
0-24 months   SAS-CompFeed    INDIA       <162 cm                    0       50     907
0-24 months   SAS-CompFeed    INDIA       <162 cm                    1      180     907
0-24 months   SAS-CompFeed    INDIA       [162-167) cm               0       69     907
0-24 months   SAS-CompFeed    INDIA       [162-167) cm               1      198     907
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   0       23     399
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   1       83     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                    0       15     399
0-24 months   SAS-FoodSuppl   INDIA       <162 cm                    1      148     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               0       23     399
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               1      107     399
0-6 months    COHORTS         GUATEMALA   >=167 cm                   0       36     337
0-6 months    COHORTS         GUATEMALA   >=167 cm                   1       13     337
0-6 months    COHORTS         GUATEMALA   <162 cm                    0      112     337
0-6 months    COHORTS         GUATEMALA   <162 cm                    1       84     337
0-6 months    COHORTS         GUATEMALA   [162-167) cm               0       66     337
0-6 months    COHORTS         GUATEMALA   [162-167) cm               1       26     337
0-6 months    Keneba          GAMBIA      >=167 cm                   0      780    1723
0-6 months    Keneba          GAMBIA      >=167 cm                   1      333    1723
0-6 months    Keneba          GAMBIA      <162 cm                    0       84    1723
0-6 months    Keneba          GAMBIA      <162 cm                    1       40    1723
0-6 months    Keneba          GAMBIA      [162-167) cm               0      322    1723
0-6 months    Keneba          GAMBIA      [162-167) cm               1      164    1723
0-6 months    PROBIT          BELARUS     >=167 cm                   0    11014   12537
0-6 months    PROBIT          BELARUS     >=167 cm                   1      730   12537
0-6 months    PROBIT          BELARUS     <162 cm                    0      145   12537
0-6 months    PROBIT          BELARUS     <162 cm                    1       23   12537
0-6 months    PROBIT          BELARUS     [162-167) cm               0      560   12537
0-6 months    PROBIT          BELARUS     [162-167) cm               1       65   12537
0-6 months    SAS-CompFeed    INDIA       >=167 cm                   0      255     905
0-6 months    SAS-CompFeed    INDIA       >=167 cm                   1      155     905
0-6 months    SAS-CompFeed    INDIA       <162 cm                    0      117     905
0-6 months    SAS-CompFeed    INDIA       <162 cm                    1      112     905
0-6 months    SAS-CompFeed    INDIA       [162-167) cm               0      147     905
0-6 months    SAS-CompFeed    INDIA       [162-167) cm               1      119     905
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                   0       79     397
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm                   1       27     397
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                    0       81     397
0-6 months    SAS-FoodSuppl   INDIA       <162 cm                    1       81     397
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm               0       82     397
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm               1       47     397
6-24 months   COHORTS         GUATEMALA   >=167 cm                   0       16     372
6-24 months   COHORTS         GUATEMALA   >=167 cm                   1       35     372
6-24 months   COHORTS         GUATEMALA   <162 cm                    0       23     372
6-24 months   COHORTS         GUATEMALA   <162 cm                    1      185     372
6-24 months   COHORTS         GUATEMALA   [162-167) cm               0       24     372
6-24 months   COHORTS         GUATEMALA   [162-167) cm               1       89     372
6-24 months   Keneba          GAMBIA      >=167 cm                   0      561    1345
6-24 months   Keneba          GAMBIA      >=167 cm                   1      314    1345
6-24 months   Keneba          GAMBIA      <162 cm                    0       52    1345
6-24 months   Keneba          GAMBIA      <162 cm                    1       40    1345
6-24 months   Keneba          GAMBIA      [162-167) cm               0      197    1345
6-24 months   Keneba          GAMBIA      [162-167) cm               1      181    1345
6-24 months   PROBIT          BELARUS     >=167 cm                   0    10308   11712
6-24 months   PROBIT          BELARUS     >=167 cm                   1      700   11712
6-24 months   PROBIT          BELARUS     <162 cm                    0      122   11712
6-24 months   PROBIT          BELARUS     <162 cm                    1       23   11712
6-24 months   PROBIT          BELARUS     [162-167) cm               0      494   11712
6-24 months   PROBIT          BELARUS     [162-167) cm               1       65   11712
6-24 months   SAS-CompFeed    INDIA       >=167 cm                   0      126     487
6-24 months   SAS-CompFeed    INDIA       >=167 cm                   1      118     487
6-24 months   SAS-CompFeed    INDIA       <162 cm                    0       37     487
6-24 months   SAS-CompFeed    INDIA       <162 cm                    1       68     487
6-24 months   SAS-CompFeed    INDIA       [162-167) cm               0       59     487
6-24 months   SAS-CompFeed    INDIA       [162-167) cm               1       79     487
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   0       22     238
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm                   1       56     238
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                    0       12     238
6-24 months   SAS-FoodSuppl   INDIA       <162 cm                    1       67     238
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               0       21     238
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm               1       60     238


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/fc94ad90-a4ab-4c38-9a91-070213e74bce/9509a23f-403e-464d-9c92-3c5cb0771784/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fc94ad90-a4ab-4c38-9a91-070213e74bce/9509a23f-403e-464d-9c92-3c5cb0771784/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fc94ad90-a4ab-4c38-9a91-070213e74bce/9509a23f-403e-464d-9c92-3c5cb0771784/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fc94ad90-a4ab-4c38-9a91-070213e74bce/9509a23f-403e-464d-9c92-3c5cb0771784/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.7500000   0.6438067   0.8561933
0-24 months   COHORTS         GUATEMALA   <162 cm              NA                0.9180887   0.8866571   0.9495203
0-24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.8273381   0.7644428   0.8902335
0-24 months   Keneba          GAMBIA      >=167 cm             NA                0.5196787   0.4919194   0.5474381
0-24 months   Keneba          GAMBIA      <162 cm              NA                0.6060606   0.5226836   0.6894376
0-24 months   Keneba          GAMBIA      [162-167) cm         NA                0.6250000   0.5846032   0.6653968
0-24 months   PROBIT          BELARUS     >=167 cm             NA                0.1217643   0.1067348   0.1367938
0-24 months   PROBIT          BELARUS     <162 cm              NA                0.2738095   0.2218405   0.3257785
0-24 months   PROBIT          BELARUS     [162-167) cm         NA                0.2080000   0.1667679   0.2492321
0-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.6658537   0.6127457   0.7189616
0-24 months   SAS-CompFeed    INDIA       <162 cm              NA                0.7826087   0.7080228   0.8571946
0-24 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.7415730   0.6663543   0.8167918
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.7830189   0.7044524   0.8615853
0-24 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.9079755   0.8635443   0.9524067
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.8230769   0.7573968   0.8887570
0-6 months    COHORTS         GUATEMALA   >=167 cm             NA                0.2653061   0.1415057   0.3891066
0-6 months    COHORTS         GUATEMALA   <162 cm              NA                0.4285714   0.3591876   0.4979552
0-6 months    COHORTS         GUATEMALA   [162-167) cm         NA                0.2826087   0.1904640   0.3747534
0-6 months    Keneba          GAMBIA      >=167 cm             NA                0.2991914   0.2722822   0.3261006
0-6 months    Keneba          GAMBIA      <162 cm              NA                0.3225806   0.2402785   0.4048828
0-6 months    Keneba          GAMBIA      [162-167) cm         NA                0.3374486   0.2953982   0.3794989
0-6 months    PROBIT          BELARUS     >=167 cm             NA                0.0621594   0.0516013   0.0727175
0-6 months    PROBIT          BELARUS     <162 cm              NA                0.1369048   0.1010960   0.1727135
0-6 months    PROBIT          BELARUS     [162-167) cm         NA                0.1040000   0.0743265   0.1336735
0-6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.3780488   0.3223668   0.4337307
0-6 months    SAS-CompFeed    INDIA       <162 cm              NA                0.4890830   0.4291619   0.5490041
0-6 months    SAS-CompFeed    INDIA       [162-167) cm         NA                0.4473684   0.3835084   0.5112284
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.2547170   0.1716684   0.3377656
0-6 months    SAS-FoodSuppl   INDIA       <162 cm              NA                0.5000000   0.4229082   0.5770918
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.3643411   0.2811902   0.4474920
6-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.6862745   0.5587566   0.8137925
6-24 months   COHORTS         GUATEMALA   <162 cm              NA                0.8894231   0.8467467   0.9320994
6-24 months   COHORTS         GUATEMALA   [162-167) cm         NA                0.7876106   0.7120987   0.8631225
6-24 months   Keneba          GAMBIA      >=167 cm             NA                0.3588571   0.3270632   0.3906510
6-24 months   Keneba          GAMBIA      <162 cm              NA                0.4347826   0.3334476   0.5361176
6-24 months   Keneba          GAMBIA      [162-167) cm         NA                0.4788360   0.4284576   0.5292144
6-24 months   PROBIT          BELARUS     >=167 cm             NA                0.0635901   0.0521838   0.0749964
6-24 months   PROBIT          BELARUS     <162 cm              NA                0.1586207   0.1141524   0.2030890
6-24 months   PROBIT          BELARUS     [162-167) cm         NA                0.1162791   0.0819456   0.1506126
6-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.4836066   0.4306738   0.5365393
6-24 months   SAS-CompFeed    INDIA       <162 cm              NA                0.6476190   0.5375474   0.7576907
6-24 months   SAS-CompFeed    INDIA       [162-167) cm         NA                0.5724638   0.5078540   0.6370736
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.7179487   0.6178737   0.8180238
6-24 months   SAS-FoodSuppl   INDIA       <162 cm              NA                0.8481013   0.7687873   0.9274153
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         NA                0.7407407   0.6451050   0.8363765


### Parameter: E(Y)


agecat        studyid         country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA   NA                   NA                0.8709677   0.8414356   0.9004999
0-24 months   Keneba          GAMBIA      NA                   NA                0.5557284   0.5335489   0.5779078
0-24 months   PROBIT          BELARUS     NA                   NA                0.1281008   0.1120747   0.1441270
0-24 months   SAS-CompFeed    INDIA       NA                   NA                0.7177508   0.6751525   0.7603491
0-24 months   SAS-FoodSuppl   INDIA       NA                   NA                0.8471178   0.8117623   0.8824733
0-6 months    COHORTS         GUATEMALA   NA                   NA                0.3649852   0.3135088   0.4164615
0-6 months    Keneba          GAMBIA      NA                   NA                0.3116657   0.2897893   0.3335421
0-6 months    PROBIT          BELARUS     NA                   NA                0.0652469   0.0543989   0.0760949
0-6 months    SAS-CompFeed    INDIA       NA                   NA                0.4265193   0.3923837   0.4606550
0-6 months    SAS-FoodSuppl   INDIA       NA                   NA                0.3904282   0.3423793   0.4384771
6-24 months   COHORTS         GUATEMALA   NA                   NA                0.8306452   0.7924799   0.8688104
6-24 months   Keneba          GAMBIA      NA                   NA                0.3977695   0.3716030   0.4239360
6-24 months   PROBIT          BELARUS     NA                   NA                0.0672814   0.0549972   0.0795656
6-24 months   SAS-CompFeed    INDIA       NA                   NA                0.5441478   0.5023342   0.5859615
6-24 months   SAS-FoodSuppl   INDIA       NA                   NA                0.7689076   0.7152410   0.8225741


### Parameter: RR


agecat        studyid         country     intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------------  ----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          1.224118   1.0581791   1.416079
0-24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.103117   0.9393488   1.295438
0-24 months   Keneba          GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   Keneba          GAMBIA      <162 cm              >=167 cm          1.166222   1.0062100   1.351679
0-24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          1.202666   1.1059337   1.307859
0-24 months   PROBIT          BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   PROBIT          BELARUS     <162 cm              >=167 cm          2.248685   1.8727840   2.700035
0-24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          1.708218   1.4503902   2.011879
0-24 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.175346   1.0660500   1.295848
0-24 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.113718   0.9797436   1.266012
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.159583   1.0370976   1.296535
0-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.051159   0.9246796   1.194937
0-6 months    COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    COHORTS         GUATEMALA   <162 cm              >=167 cm          1.615385   0.9857565   2.647172
0-6 months    COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.065217   0.6028547   1.882192
0-6 months    Keneba          GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    Keneba          GAMBIA      <162 cm              >=167 cm          1.078175   0.8226245   1.413113
0-6 months    Keneba          GAMBIA      [162-167) cm         >=167 cm          1.127869   0.9671999   1.315227
0-6 months    PROBIT          BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    PROBIT          BELARUS     <162 cm              >=167 cm          2.202479   1.6643931   2.914524
0-6 months    PROBIT          BELARUS     [162-167) cm         >=167 cm          1.673118   1.2781451   2.190145
0-6 months    SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.293703   1.0724361   1.560623
0-6 months    SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.183362   0.9691583   1.444908
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.962963   1.3686077   2.815433
0-6 months    SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.430376   0.9607469   2.129568
6-24 months   COHORTS         GUATEMALA   >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   COHORTS         GUATEMALA   <162 cm              >=167 cm          1.296016   1.0697107   1.570199
6-24 months   COHORTS         GUATEMALA   [162-167) cm         >=167 cm          1.147661   0.9311244   1.414554
6-24 months   Keneba          GAMBIA      >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   Keneba          GAMBIA      <162 cm              >=167 cm          1.211576   0.9441972   1.554671
6-24 months   Keneba          GAMBIA      [162-167) cm         >=167 cm          1.334336   1.1628669   1.531089
6-24 months   PROBIT          BELARUS     >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   PROBIT          BELARUS     <162 cm              >=167 cm          2.494424   1.9139239   3.250991
6-24 months   PROBIT          BELARUS     [162-167) cm         >=167 cm          1.828571   1.4451054   2.313792
6-24 months   SAS-CompFeed    INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   SAS-CompFeed    INDIA       <162 cm              >=167 cm          1.339144   1.1357742   1.578930
6-24 months   SAS-CompFeed    INDIA       [162-167) cm         >=167 cm          1.183739   0.9859106   1.421262
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm             >=167 cm          1.000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl   INDIA       <162 cm              >=167 cm          1.181284   0.9987470   1.397182
6-24 months   SAS-FoodSuppl   INDIA       [162-167) cm         >=167 cm          1.031746   0.8532150   1.247634


### Parameter: PAR


agecat        studyid         country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1209677    0.0248482   0.2170873
0-24 months   Keneba          GAMBIA      >=167 cm             NA                0.0360496    0.0196844   0.0524149
0-24 months   PROBIT          BELARUS     >=167 cm             NA                0.0063365    0.0041091   0.0085639
0-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.0518972    0.0156169   0.0881774
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0640989   -0.0002670   0.1284649
0-6 months    COHORTS         GUATEMALA   >=167 cm             NA                0.0996790   -0.0165939   0.2159519
0-6 months    Keneba          GAMBIA      >=167 cm             NA                0.0124743   -0.0038715   0.0288202
0-6 months    PROBIT          BELARUS     >=167 cm             NA                0.0030875    0.0015679   0.0046070
0-6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.0484706    0.0131336   0.0838075
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.1357112    0.0613964   0.2100261
6-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1443707    0.0292238   0.2595175
6-24 months   Keneba          GAMBIA      >=167 cm             NA                0.0389124    0.0194110   0.0584137
6-24 months   PROBIT          BELARUS     >=167 cm             NA                0.0036913    0.0019309   0.0054517
6-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.0605413    0.0259272   0.0951554
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0509588   -0.0286066   0.1305242


### Parameter: PAF


agecat        studyid         country     intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------  ----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1388889    0.0199371   0.2434033
0-24 months   Keneba          GAMBIA      >=167 cm             NA                0.0648692    0.0347953   0.0940060
0-24 months   PROBIT          BELARUS     >=167 cm             NA                0.0494651    0.0340984   0.0645872
0-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.0723053    0.0206190   0.1212638
0-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0756671   -0.0041817   0.1491666
0-6 months    COHORTS         GUATEMALA   >=167 cm             NA                0.2731044   -0.1260997   0.5307900
0-6 months    Keneba          GAMBIA      >=167 cm             NA                0.0400247   -0.0138708   0.0910552
0-6 months    PROBIT          BELARUS     >=167 cm             NA                0.0473198    0.0244752   0.0696294
0-6 months    SAS-CompFeed    INDIA       >=167 cm             NA                0.1136421    0.0234622   0.1954942
0-6 months    SAS-FoodSuppl   INDIA       >=167 cm             NA                0.3475959    0.1276367   0.5120941
6-24 months   COHORTS         GUATEMALA   >=167 cm             NA                0.1738054    0.0209505   0.3027957
6-24 months   Keneba          GAMBIA      >=167 cm             NA                0.0978264    0.0473576   0.1456215
6-24 months   PROBIT          BELARUS     >=167 cm             NA                0.0548637    0.0323445   0.0768587
6-24 months   SAS-CompFeed    INDIA       >=167 cm             NA                0.1112589    0.0451574   0.1727843
6-24 months   SAS-FoodSuppl   INDIA       >=167 cm             NA                0.0662743   -0.0437567   0.1647061
