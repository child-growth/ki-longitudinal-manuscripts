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
![](/tmp/a4bd0130-6119-4a6a-851d-757da5f66e75/252f85f2-2724-46f4-a650-d0aa29cda4b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a4bd0130-6119-4a6a-851d-757da5f66e75/252f85f2-2724-46f4-a650-d0aa29cda4b0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a4bd0130-6119-4a6a-851d-757da5f66e75/252f85f2-2724-46f4-a650-d0aa29cda4b0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a4bd0130-6119-4a6a-851d-757da5f66e75/252f85f2-2724-46f4-a650-d0aa29cda4b0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.4698957   0.4234464   0.5163450
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.3337477   0.2854355   0.3820598
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.3231768   0.1854237   0.4609299
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.4850756   0.2905970   0.6795542
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.5551636   0.4793384   0.6309889
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.4851896   0.3244581   0.6459211
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.0441333   0.0234165   0.0648501
0-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.0380642   0.0302331   0.0458953
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0373585   0.0255009   0.0492162
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.4109914   0.3287496   0.4932332
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.4624198   0.4176957   0.5071439
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.5131534   0.4168932   0.6094136
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.3898388   0.3170953   0.4625823
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.3462638   0.3220027   0.3705248
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.3430516   0.2763515   0.4097517
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.1620636   0.0955660   0.2285612
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.1272574   0.1131811   0.1413337
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1582715   0.0855577   0.2309852
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.1627907   0.0523146   0.2732668
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1180556   0.0807444   0.1553667
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1058824   0.0403931   0.1713717
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.0193864   0.0035127   0.0352601
0-6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.0142980   0.0105814   0.0180145
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0093281   0.0051272   0.0135290
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0914270   0.0568394   0.1260145
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0673508   0.0433916   0.0913100
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0788662   0.0178362   0.1398962
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0526895   0.0245841   0.0807950
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0581416   0.0440606   0.0722226
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0702813   0.0351251   0.1054374


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.7102590   0.5987986   0.8424667
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.6877629   0.4571461   1.0347192
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              1.1444889   0.7506883   1.7448716
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              1.0002351   0.5947303   1.6822249
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              0.8624825   0.5663675   1.3134159
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.8464937   0.5640578   1.2703513
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.1251325   0.9017154   1.4039054
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.2485746   0.9494132   1.6420022
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.8882229   0.7281849   1.0834337
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8799833   0.6723870   1.1516740
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.7852314   0.5024341   1.2272022
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.9766013   0.5454635   1.7485134
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.7251984   0.3430315   1.5331325
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.6504202   0.2596698   1.6291705
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              0.7375252   0.3289429   1.6536102
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.4811663   0.2011934   1.1507385
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.7366622   0.4377238   1.2397572
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.8626145   0.3640128   2.0441691
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              1.1034754   0.6147241   1.9808200
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.3338754   0.6424709   2.7693453


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0065265   -0.0676987    0.0807518
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.0569358   -0.0544732    0.1683448
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1398303   -0.1947511   -0.0849096
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0042144   -0.1963766    0.1879479
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0059198   -0.0233737    0.0115340
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0540355   -0.0233989    0.1314699
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0296219   -0.1007731    0.0415293
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0127512   -0.0858650    0.0603626
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0425984   -0.1458489    0.0606521
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0056213   -0.0203889    0.0091464
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0093335   -0.0209555    0.0396225
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0100011   -0.0172350    0.0372371


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0273752   -0.3395046    0.2937695
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.2546296   -0.4483342    0.6164028
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.4236444   -0.6246661   -0.2474953
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0087642   -0.4992156    0.3212416
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.1549153   -0.7070476    0.2186337
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1161986   -0.0672668    0.2681260
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0822335   -0.2991149    0.0984405
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0853994   -0.7122306    0.3119550
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.3544186   -1.5480213    0.2800493
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.4083696   -1.9785711    0.3340751
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0926306   -0.2632957    0.3482768
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.1595307   -0.4080704    0.4983286
