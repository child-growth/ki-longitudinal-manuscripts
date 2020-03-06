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

**Outcome Variable:** pers_wast

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

agecat        studyid          country                        gagebrth             pers_wast   n_cell       n
------------  ---------------  -----------------------------  ------------------  ----------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term            0      201     351
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term            1       14     351
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm                      0       49     351
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm                      1        3     351
0-24 months   CMC-V-BCS-2002   INDIA                          Early term                   0       81     351
0-24 months   CMC-V-BCS-2002   INDIA                          Early term                   1        3     351
0-24 months   COHORTS          GUATEMALA                      Full or late term            0      401     732
0-24 months   COHORTS          GUATEMALA                      Full or late term            1        8     732
0-24 months   COHORTS          GUATEMALA                      Preterm                      0      113     732
0-24 months   COHORTS          GUATEMALA                      Preterm                      1        6     732
0-24 months   COHORTS          GUATEMALA                      Early term                   0      198     732
0-24 months   COHORTS          GUATEMALA                      Early term                   1        6     732
0-24 months   COHORTS          INDIA                          Full or late term            0      470    1186
0-24 months   COHORTS          INDIA                          Full or late term            1       42    1186
0-24 months   COHORTS          INDIA                          Preterm                      0      248    1186
0-24 months   COHORTS          INDIA                          Preterm                      1       18    1186
0-24 months   COHORTS          INDIA                          Early term                   0      367    1186
0-24 months   COHORTS          INDIA                          Early term                   1       41    1186
0-24 months   COHORTS          PHILIPPINES                    Full or late term            0     1034    2789
0-24 months   COHORTS          PHILIPPINES                    Full or late term            1       47    2789
0-24 months   COHORTS          PHILIPPINES                    Preterm                      0      550    2789
0-24 months   COHORTS          PHILIPPINES                    Preterm                      1       34    2789
0-24 months   COHORTS          PHILIPPINES                    Early term                   0     1062    2789
0-24 months   COHORTS          PHILIPPINES                    Early term                   1       62    2789
0-24 months   IRC              INDIA                          Full or late term            0      225     390
0-24 months   IRC              INDIA                          Full or late term            1       25     390
0-24 months   IRC              INDIA                          Preterm                      0       34     390
0-24 months   IRC              INDIA                          Preterm                      1        8     390
0-24 months   IRC              INDIA                          Early term                   0       85     390
0-24 months   IRC              INDIA                          Early term                   1       13     390
0-24 months   Keneba           GAMBIA                         Full or late term            0      733    1579
0-24 months   Keneba           GAMBIA                         Full or late term            1       45    1579
0-24 months   Keneba           GAMBIA                         Preterm                      0      226    1579
0-24 months   Keneba           GAMBIA                         Preterm                      1       13    1579
0-24 months   Keneba           GAMBIA                         Early term                   0      533    1579
0-24 months   Keneba           GAMBIA                         Early term                   1       29    1579
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term            0      156     730
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term            1        2     730
0-24 months   NIH-Crypto       BANGLADESH                     Preterm                      0      241     730
0-24 months   NIH-Crypto       BANGLADESH                     Preterm                      1       14     730
0-24 months   NIH-Crypto       BANGLADESH                     Early term                   0      307     730
0-24 months   NIH-Crypto       BANGLADESH                     Early term                   1       10     730
0-24 months   PROBIT           BELARUS                        Full or late term            0     8401   16583
0-24 months   PROBIT           BELARUS                        Full or late term            1       72   16583
0-24 months   PROBIT           BELARUS                        Preterm                      0      574   16583
0-24 months   PROBIT           BELARUS                        Preterm                      1        6   16583
0-24 months   PROBIT           BELARUS                        Early term                   0     7474   16583
0-24 months   PROBIT           BELARUS                        Early term                   1       56   16583
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1212    2035
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       33    2035
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      306    2035
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1       11    2035
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      462    2035
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       11    2035
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term            0      174     337
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term            1       32     337
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm                      0       45     337
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm                      1        6     337
0-6 months    CMC-V-BCS-2002   INDIA                          Early term                   0       72     337
0-6 months    CMC-V-BCS-2002   INDIA                          Early term                   1        8     337
0-6 months    COHORTS          PHILIPPINES                    Full or late term            0      315     848
0-6 months    COHORTS          PHILIPPINES                    Full or late term            1       11     848
0-6 months    COHORTS          PHILIPPINES                    Preterm                      0      158     848
0-6 months    COHORTS          PHILIPPINES                    Preterm                      1       13     848
0-6 months    COHORTS          PHILIPPINES                    Early term                   0      323     848
0-6 months    COHORTS          PHILIPPINES                    Early term                   1       28     848
0-6 months    IRC              INDIA                          Full or late term            0      211     383
0-6 months    IRC              INDIA                          Full or late term            1       34     383
0-6 months    IRC              INDIA                          Preterm                      0       33     383
0-6 months    IRC              INDIA                          Preterm                      1        9     383
0-6 months    IRC              INDIA                          Early term                   0       78     383
0-6 months    IRC              INDIA                          Early term                   1       18     383
0-6 months    Keneba           GAMBIA                         Full or late term            0      658    1408
0-6 months    Keneba           GAMBIA                         Full or late term            1       21    1408
0-6 months    Keneba           GAMBIA                         Preterm                      0      209    1408
0-6 months    Keneba           GAMBIA                         Preterm                      1        9    1408
0-6 months    Keneba           GAMBIA                         Early term                   0      498    1408
0-6 months    Keneba           GAMBIA                         Early term                   1       13    1408
0-6 months    NIH-Crypto       BANGLADESH                     Full or late term            0       80     250
0-6 months    NIH-Crypto       BANGLADESH                     Full or late term            1        1     250
0-6 months    NIH-Crypto       BANGLADESH                     Preterm                      0       65     250
0-6 months    NIH-Crypto       BANGLADESH                     Preterm                      1        2     250
0-6 months    NIH-Crypto       BANGLADESH                     Early term                   0      100     250
0-6 months    NIH-Crypto       BANGLADESH                     Early term                   1        2     250
0-6 months    PROBIT           BELARUS                        Full or late term            0     6363   13534
0-6 months    PROBIT           BELARUS                        Full or late term            1      566   13534
0-6 months    PROBIT           BELARUS                        Preterm                      0      422   13534
0-6 months    PROBIT           BELARUS                        Preterm                      1       35   13534
0-6 months    PROBIT           BELARUS                        Early term                   0     5652   13534
0-6 months    PROBIT           BELARUS                        Early term                   1      496   13534
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1157    1934
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       29    1934
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      290    1934
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1        8    1934
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      438    1934
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       12    1934
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term            0      201     351
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term            1       14     351
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm                      0       49     351
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm                      1        3     351
6-24 months   CMC-V-BCS-2002   INDIA                          Early term                   0       81     351
6-24 months   CMC-V-BCS-2002   INDIA                          Early term                   1        3     351
6-24 months   COHORTS          GUATEMALA                      Full or late term            0      401     732
6-24 months   COHORTS          GUATEMALA                      Full or late term            1        8     732
6-24 months   COHORTS          GUATEMALA                      Preterm                      0      113     732
6-24 months   COHORTS          GUATEMALA                      Preterm                      1        6     732
6-24 months   COHORTS          GUATEMALA                      Early term                   0      198     732
6-24 months   COHORTS          GUATEMALA                      Early term                   1        6     732
6-24 months   COHORTS          INDIA                          Full or late term            0      470    1186
6-24 months   COHORTS          INDIA                          Full or late term            1       42    1186
6-24 months   COHORTS          INDIA                          Preterm                      0      248    1186
6-24 months   COHORTS          INDIA                          Preterm                      1       18    1186
6-24 months   COHORTS          INDIA                          Early term                   0      367    1186
6-24 months   COHORTS          INDIA                          Early term                   1       41    1186
6-24 months   COHORTS          PHILIPPINES                    Full or late term            0     1034    2789
6-24 months   COHORTS          PHILIPPINES                    Full or late term            1       47    2789
6-24 months   COHORTS          PHILIPPINES                    Preterm                      0      550    2789
6-24 months   COHORTS          PHILIPPINES                    Preterm                      1       34    2789
6-24 months   COHORTS          PHILIPPINES                    Early term                   0     1062    2789
6-24 months   COHORTS          PHILIPPINES                    Early term                   1       62    2789
6-24 months   IRC              INDIA                          Full or late term            0      225     390
6-24 months   IRC              INDIA                          Full or late term            1       25     390
6-24 months   IRC              INDIA                          Preterm                      0       34     390
6-24 months   IRC              INDIA                          Preterm                      1        8     390
6-24 months   IRC              INDIA                          Early term                   0       85     390
6-24 months   IRC              INDIA                          Early term                   1       13     390
6-24 months   Keneba           GAMBIA                         Full or late term            0      733    1579
6-24 months   Keneba           GAMBIA                         Full or late term            1       45    1579
6-24 months   Keneba           GAMBIA                         Preterm                      0      226    1579
6-24 months   Keneba           GAMBIA                         Preterm                      1       13    1579
6-24 months   Keneba           GAMBIA                         Early term                   0      533    1579
6-24 months   Keneba           GAMBIA                         Early term                   1       29    1579
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term            0      156     730
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term            1        2     730
6-24 months   NIH-Crypto       BANGLADESH                     Preterm                      0      241     730
6-24 months   NIH-Crypto       BANGLADESH                     Preterm                      1       14     730
6-24 months   NIH-Crypto       BANGLADESH                     Early term                   0      307     730
6-24 months   NIH-Crypto       BANGLADESH                     Early term                   1       10     730
6-24 months   PROBIT           BELARUS                        Full or late term            0     8401   16583
6-24 months   PROBIT           BELARUS                        Full or late term            1       72   16583
6-24 months   PROBIT           BELARUS                        Preterm                      0      574   16583
6-24 months   PROBIT           BELARUS                        Preterm                      1        6   16583
6-24 months   PROBIT           BELARUS                        Early term                   0     7474   16583
6-24 months   PROBIT           BELARUS                        Early term                   1       56   16583
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1212    2035
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       33    2035
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      306    2035
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1       11    2035
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      462    2035
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       11    2035


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/f9ba496a-3693-41c0-b14e-fa00d1820da4/d53e0a85-afd2-43c8-bcc1-286a92b0687d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f9ba496a-3693-41c0-b14e-fa00d1820da4/d53e0a85-afd2-43c8-bcc1-286a92b0687d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f9ba496a-3693-41c0-b14e-fa00d1820da4/d53e0a85-afd2-43c8-bcc1-286a92b0687d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f9ba496a-3693-41c0-b14e-fa00d1820da4/d53e0a85-afd2-43c8-bcc1-286a92b0687d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0195599   0.0061299   0.0329899
0-24 months   COHORTS          GUATEMALA                      Preterm              NA                0.0504202   0.0110797   0.0897606
0-24 months   COHORTS          GUATEMALA                      Early term           NA                0.0294118   0.0062107   0.0526128
0-24 months   COHORTS          INDIA                          Full or late term    NA                0.0820312   0.0582519   0.1058106
0-24 months   COHORTS          INDIA                          Preterm              NA                0.0676692   0.0374717   0.0978667
0-24 months   COHORTS          INDIA                          Early term           NA                0.1004902   0.0713048   0.1296756
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.0434783   0.0313193   0.0556372
0-24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.0582192   0.0392247   0.0772137
0-24 months   COHORTS          PHILIPPINES                    Early term           NA                0.0551601   0.0418116   0.0685087
0-24 months   IRC              INDIA                          Full or late term    NA                0.1000000   0.0627645   0.1372355
0-24 months   IRC              INDIA                          Preterm              NA                0.1904762   0.0715668   0.3093856
0-24 months   IRC              INDIA                          Early term           NA                0.1326531   0.0654100   0.1998961
0-24 months   Keneba           GAMBIA                         Full or late term    NA                0.0578406   0.0414319   0.0742493
0-24 months   Keneba           GAMBIA                         Preterm              NA                0.0543933   0.0256316   0.0831550
0-24 months   Keneba           GAMBIA                         Early term           NA                0.0516014   0.0333059   0.0698969
0-24 months   PROBIT           BELARUS                        Full or late term    NA                0.0084976   0.0040221   0.0129731
0-24 months   PROBIT           BELARUS                        Preterm              NA                0.0103448   0.0029413   0.0177483
0-24 months   PROBIT           BELARUS                        Early term           NA                0.0074369   0.0037707   0.0111031
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0265060   0.0175810   0.0354310
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0347003   0.0145481   0.0548525
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0232558   0.0096702   0.0368415
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1553398   0.1058014   0.2048782
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290906   0.2062035
0-6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                0.1000000   0.0341631   0.1658369
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.0337423   0.0141300   0.0533547
0-6 months    COHORTS          PHILIPPINES                    Preterm              NA                0.0760234   0.0362758   0.1157709
0-6 months    COHORTS          PHILIPPINES                    Early term           NA                0.0797721   0.0514109   0.1081332
0-6 months    IRC              INDIA                          Full or late term    NA                0.1387755   0.0954297   0.1821213
0-6 months    IRC              INDIA                          Preterm              NA                0.2142857   0.0900289   0.3385425
0-6 months    IRC              INDIA                          Early term           NA                0.1875000   0.1093206   0.2656794
0-6 months    Keneba           GAMBIA                         Full or late term    NA                0.0309278   0.0179016   0.0439541
0-6 months    Keneba           GAMBIA                         Preterm              NA                0.0412844   0.0148657   0.0677031
0-6 months    Keneba           GAMBIA                         Early term           NA                0.0254403   0.0117832   0.0390974
0-6 months    PROBIT           BELARUS                        Full or late term    NA                0.0816857   0.0531338   0.1102375
0-6 months    PROBIT           BELARUS                        Preterm              NA                0.0765864   0.0423172   0.1108556
0-6 months    PROBIT           BELARUS                        Early term           NA                0.0806766   0.0551479   0.1062054
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0244519   0.0156597   0.0332442
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0268456   0.0084896   0.0452017
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0266667   0.0117775   0.0415558
6-24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0195599   0.0061299   0.0329899
6-24 months   COHORTS          GUATEMALA                      Preterm              NA                0.0504202   0.0110797   0.0897606
6-24 months   COHORTS          GUATEMALA                      Early term           NA                0.0294118   0.0062107   0.0526128
6-24 months   COHORTS          INDIA                          Full or late term    NA                0.0820312   0.0582519   0.1058106
6-24 months   COHORTS          INDIA                          Preterm              NA                0.0676692   0.0374717   0.0978667
6-24 months   COHORTS          INDIA                          Early term           NA                0.1004902   0.0713048   0.1296756
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.0434783   0.0313193   0.0556372
6-24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.0582192   0.0392247   0.0772137
6-24 months   COHORTS          PHILIPPINES                    Early term           NA                0.0551601   0.0418116   0.0685087
6-24 months   IRC              INDIA                          Full or late term    NA                0.1000000   0.0627645   0.1372355
6-24 months   IRC              INDIA                          Preterm              NA                0.1904762   0.0715668   0.3093856
6-24 months   IRC              INDIA                          Early term           NA                0.1326531   0.0654100   0.1998961
6-24 months   Keneba           GAMBIA                         Full or late term    NA                0.0578406   0.0414319   0.0742493
6-24 months   Keneba           GAMBIA                         Preterm              NA                0.0543933   0.0256316   0.0831550
6-24 months   Keneba           GAMBIA                         Early term           NA                0.0516014   0.0333059   0.0698969
6-24 months   PROBIT           BELARUS                        Full or late term    NA                0.0084976   0.0040221   0.0129731
6-24 months   PROBIT           BELARUS                        Preterm              NA                0.0103448   0.0029413   0.0177483
6-24 months   PROBIT           BELARUS                        Early term           NA                0.0074369   0.0037707   0.0111031
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0265060   0.0175810   0.0354310
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0347003   0.0145481   0.0548525
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0232558   0.0096702   0.0368415


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0273224   0.0155047   0.0391401
0-24 months   COHORTS          INDIA                          NA                   NA                0.0851602   0.0692682   0.1010522
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0512729   0.0430860   0.0594597
0-24 months   IRC              INDIA                          NA                   NA                0.1179487   0.0858959   0.1500016
0-24 months   Keneba           GAMBIA                         NA                   NA                0.0550982   0.0438403   0.0663560
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0080806   0.0045539   0.0116073
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270270   0.0199797   0.0340743
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1364985   0.0997894   0.1732076
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0613208   0.0451635   0.0774781
0-6 months    IRC              INDIA                          NA                   NA                0.1592689   0.1225736   0.1959642
0-6 months    Keneba           GAMBIA                         NA                   NA                0.0305398   0.0215490   0.0395306
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0810551   0.0555982   0.1065120
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253361   0.0183307   0.0323414
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0273224   0.0155047   0.0391401
6-24 months   COHORTS          INDIA                          NA                   NA                0.0851602   0.0692682   0.1010522
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0512729   0.0430860   0.0594597
6-24 months   IRC              INDIA                          NA                   NA                0.1179487   0.0858959   0.1500016
6-24 months   Keneba           GAMBIA                         NA                   NA                0.0550982   0.0438403   0.0663560
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0080806   0.0045539   0.0116073
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270270   0.0199797   0.0340743


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    2.5777311   0.9117126   7.288149
0-24 months   COHORTS          GUATEMALA                      Early term           Full or late term    1.5036765   0.5284081   4.278971
0-24 months   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          Preterm              Full or late term    0.8249194   0.4845141   1.404483
0-24 months   COHORTS          INDIA                          Early term           Full or late term    1.2250233   0.8127084   1.846520
0-24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3390411   0.8713097   2.057857
0-24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2686833   0.8764772   1.836394
0-24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          Preterm              Full or late term    1.9047619   0.9207828   3.940254
0-24 months   IRC              INDIA                          Early term           Full or late term    1.3265306   0.7072263   2.488148
0-24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         Preterm              Full or late term    0.9403998   0.5160680   1.713634
0-24 months   Keneba           GAMBIA                         Early term           Full or late term    0.8921313   0.5665326   1.404859
0-24 months   PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Preterm              Full or late term    1.2173851   0.5398571   2.745220
0-24 months   PROBIT           BELARUS                        Early term           Full or late term    0.8751808   0.5286513   1.448859
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3091483   0.6690294   2.561725
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8773784   0.4470465   1.721953
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.7573529   0.3343982   1.715271
0-6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.6437500   0.3097517   1.337891
0-6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    2.2530569   1.0309696   4.923778
0-6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    2.3641544   1.1961048   4.672856
0-6 months    IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          Preterm              Full or late term    1.5441176   0.7991678   2.983478
0-6 months    IRC              INDIA                          Early term           Full or late term    1.3511029   0.8024776   2.274804
0-6 months    Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         Preterm              Full or late term    1.3348624   0.6204803   2.871739
0-6 months    Keneba           GAMBIA                         Early term           Full or late term    0.8225701   0.4157567   1.627446
0-6 months    PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Preterm              Full or late term    0.9375749   0.5853073   1.501855
0-6 months    PROBIT           BELARUS                        Early term           Full or late term    0.9876475   0.8049657   1.211788
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0978940   0.5070474   2.377236
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0905747   0.5613548   2.118719
6-24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    2.5777311   0.9117126   7.288149
6-24 months   COHORTS          GUATEMALA                      Early term           Full or late term    1.5036765   0.5284081   4.278971
6-24 months   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          Preterm              Full or late term    0.8249194   0.4845141   1.404483
6-24 months   COHORTS          INDIA                          Early term           Full or late term    1.2250233   0.8127084   1.846520
6-24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3390411   0.8713097   2.057857
6-24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2686833   0.8764772   1.836394
6-24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA                          Preterm              Full or late term    1.9047619   0.9207828   3.940254
6-24 months   IRC              INDIA                          Early term           Full or late term    1.3265306   0.7072263   2.488148
6-24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   Keneba           GAMBIA                         Preterm              Full or late term    0.9403998   0.5160680   1.713634
6-24 months   Keneba           GAMBIA                         Early term           Full or late term    0.8921313   0.5665326   1.404859
6-24 months   PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        Preterm              Full or late term    1.2173851   0.5398571   2.745220
6-24 months   PROBIT           BELARUS                        Early term           Full or late term    0.8751808   0.5286513   1.448859
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3091483   0.6690294   2.561725
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8773784   0.4470465   1.721953


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0077625   -0.0031218   0.0186468
0-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0031290   -0.0150313   0.0212892
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0077946   -0.0022184   0.0178076
0-24 months   IRC              INDIA                          Full or late term    NA                 0.0179487   -0.0072768   0.0431742
0-24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0027425   -0.0141732   0.0086883
0-24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0004170   -0.0023921   0.0015581
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0005210   -0.0051230   0.0061650
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0188413   -0.0471504   0.0094678
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                 0.0275784    0.0088712   0.0462857
0-6 months    IRC              INDIA                          Full or late term    NA                 0.0204934   -0.0081709   0.0491577
0-6 months    Keneba           GAMBIA                         Full or late term    NA                -0.0003881   -0.0097080   0.0089318
0-6 months    PROBIT           BELARUS                        Full or late term    NA                -0.0006305   -0.0087556   0.0074945
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0008842   -0.0047344   0.0065027
6-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0077625   -0.0031218   0.0186468
6-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0031290   -0.0150313   0.0212892
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0077946   -0.0022184   0.0178076
6-24 months   IRC              INDIA                          Full or late term    NA                 0.0179487   -0.0072768   0.0431742
6-24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0027425   -0.0141732   0.0086883
6-24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0004170   -0.0023921   0.0015581
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0005210   -0.0051230   0.0061650


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.2841076   -0.2167890   0.5788079
0-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0367420   -0.2018407   0.2279625
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.1520219   -0.0658550   0.3253615
0-24 months   IRC              INDIA                          Full or late term    NA                 0.1521739   -0.0870878   0.3387755
0-24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0497740   -0.2788881   0.1382942
0-24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0516073   -0.3205094   0.1625369
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0192771   -0.2133771   0.2073219
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1380329   -0.3629649   0.0497782
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                 0.4497404    0.0798625   0.6709344
0-6 months    IRC              INDIA                          Full or late term    NA                 0.1286718   -0.0692198   0.2899375
0-6 months    Keneba           GAMBIA                         Full or late term    NA                -0.0127068   -0.3688196   0.2507595
0-6 months    PROBIT           BELARUS                        Full or late term    NA                -0.0077793   -0.1125463   0.0871220
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0348969   -0.2141578   0.2328642
6-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.2841076   -0.2167890   0.5788079
6-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0367420   -0.2018407   0.2279625
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.1520219   -0.0658550   0.3253615
6-24 months   IRC              INDIA                          Full or late term    NA                 0.1521739   -0.0870878   0.3387755
6-24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0497740   -0.2788881   0.1382942
6-24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0516073   -0.3205094   0.1625369
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0192771   -0.2133771   0.2073219
