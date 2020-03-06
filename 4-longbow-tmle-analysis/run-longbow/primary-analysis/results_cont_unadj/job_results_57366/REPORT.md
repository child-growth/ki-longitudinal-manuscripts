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

**Outcome Variable:** haz

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

agecat      studyid         country                        fage       n_cell       n
----------  --------------  -----------------------------  --------  -------  ------
Birth       COHORTS         GUATEMALA                      >=38          245     823
Birth       COHORTS         GUATEMALA                      <32           380     823
Birth       COHORTS         GUATEMALA                      [32-38)       198     823
Birth       COHORTS         PHILIPPINES                    >=38          328    2944
Birth       COHORTS         PHILIPPINES                    <32          2079    2944
Birth       COHORTS         PHILIPPINES                    [32-38)       537    2944
Birth       MAL-ED          BANGLADESH                     >=38           63     133
Birth       MAL-ED          BANGLADESH                     <32            25     133
Birth       MAL-ED          BANGLADESH                     [32-38)        45     133
Birth       MAL-ED          BRAZIL                         >=38            6      18
Birth       MAL-ED          BRAZIL                         <32             1      18
Birth       MAL-ED          BRAZIL                         [32-38)        11      18
Birth       MAL-ED          INDIA                          >=38            7      27
Birth       MAL-ED          INDIA                          <32             9      27
Birth       MAL-ED          INDIA                          [32-38)        11      27
Birth       MAL-ED          NEPAL                          >=38            2       9
Birth       MAL-ED          NEPAL                          <32             2       9
Birth       MAL-ED          NEPAL                          [32-38)         5       9
Birth       MAL-ED          PERU                           >=38           23      69
Birth       MAL-ED          PERU                           <32            22      69
Birth       MAL-ED          PERU                           [32-38)        24      69
Birth       MAL-ED          SOUTH AFRICA                   >=38           17      31
Birth       MAL-ED          SOUTH AFRICA                   <32             5      31
Birth       MAL-ED          SOUTH AFRICA                   [32-38)         9      31
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           19      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      46
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      46
Birth       PROBIT          BELARUS                        >=38          606   13399
Birth       PROBIT          BELARUS                        <32         10732   13399
Birth       PROBIT          BELARUS                        [32-38)      2061   13399
Birth       SAS-CompFeed    INDIA                          >=38           40    1249
Birth       SAS-CompFeed    INDIA                          <32          1045    1249
Birth       SAS-CompFeed    INDIA                          [32-38)       164    1249
6 months    COHORTS         GUATEMALA                      >=38          275     929
6 months    COHORTS         GUATEMALA                      <32           421     929
6 months    COHORTS         GUATEMALA                      [32-38)       233     929
6 months    COHORTS         PHILIPPINES                    >=38          300    2624
6 months    COHORTS         PHILIPPINES                    <32          1829    2624
6 months    COHORTS         PHILIPPINES                    [32-38)       495    2624
6 months    LCNI-5          MALAWI                         >=38           26     106
6 months    LCNI-5          MALAWI                         <32            56     106
6 months    LCNI-5          MALAWI                         [32-38)        24     106
6 months    MAL-ED          BANGLADESH                     >=38           69     150
6 months    MAL-ED          BANGLADESH                     <32            30     150
6 months    MAL-ED          BANGLADESH                     [32-38)        51     150
6 months    MAL-ED          BRAZIL                         >=38           30      79
6 months    MAL-ED          BRAZIL                         <32            18      79
6 months    MAL-ED          BRAZIL                         [32-38)        31      79
6 months    MAL-ED          INDIA                          >=38           36     161
6 months    MAL-ED          INDIA                          <32            53     161
6 months    MAL-ED          INDIA                          [32-38)        72     161
6 months    MAL-ED          NEPAL                          >=38           17      79
6 months    MAL-ED          NEPAL                          <32            15      79
6 months    MAL-ED          NEPAL                          [32-38)        47      79
6 months    MAL-ED          PERU                           >=38           27      83
6 months    MAL-ED          PERU                           <32            28      83
6 months    MAL-ED          PERU                           [32-38)        28      83
6 months    MAL-ED          SOUTH AFRICA                   >=38           64      89
6 months    MAL-ED          SOUTH AFRICA                   <32             9      89
6 months    MAL-ED          SOUTH AFRICA                   [32-38)        16      89
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
6 months    PROBIT          BELARUS                        >=38          701   15182
6 months    PROBIT          BELARUS                        <32         12175   15182
6 months    PROBIT          BELARUS                        [32-38)      2306   15182
6 months    SAS-CompFeed    INDIA                          >=38           44    1333
6 months    SAS-CompFeed    INDIA                          <32          1125    1333
6 months    SAS-CompFeed    INDIA                          [32-38)       164    1333
6 months    SAS-FoodSuppl   INDIA                          >=38           39     380
6 months    SAS-FoodSuppl   INDIA                          <32           264     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)        77     380
24 months   COHORTS         GUATEMALA                      >=38          285    1021
24 months   COHORTS         GUATEMALA                      <32           491    1021
24 months   COHORTS         GUATEMALA                      [32-38)       245    1021
24 months   COHORTS         PHILIPPINES                    >=38          270    2371
24 months   COHORTS         PHILIPPINES                    <32          1666    2371
24 months   COHORTS         PHILIPPINES                    [32-38)       435    2371
24 months   LCNI-5          MALAWI                         >=38           21      74
24 months   LCNI-5          MALAWI                         <32            37      74
24 months   LCNI-5          MALAWI                         [32-38)        16      74
24 months   MAL-ED          BANGLADESH                     >=38           69     151
24 months   MAL-ED          BANGLADESH                     <32            30     151
24 months   MAL-ED          BANGLADESH                     [32-38)        52     151
24 months   MAL-ED          BRAZIL                         >=38           30      79
24 months   MAL-ED          BRAZIL                         <32            18      79
24 months   MAL-ED          BRAZIL                         [32-38)        31      79
24 months   MAL-ED          INDIA                          >=38           36     161
24 months   MAL-ED          INDIA                          <32            53     161
24 months   MAL-ED          INDIA                          [32-38)        72     161
24 months   MAL-ED          NEPAL                          >=38           17      79
24 months   MAL-ED          NEPAL                          <32            15      79
24 months   MAL-ED          NEPAL                          [32-38)        47      79
24 months   MAL-ED          PERU                           >=38           26      79
24 months   MAL-ED          PERU                           <32            27      79
24 months   MAL-ED          PERU                           [32-38)        26      79
24 months   MAL-ED          SOUTH AFRICA                   >=38           65      89
24 months   MAL-ED          SOUTH AFRICA                   <32             8      89
24 months   MAL-ED          SOUTH AFRICA                   [32-38)        16      89
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
24 months   PROBIT          BELARUS                        >=38          178    3909
24 months   PROBIT          BELARUS                        <32          3143    3909
24 months   PROBIT          BELARUS                        [32-38)       588    3909


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

* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/be8deb14-268a-4fff-831c-f48e754f9423/695dd18e-b5db-45ae-b27c-eeeb7dd5e591/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/be8deb14-268a-4fff-831c-f48e754f9423/695dd18e-b5db-45ae-b27c-eeeb7dd5e591/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/be8deb14-268a-4fff-831c-f48e754f9423/695dd18e-b5db-45ae-b27c-eeeb7dd5e591/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                 0.1978367    0.0395926    0.3560809
Birth       COHORTS         GUATEMALA                      <32                  NA                 0.0741053   -0.0485386    0.1967491
Birth       COHORTS         GUATEMALA                      [32-38)              NA                 0.1853535    0.0041042    0.3666029
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.2416159   -0.3642496   -0.1189821
Birth       COHORTS         PHILIPPINES                    <32                  NA                -0.2615825   -0.3083191   -0.2148459
Birth       COHORTS         PHILIPPINES                    [32-38)              NA                -0.1932775   -0.2878017   -0.0987532
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.9523810   -1.1888190   -0.7159429
Birth       MAL-ED          BANGLADESH                     <32                  NA                -1.2248000   -1.5636878   -0.8859122
Birth       MAL-ED          BANGLADESH                     [32-38)              NA                -0.9715556   -1.2688746   -0.6742365
Birth       MAL-ED          INDIA                          >=38                 NA                -1.1171429   -1.6489224   -0.5853634
Birth       MAL-ED          INDIA                          <32                  NA                -1.6666667   -2.4558740   -0.8774593
Birth       MAL-ED          INDIA                          [32-38)              NA                -1.2445455   -1.9691474   -0.5199435
Birth       MAL-ED          PERU                           >=38                 NA                -0.4482609   -0.7320418   -0.1644800
Birth       MAL-ED          PERU                           <32                  NA                -1.0668182   -1.4955901   -0.6380462
Birth       MAL-ED          PERU                           [32-38)              NA                -1.2762500   -1.5757021   -0.9767979
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.7005882   -1.3189739   -0.0822026
Birth       MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4560000   -1.3078853    0.3958853
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.9533333   -1.5323681   -0.3742986
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.1921053   -1.7757068   -0.6085037
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.4211111   -1.9248904   -0.9173319
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.8288889   -1.1916650   -0.4661127
Birth       PROBIT          BELARUS                        >=38                 NA                 1.4097360    1.1970991    1.6223729
Birth       PROBIT          BELARUS                        <32                  NA                 1.2960198    1.1388832    1.4531565
Birth       PROBIT          BELARUS                        [32-38)              NA                 1.4170281    1.2336383    1.6004180
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -1.4300000   -1.8539442   -1.0060558
Birth       SAS-CompFeed    INDIA                          <32                  NA                -1.4298086   -1.5081097   -1.3515075
Birth       SAS-CompFeed    INDIA                          [32-38)              NA                -1.4313415   -1.5543738   -1.3083092
6 months    COHORTS         GUATEMALA                      >=38                 NA                -1.8204364   -1.9527675   -1.6881052
6 months    COHORTS         GUATEMALA                      <32                  NA                -1.7464133   -1.8466735   -1.6461531
6 months    COHORTS         GUATEMALA                      [32-38)              NA                -1.8999571   -2.0350447   -1.7648695
6 months    COHORTS         PHILIPPINES                    >=38                 NA                -1.3657000   -1.4995714   -1.2318286
6 months    COHORTS         PHILIPPINES                    <32                  NA                -1.1109021   -1.1609329   -1.0608714
6 months    COHORTS         PHILIPPINES                    [32-38)              NA                -1.1220000   -1.2192627   -1.0247373
6 months    LCNI-5          MALAWI                         >=38                 NA                -1.4588462   -1.7066936   -1.2109987
6 months    LCNI-5          MALAWI                         <32                  NA                -1.5869643   -1.8741759   -1.2997526
6 months    LCNI-5          MALAWI                         [32-38)              NA                -1.8766667   -2.2294620   -1.5238713
6 months    MAL-ED          BANGLADESH                     >=38                 NA                -1.0441304   -1.2430463   -0.8452146
6 months    MAL-ED          BANGLADESH                     <32                  NA                -1.6143333   -1.8804013   -1.3482654
6 months    MAL-ED          BANGLADESH                     [32-38)              NA                -1.1613725   -1.3776614   -0.9450837
6 months    MAL-ED          BRAZIL                         >=38                 NA                 0.1699444   -0.1381317    0.4780206
6 months    MAL-ED          BRAZIL                         <32                  NA                -0.2418519   -0.8192651    0.3355614
6 months    MAL-ED          BRAZIL                         [32-38)              NA                 0.1144086   -0.2265899    0.4554071
6 months    MAL-ED          INDIA                          >=38                 NA                -1.1352315   -1.4804356   -0.7900273
6 months    MAL-ED          INDIA                          <32                  NA                -1.3481447   -1.6177637   -1.0785256
6 months    MAL-ED          INDIA                          [32-38)              NA                -1.0738889   -1.2586364   -0.8891413
6 months    MAL-ED          NEPAL                          >=38                 NA                -0.6425490   -1.0628509   -0.2222472
6 months    MAL-ED          NEPAL                          <32                  NA                -0.6741111   -1.1092784   -0.2389438
6 months    MAL-ED          NEPAL                          [32-38)              NA                -0.7756028   -1.0065220   -0.5446836
6 months    MAL-ED          PERU                           >=38                 NA                -0.9891358   -1.1947142   -0.7835574
6 months    MAL-ED          PERU                           <32                  NA                -1.3883333   -1.7815123   -0.9951544
6 months    MAL-ED          PERU                           [32-38)              NA                -1.6055357   -2.0041955   -1.2068759
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.8367188   -1.0969700   -0.5764675
6 months    MAL-ED          SOUTH AFRICA                   <32                  NA                -0.7000000   -1.2227635   -0.1772365
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.3092708   -1.7716326   -0.8469090
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -1.4595139   -1.7392432   -1.1797845
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -1.6463333   -2.2082852   -1.0843815
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -1.4242342   -1.7019988   -1.1464697
6 months    PROBIT          BELARUS                        >=38                 NA                 0.1019971   -0.0337122    0.2377065
6 months    PROBIT          BELARUS                        <32                  NA                 0.0969279    0.0025185    0.1913372
6 months    PROBIT          BELARUS                        [32-38)              NA                 0.1595403    0.0613000    0.2577807
6 months    SAS-CompFeed    INDIA                          >=38                 NA                -2.1211364   -2.5806120   -1.6616607
6 months    SAS-CompFeed    INDIA                          <32                  NA                -1.3568978   -1.4456852   -1.2681103
6 months    SAS-CompFeed    INDIA                          [32-38)              NA                -1.5073780   -1.6744729   -1.3402832
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -2.1066667   -2.5093176   -1.7040158
6 months    SAS-FoodSuppl   INDIA                          <32                  NA                -1.8650758   -1.9997524   -1.7303991
6 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                -1.9085714   -2.1452548   -1.6718881
24 months   COHORTS         GUATEMALA                      >=38                 NA                -2.9245614   -3.0483581   -2.8007647
24 months   COHORTS         GUATEMALA                      <32                  NA                -2.9658248   -3.0596667   -2.8719830
24 months   COHORTS         GUATEMALA                      [32-38)              NA                -3.0845714   -3.2189459   -2.9501969
24 months   COHORTS         PHILIPPINES                    >=38                 NA                -2.6318889   -2.7690592   -2.4947185
24 months   COHORTS         PHILIPPINES                    <32                  NA                -2.3855522   -2.4394037   -2.3317007
24 months   COHORTS         PHILIPPINES                    [32-38)              NA                -2.4228046   -2.5293190   -2.3162902
24 months   LCNI-5          MALAWI                         >=38                 NA                -1.7604762   -2.0821608   -1.4387916
24 months   LCNI-5          MALAWI                         <32                  NA                -1.8729730   -2.1761573   -1.5697887
24 months   LCNI-5          MALAWI                         [32-38)              NA                -1.6056250   -2.0458596   -1.1653904
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -1.9106522   -2.1269008   -1.6944036
24 months   MAL-ED          BANGLADESH                     <32                  NA                -2.2170000   -2.5344597   -1.8995403
24 months   MAL-ED          BANGLADESH                     [32-38)              NA                -1.9624038   -2.1867695   -1.7380382
24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.3173889    0.0267576    0.6080202
24 months   MAL-ED          BRAZIL                         <32                  NA                -0.0855556   -0.5372780    0.3661669
24 months   MAL-ED          BRAZIL                         [32-38)              NA                 0.0906452   -0.3232533    0.5045437
24 months   MAL-ED          INDIA                          >=38                 NA                -1.6880556   -2.0066456   -1.3694655
24 months   MAL-ED          INDIA                          <32                  NA                -2.0432075   -2.3220851   -1.7643300
24 months   MAL-ED          INDIA                          [32-38)              NA                -1.8566667   -2.0696098   -1.6437235
24 months   MAL-ED          NEPAL                          >=38                 NA                -1.3308824   -1.7524317   -0.9093330
24 months   MAL-ED          NEPAL                          <32                  NA                -1.5196667   -2.0299483   -1.0093850
24 months   MAL-ED          NEPAL                          [32-38)              NA                -1.6169149   -1.8392736   -1.3945562
24 months   MAL-ED          PERU                           >=38                 NA                -1.5500000   -1.8243054   -1.2756946
24 months   MAL-ED          PERU                           <32                  NA                -1.6946296   -2.0239999   -1.3652594
24 months   MAL-ED          PERU                           [32-38)              NA                -1.8608974   -2.2311530   -1.4906419
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -1.5308462   -1.7744053   -1.2872870
24 months   MAL-ED          SOUTH AFRICA                   <32                  NA                -0.8868750   -1.6337972   -0.1399528
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                -1.5810417   -2.0645844   -1.0974989
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -2.6170833   -2.8722781   -2.3618885
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -2.9996667   -3.5461502   -2.4531831
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -2.8613514   -3.1922714   -2.5304313
24 months   PROBIT          BELARUS                        >=38                 NA                -0.0008146   -0.3548975    0.3532682
24 months   PROBIT          BELARUS                        <32                  NA                -0.1543668   -0.4778658    0.1691321
24 months   PROBIT          BELARUS                        [32-38)              NA                -0.0934552   -0.3114571    0.1245467


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      NA                   NA                 0.1377035    0.0520086    0.2233984
Birth       COHORTS         PHILIPPINES                    NA                   NA                -0.2468988   -0.2865742   -0.2072233
Birth       MAL-ED          BANGLADESH                     NA                   NA                -1.0100752   -1.1744939   -0.8456565
Birth       MAL-ED          INDIA                          NA                   NA                -1.3522222   -1.7800602   -0.9243843
Birth       MAL-ED          PERU                           NA                   NA                -0.9334783   -1.1468995   -0.7200571
Birth       MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7345161   -1.1414567   -0.3275756
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.0947826   -1.3988341   -0.7907311
Birth       PROBIT          BELARUS                        NA                   NA                 1.3197761    1.1597902    1.4797620
Birth       SAS-CompFeed    INDIA                          NA                   NA                -1.4300160   -1.5090211   -1.3510109
6 months    COHORTS         GUATEMALA                      NA                   NA                -1.8068353   -1.8758487   -1.7378219
6 months    COHORTS         PHILIPPINES                    NA                   NA                -1.1421265   -1.1845116   -1.0997415
6 months    LCNI-5          MALAWI                         NA                   NA                -1.6211321   -1.8052501   -1.4370141
6 months    MAL-ED          BANGLADESH                     NA                   NA                -1.1980333   -1.3314438   -1.0646229
6 months    MAL-ED          BRAZIL                         NA                   NA                 0.0543249   -0.1697391    0.2783889
6 months    MAL-ED          INDIA                          NA                   NA                -1.1778882   -1.3228601   -1.0329163
6 months    MAL-ED          NEPAL                          NA                   NA                -0.7277004   -0.9122329   -0.5431679
6 months    MAL-ED          PERU                           NA                   NA                -1.3317470   -1.5395361   -1.1239579
6 months    MAL-ED          SOUTH AFRICA                   NA                   NA                -0.9078464   -1.1231179   -0.6925750
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4744833   -1.6639782   -1.2849884
6 months    PROBIT          BELARUS                        NA                   NA                 0.1066722    0.0154121    0.1979322
6 months    SAS-CompFeed    INDIA                          NA                   NA                -1.4006377   -1.4802862   -1.3209891
6 months    SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
24 months   COHORTS         GUATEMALA                      NA                   NA                -2.9828012   -3.0482527   -2.9173497
24 months   COHORTS         PHILIPPINES                    NA                   NA                -2.4204386   -2.4659064   -2.3749708
24 months   LCNI-5          MALAWI                         NA                   NA                -1.7832432   -1.9856110   -1.5808754
24 months   MAL-ED          BANGLADESH                     NA                   NA                -1.9893377   -2.1309533   -1.8477222
24 months   MAL-ED          BRAZIL                         NA                   NA                 0.1366034   -0.0878045    0.3610113
24 months   MAL-ED          INDIA                          NA                   NA                -1.8803727   -2.0319827   -1.7287626
24 months   MAL-ED          NEPAL                          NA                   NA                -1.5368987   -1.7259939   -1.3478035
24 months   MAL-ED          PERU                           NA                   NA                -1.7017511   -1.8926845   -1.5108176
24 months   MAL-ED          SOUTH AFRICA                   NA                   NA                -1.4819850   -1.6947019   -1.2692681
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.7648500   -2.9586982   -2.5710018
24 months   PROBIT          BELARUS                        NA                   NA                -0.1382122   -0.4196601    0.1432356


### Parameter: ATE


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       COHORTS         GUATEMALA                      <32                  >=38              -0.1237315   -0.3239382    0.0764752
Birth       COHORTS         GUATEMALA                      [32-38)              >=38              -0.0124832   -0.2530919    0.2281255
Birth       COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       COHORTS         PHILIPPINES                    <32                  >=38              -0.0199666   -0.1512044    0.1112711
Birth       COHORTS         PHILIPPINES                    [32-38)              >=38               0.0483384   -0.1064966    0.2031733
Birth       MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     <32                  >=38              -0.2724190   -0.6856356    0.1407975
Birth       MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0191746   -0.3990451    0.3606959
Birth       MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          <32                  >=38              -0.5495238   -1.5011738    0.4021262
Birth       MAL-ED          INDIA                          [32-38)              >=38              -0.1274026   -1.0262004    0.7713952
Birth       MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           <32                  >=38              -0.6185573   -1.1327333   -0.1043813
Birth       MAL-ED          PERU                           [32-38)              >=38              -0.8279891   -1.2405460   -0.4154323
Birth       MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          SOUTH AFRICA                   <32                  >=38               0.2445882   -0.8080795    1.2972560
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.2527451   -1.0999063    0.5944161
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2290058   -0.9999691    0.5419574
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.3632164   -0.3239497    1.0503825
Birth       PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS                        <32                  >=38              -0.1137161   -0.2257434   -0.0016889
Birth       PROBIT          BELARUS                        [32-38)              >=38               0.0072922   -0.1021993    0.1167836
Birth       SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA                          <32                  >=38               0.0001914   -0.4364635    0.4368463
Birth       SAS-CompFeed    INDIA                          [32-38)              >=38              -0.0013415   -0.3804953    0.3778124
6 months    COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA                      <32                  >=38               0.0740231   -0.0920000    0.2400461
6 months    COHORTS         GUATEMALA                      [32-38)              >=38              -0.0795207   -0.2686244    0.1095829
6 months    COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         PHILIPPINES                    <32                  >=38               0.2547979    0.1118831    0.3977126
6 months    COHORTS         PHILIPPINES                    [32-38)              >=38               0.2437000    0.0782262    0.4091738
6 months    LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI                         <32                  >=38              -0.1281181   -0.5074846    0.2512483
6 months    LCNI-5          MALAWI                         [32-38)              >=38              -0.4178205   -0.8489735    0.0133325
6 months    MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     <32                  >=38              -0.5702029   -0.9024072   -0.2379986
6 months    MAL-ED          BANGLADESH                     [32-38)              >=38              -0.1172421   -0.4110931    0.1766088
6 months    MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BRAZIL                         <32                  >=38              -0.4117963   -1.0662556    0.2426630
6 months    MAL-ED          BRAZIL                         [32-38)              >=38              -0.0555358   -0.5150910    0.4040193
6 months    MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          INDIA                          <32                  >=38              -0.2129132   -0.6509318    0.2251054
6 months    MAL-ED          INDIA                          [32-38)              >=38               0.0613426   -0.3301897    0.4528749
6 months    MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          <32                  >=38              -0.0315621   -0.6365614    0.5734373
6 months    MAL-ED          NEPAL                          [32-38)              >=38              -0.1330538   -0.6126133    0.3465057
6 months    MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           <32                  >=38              -0.3991975   -0.8428778    0.0444827
6 months    MAL-ED          PERU                           [32-38)              >=38              -0.6163999   -1.0649443   -0.1678555
6 months    MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          SOUTH AFRICA                   <32                  >=38               0.1367188   -0.4472439    0.7206814
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.4725521   -1.0031265    0.0580223
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.1868194   -0.8145442    0.4409053
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0352797   -0.3589305    0.4294898
6 months    PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS                        <32                  >=38              -0.0050693   -0.1340004    0.1238618
6 months    PROBIT          BELARUS                        [32-38)              >=38               0.0575432   -0.0453966    0.1604829
6 months    SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA                          <32                  >=38               0.7642386    0.2889892    1.2394880
6 months    SAS-CompFeed    INDIA                          [32-38)              >=38               0.6137583    0.1462510    1.0812657
6 months    SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          <32                  >=38               0.2415909   -0.1829860    0.6661678
6 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.1980952   -0.2689666    0.6651571
24 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA                      <32                  >=38              -0.0412634   -0.1966079    0.1140811
24 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.1600100   -0.3427178    0.0226977
24 months   COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         PHILIPPINES                    <32                  >=38               0.2463367    0.0989742    0.3936991
24 months   COHORTS         PHILIPPINES                    [32-38)              >=38               0.2090843    0.0354150    0.3827536
24 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI                         <32                  >=38              -0.1124968   -0.5545394    0.3295459
24 months   LCNI-5          MALAWI                         [32-38)              >=38               0.1548512   -0.3903896    0.7000920
24 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.3063478   -0.6904626    0.0777669
24 months   MAL-ED          BANGLADESH                     [32-38)              >=38              -0.0517517   -0.3633658    0.2598625
24 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BRAZIL                         <32                  >=38              -0.4029444   -0.9400848    0.1341959
24 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.2267437   -0.7324892    0.2790018
24 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          INDIA                          <32                  >=38              -0.3551520   -0.7785576    0.0682536
24 months   MAL-ED          INDIA                          [32-38)              >=38              -0.1686111   -0.5518139    0.2145917
24 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          <32                  >=38              -0.1887843   -0.8506689    0.4731003
24 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.2860325   -0.7626322    0.1905672
24 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          PERU                           <32                  >=38              -0.1446296   -0.5732650    0.2840057
24 months   MAL-ED          PERU                           [32-38)              >=38              -0.3108974   -0.7716931    0.1498982
24 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.6439712   -0.1416584    1.4296007
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0501955   -0.5916146    0.4912236
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.3825833   -0.9857157    0.2205491
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.2442680   -0.6621585    0.1736225
24 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS                        <32                  >=38              -0.1535522   -0.5781099    0.2710054
24 months   PROBIT          BELARUS                        [32-38)              >=38              -0.0926406   -0.4911171    0.3058359


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                -0.0601332   -0.1923290    0.0720626
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.0052829   -0.1204440    0.1098782
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.0576942   -0.2308294    0.1154409
Birth       MAL-ED          INDIA                          >=38                 NA                -0.2350794   -0.8000601    0.3299013
Birth       MAL-ED          PERU                           >=38                 NA                -0.4852174   -0.7542759   -0.2161589
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0339279   -0.3925281    0.3246723
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0973227   -0.2921391    0.4867844
Birth       PROBIT          BELARUS                        >=38                 NA                -0.0899599   -0.1929600    0.0130402
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -0.0000160   -0.4144421    0.4144101
6 months    COHORTS         GUATEMALA                      >=38                 NA                 0.0136011   -0.0955179    0.1227200
6 months    COHORTS         PHILIPPINES                    >=38                 NA                 0.2235735    0.0985930    0.3485540
6 months    LCNI-5          MALAWI                         >=38                 NA                -0.1622859   -0.4176154    0.0930435
6 months    MAL-ED          BANGLADESH                     >=38                 NA                -0.1539029   -0.2986915   -0.0091143
6 months    MAL-ED          BRAZIL                         >=38                 NA                -0.1156195   -0.3858627    0.1546236
6 months    MAL-ED          INDIA                          >=38                 NA                -0.0426567   -0.3374298    0.2521164
6 months    MAL-ED          NEPAL                          >=38                 NA                -0.0851514   -0.4521361    0.2818333
6 months    MAL-ED          PERU                           >=38                 NA                -0.3426112   -0.5833241   -0.1018983
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0711277   -0.2002093    0.0579539
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0149694   -0.2125504    0.1826116
6 months    PROBIT          BELARUS                        >=38                 NA                 0.0046750   -0.1126835    0.1220335
6 months    SAS-CompFeed    INDIA                          >=38                 NA                 0.7204987    0.2615501    1.1794473
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                 0.2079825   -0.1684007    0.5843656
24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0582398   -0.1633758    0.0468963
24 months   COHORTS         PHILIPPINES                    >=38                 NA                 0.2114503    0.0826181    0.3402824
24 months   LCNI-5          MALAWI                         >=38                 NA                -0.0227671   -0.3155148    0.2699807
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0786856   -0.2338660    0.0764949
24 months   MAL-ED          BRAZIL                         >=38                 NA                -0.1807855   -0.4466307    0.0850596
24 months   MAL-ED          INDIA                          >=38                 NA                -0.1923171   -0.4735538    0.0889196
24 months   MAL-ED          NEPAL                          >=38                 NA                -0.2060164   -0.5761255    0.1640927
24 months   MAL-ED          PERU                           >=38                 NA                -0.1517511   -0.4010936    0.0975915
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.0488611   -0.0850075    0.1827297
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.1477667   -0.3482214    0.0526881
24 months   PROBIT          BELARUS                        >=38                 NA                -0.1373976   -0.5252579    0.2504626
