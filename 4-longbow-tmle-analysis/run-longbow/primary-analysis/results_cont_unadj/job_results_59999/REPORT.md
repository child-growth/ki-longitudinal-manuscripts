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

**Outcome Variable:** whz

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
Birth       COHORTS         GUATEMALA                      >=38          222     735
Birth       COHORTS         GUATEMALA                      <32           337     735
Birth       COHORTS         GUATEMALA                      [32-38)       176     735
Birth       COHORTS         PHILIPPINES                    >=38          303    2797
Birth       COHORTS         PHILIPPINES                    <32          1981    2797
Birth       COHORTS         PHILIPPINES                    [32-38)       513    2797
Birth       MAL-ED          BANGLADESH                     >=38           61     128
Birth       MAL-ED          BANGLADESH                     <32            23     128
Birth       MAL-ED          BANGLADESH                     [32-38)        44     128
Birth       MAL-ED          BRAZIL                         >=38            5      16
Birth       MAL-ED          BRAZIL                         <32             1      16
Birth       MAL-ED          BRAZIL                         [32-38)        10      16
Birth       MAL-ED          INDIA                          >=38            7      25
Birth       MAL-ED          INDIA                          <32             8      25
Birth       MAL-ED          INDIA                          [32-38)        10      25
Birth       MAL-ED          NEPAL                          >=38            2       9
Birth       MAL-ED          NEPAL                          <32             2       9
Birth       MAL-ED          NEPAL                          [32-38)         5       9
Birth       MAL-ED          PERU                           >=38           23      67
Birth       MAL-ED          PERU                           <32            21      67
Birth       MAL-ED          PERU                           [32-38)        23      67
Birth       MAL-ED          SOUTH AFRICA                   >=38           16      30
Birth       MAL-ED          SOUTH AFRICA                   <32             5      30
Birth       MAL-ED          SOUTH AFRICA                   [32-38)         9      30
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           17      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             9      44
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      44
Birth       PROBIT          BELARUS                        >=38          604   13325
Birth       PROBIT          BELARUS                        <32         10671   13325
Birth       PROBIT          BELARUS                        [32-38)      2050   13325
Birth       SAS-CompFeed    INDIA                          >=38           34    1101
Birth       SAS-CompFeed    INDIA                          <32           923    1101
Birth       SAS-CompFeed    INDIA                          [32-38)       144    1101
6 months    COHORTS         GUATEMALA                      >=38          276     930
6 months    COHORTS         GUATEMALA                      <32           421     930
6 months    COHORTS         GUATEMALA                      [32-38)       233     930
6 months    COHORTS         PHILIPPINES                    >=38          299    2622
6 months    COHORTS         PHILIPPINES                    <32          1828    2622
6 months    COHORTS         PHILIPPINES                    [32-38)       495    2622
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
6 months    PROBIT          BELARUS                        >=38          701   15179
6 months    PROBIT          BELARUS                        <32         12174   15179
6 months    PROBIT          BELARUS                        [32-38)      2304   15179
6 months    SAS-CompFeed    INDIA                          >=38           44    1331
6 months    SAS-CompFeed    INDIA                          <32          1122    1331
6 months    SAS-CompFeed    INDIA                          [32-38)       165    1331
6 months    SAS-FoodSuppl   INDIA                          >=38           40     380
6 months    SAS-FoodSuppl   INDIA                          <32           264     380
6 months    SAS-FoodSuppl   INDIA                          [32-38)        76     380
24 months   COHORTS         GUATEMALA                      >=38          287    1032
24 months   COHORTS         GUATEMALA                      <32           495    1032
24 months   COHORTS         GUATEMALA                      [32-38)       250    1032
24 months   COHORTS         PHILIPPINES                    >=38          271    2376
24 months   COHORTS         PHILIPPINES                    <32          1670    2376
24 months   COHORTS         PHILIPPINES                    [32-38)       435    2376
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
24 months   PROBIT          BELARUS                        >=38          176    3847
24 months   PROBIT          BELARUS                        <32          3093    3847
24 months   PROBIT          BELARUS                        [32-38)       578    3847


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
![](/tmp/8dd3c857-02fb-4936-ae26-aba6e945c3fd/22b424f6-a096-4178-880b-1c55cb29bb5f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8dd3c857-02fb-4936-ae26-aba6e945c3fd/22b424f6-a096-4178-880b-1c55cb29bb5f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8dd3c857-02fb-4936-ae26-aba6e945c3fd/22b424f6-a096-4178-880b-1c55cb29bb5f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                -0.9731982   -1.1649178   -0.7814786
Birth       COHORTS         GUATEMALA                      <32                  NA                -1.1410386   -1.2891827   -0.9928945
Birth       COHORTS         GUATEMALA                      [32-38)              NA                -1.0061364   -1.2166885   -0.7955842
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.6020792   -0.7470952   -0.4570633
Birth       COHORTS         PHILIPPINES                    <32                  NA                -0.7714891   -0.8271174   -0.7158609
Birth       COHORTS         PHILIPPINES                    [32-38)              NA                -0.6506628   -0.7615030   -0.5398226
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.9872131   -1.2609710   -0.7134552
Birth       MAL-ED          BANGLADESH                     <32                  NA                -1.3678261   -1.7732621   -0.9623900
Birth       MAL-ED          BANGLADESH                     [32-38)              NA                -0.9345455   -1.2101307   -0.6589602
Birth       MAL-ED          INDIA                          >=38                 NA                -0.5928571   -1.2084707    0.0227564
Birth       MAL-ED          INDIA                          <32                  NA                -0.8425000   -1.5949041   -0.0900959
Birth       MAL-ED          INDIA                          [32-38)              NA                -1.2770000   -1.9214891   -0.6325109
Birth       MAL-ED          PERU                           >=38                 NA                 0.3217391    0.0163233    0.6271550
Birth       MAL-ED          PERU                           <32                  NA                -0.2857143   -0.7402315    0.1688029
Birth       MAL-ED          PERU                           [32-38)              NA                 0.0934783   -0.2219705    0.4089270
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.2062500   -0.4416802    0.8541802
Birth       MAL-ED          SOUTH AFRICA                   <32                  NA                -0.4600000   -1.7036186    0.7836186
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.1355556   -1.1366672    0.8655561
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.7594118    0.2105891    1.3082344
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.4877778   -0.1646330    1.1401886
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.7783333    0.3478361    1.2088306
Birth       PROBIT          BELARUS                        >=38                 NA                -1.0209934   -1.2471190   -0.7948678
Birth       PROBIT          BELARUS                        <32                  NA                -1.1637738   -1.3759970   -0.9515505
Birth       PROBIT          BELARUS                        [32-38)              NA                -1.0751488   -1.2865500   -0.8637476
Birth       SAS-CompFeed    INDIA                          >=38                 NA                -0.7491176   -1.4133975   -0.0848378
Birth       SAS-CompFeed    INDIA                          <32                  NA                -0.6719177   -0.8352679   -0.5085674
Birth       SAS-CompFeed    INDIA                          [32-38)              NA                -0.6279167   -0.8655348   -0.3902986
6 months    COHORTS         GUATEMALA                      >=38                 NA                 0.1657246    0.0360663    0.2953830
6 months    COHORTS         GUATEMALA                      <32                  NA                 0.2604038    0.1560169    0.3647907
6 months    COHORTS         GUATEMALA                      [32-38)              NA                 0.1018884   -0.0508822    0.2546591
6 months    COHORTS         PHILIPPINES                    >=38                 NA                -0.3955853   -0.5228781   -0.2682925
6 months    COHORTS         PHILIPPINES                    <32                  NA                -0.2591794   -0.3081994   -0.2101594
6 months    COHORTS         PHILIPPINES                    [32-38)              NA                -0.3284040   -0.4299792   -0.2268289
6 months    LCNI-5          MALAWI                         >=38                 NA                 0.6253846    0.2590184    0.9917508
6 months    LCNI-5          MALAWI                         <32                  NA                 0.5066071    0.2100413    0.8031730
6 months    LCNI-5          MALAWI                         [32-38)              NA                 0.3754167    0.0852037    0.6656296
6 months    MAL-ED          BANGLADESH                     >=38                 NA                -0.2876329   -0.5402431   -0.0350226
6 months    MAL-ED          BANGLADESH                     <32                  NA                 0.1329444   -0.1595065    0.4253954
6 months    MAL-ED          BANGLADESH                     [32-38)              NA                -0.2626144   -0.5385053    0.0132766
6 months    MAL-ED          BRAZIL                         >=38                 NA                 1.0538889    0.5630995    1.5446783
6 months    MAL-ED          BRAZIL                         <32                  NA                 1.0343519    0.4375636    1.6311401
6 months    MAL-ED          BRAZIL                         [32-38)              NA                 0.7661828    0.3585209    1.1738447
6 months    MAL-ED          INDIA                          >=38                 NA                -0.5132870   -0.7724592   -0.2541149
6 months    MAL-ED          INDIA                          <32                  NA                -0.7867453   -1.0680659   -0.5054246
6 months    MAL-ED          INDIA                          [32-38)              NA                -0.7948611   -1.0249962   -0.5647261
6 months    MAL-ED          NEPAL                          >=38                 NA                 0.2829412   -0.2816067    0.8474891
6 months    MAL-ED          NEPAL                          <32                  NA                -0.1467778   -0.7028156    0.4092600
6 months    MAL-ED          NEPAL                          [32-38)              NA                 0.2386170   -0.0535649    0.5307990
6 months    MAL-ED          PERU                           >=38                 NA                 0.9124074    0.5391120    1.2857028
6 months    MAL-ED          PERU                           <32                  NA                 0.7592262    0.4535713    1.0648811
6 months    MAL-ED          PERU                           [32-38)              NA                 1.3792262    0.8942462    1.8642062
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.5546354    0.2431377    0.8661332
6 months    MAL-ED          SOUTH AFRICA                   <32                  NA                 0.3072222   -0.5631094    1.1775539
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.4778125   -0.1195388    1.0751638
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3906944    0.0850661    0.6963228
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.7516667    0.2202770    1.2830563
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.6131532    0.2796541    0.9466522
6 months    PROBIT          BELARUS                        >=38                 NA                 0.5816976    0.4811966    0.6821985
6 months    PROBIT          BELARUS                        <32                  NA                 0.5752292    0.5143775    0.6360809
6 months    PROBIT          BELARUS                        [32-38)              NA                 0.5596940    0.4874472    0.6319408
6 months    SAS-CompFeed    INDIA                          >=38                 NA                -1.0079545   -1.3012405   -0.7146686
6 months    SAS-CompFeed    INDIA                          <32                  NA                -0.6419118   -0.7723663   -0.5114572
6 months    SAS-CompFeed    INDIA                          [32-38)              NA                -0.7233333   -0.9401930   -0.5064737
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                -1.2190000   -1.5874562   -0.8505438
6 months    SAS-FoodSuppl   INDIA                          <32                  NA                -0.9520455   -1.0833608   -0.8207301
6 months    SAS-FoodSuppl   INDIA                          [32-38)              NA                -1.1121053   -1.4083693   -0.8158412
24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.2605923   -0.3672692   -0.1539155
24 months   COHORTS         GUATEMALA                      <32                  NA                -0.2621212   -0.3429934   -0.1812490
24 months   COHORTS         GUATEMALA                      [32-38)              NA                -0.3215200   -0.4267295   -0.2163105
24 months   COHORTS         PHILIPPINES                    >=38                 NA                -0.6867897   -0.7948844   -0.5786949
24 months   COHORTS         PHILIPPINES                    <32                  NA                -0.5989701   -0.6426612   -0.5552789
24 months   COHORTS         PHILIPPINES                    [32-38)              NA                -0.5977241   -0.6906302   -0.5048180
24 months   LCNI-5          MALAWI                         >=38                 NA                 0.1533333   -0.2893168    0.5959834
24 months   LCNI-5          MALAWI                         <32                  NA                -0.3683784   -0.6747171   -0.0620397
24 months   LCNI-5          MALAWI                         [32-38)              NA                -0.2650000   -0.7134371    0.1834371
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.8615942   -1.0701284   -0.6530600
24 months   MAL-ED          BANGLADESH                     <32                  NA                -0.9898333   -1.2920091   -0.6876576
24 months   MAL-ED          BANGLADESH                     [32-38)              NA                -0.8540385   -1.1032372   -0.6048398
24 months   MAL-ED          BRAZIL                         >=38                 NA                 0.6495000    0.1465733    1.1524267
24 months   MAL-ED          BRAZIL                         <32                  NA                 0.7602778    0.0114739    1.5090816
24 months   MAL-ED          BRAZIL                         [32-38)              NA                 0.3183871   -0.2280885    0.8648627
24 months   MAL-ED          INDIA                          >=38                 NA                -0.7004167   -0.9120263   -0.4888070
24 months   MAL-ED          INDIA                          <32                  NA                -1.0154717   -1.2558237   -0.7751197
24 months   MAL-ED          INDIA                          [32-38)              NA                -0.9076389   -1.1148460   -0.7004318
24 months   MAL-ED          NEPAL                          >=38                 NA                -0.2129412   -0.6520159    0.2261336
24 months   MAL-ED          NEPAL                          <32                  NA                -0.3466667   -0.8395542    0.1462209
24 months   MAL-ED          NEPAL                          [32-38)              NA                -0.2820213   -0.5265026   -0.0375399
24 months   MAL-ED          PERU                           >=38                 NA                 0.2925000   -0.0117865    0.5967865
24 months   MAL-ED          PERU                           <32                  NA                -0.1812654   -0.5021263    0.1395954
24 months   MAL-ED          PERU                           [32-38)              NA                 0.2598077   -0.1406520    0.6602674
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.4478974    0.1950970    0.7006979
24 months   MAL-ED          SOUTH AFRICA                   <32                  NA                 0.5281250   -0.0705236    1.1267736
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.3716667   -0.0632702    0.8066035
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3292708    0.0658966    0.5926451
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1803333   -0.7459802    0.3853136
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.1468919   -0.4163582    0.1225744
24 months   PROBIT          BELARUS                        >=38                 NA                 0.7900000    0.5860959    0.9939041
24 months   PROBIT          BELARUS                        <32                  NA                 0.7046158    0.5783573    0.8308743
24 months   PROBIT          BELARUS                        [32-38)              NA                 0.6232814    0.5023045    0.7442583


### Parameter: E(Y)


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      NA                   NA                -1.0580408   -1.1607065   -0.9553751
Birth       COHORTS         PHILIPPINES                    NA                   NA                -0.7309760   -0.7780724   -0.6838797
Birth       MAL-ED          BANGLADESH                     NA                   NA                -1.0375000   -1.2165024   -0.8584976
Birth       MAL-ED          INDIA                          NA                   NA                -0.9464000   -1.3554144   -0.5373856
Birth       MAL-ED          PERU                           NA                   NA                 0.0529851   -0.1628445    0.2688147
Birth       MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0073333   -0.5181900    0.5035233
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7115909    0.4034609    1.0197209
Birth       PROBIT          BELARUS                        NA                   NA                -1.1436672   -1.3543559   -0.9329784
Birth       SAS-CompFeed    INDIA                          NA                   NA                -0.6685468   -0.8459689   -0.4911247
6 months    COHORTS         GUATEMALA                      NA                   NA                 0.1925914    0.1205037    0.2646791
6 months    COHORTS         PHILIPPINES                    NA                   NA                -0.2878032   -0.3296319   -0.2459745
6 months    LCNI-5          MALAWI                         NA                   NA                 0.5060377    0.3131397    0.6989358
6 months    MAL-ED          BANGLADESH                     NA                   NA                -0.1950111   -0.3575506   -0.0324716
6 months    MAL-ED          BRAZIL                         NA                   NA                 0.9365401    0.6541549    1.2189253
6 months    MAL-ED          INDIA                          NA                   NA                -0.7292288   -0.8803893   -0.5780683
6 months    MAL-ED          NEPAL                          NA                   NA                 0.1749789   -0.0644624    0.4144202
6 months    MAL-ED          PERU                           NA                   NA                 1.0182129    0.7827641    1.2536616
6 months    MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5158052    0.2517895    0.7798210
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5271500    0.3177522    0.7365478
6 months    PROBIT          BELARUS                        NA                   NA                 0.5731698    0.5135069    0.6328327
6 months    SAS-CompFeed    INDIA                          NA                   NA                -0.6641059   -0.8040033   -0.5242086
6 months    SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
24 months   COHORTS         GUATEMALA                      NA                   NA                -0.2760853   -0.3311930   -0.2209775
24 months   COHORTS         PHILIPPINES                    NA                   NA                -0.6087584   -0.6459824   -0.5715345
24 months   LCNI-5          MALAWI                         NA                   NA                -0.1979730   -0.4244675    0.0285215
24 months   MAL-ED          BANGLADESH                     NA                   NA                -0.8844702   -1.0263143   -0.7426261
24 months   MAL-ED          BRAZIL                         NA                   NA                 0.5448101    0.2082313    0.8813890
24 months   MAL-ED          INDIA                          NA                   NA                -0.8968012   -1.0287307   -0.7648718
24 months   MAL-ED          NEPAL                          NA                   NA                -0.2794304   -0.4767398   -0.0821210
24 months   MAL-ED          PERU                           NA                   NA                 0.1198207   -0.0845120    0.3241534
24 months   MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4414045    0.2336389    0.6491701
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0766500   -0.1115307    0.2648307
24 months   PROBIT          BELARUS                        NA                   NA                 0.6963019    0.5831245    0.8094793


### Parameter: ATE


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       COHORTS         GUATEMALA                      <32                  >=38              -0.1678404   -0.4101276    0.0744468
Birth       COHORTS         GUATEMALA                      [32-38)              >=38              -0.0329382   -0.3176988    0.2518225
Birth       COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       COHORTS         PHILIPPINES                    <32                  >=38              -0.1694099   -0.3247294   -0.0140905
Birth       COHORTS         PHILIPPINES                    [32-38)              >=38              -0.0485836   -0.2311080    0.1339409
Birth       MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          BANGLADESH                     <32                  >=38              -0.3806130   -0.8698182    0.1085923
Birth       MAL-ED          BANGLADESH                     [32-38)              >=38               0.0526677   -0.3357788    0.4411141
Birth       MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          INDIA                          <32                  >=38              -0.2496429   -1.2218012    0.7225155
Birth       MAL-ED          INDIA                          [32-38)              >=38              -0.6841429   -1.5754039    0.2071182
Birth       MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          PERU                           <32                  >=38              -0.6074534   -1.1550524   -0.0598544
Birth       MAL-ED          PERU                           [32-38)              >=38              -0.2282609   -0.6673357    0.2108140
Birth       MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.6662500   -2.0685341    0.7360341
Birth       MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.3418056   -1.5342979    0.8506868
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.2716340   -1.1241867    0.5809187
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.0189216   -0.6785984    0.7164416
Birth       PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       PROBIT          BELARUS                        <32                  >=38              -0.1427804   -0.2584906   -0.0270702
Birth       PROBIT          BELARUS                        [32-38)              >=38              -0.0541554   -0.1561690    0.0478582
Birth       SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed    INDIA                          <32                  >=38               0.0772000   -0.4395832    0.5939832
Birth       SAS-CompFeed    INDIA                          [32-38)              >=38               0.1212010   -0.3940199    0.6364219
6 months    COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         GUATEMALA                      <32                  >=38               0.0946792   -0.0717778    0.2611362
6 months    COHORTS         GUATEMALA                      [32-38)              >=38              -0.0638362   -0.2642113    0.1365388
6 months    COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    COHORTS         PHILIPPINES                    <32                  >=38               0.1364059    0.0000005    0.2728112
6 months    COHORTS         PHILIPPINES                    [32-38)              >=38               0.0671812   -0.0956713    0.2300338
6 months    LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI                         <32                  >=38              -0.1187775   -0.5901324    0.3525775
6 months    LCNI-5          MALAWI                         [32-38)              >=38              -0.2499679   -0.7173519    0.2174160
6 months    MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BANGLADESH                     <32                  >=38               0.4205773    0.0341326    0.8070220
6 months    MAL-ED          BANGLADESH                     [32-38)              >=38               0.0250185   -0.3490507    0.3990876
6 months    MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          BRAZIL                         <32                  >=38              -0.0195370   -0.7922145    0.7531404
6 months    MAL-ED          BRAZIL                         [32-38)              >=38              -0.2877061   -0.9257205    0.3503084
6 months    MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          INDIA                          <32                  >=38              -0.2734582   -0.6559651    0.1090486
6 months    MAL-ED          INDIA                          [32-38)              >=38              -0.2815741   -0.6281752    0.0650270
6 months    MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          NEPAL                          <32                  >=38              -0.4297190   -1.2221155    0.3626776
6 months    MAL-ED          NEPAL                          [32-38)              >=38              -0.0443242   -0.6800007    0.5913524
6 months    MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          PERU                           <32                  >=38              -0.1531812   -0.6356482    0.3292857
6 months    MAL-ED          PERU                           [32-38)              >=38               0.4668188   -0.1451902    1.0788278
6 months    MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.2474132   -1.1718092    0.6769828
6 months    MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0768229   -0.7505138    0.5968679
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.3609722   -0.2520397    0.9739842
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.2224587   -0.2299021    0.6748195
6 months    PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    PROBIT          BELARUS                        <32                  >=38              -0.0064684   -0.0947235    0.0817867
6 months    PROBIT          BELARUS                        [32-38)              >=38              -0.0220036   -0.1286384    0.0846312
6 months    SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed    INDIA                          <32                  >=38               0.3660428    0.1605598    0.5715258
6 months    SAS-CompFeed    INDIA                          [32-38)              >=38               0.2846212    0.0221162    0.5471262
6 months    SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA                          <32                  >=38               0.2669545   -0.1242023    0.6581114
6 months    SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.1068947   -0.3658973    0.5796868
24 months   COHORTS         GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         GUATEMALA                      <32                  >=38              -0.0015289   -0.1353955    0.1323377
24 months   COHORTS         GUATEMALA                      [32-38)              >=38              -0.0609277   -0.2107575    0.0889022
24 months   COHORTS         PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   COHORTS         PHILIPPINES                    <32                  >=38               0.0878196   -0.0287711    0.2044103
24 months   COHORTS         PHILIPPINES                    [32-38)              >=38               0.0890655   -0.0534687    0.2315998
24 months   LCNI-5          MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI                         <32                  >=38              -0.5217117   -1.0600262    0.0166028
24 months   LCNI-5          MALAWI                         [32-38)              >=38              -0.4183333   -1.0484404    0.2117738
24 months   MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BANGLADESH                     <32                  >=38              -0.1282391   -0.4953858    0.2389076
24 months   MAL-ED          BANGLADESH                     [32-38)              >=38               0.0075557   -0.3173850    0.3324965
24 months   MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          BRAZIL                         <32                  >=38               0.1107778   -0.7912435    1.0127991
24 months   MAL-ED          BRAZIL                         [32-38)              >=38              -0.3311129   -1.0737911    0.4115653
24 months   MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          INDIA                          <32                  >=38              -0.3150550   -0.6352858    0.0051757
24 months   MAL-ED          INDIA                          [32-38)              >=38              -0.2072222   -0.5033867    0.0889423
24 months   MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          NEPAL                          <32                  >=38              -0.1337255   -0.7938200    0.5263690
24 months   MAL-ED          NEPAL                          [32-38)              >=38              -0.0690801   -0.5716314    0.4334712
24 months   MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          PERU                           <32                  >=38              -0.4737654   -0.9159667   -0.0315641
24 months   MAL-ED          PERU                           [32-38)              >=38              -0.0326923   -0.5356419    0.4702572
24 months   MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0802276   -0.5696095    0.7300646
24 months   MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0762308   -0.5792994    0.4268379
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.5096042   -1.1335612    0.1143529
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.4761627   -0.8529625   -0.0993629
24 months   PROBIT          BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   PROBIT          BELARUS                        <32                  >=38              -0.0853842   -0.2909163    0.1201479
24 months   PROBIT          BELARUS                        [32-38)              >=38              -0.1667186   -0.3668133    0.0333761


### Parameter: PAR


agecat      studyid         country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA                      >=38                 NA                -0.0848426   -0.2432496    0.0735644
Birth       COHORTS         PHILIPPINES                    >=38                 NA                -0.1288968   -0.2656133    0.0078196
Birth       MAL-ED          BANGLADESH                     >=38                 NA                -0.0502869   -0.2388468    0.1382730
Birth       MAL-ED          INDIA                          >=38                 NA                -0.3535429   -0.9315083    0.2244226
Birth       MAL-ED          PERU                           >=38                 NA                -0.2687541   -0.5441067    0.0065986
Birth       MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.2135833   -0.6962706    0.2691039
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0478209   -0.4520486    0.3564069
Birth       PROBIT          BELARUS                        >=38                 NA                -0.1226738   -0.2294199   -0.0159277
Birth       SAS-CompFeed    INDIA                          >=38                 NA                 0.0805709   -0.4164965    0.5776382
6 months    COHORTS         GUATEMALA                      >=38                 NA                 0.0268668   -0.0828129    0.1365464
6 months    COHORTS         PHILIPPINES                    >=38                 NA                 0.1077821   -0.0116230    0.2271871
6 months    LCNI-5          MALAWI                         >=38                 NA                -0.1193469   -0.4442900    0.2055962
6 months    MAL-ED          BANGLADESH                     >=38                 NA                 0.0926217   -0.0849284    0.2701718
6 months    MAL-ED          BRAZIL                         >=38                 NA                -0.1173488   -0.4883921    0.2536945
6 months    MAL-ED          INDIA                          >=38                 NA                -0.2159417   -0.4608516    0.0289681
6 months    MAL-ED          NEPAL                          >=38                 NA                -0.1079623   -0.5967140    0.3807895
6 months    MAL-ED          PERU                           >=38                 NA                 0.1058054   -0.2168778    0.4284887
6 months    MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0388302   -0.2037095    0.1260492
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1364556   -0.0816815    0.3545926
6 months    PROBIT          BELARUS                        >=38                 NA                -0.0085277   -0.0939767    0.0769213
6 months    SAS-CompFeed    INDIA                          >=38                 NA                 0.3438486    0.1440026    0.5436946
6 months    SAS-FoodSuppl   INDIA                          >=38                 NA                 0.2068421   -0.1404449    0.5541291
24 months   COHORTS         GUATEMALA                      >=38                 NA                -0.0154929   -0.1054222    0.0744363
24 months   COHORTS         PHILIPPINES                    >=38                 NA                 0.0780313   -0.0239722    0.1800347
24 months   LCNI-5          MALAWI                         >=38                 NA                -0.3513063   -0.7201290    0.0175164
24 months   MAL-ED          BANGLADESH                     >=38                 NA                -0.0228760   -0.1773546    0.1316026
24 months   MAL-ED          BRAZIL                         >=38                 NA                -0.1046899   -0.5219642    0.3125844
24 months   MAL-ED          INDIA                          >=38                 NA                -0.1963846   -0.4017106    0.0089415
24 months   MAL-ED          NEPAL                          >=38                 NA                -0.0664892   -0.4521655    0.3191871
24 months   MAL-ED          PERU                           >=38                 NA                -0.1726793   -0.4435974    0.0982388
24 months   MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0064929   -0.1236499    0.1106640
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.2526208   -0.4480348   -0.0572069
24 months   PROBIT          BELARUS                        >=38                 NA                -0.0936981   -0.2826682    0.0952719
