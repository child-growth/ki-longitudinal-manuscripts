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

* arm
* sex
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

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
0-24 months   JiVitA-3         BANGLADESH                     Full or late term            0     7749   15049
0-24 months   JiVitA-3         BANGLADESH                     Full or late term            1      434   15049
0-24 months   JiVitA-3         BANGLADESH                     Preterm                      0     2534   15049
0-24 months   JiVitA-3         BANGLADESH                     Preterm                      1      172   15049
0-24 months   JiVitA-3         BANGLADESH                     Early term                   0     3908   15049
0-24 months   JiVitA-3         BANGLADESH                     Early term                   1      252   15049
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
0-6 months    JiVitA-3         BANGLADESH                     Full or late term            0       24      46
0-6 months    JiVitA-3         BANGLADESH                     Full or late term            1        0      46
0-6 months    JiVitA-3         BANGLADESH                     Preterm                      0       10      46
0-6 months    JiVitA-3         BANGLADESH                     Preterm                      1        0      46
0-6 months    JiVitA-3         BANGLADESH                     Early term                   0       11      46
0-6 months    JiVitA-3         BANGLADESH                     Early term                   1        1      46
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
6-24 months   JiVitA-3         BANGLADESH                     Full or late term            0     7749   15049
6-24 months   JiVitA-3         BANGLADESH                     Full or late term            1      434   15049
6-24 months   JiVitA-3         BANGLADESH                     Preterm                      0     2534   15049
6-24 months   JiVitA-3         BANGLADESH                     Preterm                      1      172   15049
6-24 months   JiVitA-3         BANGLADESH                     Early term                   0     3908   15049
6-24 months   JiVitA-3         BANGLADESH                     Early term                   1      252   15049
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
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/0dd216ea-bb3d-44c7-9d5f-e36583725811/bf8e4e9c-2fdd-4aa8-acb4-5bcc7c7ac814/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0dd216ea-bb3d-44c7-9d5f-e36583725811/bf8e4e9c-2fdd-4aa8-acb4-5bcc7c7ac814/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0dd216ea-bb3d-44c7-9d5f-e36583725811/bf8e4e9c-2fdd-4aa8-acb4-5bcc7c7ac814/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0dd216ea-bb3d-44c7-9d5f-e36583725811/bf8e4e9c-2fdd-4aa8-acb4-5bcc7c7ac814/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0195599   0.0061299   0.0329899
0-24 months   COHORTS          GUATEMALA                      Preterm              NA                0.0504202   0.0110797   0.0897606
0-24 months   COHORTS          GUATEMALA                      Early term           NA                0.0294118   0.0062107   0.0526128
0-24 months   COHORTS          INDIA                          Full or late term    NA                0.0812885   0.0576311   0.1049459
0-24 months   COHORTS          INDIA                          Preterm              NA                0.0663348   0.0364354   0.0962342
0-24 months   COHORTS          INDIA                          Early term           NA                0.1012606   0.0718684   0.1306529
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.0433034   0.0311468   0.0554601
0-24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.0580971   0.0390432   0.0771511
0-24 months   COHORTS          PHILIPPINES                    Early term           NA                0.0551603   0.0417995   0.0685210
0-24 months   IRC              INDIA                          Full or late term    NA                0.1000000   0.0627645   0.1372355
0-24 months   IRC              INDIA                          Preterm              NA                0.1904762   0.0715668   0.3093856
0-24 months   IRC              INDIA                          Early term           NA                0.1326531   0.0654100   0.1998961
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.0534124   0.0479372   0.0588875
0-24 months   JiVitA-3         BANGLADESH                     Preterm              NA                0.0610206   0.0516393   0.0704020
0-24 months   JiVitA-3         BANGLADESH                     Early term           NA                0.0607430   0.0530086   0.0684775
0-24 months   Keneba           GAMBIA                         Full or late term    NA                0.0569295   0.0407069   0.0731522
0-24 months   Keneba           GAMBIA                         Preterm              NA                0.0565030   0.0267239   0.0862821
0-24 months   Keneba           GAMBIA                         Early term           NA                0.0514470   0.0331800   0.0697140
0-24 months   PROBIT           BELARUS                        Full or late term    NA                0.0084976   0.0040221   0.0129731
0-24 months   PROBIT           BELARUS                        Preterm              NA                0.0103448   0.0029413   0.0177483
0-24 months   PROBIT           BELARUS                        Early term           NA                0.0074369   0.0037707   0.0111031
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0264238   0.0174808   0.0353668
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0327149   0.0125667   0.0528631
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0237622   0.0098553   0.0376690
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1553398   0.1058014   0.2048782
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290906   0.2062035
0-6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                0.1000000   0.0341631   0.1658369
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.0332970   0.0137909   0.0528031
0-6 months    COHORTS          PHILIPPINES                    Preterm              NA                0.0740556   0.0334946   0.1146166
0-6 months    COHORTS          PHILIPPINES                    Early term           NA                0.0806849   0.0520171   0.1093528
0-6 months    IRC              INDIA                          Full or late term    NA                0.1387755   0.0954297   0.1821213
0-6 months    IRC              INDIA                          Preterm              NA                0.2142857   0.0900289   0.3385425
0-6 months    IRC              INDIA                          Early term           NA                0.1875000   0.1093206   0.2656794
0-6 months    Keneba           GAMBIA                         Full or late term    NA                0.0309278   0.0179016   0.0439541
0-6 months    Keneba           GAMBIA                         Preterm              NA                0.0412844   0.0148657   0.0677031
0-6 months    Keneba           GAMBIA                         Early term           NA                0.0254403   0.0117832   0.0390974
0-6 months    PROBIT           BELARUS                        Full or late term    NA                0.0797349   0.0511224   0.1083473
0-6 months    PROBIT           BELARUS                        Preterm              NA                0.0734266   0.0392000   0.1076531
0-6 months    PROBIT           BELARUS                        Early term           NA                0.0798157   0.0540597   0.1055717
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0244519   0.0156597   0.0332442
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0268456   0.0084896   0.0452017
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0266667   0.0117775   0.0415558
6-24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0195599   0.0061299   0.0329899
6-24 months   COHORTS          GUATEMALA                      Preterm              NA                0.0504202   0.0110797   0.0897606
6-24 months   COHORTS          GUATEMALA                      Early term           NA                0.0294118   0.0062107   0.0526128
6-24 months   COHORTS          INDIA                          Full or late term    NA                0.0811152   0.0574942   0.1047361
6-24 months   COHORTS          INDIA                          Preterm              NA                0.0662977   0.0363291   0.0962663
6-24 months   COHORTS          INDIA                          Early term           NA                0.1016869   0.0722224   0.1311515
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.0427989   0.0305844   0.0550133
6-24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.0570867   0.0380854   0.0760880
6-24 months   COHORTS          PHILIPPINES                    Early term           NA                0.0541808   0.0408116   0.0675499
6-24 months   IRC              INDIA                          Full or late term    NA                0.1000000   0.0627645   0.1372355
6-24 months   IRC              INDIA                          Preterm              NA                0.1904762   0.0715668   0.3093856
6-24 months   IRC              INDIA                          Early term           NA                0.1326531   0.0654100   0.1998961
6-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.0533075   0.0478475   0.0587675
6-24 months   JiVitA-3         BANGLADESH                     Preterm              NA                0.0618746   0.0525081   0.0712410
6-24 months   JiVitA-3         BANGLADESH                     Early term           NA                0.0607446   0.0529698   0.0685195
6-24 months   Keneba           GAMBIA                         Full or late term    NA                0.0570803   0.0408426   0.0733179
6-24 months   Keneba           GAMBIA                         Preterm              NA                0.0562764   0.0267479   0.0858048
6-24 months   Keneba           GAMBIA                         Early term           NA                0.0515337   0.0332359   0.0698315
6-24 months   PROBIT           BELARUS                        Full or late term    NA                0.0084976   0.0040221   0.0129731
6-24 months   PROBIT           BELARUS                        Preterm              NA                0.0103448   0.0029413   0.0177483
6-24 months   PROBIT           BELARUS                        Early term           NA                0.0074369   0.0037707   0.0111031
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0264684   0.0175391   0.0353976
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0340431   0.0140356   0.0540506
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0237174   0.0098816   0.0375532


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0273224   0.0155047   0.0391401
0-24 months   COHORTS          INDIA                          NA                   NA                0.0851602   0.0692682   0.1010522
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0512729   0.0430860   0.0594597
0-24 months   IRC              INDIA                          NA                   NA                0.1179487   0.0858959   0.1500016
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0570138   0.0528460   0.0611815
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
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0570138   0.0528460   0.0611815
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
0-24 months   COHORTS          INDIA                          Preterm              Full or late term    0.8160414   0.4774846   1.394650
0-24 months   COHORTS          INDIA                          Early term           Full or late term    1.2456949   0.8260118   1.878612
0-24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3416289   0.8713037   2.065833
0-24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2738084   0.8792378   1.845448
0-24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          Preterm              Full or late term    1.9047619   0.9207828   3.940254
0-24 months   IRC              INDIA                          Early term           Full or late term    1.3265306   0.7072263   2.488148
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.1424437   0.9514380   1.371795
0-24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.1372467   0.9733410   1.328753
0-24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         Preterm              Full or late term    0.9925074   0.5450412   1.807333
0-24 months   Keneba           GAMBIA                         Early term           Full or late term    0.9036966   0.5731515   1.424872
0-24 months   PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Preterm              Full or late term    1.2173851   0.5398571   2.745220
0-24 months   PROBIT           BELARUS                        Early term           Full or late term    0.8751808   0.5286513   1.448859
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.2380856   0.6131391   2.500013
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8992723   0.4574220   1.767931
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.7573529   0.3343982   1.715271
0-6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.6437500   0.3097517   1.337891
0-6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    2.2240918   0.9967240   4.962843
0-6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    2.4231884   1.2205477   4.810825
0-6 months    IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          Preterm              Full or late term    1.5441176   0.7991678   2.983478
0-6 months    IRC              INDIA                          Early term           Full or late term    1.3511029   0.8024776   2.274804
0-6 months    Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         Preterm              Full or late term    1.3348624   0.6204803   2.871739
0-6 months    Keneba           GAMBIA                         Early term           Full or late term    0.8225701   0.4157567   1.627446
0-6 months    PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Preterm              Full or late term    0.9208840   0.5602891   1.513553
0-6 months    PROBIT           BELARUS                        Early term           Full or late term    1.0010136   0.8052415   1.244382
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0978940   0.5070474   2.377236
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0905747   0.5613548   2.118719
6-24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    2.5777311   0.9117126   7.288149
6-24 months   COHORTS          GUATEMALA                      Early term           Full or late term    1.5036765   0.5284081   4.278971
6-24 months   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          Preterm              Full or late term    0.8173281   0.4777689   1.398219
6-24 months   COHORTS          INDIA                          Early term           Full or late term    1.2536118   0.8315478   1.889900
6-24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3338369   0.8604526   2.067657
6-24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2659394   0.8679189   1.846489
6-24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA                          Preterm              Full or late term    1.9047619   0.9207828   3.940254
6-24 months   IRC              INDIA                          Early term           Full or late term    1.3265306   0.7072263   2.488148
6-24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.1607104   0.9683448   1.391290
6-24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.1395142   0.9748696   1.331965
6-24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   Keneba           GAMBIA                         Preterm              Full or late term    0.9859162   0.5427304   1.791001
6-24 months   Keneba           GAMBIA                         Early term           Full or late term    0.9028290   0.5728408   1.422909
6-24 months   PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        Preterm              Full or late term    1.2173851   0.5398571   2.745220
6-24 months   PROBIT           BELARUS                        Early term           Full or late term    0.8751808   0.5286513   1.448859
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.2861794   0.6532504   2.532348
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8960662   0.4568342   1.757606


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0077625   -0.0031218   0.0186468
0-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0038717   -0.0141992   0.0219426
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0079694   -0.0020356   0.0179745
0-24 months   IRC              INDIA                          Full or late term    NA                 0.0179487   -0.0072768   0.0431742
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0036014    0.0000534   0.0071494
0-24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0018314   -0.0131461   0.0094833
0-24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0004170   -0.0023921   0.0015581
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0006033   -0.0050521   0.0062586
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0188413   -0.0471504   0.0094678
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                 0.0280237    0.0093452   0.0467023
0-6 months    IRC              INDIA                          Full or late term    NA                 0.0204934   -0.0081709   0.0491577
0-6 months    Keneba           GAMBIA                         Full or late term    NA                -0.0003881   -0.0097080   0.0089318
0-6 months    PROBIT           BELARUS                        Full or late term    NA                 0.0013202   -0.0075399   0.0101804
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0008842   -0.0047344   0.0065027
6-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0077625   -0.0031218   0.0186468
6-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0040450   -0.0139947   0.0220848
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0084740   -0.0015778   0.0185258
6-24 months   IRC              INDIA                          Full or late term    NA                 0.0179487   -0.0072768   0.0431742
6-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0037063    0.0001578   0.0072547
6-24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0019821   -0.0132964   0.0093321
6-24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0004170   -0.0023921   0.0015581
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0005587   -0.0050842   0.0062015


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.2841076   -0.2167890   0.5788079
0-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0454640   -0.1920239   0.2356370
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.1554318   -0.0623780   0.3285860
0-24 months   IRC              INDIA                          Full or late term    NA                 0.1521739   -0.0870878   0.3387755
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0631668   -0.0013631   0.1235383
0-24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0332384   -0.2602861   0.1529054
0-24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0516073   -0.3205094   0.1625369
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0223203   -0.2109558   0.2106585
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1380329   -0.3629649   0.0497782
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                 0.4570026    0.0876470   0.6768288
0-6 months    IRC              INDIA                          Full or late term    NA                 0.1286718   -0.0692198   0.2899375
0-6 months    Keneba           GAMBIA                         Full or late term    NA                -0.0127068   -0.3688196   0.2507595
0-6 months    PROBIT           BELARUS                        Full or late term    NA                 0.0162882   -0.1006214   0.1207795
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0348969   -0.2141578   0.2328642
6-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.2841076   -0.2167890   0.5788079
6-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0474991   -0.1895816   0.2373302
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.1652726   -0.0541229   0.3390052
6-24 months   IRC              INDIA                          Full or late term    NA                 0.1521739   -0.0870878   0.3387755
6-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0650064    0.0004821   0.1253654
6-24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0359742   -0.2629337   0.1501989
6-24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0516073   -0.3205094   0.1625369
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0206705   -0.2119779   0.2086603
