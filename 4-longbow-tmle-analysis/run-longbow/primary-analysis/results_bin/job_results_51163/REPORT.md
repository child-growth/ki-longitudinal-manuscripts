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

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        fage       ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  --------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                   0       54     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                   1       15     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                    0       21     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                    1        9     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)                0       41     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)                1       11     151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                   0       27      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                   1        3      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                    0       17      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                    1        1      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)                0       29      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)                1        2      79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                   0       30     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                   1        6     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                    0       39     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                    1       14     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)                0       59     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)                1       13     161
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
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                    0       17      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                    1        1      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)                0       29      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)                1        2      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                   0       34     161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                   1        2     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                    0       46     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                    1        7     161
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




# Results Detail

## Results Plots
![](/tmp/5decd6a2-8824-485a-aaeb-302fc9c0a41a/528a84a0-22f7-4a90-8f68-5f1fa4ca24d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5decd6a2-8824-485a-aaeb-302fc9c0a41a/528a84a0-22f7-4a90-8f68-5f1fa4ca24d7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5decd6a2-8824-485a-aaeb-302fc9c0a41a/528a84a0-22f7-4a90-8f68-5f1fa4ca24d7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5decd6a2-8824-485a-aaeb-302fc9c0a41a/528a84a0-22f7-4a90-8f68-5f1fa4ca24d7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.2173913   0.1197441   0.3150385
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.3000000   0.1354719   0.4645281
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.2115385   0.1001669   0.3229100
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                0.1666667   0.0445476   0.2887858
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  NA                0.2641509   0.1450861   0.3832158
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.1805556   0.0914305   0.2696806
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.4698957   0.4234464   0.5163450
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.3337477   0.2854355   0.3820598
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.3231768   0.1854237   0.4609299
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.4842677   0.2888063   0.6797292
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.5424109   0.4530298   0.6317920
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.4618462   0.3013510   0.6223414
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.0431439   0.0233077   0.0629801
0-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.0380087   0.0302317   0.0457857
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0366118   0.0250187   0.0482050
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.4011672   0.3254441   0.4768904
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.4622723   0.4140608   0.5104837
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.5249542   0.4486745   0.6012339
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.3728630   0.3024211   0.4433049
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.3425315   0.3177273   0.3673358
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.3270276   0.2664316   0.3876235
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.1620636   0.0955660   0.2285612
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.1272574   0.1131811   0.1413337
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1582715   0.0855577   0.2309852
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.1627907   0.0523146   0.2732668
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1180556   0.0807444   0.1553667
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1058824   0.0403931   0.1713717
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.0191052   0.0035622   0.0346481
0-6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.0143167   0.0105980   0.0180354
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0092686   0.0050860   0.0134512
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0977308   0.0578612   0.1376003
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0695615   0.0436779   0.0954452
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0734134   0.0228278   0.1239990
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0482570   0.0228067   0.0737074
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0578789   0.0443959   0.0713620
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0654613   0.0299361   0.1009864


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.2317881   0.1642594   0.2993168
0-24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.2049689   0.1424194   0.2675185
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
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.3800000   0.6792191   2.8038080
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.9730769   0.4870684   1.9440364
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  >=38              1.5849057   0.6704997   3.7463493
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.0833333   0.4477896   2.6208985
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.7102590   0.5987986   0.8424667
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.6877629   0.4571461   1.0347192
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              1.1200641   0.7251508   1.7300450
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.9537001   0.5598922   1.6244984
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              0.8809762   0.5845439   1.3277345
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.8485989   0.5669173   1.2702385
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.1523180   0.9298748   1.4279739
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.3085669   1.0324791   1.6584814
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.9186525   0.7508534   1.1239510
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8770716   0.6735118   1.1421547
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.7852314   0.5024341   1.2272022
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.9766013   0.5454635   1.7485134
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.7251984   0.3430315   1.5331325
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.6504202   0.2596698   1.6291705
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              0.7493614   0.3357709   1.6723977
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.4851377   0.2039062   1.1542493
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.7117670   0.4094858   1.2371914
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.7511802   0.3368149   1.6753169
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              1.1993891   0.6743579   2.1331911
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.3565129   0.6370472   2.8885257


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0143968   -0.0589587    0.0877522
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.0383023   -0.0719534    0.1485580
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1398303   -0.1947511   -0.0849096
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0034065   -0.1966198    0.1898068
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0049304   -0.0214890    0.0116281
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0638597   -0.0069029    0.1346222
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0126461   -0.0815148    0.0562226
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0127512   -0.0858650    0.0603626
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0425984   -0.1458489    0.0606521
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0053400   -0.0197842    0.0091041
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0030297   -0.0327192    0.0387786
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0144336   -0.0102604    0.0391276


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0621118   -0.3139935    0.3305642
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1868687   -0.5722522    0.5794679
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.4236444   -0.6246661   -0.2474953
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0070842   -0.5009438    0.3242795
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.1290237   -0.6507282    0.2277986
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1373247   -0.0293199    0.2769898
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0351070   -0.2451672    0.1395159
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0853994   -0.7122306    0.3119550
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.3544186   -1.5480213    0.2800493
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.3879396   -1.9206309    0.3404246
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0300682   -0.3982459    0.3271801
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.2302354   -0.2814826    0.5376156
