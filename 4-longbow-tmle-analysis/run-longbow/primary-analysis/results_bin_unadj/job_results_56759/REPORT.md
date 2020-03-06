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

**Outcome Variable:** sstunted

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

agecat      studyid         country                        fage       sstunted   n_cell       n
----------  --------------  -----------------------------  --------  ---------  -------  ------
Birth       COHORTS         GUATEMALA                      >=38              0      243     823
Birth       COHORTS         GUATEMALA                      >=38              1        2     823
Birth       COHORTS         GUATEMALA                      <32               0      373     823
Birth       COHORTS         GUATEMALA                      <32               1        7     823
Birth       COHORTS         GUATEMALA                      [32-38)           0      196     823
Birth       COHORTS         GUATEMALA                      [32-38)           1        2     823
Birth       COHORTS         PHILIPPINES                    >=38              0      321    2944
Birth       COHORTS         PHILIPPINES                    >=38              1        7    2944
Birth       COHORTS         PHILIPPINES                    <32               0     2048    2944
Birth       COHORTS         PHILIPPINES                    <32               1       31    2944
Birth       COHORTS         PHILIPPINES                    [32-38)           0      531    2944
Birth       COHORTS         PHILIPPINES                    [32-38)           1        6    2944
Birth       MAL-ED          BANGLADESH                     >=38              0       62     133
Birth       MAL-ED          BANGLADESH                     >=38              1        1     133
Birth       MAL-ED          BANGLADESH                     <32               0       24     133
Birth       MAL-ED          BANGLADESH                     <32               1        1     133
Birth       MAL-ED          BANGLADESH                     [32-38)           0       44     133
Birth       MAL-ED          BANGLADESH                     [32-38)           1        1     133
Birth       MAL-ED          BRAZIL                         >=38              0        5      18
Birth       MAL-ED          BRAZIL                         >=38              1        1      18
Birth       MAL-ED          BRAZIL                         <32               0        1      18
Birth       MAL-ED          BRAZIL                         <32               1        0      18
Birth       MAL-ED          BRAZIL                         [32-38)           0       10      18
Birth       MAL-ED          BRAZIL                         [32-38)           1        1      18
Birth       MAL-ED          INDIA                          >=38              0        7      27
Birth       MAL-ED          INDIA                          >=38              1        0      27
Birth       MAL-ED          INDIA                          <32               0        8      27
Birth       MAL-ED          INDIA                          <32               1        1      27
Birth       MAL-ED          INDIA                          [32-38)           0       10      27
Birth       MAL-ED          INDIA                          [32-38)           1        1      27
Birth       MAL-ED          NEPAL                          >=38              0        2       9
Birth       MAL-ED          NEPAL                          >=38              1        0       9
Birth       MAL-ED          NEPAL                          <32               0        2       9
Birth       MAL-ED          NEPAL                          <32               1        0       9
Birth       MAL-ED          NEPAL                          [32-38)           0        5       9
Birth       MAL-ED          NEPAL                          [32-38)           1        0       9
Birth       MAL-ED          PERU                           >=38              0       23      69
Birth       MAL-ED          PERU                           >=38              1        0      69
Birth       MAL-ED          PERU                           <32               0       22      69
Birth       MAL-ED          PERU                           <32               1        0      69
Birth       MAL-ED          PERU                           [32-38)           0       24      69
Birth       MAL-ED          PERU                           [32-38)           1        0      69
Birth       MAL-ED          SOUTH AFRICA                   >=38              0       16      31
Birth       MAL-ED          SOUTH AFRICA                   >=38              1        1      31
Birth       MAL-ED          SOUTH AFRICA                   <32               0        5      31
Birth       MAL-ED          SOUTH AFRICA                   <32               1        0      31
Birth       MAL-ED          SOUTH AFRICA                   [32-38)           0        9      31
Birth       MAL-ED          SOUTH AFRICA                   [32-38)           1        0      31
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              0       17      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              1        2      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               0        9      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               1        0      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           0       18      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           1        0      46
Birth       PROBIT          BELARUS                        >=38              0      606   13399
Birth       PROBIT          BELARUS                        >=38              1        0   13399
Birth       PROBIT          BELARUS                        <32               0    10727   13399
Birth       PROBIT          BELARUS                        <32               1        5   13399
Birth       PROBIT          BELARUS                        [32-38)           0     2061   13399
Birth       PROBIT          BELARUS                        [32-38)           1        0   13399
Birth       SAS-CompFeed    INDIA                          >=38              0       36    1249
Birth       SAS-CompFeed    INDIA                          >=38              1        4    1249
Birth       SAS-CompFeed    INDIA                          <32               0      973    1249
Birth       SAS-CompFeed    INDIA                          <32               1       72    1249
Birth       SAS-CompFeed    INDIA                          [32-38)           0      150    1249
Birth       SAS-CompFeed    INDIA                          [32-38)           1       14    1249
6 months    COHORTS         GUATEMALA                      >=38              0      234     929
6 months    COHORTS         GUATEMALA                      >=38              1       41     929
6 months    COHORTS         GUATEMALA                      <32               0      376     929
6 months    COHORTS         GUATEMALA                      <32               1       45     929
6 months    COHORTS         GUATEMALA                      [32-38)           0      200     929
6 months    COHORTS         GUATEMALA                      [32-38)           1       33     929
6 months    COHORTS         PHILIPPINES                    >=38              0      276    2624
6 months    COHORTS         PHILIPPINES                    >=38              1       24    2624
6 months    COHORTS         PHILIPPINES                    <32               0     1753    2624
6 months    COHORTS         PHILIPPINES                    <32               1       76    2624
6 months    COHORTS         PHILIPPINES                    [32-38)           0      468    2624
6 months    COHORTS         PHILIPPINES                    [32-38)           1       27    2624
6 months    LCNI-5          MALAWI                         >=38              0       25     106
6 months    LCNI-5          MALAWI                         >=38              1        1     106
6 months    LCNI-5          MALAWI                         <32               0       50     106
6 months    LCNI-5          MALAWI                         <32               1        6     106
6 months    LCNI-5          MALAWI                         [32-38)           0       22     106
6 months    LCNI-5          MALAWI                         [32-38)           1        2     106
6 months    MAL-ED          BANGLADESH                     >=38              0       69     150
6 months    MAL-ED          BANGLADESH                     >=38              1        0     150
6 months    MAL-ED          BANGLADESH                     <32               0       29     150
6 months    MAL-ED          BANGLADESH                     <32               1        1     150
6 months    MAL-ED          BANGLADESH                     [32-38)           0       49     150
6 months    MAL-ED          BANGLADESH                     [32-38)           1        2     150
6 months    MAL-ED          BRAZIL                         >=38              0       30      79
6 months    MAL-ED          BRAZIL                         >=38              1        0      79
6 months    MAL-ED          BRAZIL                         <32               0       18      79
6 months    MAL-ED          BRAZIL                         <32               1        0      79
6 months    MAL-ED          BRAZIL                         [32-38)           0       31      79
6 months    MAL-ED          BRAZIL                         [32-38)           1        0      79
6 months    MAL-ED          INDIA                          >=38              0       34     161
6 months    MAL-ED          INDIA                          >=38              1        2     161
6 months    MAL-ED          INDIA                          <32               0       50     161
6 months    MAL-ED          INDIA                          <32               1        3     161
6 months    MAL-ED          INDIA                          [32-38)           0       71     161
6 months    MAL-ED          INDIA                          [32-38)           1        1     161
6 months    MAL-ED          NEPAL                          >=38              0       17      79
6 months    MAL-ED          NEPAL                          >=38              1        0      79
6 months    MAL-ED          NEPAL                          <32               0       15      79
6 months    MAL-ED          NEPAL                          <32               1        0      79
6 months    MAL-ED          NEPAL                          [32-38)           0       47      79
6 months    MAL-ED          NEPAL                          [32-38)           1        0      79
6 months    MAL-ED          PERU                           >=38              0       27      83
6 months    MAL-ED          PERU                           >=38              1        0      83
6 months    MAL-ED          PERU                           <32               0       26      83
6 months    MAL-ED          PERU                           <32               1        2      83
6 months    MAL-ED          PERU                           [32-38)           0       25      83
6 months    MAL-ED          PERU                           [32-38)           1        3      83
6 months    MAL-ED          SOUTH AFRICA                   >=38              0       63      89
6 months    MAL-ED          SOUTH AFRICA                   >=38              1        1      89
6 months    MAL-ED          SOUTH AFRICA                   <32               0        9      89
6 months    MAL-ED          SOUTH AFRICA                   <32               1        0      89
6 months    MAL-ED          SOUTH AFRICA                   [32-38)           0       16      89
6 months    MAL-ED          SOUTH AFRICA                   [32-38)           1        0      89
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              0       45     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              1        3     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               0       13     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               1        2     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           0       36     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           1        1     100
6 months    PROBIT          BELARUS                        >=38              0      694   15182
6 months    PROBIT          BELARUS                        >=38              1        7   15182
6 months    PROBIT          BELARUS                        <32               0    12040   15182
6 months    PROBIT          BELARUS                        <32               1      135   15182
6 months    PROBIT          BELARUS                        [32-38)           0     2280   15182
6 months    PROBIT          BELARUS                        [32-38)           1       26   15182
6 months    SAS-CompFeed    INDIA                          >=38              0       33    1333
6 months    SAS-CompFeed    INDIA                          >=38              1       11    1333
6 months    SAS-CompFeed    INDIA                          <32               0     1030    1333
6 months    SAS-CompFeed    INDIA                          <32               1       95    1333
6 months    SAS-CompFeed    INDIA                          [32-38)           0      142    1333
6 months    SAS-CompFeed    INDIA                          [32-38)           1       22    1333
6 months    SAS-FoodSuppl   INDIA                          >=38              0       32     380
6 months    SAS-FoodSuppl   INDIA                          >=38              1        7     380
6 months    SAS-FoodSuppl   INDIA                          <32               0      228     380
6 months    SAS-FoodSuppl   INDIA                          <32               1       36     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)           0       66     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)           1       11     380
24 months   COHORTS         GUATEMALA                      >=38              0      158    1021
24 months   COHORTS         GUATEMALA                      >=38              1      127    1021
24 months   COHORTS         GUATEMALA                      <32               0      251    1021
24 months   COHORTS         GUATEMALA                      <32               1      240    1021
24 months   COHORTS         GUATEMALA                      [32-38)           0      115    1021
24 months   COHORTS         GUATEMALA                      [32-38)           1      130    1021
24 months   COHORTS         PHILIPPINES                    >=38              0      169    2371
24 months   COHORTS         PHILIPPINES                    >=38              1      101    2371
24 months   COHORTS         PHILIPPINES                    <32               0     1200    2371
24 months   COHORTS         PHILIPPINES                    <32               1      466    2371
24 months   COHORTS         PHILIPPINES                    [32-38)           0      313    2371
24 months   COHORTS         PHILIPPINES                    [32-38)           1      122    2371
24 months   LCNI-5          MALAWI                         >=38              0       21      74
24 months   LCNI-5          MALAWI                         >=38              1        0      74
24 months   LCNI-5          MALAWI                         <32               0       33      74
24 months   LCNI-5          MALAWI                         <32               1        4      74
24 months   LCNI-5          MALAWI                         [32-38)           0       14      74
24 months   LCNI-5          MALAWI                         [32-38)           1        2      74
24 months   MAL-ED          BANGLADESH                     >=38              0       59     151
24 months   MAL-ED          BANGLADESH                     >=38              1       10     151
24 months   MAL-ED          BANGLADESH                     <32               0       24     151
24 months   MAL-ED          BANGLADESH                     <32               1        6     151
24 months   MAL-ED          BANGLADESH                     [32-38)           0       46     151
24 months   MAL-ED          BANGLADESH                     [32-38)           1        6     151
24 months   MAL-ED          BRAZIL                         >=38              0       30      79
24 months   MAL-ED          BRAZIL                         >=38              1        0      79
24 months   MAL-ED          BRAZIL                         <32               0       18      79
24 months   MAL-ED          BRAZIL                         <32               1        0      79
24 months   MAL-ED          BRAZIL                         [32-38)           0       31      79
24 months   MAL-ED          BRAZIL                         [32-38)           1        0      79
24 months   MAL-ED          INDIA                          >=38              0       31     161
24 months   MAL-ED          INDIA                          >=38              1        5     161
24 months   MAL-ED          INDIA                          <32               0       45     161
24 months   MAL-ED          INDIA                          <32               1        8     161
24 months   MAL-ED          INDIA                          [32-38)           0       64     161
24 months   MAL-ED          INDIA                          [32-38)           1        8     161
24 months   MAL-ED          NEPAL                          >=38              0       17      79
24 months   MAL-ED          NEPAL                          >=38              1        0      79
24 months   MAL-ED          NEPAL                          <32               0       14      79
24 months   MAL-ED          NEPAL                          <32               1        1      79
24 months   MAL-ED          NEPAL                          [32-38)           0       45      79
24 months   MAL-ED          NEPAL                          [32-38)           1        2      79
24 months   MAL-ED          PERU                           >=38              0       26      79
24 months   MAL-ED          PERU                           >=38              1        0      79
24 months   MAL-ED          PERU                           <32               0       25      79
24 months   MAL-ED          PERU                           <32               1        2      79
24 months   MAL-ED          PERU                           [32-38)           0       23      79
24 months   MAL-ED          PERU                           [32-38)           1        3      79
24 months   MAL-ED          SOUTH AFRICA                   >=38              0       58      89
24 months   MAL-ED          SOUTH AFRICA                   >=38              1        7      89
24 months   MAL-ED          SOUTH AFRICA                   <32               0        8      89
24 months   MAL-ED          SOUTH AFRICA                   <32               1        0      89
24 months   MAL-ED          SOUTH AFRICA                   [32-38)           0       16      89
24 months   MAL-ED          SOUTH AFRICA                   [32-38)           1        0      89
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              0       32     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              1       16     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               0        8     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               1        7     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           0       21     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           1       16     100
24 months   PROBIT          BELARUS                        >=38              0      176    3909
24 months   PROBIT          BELARUS                        >=38              1        2    3909
24 months   PROBIT          BELARUS                        <32               0     3095    3909
24 months   PROBIT          BELARUS                        <32               1       48    3909
24 months   PROBIT          BELARUS                        [32-38)           0      576    3909
24 months   PROBIT          BELARUS                        [32-38)           1       12    3909


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROBIT, country: BELARUS

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/ac844548-cce8-42dc-a91a-053414c1204f/639753aa-5c5e-454c-a1b4-27f8f1c85894/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ac844548-cce8-42dc-a91a-053414c1204f/639753aa-5c5e-454c-a1b4-27f8f1c85894/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ac844548-cce8-42dc-a91a-053414c1204f/639753aa-5c5e-454c-a1b4-27f8f1c85894/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ac844548-cce8-42dc-a91a-053414c1204f/639753aa-5c5e-454c-a1b4-27f8f1c85894/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         PHILIPPINES                    >=38                 NA                0.0213415   0.0056987   0.0369842
Birth       COHORTS         PHILIPPINES                    <32                  NA                0.0149110   0.0097004   0.0201216
Birth       COHORTS         PHILIPPINES                    [32-38)              NA                0.0111732   0.0022815   0.0200649
6 months    COHORTS         GUATEMALA                      >=38                 NA                0.1490909   0.1069715   0.1912104
6 months    COHORTS         GUATEMALA                      <32                  NA                0.1068884   0.0773587   0.1364181
6 months    COHORTS         GUATEMALA                      [32-38)              NA                0.1416309   0.0968369   0.1864249
6 months    COHORTS         PHILIPPINES                    >=38                 NA                0.0800000   0.0492950   0.1107050
6 months    COHORTS         PHILIPPINES                    <32                  NA                0.0415528   0.0324051   0.0507004
6 months    COHORTS         PHILIPPINES                    [32-38)              NA                0.0545455   0.0345363   0.0745546
6 months    PROBIT          BELARUS                        >=38                 NA                0.0099857   0.0033820   0.0165895
6 months    PROBIT          BELARUS                        <32                  NA                0.0110883   0.0054005   0.0167761
6 months    PROBIT          BELARUS                        [32-38)              NA                0.0112749   0.0028915   0.0196584
6 months    SAS-CompFeed    INDIA                          >=38                 NA                0.2500000   0.1210063   0.3789937
6 months    SAS-CompFeed    INDIA                          <32                  NA                0.0844444   0.0709188   0.0979701
6 months    SAS-CompFeed    INDIA                          [32-38)              NA                0.1341463   0.0817771   0.1865156
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                0.1794872   0.0588872   0.3000872
6 months    SAS-FoodSuppl   INDIA                          <32                  NA                0.1363636   0.0949128   0.1778145
6 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                0.1428571   0.0645949   0.2211194
24 months   COHORTS         GUATEMALA                      >=38                 NA                0.4456140   0.3878811   0.5033470
24 months   COHORTS         GUATEMALA                      <32                  NA                0.4887984   0.4445618   0.5330349
24 months   COHORTS         GUATEMALA                      [32-38)              NA                0.5306122   0.4680903   0.5931342
24 months   COHORTS         PHILIPPINES                    >=38                 NA                0.3740741   0.3163445   0.4318036
24 months   COHORTS         PHILIPPINES                    <32                  NA                0.2797119   0.2581538   0.3012700
24 months   COHORTS         PHILIPPINES                    [32-38)              NA                0.2804598   0.2382359   0.3226836
24 months   MAL-ED          BANGLADESH                     >=38                 NA                0.1449275   0.0615895   0.2282656
24 months   MAL-ED          BANGLADESH                     <32                  NA                0.2000000   0.0563881   0.3436119
24 months   MAL-ED          BANGLADESH                     [32-38)              NA                0.1153846   0.0282601   0.2025091
24 months   MAL-ED          INDIA                          >=38                 NA                0.1388889   0.0255672   0.2522106
24 months   MAL-ED          INDIA                          <32                  NA                0.1509434   0.0542630   0.2476238
24 months   MAL-ED          INDIA                          [32-38)              NA                0.1111111   0.0382934   0.1839289
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.3333333   0.1993028   0.4673638
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.4666667   0.2129274   0.7204059
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.4324324   0.2719980   0.5928669


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         PHILIPPINES                    NA                   NA                0.0149457   0.0105620   0.0193293
6 months    COHORTS         GUATEMALA                      NA                   NA                0.1280947   0.1065929   0.1495965
6 months    COHORTS         PHILIPPINES                    NA                   NA                0.0483994   0.0401865   0.0566123
6 months    PROBIT          BELARUS                        NA                   NA                0.0110657   0.0053836   0.0167479
6 months    SAS-CompFeed    INDIA                          NA                   NA                0.0960240   0.0777684   0.1142796
6 months    SAS-FoodSuppl   INDIA                          NA                   NA                0.1421053   0.1069532   0.1772573
24 months   COHORTS         GUATEMALA                      NA                   NA                0.4867777   0.4561040   0.5174514
24 months   COHORTS         PHILIPPINES                    NA                   NA                0.2905947   0.2723152   0.3088742
24 months   MAL-ED          BANGLADESH                     NA                   NA                0.1456954   0.0892366   0.2021542
24 months   MAL-ED          INDIA                          NA                   NA                0.1304348   0.0782510   0.1826186
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3900000   0.2939212   0.4860788


### Parameter: RR


agecat      studyid         country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       COHORTS         PHILIPPINES                    <32                  >=38              0.6986876   0.3101923   1.5737474
Birth       COHORTS         PHILIPPINES                    [32-38)              >=38              0.5235435   0.1774516   1.5446338
6 months    COHORTS         GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    COHORTS         GUATEMALA                      <32                  >=38              0.7169341   0.4829174   1.0643530
6 months    COHORTS         GUATEMALA                      [32-38)              >=38              0.9499634   0.6216321   1.4517115
6 months    COHORTS         PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    COHORTS         PHILIPPINES                    <32                  >=38              0.5194095   0.3336949   0.8084818
6 months    COHORTS         PHILIPPINES                    [32-38)              >=38              0.6818182   0.4009514   1.1594324
6 months    PROBIT          BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    PROBIT          BELARUS                        <32                  >=38              1.1104136   0.5699285   2.1634616
6 months    PROBIT          BELARUS                        [32-38)              >=38              1.1291042   0.4698573   2.7133267
6 months    SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed    INDIA                          <32                  >=38              0.3377778   0.2232870   0.5109739
6 months    SAS-CompFeed    INDIA                          [32-38)              >=38              0.5365854   0.3051201   0.9436411
6 months    SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    SAS-FoodSuppl   INDIA                          <32                  >=38              0.7597403   0.3633993   1.5883498
6 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.7959184   0.3344716   1.8939907
24 months   COHORTS         GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   COHORTS         GUATEMALA                      <32                  >=38              1.0969097   0.9365615   1.2847112
24 months   COHORTS         GUATEMALA                      [32-38)              >=38              1.1907440   0.9994522   1.4186484
24 months   COHORTS         PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   COHORTS         PHILIPPINES                    <32                  >=38              0.7477446   0.6292696   0.8885254
24 months   COHORTS         PHILIPPINES                    [32-38)              >=38              0.7497439   0.6043378   0.9301353
24 months   MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   MAL-ED          BANGLADESH                     <32                  >=38              1.3800000   0.5499947   3.4625789
24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              0.7961538   0.3081799   2.0567884
24 months   MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   MAL-ED          INDIA                          <32                  >=38              1.0867925   0.3851745   3.0664490
24 months   MAL-ED          INDIA                          [32-38)              >=38              0.8000000   0.2809245   2.2781919
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              1.4000000   0.7119272   2.7530904
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              1.2972973   0.7506467   2.2420404


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.0063958   -0.0208660    0.0080744
6 months    COHORTS         GUATEMALA                      >=38                 NA                -0.0209962   -0.0554357    0.0134433
6 months    COHORTS         PHILIPPINES                    >=38                 NA                -0.0316006   -0.0597905   -0.0034107
6 months    PROBIT          BELARUS                        >=38                 NA                 0.0010800   -0.0056576    0.0078176
6 months    SAS-CompFeed    INDIA                          >=38                 NA                -0.1539760   -0.2695126   -0.0384394
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0373819   -0.1504952    0.0757313
24 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0411636   -0.0079605    0.0902878
24 months   COHORTS         PHILIPPINES                    >=38                 NA                -0.0834794   -0.1374035   -0.0295553
24 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0007678   -0.0607588    0.0622945
24 months   MAL-ED          INDIA                          >=38                 NA                -0.0084541   -0.1075603    0.0906521
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0566667   -0.0430816    0.1564149


### Parameter: PAF


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.4279379   -1.7976835    0.2711804
6 months    COHORTS         GUATEMALA                      >=38                 NA                -0.1639114   -0.4651907    0.0754175
6 months    COHORTS         PHILIPPINES                    >=38                 NA                -0.6529134   -1.3386395   -0.1682530
6 months    PROBIT          BELARUS                        >=38                 NA                 0.0975987   -0.7318843    0.5298022
6 months    SAS-CompFeed    INDIA                          >=38                 NA                -1.6035156   -2.8419579   -0.7642811
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -0.2630579   -1.3691050    0.3266169
24 months   COHORTS         GUATEMALA                      >=38                 NA                 0.0845635   -0.0222418    0.1802097
24 months   COHORTS         PHILIPPINES                    >=38                 NA                -0.2872709   -0.4869326   -0.1144193
24 months   MAL-ED          BANGLADESH                     >=38                 NA                 0.0052701   -0.5208155    0.3493704
24 months   MAL-ED          INDIA                          >=38                 NA                -0.0648148   -1.1729436    0.4782052
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1452991   -0.1531681    0.3665160
