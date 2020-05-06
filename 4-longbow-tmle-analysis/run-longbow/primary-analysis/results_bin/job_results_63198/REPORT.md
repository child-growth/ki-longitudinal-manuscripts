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

agecat        studyid         country                        fage       ever_sstunted   n_cell       n  outcome_variable 
------------  --------------  -----------------------------  --------  --------------  -------  ------  -----------------
0-24 months   COHORTS         GUATEMALA                      >=38                   0      217    1301  ever_sstunted    
0-24 months   COHORTS         GUATEMALA                      >=38                   1      169    1301  ever_sstunted    
0-24 months   COHORTS         GUATEMALA                      <32                    0      329    1301  ever_sstunted    
0-24 months   COHORTS         GUATEMALA                      <32                    1      280    1301  ever_sstunted    
0-24 months   COHORTS         GUATEMALA                      [32-38)                0      150    1301  ever_sstunted    
0-24 months   COHORTS         GUATEMALA                      [32-38)                1      156    1301  ever_sstunted    
0-24 months   COHORTS         PHILIPPINES                    >=38                   0      177    2951  ever_sstunted    
0-24 months   COHORTS         PHILIPPINES                    >=38                   1      153    2951  ever_sstunted    
0-24 months   COHORTS         PHILIPPINES                    <32                    0     1365    2951  ever_sstunted    
0-24 months   COHORTS         PHILIPPINES                    <32                    1      718    2951  ever_sstunted    
0-24 months   COHORTS         PHILIPPINES                    [32-38)                0      346    2951  ever_sstunted    
0-24 months   COHORTS         PHILIPPINES                    [32-38)                1      192    2951  ever_sstunted    
0-24 months   LCNI-5          MALAWI                         >=38                   0       23     106  ever_sstunted    
0-24 months   LCNI-5          MALAWI                         >=38                   1        3     106  ever_sstunted    
0-24 months   LCNI-5          MALAWI                         <32                    0       42     106  ever_sstunted    
0-24 months   LCNI-5          MALAWI                         <32                    1       14     106  ever_sstunted    
0-24 months   LCNI-5          MALAWI                         [32-38)                0       15     106  ever_sstunted    
0-24 months   LCNI-5          MALAWI                         [32-38)                1        9     106  ever_sstunted    
0-24 months   MAL-ED          BANGLADESH                     >=38                   0       53     151  ever_sstunted    
0-24 months   MAL-ED          BANGLADESH                     >=38                   1       16     151  ever_sstunted    
0-24 months   MAL-ED          BANGLADESH                     <32                    0       21     151  ever_sstunted    
0-24 months   MAL-ED          BANGLADESH                     <32                    1        9     151  ever_sstunted    
0-24 months   MAL-ED          BANGLADESH                     [32-38)                0       41     151  ever_sstunted    
0-24 months   MAL-ED          BANGLADESH                     [32-38)                1       11     151  ever_sstunted    
0-24 months   MAL-ED          BRAZIL                         >=38                   0       27      79  ever_sstunted    
0-24 months   MAL-ED          BRAZIL                         >=38                   1        3      79  ever_sstunted    
0-24 months   MAL-ED          BRAZIL                         <32                    0       14      79  ever_sstunted    
0-24 months   MAL-ED          BRAZIL                         <32                    1        4      79  ever_sstunted    
0-24 months   MAL-ED          BRAZIL                         [32-38)                0       29      79  ever_sstunted    
0-24 months   MAL-ED          BRAZIL                         [32-38)                1        2      79  ever_sstunted    
0-24 months   MAL-ED          INDIA                          >=38                   0       30     161  ever_sstunted    
0-24 months   MAL-ED          INDIA                          >=38                   1        6     161  ever_sstunted    
0-24 months   MAL-ED          INDIA                          <32                    0       38     161  ever_sstunted    
0-24 months   MAL-ED          INDIA                          <32                    1       15     161  ever_sstunted    
0-24 months   MAL-ED          INDIA                          [32-38)                0       57     161  ever_sstunted    
0-24 months   MAL-ED          INDIA                          [32-38)                1       15     161  ever_sstunted    
0-24 months   MAL-ED          NEPAL                          >=38                   0       16      79  ever_sstunted    
0-24 months   MAL-ED          NEPAL                          >=38                   1        1      79  ever_sstunted    
0-24 months   MAL-ED          NEPAL                          <32                    0       13      79  ever_sstunted    
0-24 months   MAL-ED          NEPAL                          <32                    1        2      79  ever_sstunted    
0-24 months   MAL-ED          NEPAL                          [32-38)                0       41      79  ever_sstunted    
0-24 months   MAL-ED          NEPAL                          [32-38)                1        6      79  ever_sstunted    
0-24 months   MAL-ED          PERU                           >=38                   0       24      85  ever_sstunted    
0-24 months   MAL-ED          PERU                           >=38                   1        3      85  ever_sstunted    
0-24 months   MAL-ED          PERU                           <32                    0       21      85  ever_sstunted    
0-24 months   MAL-ED          PERU                           <32                    1        8      85  ever_sstunted    
0-24 months   MAL-ED          PERU                           [32-38)                0       18      85  ever_sstunted    
0-24 months   MAL-ED          PERU                           [32-38)                1       11      85  ever_sstunted    
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                   0       53      90  ever_sstunted    
0-24 months   MAL-ED          SOUTH AFRICA                   >=38                   1       12      90  ever_sstunted    
0-24 months   MAL-ED          SOUTH AFRICA                   <32                    0        9      90  ever_sstunted    
0-24 months   MAL-ED          SOUTH AFRICA                   <32                    1        0      90  ever_sstunted    
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)                0       11      90  ever_sstunted    
0-24 months   MAL-ED          SOUTH AFRICA                   [32-38)                1        5      90  ever_sstunted    
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                   0       20     100  ever_sstunted    
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                   1       28     100  ever_sstunted    
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                    0        4     100  ever_sstunted    
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                    1       11     100  ever_sstunted    
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)                0       14     100  ever_sstunted    
0-24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)                1       23     100  ever_sstunted    
0-24 months   PROBIT          BELARUS                        >=38                   0      726   16277  ever_sstunted    
0-24 months   PROBIT          BELARUS                        >=38                   1       18   16277  ever_sstunted    
0-24 months   PROBIT          BELARUS                        <32                    0    12696   16277  ever_sstunted    
0-24 months   PROBIT          BELARUS                        <32                    1      362   16277  ever_sstunted    
0-24 months   PROBIT          BELARUS                        [32-38)                0     2416   16277  ever_sstunted    
0-24 months   PROBIT          BELARUS                        [32-38)                1       59   16277  ever_sstunted    
0-24 months   SAS-CompFeed    INDIA                          >=38                   0       28    1530  ever_sstunted    
0-24 months   SAS-CompFeed    INDIA                          >=38                   1       23    1530  ever_sstunted    
0-24 months   SAS-CompFeed    INDIA                          <32                    0      870    1530  ever_sstunted    
0-24 months   SAS-CompFeed    INDIA                          <32                    1      409    1530  ever_sstunted    
0-24 months   SAS-CompFeed    INDIA                          [32-38)                0      127    1530  ever_sstunted    
0-24 months   SAS-CompFeed    INDIA                          [32-38)                1       73    1530  ever_sstunted    
0-24 months   SAS-FoodSuppl   INDIA                          >=38                   0       18     418  ever_sstunted    
0-24 months   SAS-FoodSuppl   INDIA                          >=38                   1       26     418  ever_sstunted    
0-24 months   SAS-FoodSuppl   INDIA                          <32                    0      151     418  ever_sstunted    
0-24 months   SAS-FoodSuppl   INDIA                          <32                    1      138     418  ever_sstunted    
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)                0       48     418  ever_sstunted    
0-24 months   SAS-FoodSuppl   INDIA                          [32-38)                1       37     418  ever_sstunted    
0-6 months    COHORTS         GUATEMALA                      >=38                   0      268    1052  ever_sstunted    
0-6 months    COHORTS         GUATEMALA                      >=38                   1       45    1052  ever_sstunted    
0-6 months    COHORTS         GUATEMALA                      <32                    0      444    1052  ever_sstunted    
0-6 months    COHORTS         GUATEMALA                      <32                    1       40    1052  ever_sstunted    
0-6 months    COHORTS         GUATEMALA                      [32-38)                0      234    1052  ever_sstunted    
0-6 months    COHORTS         GUATEMALA                      [32-38)                1       21    1052  ever_sstunted    
0-6 months    COHORTS         PHILIPPINES                    >=38                   0      298    2951  ever_sstunted    
0-6 months    COHORTS         PHILIPPINES                    >=38                   1       32    2951  ever_sstunted    
0-6 months    COHORTS         PHILIPPINES                    <32                    0     1966    2951  ever_sstunted    
0-6 months    COHORTS         PHILIPPINES                    <32                    1      117    2951  ever_sstunted    
0-6 months    COHORTS         PHILIPPINES                    [32-38)                0      502    2951  ever_sstunted    
0-6 months    COHORTS         PHILIPPINES                    [32-38)                1       36    2951  ever_sstunted    
0-6 months    LCNI-5          MALAWI                         >=38                   0        8      38  ever_sstunted    
0-6 months    LCNI-5          MALAWI                         >=38                   1        1      38  ever_sstunted    
0-6 months    LCNI-5          MALAWI                         <32                    0       17      38  ever_sstunted    
0-6 months    LCNI-5          MALAWI                         <32                    1        4      38  ever_sstunted    
0-6 months    LCNI-5          MALAWI                         [32-38)                0        8      38  ever_sstunted    
0-6 months    LCNI-5          MALAWI                         [32-38)                1        0      38  ever_sstunted    
0-6 months    MAL-ED          BANGLADESH                     >=38                   0       66     151  ever_sstunted    
0-6 months    MAL-ED          BANGLADESH                     >=38                   1        3     151  ever_sstunted    
0-6 months    MAL-ED          BANGLADESH                     <32                    0       28     151  ever_sstunted    
0-6 months    MAL-ED          BANGLADESH                     <32                    1        2     151  ever_sstunted    
0-6 months    MAL-ED          BANGLADESH                     [32-38)                0       49     151  ever_sstunted    
0-6 months    MAL-ED          BANGLADESH                     [32-38)                1        3     151  ever_sstunted    
0-6 months    MAL-ED          BRAZIL                         >=38                   0       27      79  ever_sstunted    
0-6 months    MAL-ED          BRAZIL                         >=38                   1        3      79  ever_sstunted    
0-6 months    MAL-ED          BRAZIL                         <32                    0       15      79  ever_sstunted    
0-6 months    MAL-ED          BRAZIL                         <32                    1        3      79  ever_sstunted    
0-6 months    MAL-ED          BRAZIL                         [32-38)                0       29      79  ever_sstunted    
0-6 months    MAL-ED          BRAZIL                         [32-38)                1        2      79  ever_sstunted    
0-6 months    MAL-ED          INDIA                          >=38                   0       34     161  ever_sstunted    
0-6 months    MAL-ED          INDIA                          >=38                   1        2     161  ever_sstunted    
0-6 months    MAL-ED          INDIA                          <32                    0       45     161  ever_sstunted    
0-6 months    MAL-ED          INDIA                          <32                    1        8     161  ever_sstunted    
0-6 months    MAL-ED          INDIA                          [32-38)                0       70     161  ever_sstunted    
0-6 months    MAL-ED          INDIA                          [32-38)                1        2     161  ever_sstunted    
0-6 months    MAL-ED          NEPAL                          >=38                   0       17      79  ever_sstunted    
0-6 months    MAL-ED          NEPAL                          >=38                   1        0      79  ever_sstunted    
0-6 months    MAL-ED          NEPAL                          <32                    0       14      79  ever_sstunted    
0-6 months    MAL-ED          NEPAL                          <32                    1        1      79  ever_sstunted    
0-6 months    MAL-ED          NEPAL                          [32-38)                0       45      79  ever_sstunted    
0-6 months    MAL-ED          NEPAL                          [32-38)                1        2      79  ever_sstunted    
0-6 months    MAL-ED          PERU                           >=38                   0       26      85  ever_sstunted    
0-6 months    MAL-ED          PERU                           >=38                   1        1      85  ever_sstunted    
0-6 months    MAL-ED          PERU                           <32                    0       24      85  ever_sstunted    
0-6 months    MAL-ED          PERU                           <32                    1        5      85  ever_sstunted    
0-6 months    MAL-ED          PERU                           [32-38)                0       24      85  ever_sstunted    
0-6 months    MAL-ED          PERU                           [32-38)                1        5      85  ever_sstunted    
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                   0       61      90  ever_sstunted    
0-6 months    MAL-ED          SOUTH AFRICA                   >=38                   1        4      90  ever_sstunted    
0-6 months    MAL-ED          SOUTH AFRICA                   <32                    0        9      90  ever_sstunted    
0-6 months    MAL-ED          SOUTH AFRICA                   <32                    1        0      90  ever_sstunted    
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)                0       14      90  ever_sstunted    
0-6 months    MAL-ED          SOUTH AFRICA                   [32-38)                1        2      90  ever_sstunted    
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                   0       42     100  ever_sstunted    
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                   1        6     100  ever_sstunted    
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                    0       12     100  ever_sstunted    
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                    1        3     100  ever_sstunted    
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)                0       34     100  ever_sstunted    
0-6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)                1        3     100  ever_sstunted    
0-6 months    PROBIT          BELARUS                        >=38                   0      734   16272  ever_sstunted    
0-6 months    PROBIT          BELARUS                        >=38                   1        9   16272  ever_sstunted    
0-6 months    PROBIT          BELARUS                        <32                    0    12918   16272  ever_sstunted    
0-6 months    PROBIT          BELARUS                        <32                    1      137   16272  ever_sstunted    
0-6 months    PROBIT          BELARUS                        [32-38)                0     2454   16272  ever_sstunted    
0-6 months    PROBIT          BELARUS                        [32-38)                1       20   16272  ever_sstunted    
0-6 months    SAS-CompFeed    INDIA                          >=38                   0       37    1527  ever_sstunted    
0-6 months    SAS-CompFeed    INDIA                          >=38                   1       13    1527  ever_sstunted    
0-6 months    SAS-CompFeed    INDIA                          <32                    0     1097    1527  ever_sstunted    
0-6 months    SAS-CompFeed    INDIA                          <32                    1      180    1527  ever_sstunted    
0-6 months    SAS-CompFeed    INDIA                          [32-38)                0      165    1527  ever_sstunted    
0-6 months    SAS-CompFeed    INDIA                          [32-38)                1       35    1527  ever_sstunted    
0-6 months    SAS-FoodSuppl   INDIA                          >=38                   0       36     416  ever_sstunted    
0-6 months    SAS-FoodSuppl   INDIA                          >=38                   1        7     416  ever_sstunted    
0-6 months    SAS-FoodSuppl   INDIA                          <32                    0      254     416  ever_sstunted    
0-6 months    SAS-FoodSuppl   INDIA                          <32                    1       34     416  ever_sstunted    
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)                0       76     416  ever_sstunted    
0-6 months    SAS-FoodSuppl   INDIA                          [32-38)                1        9     416  ever_sstunted    


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
