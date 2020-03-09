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

agecat        studyid         country                        fage       ever_sstunted   n_cell       n
------------  --------------  -----------------------------  --------  --------------  -------  ------
0-24 months   COHORTS         GUATEMALA                      >=38                   0      217    1301
0-24 months   COHORTS         GUATEMALA                      >=38                   1      169    1301
0-24 months   COHORTS         GUATEMALA                      <32                    0      329    1301
0-24 months   COHORTS         GUATEMALA                      <32                    1      280    1301
0-24 months   COHORTS         GUATEMALA                      [32-38)                0      150    1301
0-24 months   COHORTS         GUATEMALA                      [32-38)                1      156    1301
0-24 months   COHORTS         PHILIPPINES                    >=38                   0      177    2951
0-24 months   COHORTS         PHILIPPINES                    >=38                   1      153    2951
0-24 months   COHORTS         PHILIPPINES                    <32                    0     1365    2951
0-24 months   COHORTS         PHILIPPINES                    <32                    1      718    2951
0-24 months   COHORTS         PHILIPPINES                    [32-38)                0      346    2951
0-24 months   COHORTS         PHILIPPINES                    [32-38)                1      192    2951
0-24 months   LCNI-5          MALAWI                         >=38                   0       23     106
0-24 months   LCNI-5          MALAWI                         >=38                   1        3     106
0-24 months   LCNI-5          MALAWI                         <32                    0       42     106
0-24 months   LCNI-5          MALAWI                         <32                    1       14     106
0-24 months   LCNI-5          MALAWI                         [32-38)                0       15     106
0-24 months   LCNI-5          MALAWI                         [32-38)                1        9     106
0-24 months   MAL-ED          BANGLADESH                     >=38                   0       53     151
0-24 months   MAL-ED          BANGLADESH                     >=38                   1       16     151
0-24 months   MAL-ED          BANGLADESH                     <32                    0       21     151
0-24 months   MAL-ED          BANGLADESH                     <32                    1        9     151
0-24 months   MAL-ED          BANGLADESH                     [32-38)                0       41     151
0-24 months   MAL-ED          BANGLADESH                     [32-38)                1       11     151
0-24 months   MAL-ED          BRAZIL                         >=38                   0       27      79
0-24 months   MAL-ED          BRAZIL                         >=38                   1        3      79
0-24 months   MAL-ED          BRAZIL                         <32                    0       14      79
0-24 months   MAL-ED          BRAZIL                         <32                    1        4      79
0-24 months   MAL-ED          BRAZIL                         [32-38)                0       29      79
0-24 months   MAL-ED          BRAZIL                         [32-38)                1        2      79
0-24 months   MAL-ED          INDIA                          >=38                   0       30     161
0-24 months   MAL-ED          INDIA                          >=38                   1        6     161
0-24 months   MAL-ED          INDIA                          <32                    0       38     161
0-24 months   MAL-ED          INDIA                          <32                    1       15     161
0-24 months   MAL-ED          INDIA                          [32-38)                0       57     161
0-24 months   MAL-ED          INDIA                          [32-38)                1       15     161
0-24 months   MAL-ED          NEPAL                          >=38                   0       16      79
0-24 months   MAL-ED          NEPAL                          >=38                   1        1      79
0-24 months   MAL-ED          NEPAL                          <32                    0       13      79
0-24 months   MAL-ED          NEPAL                          <32                    1        2      79
0-24 months   MAL-ED          NEPAL                          [32-38)                0       41      79
0-24 months   MAL-ED          NEPAL                          [32-38)                1        6      79
0-24 months   MAL-ED          PERU                           >=38                   0       24      85
0-24 months   MAL-ED          PERU                           >=38                   1        3      85
0-24 months   MAL-ED          PERU                           <32                    0       21      85
0-24 months   MAL-ED          PERU                           <32                    1        8      85
0-24 months   MAL-ED          PERU                           [32-38)                0       18      85
0-24 months   MAL-ED          PERU                           [32-38)                1       11      85
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                   0       53      90
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                   1       12      90
0-24 months   MAL-ED          SOUTH AFRICA                   <32                    0        9      90
0-24 months   MAL-ED          SOUTH AFRICA                   <32                    1        0      90
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)                0       11      90
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)                1        5      90
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                   0       20     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                   1       28     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                    0        4     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                    1       11     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)                0       14     100
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)                1       23     100
0-24 months   PROBIT          BELARUS                        >=38                   0      726   16277
0-24 months   PROBIT          BELARUS                        >=38                   1       18   16277
0-24 months   PROBIT          BELARUS                        <32                    0    12696   16277
0-24 months   PROBIT          BELARUS                        <32                    1      362   16277
0-24 months   PROBIT          BELARUS                        [32-38)                0     2416   16277
0-24 months   PROBIT          BELARUS                        [32-38)                1       59   16277
0-24 months   SAS-CompFeed    INDIA                          >=38                   0       28    1530
0-24 months   SAS-CompFeed    INDIA                          >=38                   1       23    1530
0-24 months   SAS-CompFeed    INDIA                          <32                    0      870    1530
0-24 months   SAS-CompFeed    INDIA                          <32                    1      409    1530
0-24 months   SAS-CompFeed    INDIA                          [32-38)                0      127    1530
0-24 months   SAS-CompFeed    INDIA                          [32-38)                1       73    1530
0-24 months   SAS-FoodSuppl   INDIA                          >=38                   0       18     418
0-24 months   SAS-FoodSuppl   INDIA                          >=38                   1       26     418
0-24 months   SAS-FoodSuppl   INDIA                          <32                    0      151     418
0-24 months   SAS-FoodSuppl   INDIA                          <32                    1      138     418
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)                0       48     418
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)                1       37     418
0-6 months    COHORTS         GUATEMALA                      >=38                   0      268    1052
0-6 months    COHORTS         GUATEMALA                      >=38                   1       45    1052
0-6 months    COHORTS         GUATEMALA                      <32                    0      444    1052
0-6 months    COHORTS         GUATEMALA                      <32                    1       40    1052
0-6 months    COHORTS         GUATEMALA                      [32-38)                0      234    1052
0-6 months    COHORTS         GUATEMALA                      [32-38)                1       21    1052
0-6 months    COHORTS         PHILIPPINES                    >=38                   0      298    2951
0-6 months    COHORTS         PHILIPPINES                    >=38                   1       32    2951
0-6 months    COHORTS         PHILIPPINES                    <32                    0     1966    2951
0-6 months    COHORTS         PHILIPPINES                    <32                    1      117    2951
0-6 months    COHORTS         PHILIPPINES                    [32-38)                0      502    2951
0-6 months    COHORTS         PHILIPPINES                    [32-38)                1       36    2951
0-6 months    LCNI-5          MALAWI                         >=38                   0        8      38
0-6 months    LCNI-5          MALAWI                         >=38                   1        1      38
0-6 months    LCNI-5          MALAWI                         <32                    0       17      38
0-6 months    LCNI-5          MALAWI                         <32                    1        4      38
0-6 months    LCNI-5          MALAWI                         [32-38)                0        8      38
0-6 months    LCNI-5          MALAWI                         [32-38)                1        0      38
0-6 months    MAL-ED          BANGLADESH                     >=38                   0       66     151
0-6 months    MAL-ED          BANGLADESH                     >=38                   1        3     151
0-6 months    MAL-ED          BANGLADESH                     <32                    0       28     151
0-6 months    MAL-ED          BANGLADESH                     <32                    1        2     151
0-6 months    MAL-ED          BANGLADESH                     [32-38)                0       49     151
0-6 months    MAL-ED          BANGLADESH                     [32-38)                1        3     151
0-6 months    MAL-ED          BRAZIL                         >=38                   0       27      79
0-6 months    MAL-ED          BRAZIL                         >=38                   1        3      79
0-6 months    MAL-ED          BRAZIL                         <32                    0       15      79
0-6 months    MAL-ED          BRAZIL                         <32                    1        3      79
0-6 months    MAL-ED          BRAZIL                         [32-38)                0       29      79
0-6 months    MAL-ED          BRAZIL                         [32-38)                1        2      79
0-6 months    MAL-ED          INDIA                          >=38                   0       34     161
0-6 months    MAL-ED          INDIA                          >=38                   1        2     161
0-6 months    MAL-ED          INDIA                          <32                    0       45     161
0-6 months    MAL-ED          INDIA                          <32                    1        8     161
0-6 months    MAL-ED          INDIA                          [32-38)                0       70     161
0-6 months    MAL-ED          INDIA                          [32-38)                1        2     161
0-6 months    MAL-ED          NEPAL                          >=38                   0       17      79
0-6 months    MAL-ED          NEPAL                          >=38                   1        0      79
0-6 months    MAL-ED          NEPAL                          <32                    0       14      79
0-6 months    MAL-ED          NEPAL                          <32                    1        1      79
0-6 months    MAL-ED          NEPAL                          [32-38)                0       45      79
0-6 months    MAL-ED          NEPAL                          [32-38)                1        2      79
0-6 months    MAL-ED          PERU                           >=38                   0       26      85
0-6 months    MAL-ED          PERU                           >=38                   1        1      85
0-6 months    MAL-ED          PERU                           <32                    0       24      85
0-6 months    MAL-ED          PERU                           <32                    1        5      85
0-6 months    MAL-ED          PERU                           [32-38)                0       24      85
0-6 months    MAL-ED          PERU                           [32-38)                1        5      85
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                   0       61      90
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                   1        4      90
0-6 months    MAL-ED          SOUTH AFRICA                   <32                    0        9      90
0-6 months    MAL-ED          SOUTH AFRICA                   <32                    1        0      90
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)                0       14      90
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)                1        2      90
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                   0       42     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                   1        6     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                    0       12     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                    1        3     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)                0       34     100
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)                1        3     100
0-6 months    PROBIT          BELARUS                        >=38                   0      734   16272
0-6 months    PROBIT          BELARUS                        >=38                   1        9   16272
0-6 months    PROBIT          BELARUS                        <32                    0    12918   16272
0-6 months    PROBIT          BELARUS                        <32                    1      137   16272
0-6 months    PROBIT          BELARUS                        [32-38)                0     2454   16272
0-6 months    PROBIT          BELARUS                        [32-38)                1       20   16272
0-6 months    SAS-CompFeed    INDIA                          >=38                   0       37    1527
0-6 months    SAS-CompFeed    INDIA                          >=38                   1       13    1527
0-6 months    SAS-CompFeed    INDIA                          <32                    0     1097    1527
0-6 months    SAS-CompFeed    INDIA                          <32                    1      180    1527
0-6 months    SAS-CompFeed    INDIA                          [32-38)                0      165    1527
0-6 months    SAS-CompFeed    INDIA                          [32-38)                1       35    1527
0-6 months    SAS-FoodSuppl   INDIA                          >=38                   0       36     416
0-6 months    SAS-FoodSuppl   INDIA                          >=38                   1        7     416
0-6 months    SAS-FoodSuppl   INDIA                          <32                    0      254     416
0-6 months    SAS-FoodSuppl   INDIA                          <32                    1       34     416
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)                0       76     416
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)                1        9     416


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/7a350ad7-1239-48a6-873f-3f1c24bb72df/8b0a2b71-5741-445f-b52b-b5dcd7e79912/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7a350ad7-1239-48a6-873f-3f1c24bb72df/8b0a2b71-5741-445f-b52b-b5dcd7e79912/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7a350ad7-1239-48a6-873f-3f1c24bb72df/8b0a2b71-5741-445f-b52b-b5dcd7e79912/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7a350ad7-1239-48a6-873f-3f1c24bb72df/8b0a2b71-5741-445f-b52b-b5dcd7e79912/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                0.3954736   0.3177174   0.4732298
0-24 months   COHORTS         GUATEMALA     <32                  NA                0.4358122   0.3910537   0.4805706
0-24 months   COHORTS         GUATEMALA     [32-38)              NA                0.5091910   0.4114867   0.6068953
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                0.3685978   0.3004736   0.4367219
0-24 months   COHORTS         PHILIPPINES   <32                  NA                0.3477612   0.3231273   0.3723950
0-24 months   COHORTS         PHILIPPINES   [32-38)              NA                0.3389353   0.2792924   0.3985783
0-24 months   MAL-ED          BANGLADESH    >=38                 NA                0.2318841   0.1319726   0.3317955
0-24 months   MAL-ED          BANGLADESH    <32                  NA                0.3000000   0.1354719   0.4645281
0-24 months   MAL-ED          BANGLADESH    [32-38)              NA                0.2115385   0.1001669   0.3229100
0-24 months   MAL-ED          INDIA         >=38                 NA                0.1666667   0.0445476   0.2887858
0-24 months   MAL-ED          INDIA         <32                  NA                0.2830189   0.1613654   0.4046724
0-24 months   MAL-ED          INDIA         [32-38)              NA                0.2083333   0.1142343   0.3024324
0-24 months   PROBIT          BELARUS       >=38                 NA                0.0230176   0.0097610   0.0362742
0-24 months   PROBIT          BELARUS       <32                  NA                0.0274899   0.0203566   0.0346233
0-24 months   PROBIT          BELARUS       [32-38)              NA                0.0245977   0.0146580   0.0345374
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                0.3856990   0.3371788   0.4342192
0-24 months   SAS-CompFeed    INDIA         <32                  NA                0.3313506   0.2747603   0.3879408
0-24 months   SAS-CompFeed    INDIA         [32-38)              NA                0.3925485   0.3055494   0.4795476
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                0.5940340   0.4500057   0.7380622
0-24 months   SAS-FoodSuppl   INDIA         <32                  NA                0.4747510   0.4169175   0.5325844
0-24 months   SAS-FoodSuppl   INDIA         [32-38)              NA                0.4220221   0.3153683   0.5286760
0-6 months    COHORTS         GUATEMALA     >=38                 NA                0.0911356   0.0538007   0.1284706
0-6 months    COHORTS         GUATEMALA     <32                  NA                0.0660579   0.0423942   0.0897217
0-6 months    COHORTS         GUATEMALA     [32-38)              NA                0.0771533   0.0270688   0.1272378
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                0.0451338   0.0183607   0.0719068
0-6 months    COHORTS         PHILIPPINES   <32                  NA                0.0570527   0.0448870   0.0692184
0-6 months    COHORTS         PHILIPPINES   [32-38)              NA                0.0694629   0.0339303   0.1049955
0-6 months    PROBIT          BELARUS       >=38                 NA                0.0121131   0.0029383   0.0212879
0-6 months    PROBIT          BELARUS       <32                  NA                0.0104941   0.0072135   0.0137747
0-6 months    PROBIT          BELARUS       [32-38)              NA                0.0080841   0.0035338   0.0126344
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                0.1621943   0.0956924   0.2286962
0-6 months    SAS-CompFeed    INDIA         <32                  NA                0.1272389   0.1129868   0.1414910
0-6 months    SAS-CompFeed    INDIA         [32-38)              NA                0.1583751   0.0856468   0.2311033
0-6 months    SAS-FoodSuppl   INDIA         >=38                 NA                0.1627907   0.0523146   0.2732668
0-6 months    SAS-FoodSuppl   INDIA         <32                  NA                0.1180556   0.0807444   0.1553667
0-6 months    SAS-FoodSuppl   INDIA         [32-38)              NA                0.1058824   0.0403930   0.1713717


### Parameter: E(Y)


agecat        studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS         GUATEMALA     NA                   NA                0.4650269   0.4379137   0.4921401
0-24 months   COHORTS         PHILIPPINES   NA                   NA                0.3602169   0.3428934   0.3775404
0-24 months   MAL-ED          BANGLADESH    NA                   NA                0.2384106   0.1702198   0.3066014
0-24 months   MAL-ED          INDIA         NA                   NA                0.2236025   0.1590417   0.2881632
0-24 months   PROBIT          BELARUS       NA                   NA                0.0269706   0.0196621   0.0342790
0-24 months   SAS-CompFeed    INDIA         NA                   NA                0.3300654   0.3020915   0.3580392
0-24 months   SAS-FoodSuppl   INDIA         NA                   NA                0.4808612   0.4329065   0.5288160
0-6 months    COHORTS         GUATEMALA     NA                   NA                0.1007605   0.0825622   0.1189587
0-6 months    COHORTS         PHILIPPINES   NA                   NA                0.0626906   0.0539432   0.0714380
0-6 months    PROBIT          BELARUS       NA                   NA                0.0102016   0.0069540   0.0134492
0-6 months    SAS-CompFeed    INDIA         NA                   NA                0.1493124   0.1303783   0.1682465
0-6 months    SAS-FoodSuppl   INDIA         NA                   NA                0.1201923   0.0889059   0.1514788


### Parameter: RR


agecat        studyid         country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   COHORTS         GUATEMALA     <32                  >=38              1.1020008   0.8837710   1.374118
0-24 months   COHORTS         GUATEMALA     [32-38)              >=38              1.2875475   0.9793602   1.692716
0-24 months   COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   COHORTS         PHILIPPINES   <32                  >=38              0.9434707   0.7746647   1.149061
0-24 months   COHORTS         PHILIPPINES   [32-38)              >=38              0.9195263   0.7129412   1.185972
0-24 months   MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED          BANGLADESH    <32                  >=38              1.2937500   0.6441055   2.598625
0-24 months   MAL-ED          BANGLADESH    [32-38)              >=38              0.9122596   0.4620194   1.801261
0-24 months   MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED          INDIA         <32                  >=38              1.6981132   0.7261684   3.970964
0-24 months   MAL-ED          INDIA         [32-38)              >=38              1.2500000   0.5285589   2.956151
0-24 months   PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   PROBIT          BELARUS       <32                  >=38              1.1943012   0.7254677   1.966118
0-24 months   PROBIT          BELARUS       [32-38)              >=38              1.0686472   0.6178973   1.848215
0-24 months   SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed    INDIA         <32                  >=38              0.8590911   0.7026747   1.050326
0-24 months   SAS-CompFeed    INDIA         [32-38)              >=38              1.0177586   0.8120723   1.275542
0-24 months   SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl   INDIA         <32                  >=38              0.7991984   0.6098298   1.047371
0-24 months   SAS-FoodSuppl   INDIA         [32-38)              >=38              0.7104343   0.5006791   1.008065
0-6 months    COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    COHORTS         GUATEMALA     <32                  >=38              0.7248309   0.4200561   1.250737
0-6 months    COHORTS         GUATEMALA     [32-38)              >=38              0.8465767   0.3926026   1.825490
0-6 months    COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    COHORTS         PHILIPPINES   <32                  >=38              1.2640796   0.6734657   2.372648
0-6 months    COHORTS         PHILIPPINES   [32-38)              >=38              1.5390449   0.7041402   3.363903
0-6 months    PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    PROBIT          BELARUS       <32                  >=38              0.8663432   0.4149040   1.808974
0-6 months    PROBIT          BELARUS       [32-38)              >=38              0.6673853   0.3045378   1.462554
0-6 months    SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed    INDIA         <32                  >=38              0.7844842   0.5013294   1.227567
0-6 months    SAS-CompFeed    INDIA         [32-38)              >=38              0.9764525   0.5455267   1.747778
0-6 months    SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl   INDIA         <32                  >=38              0.7251984   0.3430315   1.533133
0-6 months    SAS-FoodSuppl   INDIA         [32-38)              >=38              0.6504202   0.2596698   1.629171


### Parameter: PAR


agecat        studyid         country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.0695533   -0.0034972    0.1426038
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.0083809   -0.0747451    0.0579833
0-24 months   MAL-ED          BANGLADESH    >=38                 NA                 0.0065265   -0.0676987    0.0807518
0-24 months   MAL-ED          INDIA         >=38                 NA                 0.0569358   -0.0544732    0.1683448
0-24 months   PROBIT          BELARUS       >=38                 NA                 0.0039530   -0.0069220    0.0148280
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                -0.0556337   -0.1111385   -0.0001289
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                -0.1131727   -0.2501218    0.0237764
0-6 months    COHORTS         GUATEMALA     >=38                 NA                 0.0096248   -0.0237187    0.0429683
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                 0.0175568   -0.0085844    0.0436981
0-6 months    PROBIT          BELARUS       >=38                 NA                -0.0019115   -0.0102613    0.0064384
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                -0.0128820   -0.0860109    0.0602469
0-6 months    SAS-FoodSuppl   INDIA         >=38                 NA                -0.0425984   -0.1458489    0.0606521


### Parameter: PAF


agecat        studyid         country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS         GUATEMALA     >=38                 NA                 0.1495684   -0.0231885    0.2931567
0-24 months   COHORTS         PHILIPPINES   >=38                 NA                -0.0232662   -0.2251682    0.1453633
0-24 months   MAL-ED          BANGLADESH    >=38                 NA                 0.0273752   -0.3395046    0.2937695
0-24 months   MAL-ED          INDIA         >=38                 NA                 0.2546296   -0.4483342    0.6164028
0-24 months   PROBIT          BELARUS       >=38                 NA                 0.1465662   -0.3736143    0.4697571
0-24 months   SAS-CompFeed    INDIA         >=38                 NA                -0.1685535   -0.3579754   -0.0055537
0-24 months   SAS-FoodSuppl   INDIA         >=38                 NA                -0.2353542   -0.5575709    0.0202051
0-6 months    COHORTS         GUATEMALA     >=38                 NA                 0.0955218   -0.3036857    0.3724861
0-6 months    COHORTS         PHILIPPINES   >=38                 NA                 0.2800554   -0.2815085    0.5955390
0-6 months    PROBIT          BELARUS       >=38                 NA                -0.1873713   -1.3614428    0.4029707
0-6 months    SAS-CompFeed    INDIA         >=38                 NA                -0.0862753   -0.7132349    0.3112480
0-6 months    SAS-FoodSuppl   INDIA         >=38                 NA                -0.3544186   -1.5480213    0.2800493
