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

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        gagebrth             n_cell       n
----------  ---------------  -----------------------------  ------------------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term        58      92
Birth       CMC-V-BCS-2002   INDIA                          Preterm                  11      92
Birth       CMC-V-BCS-2002   INDIA                          Early term               23      92
Birth       COHORTS          GUATEMALA                      Full or late term       341     617
Birth       COHORTS          GUATEMALA                      Preterm                  95     617
Birth       COHORTS          GUATEMALA                      Early term              181     617
Birth       COHORTS          INDIA                          Full or late term       570    1293
Birth       COHORTS          INDIA                          Preterm                 285    1293
Birth       COHORTS          INDIA                          Early term              438    1293
Birth       COHORTS          PHILIPPINES                    Full or late term      1164    3024
Birth       COHORTS          PHILIPPINES                    Preterm                 649    3024
Birth       COHORTS          PHILIPPINES                    Early term             1211    3024
Birth       IRC              INDIA                          Full or late term       238     369
Birth       IRC              INDIA                          Preterm                  36     369
Birth       IRC              INDIA                          Early term               95     369
Birth       Keneba           GAMBIA                         Full or late term       734    1515
Birth       Keneba           GAMBIA                         Preterm                 235    1515
Birth       Keneba           GAMBIA                         Early term              546    1515
Birth       NIH-Crypto       BANGLADESH                     Full or late term       162     732
Birth       NIH-Crypto       BANGLADESH                     Preterm                 257     732
Birth       NIH-Crypto       BANGLADESH                     Early term              313     732
Birth       PROBIT           BELARUS                        Full or late term      7100   13893
Birth       PROBIT           BELARUS                        Preterm                 472   13893
Birth       PROBIT           BELARUS                        Early term             6321   13893
6 months    CMC-V-BCS-2002   INDIA                          Full or late term       212     347
6 months    CMC-V-BCS-2002   INDIA                          Preterm                  52     347
6 months    CMC-V-BCS-2002   INDIA                          Early term               83     347
6 months    COHORTS          GUATEMALA                      Full or late term       389     713
6 months    COHORTS          GUATEMALA                      Preterm                 113     713
6 months    COHORTS          GUATEMALA                      Early term              211     713
6 months    COHORTS          INDIA                          Full or late term       568    1312
6 months    COHORTS          INDIA                          Preterm                 299    1312
6 months    COHORTS          INDIA                          Early term              445    1312
6 months    COHORTS          PHILIPPINES                    Full or late term      1028    2687
6 months    COHORTS          PHILIPPINES                    Preterm                 573    2687
6 months    COHORTS          PHILIPPINES                    Early term             1086    2687
6 months    IRC              INDIA                          Full or late term       249     388
6 months    IRC              INDIA                          Preterm                  42     388
6 months    IRC              INDIA                          Early term               97     388
6 months    Keneba           GAMBIA                         Full or late term       658    1374
6 months    Keneba           GAMBIA                         Preterm                 207    1374
6 months    Keneba           GAMBIA                         Early term              509    1374
6 months    NIH-Crypto       BANGLADESH                     Full or late term       155     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                 251     715
6 months    NIH-Crypto       BANGLADESH                     Early term              309     715
6 months    PROBIT           BELARUS                        Full or late term      8007   15760
6 months    PROBIT           BELARUS                        Preterm                 551   15760
6 months    PROBIT           BELARUS                        Early term             7202   15760
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term      1167    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                 291    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term              445    1903
24 months   CMC-V-BCS-2002   INDIA                          Full or late term       213     349
24 months   CMC-V-BCS-2002   INDIA                          Preterm                  52     349
24 months   CMC-V-BCS-2002   INDIA                          Early term               84     349
24 months   COHORTS          GUATEMALA                      Full or late term       375     661
24 months   COHORTS          GUATEMALA                      Preterm                 107     661
24 months   COHORTS          GUATEMALA                      Early term              179     661
24 months   COHORTS          INDIA                          Full or late term       565    1308
24 months   COHORTS          INDIA                          Preterm                 305    1308
24 months   COHORTS          INDIA                          Early term              438    1308
24 months   COHORTS          PHILIPPINES                    Full or late term       938    2424
24 months   COHORTS          PHILIPPINES                    Preterm                 513    2424
24 months   COHORTS          PHILIPPINES                    Early term              973    2424
24 months   IRC              INDIA                          Full or late term       250     390
24 months   IRC              INDIA                          Preterm                  42     390
24 months   IRC              INDIA                          Early term               98     390
24 months   Keneba           GAMBIA                         Full or late term       557    1156
24 months   Keneba           GAMBIA                         Preterm                 167    1156
24 months   Keneba           GAMBIA                         Early term              432    1156
24 months   NIH-Crypto       BANGLADESH                     Full or late term        79     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                 208     514
24 months   NIH-Crypto       BANGLADESH                     Early term              227     514
24 months   PROBIT           BELARUS                        Full or late term      2025    4035
24 months   PROBIT           BELARUS                        Preterm                 137    4035
24 months   PROBIT           BELARUS                        Early term             1873    4035
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/c0e892d7-99b8-42e5-9a5f-e81d27ff9475/4854ee71-ca8d-4acb-b5c3-42d720781855/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c0e892d7-99b8-42e5-9a5f-e81d27ff9475/4854ee71-ca8d-4acb-b5c3-42d720781855/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c0e892d7-99b8-42e5-9a5f-e81d27ff9475/4854ee71-ca8d-4acb-b5c3-42d720781855/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.9659483   -1.2562663   -0.6756303
Birth       CMC-V-BCS-2002   INDIA                          Preterm              NA                -0.9286364   -1.5552049   -0.3020679
Birth       CMC-V-BCS-2002   INDIA                          Early term           NA                -0.9647826   -1.3170438   -0.6125215
Birth       COHORTS          GUATEMALA                      Full or late term    NA                 0.2367449    0.1129997    0.3604901
Birth       COHORTS          GUATEMALA                      Preterm              NA                -0.3893684   -0.6838031   -0.0949338
Birth       COHORTS          GUATEMALA                      Early term           NA                -0.0607182   -0.2277653    0.1063288
Birth       COHORTS          INDIA                          Full or late term    NA                -0.3955789   -0.4832187   -0.3079392
Birth       COHORTS          INDIA                          Preterm              NA                -0.9073333   -1.0436769   -0.7709898
Birth       COHORTS          INDIA                          Early term           NA                -0.6873516   -0.7862577   -0.5884455
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                 0.0027663   -0.0556001    0.0611327
Birth       COHORTS          PHILIPPINES                    Preterm              NA                -0.6426810   -0.7403472   -0.5450149
Birth       COHORTS          PHILIPPINES                    Early term           NA                -0.2806276   -0.3376182   -0.2236370
Birth       IRC              INDIA                          Full or late term    NA                -0.2726891   -0.4770060   -0.0683722
Birth       IRC              INDIA                          Preterm              NA                -0.9105556   -1.4543481   -0.3667630
Birth       IRC              INDIA                          Early term           NA                -0.1770526   -0.4916498    0.1375445
Birth       Keneba           GAMBIA                         Full or late term    NA                 0.2357084    0.1498363    0.3215806
Birth       Keneba           GAMBIA                         Preterm              NA                -0.6743404   -0.8604855   -0.4881954
Birth       Keneba           GAMBIA                         Early term           NA                 0.0506960   -0.0506873    0.1520793
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.5560494   -0.7024649   -0.4096338
Birth       NIH-Crypto       BANGLADESH                     Preterm              NA                -1.3715175   -1.4828336   -1.2602014
Birth       NIH-Crypto       BANGLADESH                     Early term           NA                -0.7130671   -0.8150279   -0.6111063
Birth       PROBIT           BELARUS                        Full or late term    NA                 1.5103739    1.3567535    1.6639944
Birth       PROBIT           BELARUS                        Preterm              NA                 0.3876271    0.1152650    0.6599892
Birth       PROBIT           BELARUS                        Early term           NA                 1.1569760    0.9741003    1.3398516
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -1.3778145   -1.5599142   -1.1957148
6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                -1.5883013   -2.0368105   -1.1397921
6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                -1.2784940   -1.5569704   -1.0000176
6 months    COHORTS          GUATEMALA                      Full or late term    NA                -1.6630848   -1.7605992   -1.5655705
6 months    COHORTS          GUATEMALA                      Preterm              NA                -2.1353982   -2.3427878   -1.9280087
6 months    COHORTS          GUATEMALA                      Early term           NA                -1.9793839   -2.1210237   -1.8377441
6 months    COHORTS          INDIA                          Full or late term    NA                -0.8693310   -0.9602133   -0.7784487
6 months    COHORTS          INDIA                          Preterm              NA                -1.1462876   -1.2693237   -1.0232516
6 months    COHORTS          INDIA                          Early term           NA                -0.9595056   -1.0580956   -0.8609156
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -1.0235409   -1.0899673   -0.9571144
6 months    COHORTS          PHILIPPINES                    Preterm              NA                -1.3508901   -1.4485191   -1.2532610
6 months    COHORTS          PHILIPPINES                    Early term           NA                -1.1414088   -1.2053739   -1.0774438
6 months    IRC              INDIA                          Full or late term    NA                -1.1243307   -1.2930271   -0.9556342
6 months    IRC              INDIA                          Preterm              NA                -1.7184524   -2.1781138   -1.2587910
6 months    IRC              INDIA                          Early term           NA                -1.2982646   -1.5317130   -1.0648162
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.7944516   -0.8787022   -0.7102010
6 months    Keneba           GAMBIA                         Preterm              NA                -1.2775813   -1.4220615   -1.1331012
6 months    Keneba           GAMBIA                         Early term           NA                -0.8688767   -0.9537132   -0.7840402
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.8747097   -1.0329276   -0.7164917
6 months    NIH-Crypto       BANGLADESH                     Preterm              NA                -1.4437251   -1.5646460   -1.3228042
6 months    NIH-Crypto       BANGLADESH                     Early term           NA                -1.1621359   -1.2625414   -1.0617304
6 months    PROBIT           BELARUS                        Full or late term    NA                 0.1838198    0.0854585    0.2821811
6 months    PROBIT           BELARUS                        Preterm              NA                -0.3473593   -0.5566073   -0.1381114
6 months    PROBIT           BELARUS                        Early term           NA                 0.0366768   -0.0615206    0.1348743
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.4548051   -0.5192960   -0.3903141
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                -0.7272680   -0.8606101   -0.5939260
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                -0.6493296   -0.7505123   -0.5481469
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -2.4866041   -2.6194176   -2.3537905
24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                -2.6304808   -2.9111477   -2.3498138
24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                -2.5858929   -2.7697478   -2.4020379
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -2.9267200   -3.0347363   -2.8187037
24 months   COHORTS          GUATEMALA                      Preterm              NA                -3.0413084   -3.2635929   -2.8190240
24 months   COHORTS          GUATEMALA                      Early term           NA                -3.0960335   -3.2475461   -2.9445210
24 months   COHORTS          INDIA                          Full or late term    NA                -2.0580354   -2.1536933   -1.9623775
24 months   COHORTS          INDIA                          Preterm              NA                -2.2509836   -2.3792015   -2.1227657
24 months   COHORTS          INDIA                          Early term           NA                -2.1354338   -2.2359187   -2.0349488
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -2.3300746   -2.3994947   -2.2606546
24 months   COHORTS          PHILIPPINES                    Preterm              NA                -2.5064133   -2.6085462   -2.4042803
24 months   COHORTS          PHILIPPINES                    Early term           NA                -2.4473998   -2.5197663   -2.3750333
24 months   IRC              INDIA                          Full or late term    NA                -1.7195667   -1.8347491   -1.6043843
24 months   IRC              INDIA                          Preterm              NA                -2.2000000   -2.4823353   -1.9176647
24 months   IRC              INDIA                          Early term           NA                -1.8197959   -2.0140458   -1.6255460
24 months   Keneba           GAMBIA                         Full or late term    NA                -1.5761023   -1.6610542   -1.4911505
24 months   Keneba           GAMBIA                         Preterm              NA                -1.8541647   -2.0137133   -1.6946160
24 months   Keneba           GAMBIA                         Early term           NA                -1.4792720   -1.5764930   -1.3820509
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -1.1850633   -1.3927855   -0.9773411
24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                -1.6218750   -1.7555791   -1.4881709
24 months   NIH-Crypto       BANGLADESH                     Early term           NA                -1.3649339   -1.4859660   -1.2439019
24 months   PROBIT           BELARUS                        Full or late term    NA                -0.1249728   -0.5808461    0.3309004
24 months   PROBIT           BELARUS                        Preterm              NA                -0.3671533   -0.7126869   -0.0216197
24 months   PROBIT           BELARUS                        Early term           NA                -0.1488717   -0.3427424    0.0449991


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.0530794   -0.0441925    0.1503513
Birth       COHORTS          INDIA                          NA                   NA                -0.6072158   -0.6675691   -0.5468624
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2492460   -0.2884729   -0.2100192
Birth       IRC              INDIA                          NA                   NA                -0.3102981   -0.4751168   -0.1454794
Birth       Keneba           GAMBIA                         NA                   NA                 0.0278680   -0.0365315    0.0922674
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.3856004   -1.5319935   -1.2392073
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8315428   -1.9081267   -1.7549589
6 months    COHORTS          INDIA                          NA                   NA                -0.9630335   -1.0220763   -0.9039908
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1409862   -1.1830414   -1.0989310
6 months    IRC              INDIA                          NA                   NA                -1.2321263   -1.3660720   -1.0981806
6 months    Keneba           GAMBIA                         NA                   NA                -0.8948084   -0.9510697   -0.8385471
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5419570   -0.5926042   -0.4913098
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5319389   -2.6335015   -2.4303762
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9911195   -3.0733804   -2.9088586
24 months   COHORTS          INDIA                          NA                   NA                -2.1289450   -2.1901830   -2.0677069
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4144884   -2.4596605   -2.3693164
24 months   IRC              INDIA                          NA                   NA                -1.7964915   -1.8912047   -1.7017782
24 months   Keneba           GAMBIA                         NA                   NA                -1.5800865   -1.6398819   -1.5202911
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     0.0373119   -0.6532478    0.7278716
Birth       CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0011657   -0.4553127    0.4576440
Birth       COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Preterm              Full or late term    -0.6261133   -0.9454950   -0.3067316
Birth       COHORTS          GUATEMALA                      Early term           Full or late term    -0.2974631   -0.5053515   -0.0895747
Birth       COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Preterm              Full or late term    -0.5117544   -0.6738355   -0.3496733
Birth       COHORTS          INDIA                          Early term           Full or late term    -0.2917727   -0.4239208   -0.1596245
Birth       COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.6454474   -0.7592248   -0.5316699
Birth       COHORTS          PHILIPPINES                    Early term           Full or late term    -0.2833939   -0.3649694   -0.2018184
Birth       IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Preterm              Full or late term    -0.6378665   -1.2187759   -0.0569570
Birth       IRC              INDIA                          Early term           Full or late term     0.0956364   -0.2794859    0.4707588
Birth       Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Preterm              Full or late term    -0.9100489   -1.1150464   -0.7050513
Birth       Keneba           GAMBIA                         Early term           Full or late term    -0.1850125   -0.3178756   -0.0521494
Birth       NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.8154681   -0.9993942   -0.6315421
Birth       NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1570177   -0.3354372    0.0214018
Birth       PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Preterm              Full or late term    -1.1227468   -1.3558762   -0.8896174
Birth       PROBIT           BELARUS                        Early term           Full or late term    -0.3533980   -0.4736517   -0.2331443
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.2104868   -0.6945538    0.2735801
6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term     0.0993205   -0.2334097    0.4320507
6 months    COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Preterm              Full or late term    -0.4723134   -0.7014846   -0.2431421
6 months    COHORTS          GUATEMALA                      Early term           Full or late term    -0.3162991   -0.4882609   -0.1443372
6 months    COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Preterm              Full or late term    -0.2769566   -0.4299189   -0.1239943
6 months    COHORTS          INDIA                          Early term           Full or late term    -0.0901746   -0.2242626    0.0439133
6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.3273492   -0.4454335   -0.2092649
6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1178680   -0.2100852   -0.0256508
6 months    IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Preterm              Full or late term    -0.5941217   -1.0837615   -0.1044820
6 months    IRC              INDIA                          Early term           Full or late term    -0.1739339   -0.4619559    0.1140880
6 months    Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Preterm              Full or late term    -0.4831297   -0.6503800   -0.3158794
6 months    Keneba           GAMBIA                         Early term           Full or late term    -0.0744251   -0.1939884    0.0451383
6 months    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.5690154   -0.7681505   -0.3698803
6 months    NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.2874262   -0.4748140   -0.1000385
6 months    PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Preterm              Full or late term    -0.5311791   -0.7240199   -0.3383383
6 months    PROBIT           BELARUS                        Early term           Full or late term    -0.1471429   -0.2135984   -0.0806875
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    -0.2724630   -0.4205818   -0.1243442
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    -0.1945245   -0.3145121   -0.0745370
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    -0.1438767   -0.4543817    0.1666283
24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    -0.0992888   -0.3260973    0.1275197
24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    -0.1145884   -0.3617278    0.1325510
24 months   COHORTS          GUATEMALA                      Early term           Full or late term    -0.1693135   -0.3553876    0.0167606
24 months   COHORTS          INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Preterm              Full or late term    -0.1929482   -0.3529178   -0.0329787
24 months   COHORTS          INDIA                          Early term           Full or late term    -0.0773984   -0.2161343    0.0613375
24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    -0.1763386   -0.2998307   -0.0528466
24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    -0.1173252   -0.2176051   -0.0170453
24 months   IRC              INDIA                          Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Preterm              Full or late term    -0.4804333   -0.7853599   -0.1755067
24 months   IRC              INDIA                          Early term           Full or late term    -0.1002293   -0.3260611    0.1256026
24 months   Keneba           GAMBIA                         Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Preterm              Full or late term    -0.2780623   -0.4588179   -0.0973067
24 months   Keneba           GAMBIA                         Early term           Full or late term     0.0968303   -0.0322771    0.2259378
24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    -0.4368117   -0.6838447   -0.1897787
24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    -0.1798706   -0.4202813    0.0605400
24 months   PROBIT           BELARUS                        Full or late term    Full or late term     0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Preterm              Full or late term    -0.2421804   -0.8027554    0.3183945
24 months   PROBIT           BELARUS                        Early term           Full or late term    -0.0238988   -0.4377461    0.3899485


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0047526   -0.1529985    0.1625037
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -0.1836655   -0.2722580   -0.0950729
Birth       COHORTS          INDIA                          Full or late term    NA                -0.2116368   -0.2791008   -0.1441729
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                -0.2520124   -0.3002079   -0.2038168
Birth       IRC              INDIA                          Full or late term    NA                -0.0376090   -0.1603289    0.0851108
Birth       Keneba           GAMBIA                         Full or late term    NA                -0.2078405   -0.2739922   -0.1416887
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.3534452   -0.4840315   -0.2228588
Birth       PROBIT           BELARUS                        Full or late term    NA                -0.1989322   -0.2541792   -0.1436853
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0077859   -0.1264140    0.1108421
6 months    COHORTS          GUATEMALA                      Full or late term    NA                -0.1684579   -0.2391560   -0.0977599
6 months    COHORTS          INDIA                          Full or late term    NA                -0.0937026   -0.1614819   -0.0259232
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.1174454   -0.1704061   -0.0644846
6 months    IRC              INDIA                          Full or late term    NA                -0.1077956   -0.2071602   -0.0084311
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.1003568   -0.1592207   -0.0414929
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.3239686   -0.4628198   -0.1851175
6 months    PROBIT           BELARUS                        Full or late term    NA                -0.0858124   -0.1185655   -0.0530592
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0871519   -0.1274405   -0.0468634
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0453348   -0.1254795    0.0348099
24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0643995   -0.1364820    0.0076830
24 months   COHORTS          INDIA                          Full or late term    NA                -0.0709096   -0.1415873   -0.0002318
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0844138   -0.1403601   -0.0284675
24 months   IRC              INDIA                          Full or late term    NA                -0.0769248   -0.1492340   -0.0046155
24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0039842   -0.0659332    0.0579649
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.2562013   -0.4482494   -0.0641532
24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0193163   -0.2249317    0.1862992
