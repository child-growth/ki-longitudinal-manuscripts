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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        fage       ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  --------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                   0       53     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                   1       16     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                    0       21     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                    1        9     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)                0       41     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)                1       11     151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                   0       27      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                   1        3      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                    0       14      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                    1        4      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)                0       29      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)                1        2      79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                   0       30     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                   1        6     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                    0       38     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                    1       15     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)                0       57     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)                1       15     161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                   0       16      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                   1        1      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                    0       13      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                    1        2      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)                0       41      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)                1        6      79
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                   0       24      85
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                   1        3      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                    0       21      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                    1        8      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)                0       18      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)                1       11      85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                   0       53      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                   1       12      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                    0        9      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                    1        0      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)                0       11      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)                1        5      90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                   0       20     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                   1       28     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                    0        4     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                    1       11     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)                0       14     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)                1       23     100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                   0       28    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                   1       23    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                    0      870    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                    1      409    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)                0      127    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)                1       73    1530
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                   0       18     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                   1       26     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                    0      151     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                    1      138     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)                0       48     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)                1       37     418
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                   0      709   16277
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                   1       35   16277
0-24 months   ki1119695-PROBIT           BELARUS                        <32                    0    12566   16277
0-24 months   ki1119695-PROBIT           BELARUS                        <32                    1      492   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)                0     2380   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)                1       95   16277
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                   0      217    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                   1      169    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                    0      329    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                    1      280    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)                0      150    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)                1      156    1301
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                   0      177    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                   1      153    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                    0     1365    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                    1      718    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)                0      346    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)                1      192    2951
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                   0       23     106
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                   1        3     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                    0       42     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                    1       14     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)                0       15     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)                1        9     106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                   0       66     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                   1        3     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                    0       28     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                    1        2     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)                0       49     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)                1        3     151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                   0       27      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                   1        3      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                    0       15      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                    1        3      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)                0       29      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)                1        2      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                   0       34     161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                   1        2     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                    0       45     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                    1        8     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)                0       70     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)                1        2     161
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                   0       17      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                   1        0      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                    0       14      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                    1        1      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)                0       45      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)                1        2      79
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                   0       26      85
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                   1        1      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                    0       24      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                    1        5      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)                0       24      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)                1        5      85
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                   0       61      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                   1        4      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                    0        9      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                    1        0      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)                0       14      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)                1        2      90
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                   0       42     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                   1        6     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                    0       12     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                    1        3     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)                0       34     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)                1        3     100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                   0       37    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                   1       13    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                    0     1097    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                    1      180    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)                0      165    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)                1       35    1527
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                   0       36     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                   1        7     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                    0      254     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                    1       34     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)                0       76     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)                1        9     416
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                   0      729   16273
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                   1       14   16273
0-6 months    ki1119695-PROBIT           BELARUS                        <32                    0    12869   16273
0-6 months    ki1119695-PROBIT           BELARUS                        <32                    1      187   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)                0     2451   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)                1       23   16273
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                   0      268    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                   1       45    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                    0      444    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                    1       40    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)                0      234    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)                1       21    1052
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                   0      298    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                   1       32    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                    0     1966    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                    1      117    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)                0      502    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)                1       36    2951
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                   0        8      38
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                   1        1      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                    0       17      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                    1        4      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)                0        8      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)                1        0      38


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/c1b47281-5c52-4511-ab82-0c0aff041cf2/e88aa490-eb15-4d08-904f-281b81f856ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c1b47281-5c52-4511-ab82-0c0aff041cf2/e88aa490-eb15-4d08-904f-281b81f856ae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c1b47281-5c52-4511-ab82-0c0aff041cf2/e88aa490-eb15-4d08-904f-281b81f856ae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c1b47281-5c52-4511-ab82-0c0aff041cf2/e88aa490-eb15-4d08-904f-281b81f856ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.2318841   0.1319726   0.3317955
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.3000000   0.1354719   0.4645281
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.2115385   0.1001669   0.3229100
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                0.1666667   0.0445476   0.2887858
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  NA                0.2830189   0.1613654   0.4046724
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.2083333   0.1142343   0.3024324
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.4509804   0.3466421   0.5553187
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.3197811   0.2914132   0.3481490
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.3650000   0.2813265   0.4486735
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.5909091   0.4454596   0.7363585
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.4775087   0.4198520   0.5351653
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.4352941   0.3297677   0.5408206
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.0470430   0.0254449   0.0686411
0-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.0376781   0.0299710   0.0453851
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0383838   0.0259062   0.0508615
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.4378238   0.3883122   0.4873355
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.4597701   0.4201728   0.4993675
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.5098039   0.4537713   0.5658365
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.4636364   0.4098239   0.5174489
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.3446952   0.3242817   0.3651086
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.3568773   0.3163883   0.3973663
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.2600000   0.1601998   0.3598002
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.1409554   0.1251663   0.1567444
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1750000   0.1378969   0.2121031
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.1627907   0.0523146   0.2732668
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1180556   0.0807444   0.1553667
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1058824   0.0403931   0.1713717
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.0188425   0.0025412   0.0351439
0-6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.0143229   0.0106071   0.0180387
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0092967   0.0051929   0.0134004
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.1437700   0.1048823   0.1826576
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0826446   0.0581027   0.1071865
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0823529   0.0485961   0.1161098
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0969697   0.0650371   0.1289023
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0561690   0.0462795   0.0660584
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0669145   0.0457966   0.0880324


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.2384106   0.1702198   0.3066014
0-24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.2236025   0.1590417   0.2881632
0-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.3300654   0.3020915   0.3580392
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0382134   0.0300125   0.0464143
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4650269   0.4379137   0.4921401
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.3602169   0.3428934   0.3775404
0-6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1493124   0.1303783   0.1682465
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1201923   0.0889059   0.1514788
0-6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0137651   0.0103766   0.0171537
0-6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1007605   0.0825622   0.1189587
0-6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0626906   0.0539432   0.0714380


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.2937500   0.6441055   2.5986255
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.9122596   0.4620194   1.8012613
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  >=38              1.6981132   0.7261684   3.9709637
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.2500000   0.5285589   2.9561513
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.7090798   0.5624118   0.8939965
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.8093478   0.5818903   1.1257172
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.8080916   0.6143162   1.0629900
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.7366516   0.5214604   1.0406459
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              0.8009277   0.5148760   1.2459025
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.8159307   0.5340834   1.2465149
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.0501258   0.9109776   1.2105284
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.1644042   0.9945267   1.3632989
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.7434601   0.6526319   0.8469291
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.7697354   0.6544148   0.9053778
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.5421360   0.3746370   0.7845233
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.6730769   0.4455215   1.0168590
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.7251984   0.3430315   1.5331325
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.6504202   0.2596698   1.6291705
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              0.7601376   0.3242828   1.7818065
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.4933884   0.1979451   1.2297963
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.5748393   0.3846801   0.8590001
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.5728105   0.3505313   0.9360415
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.5792427   0.3987377   0.8414607
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.6900558   0.4373160   1.0888625


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0065265   -0.0676987    0.0807518
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.0569358   -0.0544732    0.1683448
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1209150   -0.2218582   -0.0199719
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.1100478   -0.2478934    0.0277977
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0088296   -0.0281244    0.0104653
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0272031   -0.0144130    0.0688191
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.1034195   -0.1538996   -0.0529394
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1106876   -0.2044488   -0.0169264
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0425984   -0.1458489    0.0606521
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0050774   -0.0202624    0.0101076
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0430095   -0.0737268   -0.0122922
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0342791   -0.0637435   -0.0048147


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0273752   -0.3395046    0.2937695
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.2546296   -0.4483342    0.6164028
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.3663366   -0.7116476   -0.0906893
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.2288557   -0.5531769    0.0277435
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.2310596   -0.8525742    0.1819449
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0584978   -0.0354305    0.1439055
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.2871034   -0.4354955   -0.1540511
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.7413158   -1.4765902   -0.2243369
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.3544186   -1.5480213    0.2800493
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.3688594   -2.0259985    0.3807743
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.4268491   -0.7584372   -0.1577885
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.5467977   -1.0893359   -0.1451405
