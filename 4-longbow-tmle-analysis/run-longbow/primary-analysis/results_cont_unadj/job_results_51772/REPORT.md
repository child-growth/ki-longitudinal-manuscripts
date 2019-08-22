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

agecat      studyid                    country                        fage       n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38           65     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32            25     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)        50     140
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38           25      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <32            16      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)        24      65
Birth       ki0047075b-MAL-ED          INDIA                          >=38           26     128
Birth       ki0047075b-MAL-ED          INDIA                          <32            43     128
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)        59     128
Birth       ki0047075b-MAL-ED          NEPAL                          >=38           13      59
Birth       ki0047075b-MAL-ED          NEPAL                          <32             9      59
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)        37      59
Birth       ki0047075b-MAL-ED          PERU                           >=38           27      78
Birth       ki0047075b-MAL-ED          PERU                           <32            26      78
Birth       ki0047075b-MAL-ED          PERU                           [32-38)        25      78
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           52      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        15      75
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           20      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             6      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        18      44
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32           135     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)        28     166
Birth       ki1119695-PROBIT           BELARUS                        >=38          606   13333
Birth       ki1119695-PROBIT           BELARUS                        <32         10676   13333
Birth       ki1119695-PROBIT           BELARUS                        [32-38)      2051   13333
Birth       ki1135781-COHORTS          GUATEMALA                      >=38          222     735
Birth       ki1135781-COHORTS          GUATEMALA                      <32           337     735
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)       176     735
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38          303    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    <32          1981    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)       513    2797
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38           69     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32            30     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)        51     150
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38           30      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32            18      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79
6 months    ki0047075b-MAL-ED          INDIA                          >=38           36     161
6 months    ki0047075b-MAL-ED          INDIA                          <32            53     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)        72     161
6 months    ki0047075b-MAL-ED          NEPAL                          >=38           17      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32            15      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79
6 months    ki0047075b-MAL-ED          PERU                           >=38           27      83
6 months    ki0047075b-MAL-ED          PERU                           <32            28      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)        28      83
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           64      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             9      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38           44    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32          1122    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)       165    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38           40     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32           264     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)        76     380
6 months    ki1119695-PROBIT           BELARUS                        >=38          701   15179
6 months    ki1119695-PROBIT           BELARUS                        <32         12174   15179
6 months    ki1119695-PROBIT           BELARUS                        [32-38)      2304   15179
6 months    ki1135781-COHORTS          GUATEMALA                      >=38          276     930
6 months    ki1135781-COHORTS          GUATEMALA                      <32           421     930
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)       233     930
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38          299    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    <32          1828    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)       495    2622
6 months    ki1148112-LCNI-5           MALAWI                         >=38           26     106
6 months    ki1148112-LCNI-5           MALAWI                         <32            56     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)        24     106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38           69     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32            30     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)        52     151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38           30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32            18      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)        31      79
24 months   ki0047075b-MAL-ED          INDIA                          >=38           36     161
24 months   ki0047075b-MAL-ED          INDIA                          <32            53     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)        72     161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38           17      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32            15      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)        47      79
24 months   ki0047075b-MAL-ED          PERU                           >=38           26      79
24 months   ki0047075b-MAL-ED          PERU                           <32            27      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)        26      79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38           65      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             8      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)        16      89
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38           48     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32            15     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)        37     100
24 months   ki1119695-PROBIT           BELARUS                        >=38          176    3848
24 months   ki1119695-PROBIT           BELARUS                        <32          3094    3848
24 months   ki1119695-PROBIT           BELARUS                        [32-38)       578    3848
24 months   ki1135781-COHORTS          GUATEMALA                      >=38          287    1032
24 months   ki1135781-COHORTS          GUATEMALA                      <32           495    1032
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)       250    1032
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38          271    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    <32          1670    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)       435    2376
24 months   ki1148112-LCNI-5           MALAWI                         >=38           21      74
24 months   ki1148112-LCNI-5           MALAWI                         <32            37      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)        16      74


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA

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
![](/tmp/4c9bcf15-7fc6-4b9f-b149-df1c9dc9fd6d/643c35e1-0860-4a5c-b8d1-e0d377306cd2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4c9bcf15-7fc6-4b9f-b149-df1c9dc9fd6d/643c35e1-0860-4a5c-b8d1-e0d377306cd2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4c9bcf15-7fc6-4b9f-b149-df1c9dc9fd6d/643c35e1-0860-4a5c-b8d1-e0d377306cd2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.9890769   -1.2518319   -0.7263220
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -1.3028000   -1.6986906   -0.9069094
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.9418000   -1.2056685   -0.6779315
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.4824000   -0.0404014    1.0052014
Birth       ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.5781250    0.0260538    1.1301962
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.4454167   -0.0033237    0.8941570
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.9980769   -1.2996403   -0.6965136
Birth       ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.1665116   -1.5152992   -0.8177240
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -1.1216949   -1.3382504   -0.9051394
Birth       ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.7415385   -1.1600111   -0.3230658
Birth       ki0047075b-MAL-ED          NEPAL                          <32                  NA                -1.1600000   -1.7640146   -0.5559854
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.6481081   -0.9759608   -0.3202554
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.2259259   -0.0534051    0.5052569
Birth       ki0047075b-MAL-ED          PERU                           <32                  NA                -0.2276923   -0.6109150    0.1555303
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              NA                -0.0580000   -0.4119723    0.2959723
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.2282692   -0.0472275    0.5037660
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                -0.2037500   -1.0516357    0.6441357
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                -0.0233333   -0.7676448    0.7209781
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.8760000    0.3647303    1.3872697
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 1.0650000    0.2867134    1.8432866
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.6194444    0.0212639    1.2176250
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                -1.0259901   -1.2564818   -0.7954984
Birth       ki1119695-PROBIT           BELARUS                        <32                  NA                -1.1606285   -1.3724720   -0.9487850
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              NA                -1.0732472   -1.2842716   -0.8622228
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.9731982   -1.1649178   -0.7814786
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                -1.1410386   -1.2891827   -0.9928945
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -1.0061364   -1.2166885   -0.7955842
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.6020792   -0.7470952   -0.4570633
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.7714891   -0.8271174   -0.7158609
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.6506628   -0.7615030   -0.5398226
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.2880556   -0.5404217   -0.0356894
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                 0.1329444   -0.1595065    0.4253954
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.2701961   -0.5479301    0.0075380
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 1.0565000    0.5663789    1.5466211
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 1.0343519    0.4375636    1.6311401
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.7709140    0.3636249    1.1782030
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.5132870   -0.7724592   -0.2541149
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                -0.7882390   -1.0704541   -0.5060239
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.7746528   -0.9957834   -0.5535221
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.2788235   -0.2860346    0.8436816
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.1416667   -0.6946420    0.4113087
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                 0.2432624   -0.0492055    0.5357304
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.8920370    0.5180568    1.2660173
6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                 0.7651786    0.4609754    1.0693817
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                 1.3805357    0.8951915    1.8658799
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.5540104    0.2423876    0.8656332
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.3072222   -0.5631094    1.1775539
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.4778125   -0.1195388    1.0751638
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3413194    0.0434825    0.6391564
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                 0.7516667    0.2202770    1.2830563
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                 0.6131532    0.2796541    0.9466522
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -1.0079545   -1.3012405   -0.7146686
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                -0.6419118   -0.7723663   -0.5114572
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                -0.7233333   -0.9401930   -0.5064737
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -1.2190000   -1.5874562   -0.8505438
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                -0.9520455   -1.0833608   -0.8207301
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                -1.1121053   -1.4083693   -0.8158412
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.5856562    0.4896510    0.6816614
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                 0.5800209    0.5191463    0.6408956
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.5670139    0.4915836    0.6424442
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.1657246    0.0360663    0.2953830
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                 0.2604038    0.1560169    0.3647907
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                 0.1018884   -0.0508822    0.2546591
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.3955853   -0.5228781   -0.2682925
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.2591794   -0.3081994   -0.2101594
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.3284040   -0.4299792   -0.2268289
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.6257692    0.2598026    0.9917358
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                 0.5060714    0.2093054    0.8028375
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                 0.3754167    0.0850669    0.6657664
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.8642754   -1.0730073   -0.6555434
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                -0.9921667   -1.2947840   -0.6895493
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                -0.8540385   -1.1032372   -0.6048398
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.6476667    0.1442079    1.1511254
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                 0.7602778    0.0114739    1.5090816
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                 0.3183871   -0.2280885    0.8648627
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.7004167   -0.9120263   -0.4888070
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                -1.0182075   -1.2581114   -0.7783037
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                -0.9076389   -1.1148460   -0.7004318
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.2129412   -0.6520159    0.2261336
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                -0.3466667   -0.8395542    0.1462209
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                -0.2894681   -0.5309539   -0.0479823
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.2925000   -0.0117865    0.5967865
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                -0.1735185   -0.4946677    0.1476307
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                 0.2534615   -0.1481340    0.6550571
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                 0.4608462    0.2091394    0.7125530
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  NA                 0.5500000   -0.0688276    1.1688276
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              NA                 0.3771875   -0.0538993    0.8082743
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.3292708    0.0658966    0.5926451
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                -0.1803333   -0.7459802    0.3853136
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                -0.1468919   -0.4163582    0.1225744
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.7577841    0.5661476    0.9494206
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                 0.6926939    0.5677749    0.8176129
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                 0.6192042    0.4840403    0.7543680
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.2605923   -0.3672692   -0.1539155
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                -0.2621212   -0.3429934   -0.1812490
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                -0.3215200   -0.4267295   -0.2163105
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.6867897   -0.7948844   -0.5786949
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                -0.5989701   -0.6426612   -0.5552789
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                -0.5977241   -0.6906302   -0.5048180
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.1538095   -0.2886054    0.5962245
24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                -0.3689189   -0.6749792   -0.0628587
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                -0.2656250   -0.7144519    0.1832019


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0282143   -1.1991720   -0.8572566
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4923077    0.1981785    0.7864369
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1116406   -1.2776411   -0.9456401
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7467797   -0.9945570   -0.4990023
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0162821   -0.2170871    0.1845230
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.1318667   -0.1289649    0.3926982
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7968182    0.4398380    1.1537983
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1410673   -1.3516550   -0.9304795
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0580408   -1.1607065   -0.9553751
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7309760   -0.7780724   -0.6838797
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1977833   -0.3606366   -0.0349301
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9393882    0.6572880    1.2214884
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7206832   -0.8692329   -0.5721336
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1778270   -0.0614697    0.4171237
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0140361    0.7785203    1.2495520
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5153558    0.2512666    0.7794450
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5034500    0.2959923    0.7109077
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5783069    0.5185614    0.6380524
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1925914    0.1205037    0.2646791
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2878032   -0.3296319   -0.2459745
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.5058491    0.3128980    0.6988001
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8861589   -1.0281048   -0.7442131
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.5441139    0.2074310    0.8807969
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.8977019   -1.0295625   -0.7658412
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.2838608   -0.4798646   -0.0878569
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1203797   -0.0839887    0.3247482
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4538202    0.2465091    0.6611314
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0766500   -0.1115307    0.2648307
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6846323    0.5733690    0.7958955
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2760853   -0.3311930   -0.2209775
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6087584   -0.6459824   -0.5715345
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.1982432   -0.4246666    0.0281801


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.3137231   -0.7888752    0.1614290
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0472769   -0.3251029    0.4196568
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.0957250   -0.6646064    0.8560564
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.0369833   -0.7259603    0.6519936
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.1684347   -0.6295130    0.2926436
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.1236180   -0.4948817    0.2476457
Birth       ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.4184615   -1.1532764    0.3163534
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38               0.0934304   -0.4381773    0.6250380
Birth       ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.4536182   -0.9278391    0.0206026
Birth       ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.2839259   -0.7348386    0.1669867
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.4320192   -1.3235396    0.4595011
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.2516026   -1.0452637    0.5420586
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.1890000   -0.7421964    1.1201964
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.2565556   -1.0434588    0.5303477
Birth       ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.1346384   -0.2529030   -0.0163738
Birth       ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0472571   -0.1526231    0.0581089
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.1678404   -0.4101276    0.0744468
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0329382   -0.3176988    0.2518225
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              -0.1694099   -0.3247294   -0.0140905
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              -0.0485836   -0.2311080    0.1339409
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38               0.4210000    0.0347148    0.8072852
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0178595   -0.3574069    0.3931259
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              -0.0221481   -0.7944012    0.7501050
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.2855860   -0.9228482    0.3516761
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.2749520   -0.6581171    0.1082132
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.2613657   -0.6020547    0.0793232
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.4204902   -1.2109625    0.3699821
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0355611   -0.6716446    0.6005224
6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.1268585   -0.6089381    0.3552212
6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38               0.4884987   -0.1242168    1.1012141
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38              -0.2467882   -1.1712264    0.6776500
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0761979   -0.7499466    0.5975508
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38               0.4103472   -0.1988176    1.0195121
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38               0.2718337   -0.1752999    0.7189673
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38               0.3660428    0.1605598    0.5715258
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38               0.2846212    0.0221162    0.5471262
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38               0.2669545   -0.1242023    0.6581114
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38               0.1068947   -0.3658973    0.5796868
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0056353   -0.0926694    0.0813989
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.0186423   -0.1260073    0.0887227
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38               0.0946792   -0.0717778    0.2611362
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0638362   -0.2642113    0.1365388
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.1364059    0.0000005    0.2728112
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0671812   -0.0956713    0.2300338
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.1196978   -0.5908683    0.3514727
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.2503526   -0.7175084    0.2168032
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              -0.1278913   -0.4955138    0.2397312
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38               0.0102369   -0.3148308    0.3353046
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38               0.1126111   -0.7897070    1.0149292
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              -0.3292796   -1.0723182    0.4137590
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              -0.3177909   -0.6376854    0.0021036
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              -0.2072222   -0.5033867    0.0889423
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              -0.1337255   -0.7938200    0.5263690
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              -0.0765269   -0.5776277    0.4245739
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              -0.4660185   -0.9084291   -0.0236080
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              -0.0390385   -0.5428929    0.4648160
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  >=38               0.0891538   -0.5789059    0.7572136
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              >=38              -0.0836587   -0.5828501    0.4155328
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              -0.5096042   -1.1335612    0.1143529
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              -0.4761627   -0.8529625   -0.0993629
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              -0.0650902   -0.2577064    0.1275261
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              -0.1385799   -0.3370474    0.0598875
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              -0.0015289   -0.1353955    0.1323377
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              -0.0609277   -0.2107575    0.0889022
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38               0.0878196   -0.0287711    0.2044103
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38               0.0890655   -0.0534687    0.2315998
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              -0.5227284   -1.0606911    0.0152342
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              -0.4194345   -1.0496540    0.2107850


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0391374   -0.2239561    0.1456814
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                 0.0099077   -0.3768560    0.3966714
Birth       ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.1135637   -0.3991369    0.1720095
Birth       ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0052412   -0.4044175    0.3939351
Birth       ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.2422080   -0.4958428    0.0114268
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0964026   -0.2930893    0.1002842
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0791818   -0.4680239    0.3096603
Birth       ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1150772   -0.2246239   -0.0055305
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0848426   -0.2432496    0.0735644
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1288968   -0.2656133    0.0078196
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0902722   -0.0875374    0.2680819
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1171118   -0.4877257    0.2535021
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.2073962   -0.4507033    0.0359109
6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.1009965   -0.5898816    0.3878885
6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1219991   -0.2010100    0.4450082
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0386546   -0.2035480    0.1262388
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1621306   -0.0537096    0.3779707
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                 0.3438486    0.1440026    0.5436946
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                 0.2068421   -0.1404449    0.5541291
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0073493   -0.0918023    0.0771036
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0268668   -0.0828129    0.1365464
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.1077821   -0.0116230    0.2271871
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.1199202   -0.4446653    0.2048249
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0218836   -0.1764786    0.1327114
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.1035527   -0.5210653    0.3139598
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.1972852   -0.4025671    0.0079967
24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                -0.0709196   -0.4559296    0.3140904
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                -0.1721203   -0.4430654    0.0988249
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 NA                -0.0070259   -0.1244623    0.1104104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.2526208   -0.4480348   -0.0572069
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0731518   -0.2492158    0.1029122
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0154929   -0.1054222    0.0744363
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0780313   -0.0239722    0.1800347
24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.3520528   -0.7207097    0.0166042
