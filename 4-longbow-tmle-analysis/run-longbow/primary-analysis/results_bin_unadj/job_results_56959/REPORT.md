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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        gagebrth             wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  ------------------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term              0       68    299
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term              1      117    299
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm                        0       21    299
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm                        1       28    299
0-24 months   CMC-V-BCS-2002   INDIA                          Early term                     0       21    299
0-24 months   CMC-V-BCS-2002   INDIA                          Early term                     1       44    299
0-24 months   COHORTS          GUATEMALA                      Full or late term              0       66    280
0-24 months   COHORTS          GUATEMALA                      Full or late term              1       75    280
0-24 months   COHORTS          GUATEMALA                      Preterm                        0       35    280
0-24 months   COHORTS          GUATEMALA                      Preterm                        1       19    280
0-24 months   COHORTS          GUATEMALA                      Early term                     0       46    280
0-24 months   COHORTS          GUATEMALA                      Early term                     1       39    280
0-24 months   COHORTS          INDIA                          Full or late term              0      163    523
0-24 months   COHORTS          INDIA                          Full or late term              1       46    523
0-24 months   COHORTS          INDIA                          Preterm                        0       96    523
0-24 months   COHORTS          INDIA                          Preterm                        1       38    523
0-24 months   COHORTS          INDIA                          Early term                     0      127    523
0-24 months   COHORTS          INDIA                          Early term                     1       53    523
0-24 months   COHORTS          PHILIPPINES                    Full or late term              0      219   1675
0-24 months   COHORTS          PHILIPPINES                    Full or late term              1      352   1675
0-24 months   COHORTS          PHILIPPINES                    Preterm                        0      156   1675
0-24 months   COHORTS          PHILIPPINES                    Preterm                        1      238   1675
0-24 months   COHORTS          PHILIPPINES                    Early term                     0      285   1675
0-24 months   COHORTS          PHILIPPINES                    Early term                     1      425   1675
0-24 months   IRC              INDIA                          Full or late term              0       92    382
0-24 months   IRC              INDIA                          Full or late term              1      134    382
0-24 months   IRC              INDIA                          Preterm                        0       24    382
0-24 months   IRC              INDIA                          Preterm                        1       29    382
0-24 months   IRC              INDIA                          Early term                     0       39    382
0-24 months   IRC              INDIA                          Early term                     1       64    382
0-24 months   Keneba           GAMBIA                         Full or late term              0      231   1249
0-24 months   Keneba           GAMBIA                         Full or late term              1      399   1249
0-24 months   Keneba           GAMBIA                         Preterm                        0       74   1249
0-24 months   Keneba           GAMBIA                         Preterm                        1      121   1249
0-24 months   Keneba           GAMBIA                         Early term                     0      141   1249
0-24 months   Keneba           GAMBIA                         Early term                     1      283   1249
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term              0       16    310
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term              1       25    310
0-24 months   NIH-Crypto       BANGLADESH                     Preterm                        0       57    310
0-24 months   NIH-Crypto       BANGLADESH                     Preterm                        1       92    310
0-24 months   NIH-Crypto       BANGLADESH                     Early term                     0       44    310
0-24 months   NIH-Crypto       BANGLADESH                     Early term                     1       76    310
0-24 months   PROBIT           BELARUS                        Full or late term              0      259   4408
0-24 months   PROBIT           BELARUS                        Full or late term              1     1921   4408
0-24 months   PROBIT           BELARUS                        Preterm                        0       27   4408
0-24 months   PROBIT           BELARUS                        Preterm                        1      136   4408
0-24 months   PROBIT           BELARUS                        Early term                     0      240   4408
0-24 months   PROBIT           BELARUS                        Early term                     1     1825   4408
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0      128    666
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      247    666
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0       52    666
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       77    666
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0       67    666
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       95    666
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term              0       40    185
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term              1       78    185
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm                        0        7    185
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm                        1       20    185
0-6 months    CMC-V-BCS-2002   INDIA                          Early term                     0       13    185
0-6 months    CMC-V-BCS-2002   INDIA                          Early term                     1       27    185
0-6 months    COHORTS          GUATEMALA                      Full or late term              0       16    161
0-6 months    COHORTS          GUATEMALA                      Full or late term              1       72    161
0-6 months    COHORTS          GUATEMALA                      Preterm                        0       10    161
0-6 months    COHORTS          GUATEMALA                      Preterm                        1       17    161
0-6 months    COHORTS          GUATEMALA                      Early term                     0        8    161
0-6 months    COHORTS          GUATEMALA                      Early term                     1       38    161
0-6 months    COHORTS          INDIA                          Full or late term              0       98    344
0-6 months    COHORTS          INDIA                          Full or late term              1       46    344
0-6 months    COHORTS          INDIA                          Preterm                        0       46    344
0-6 months    COHORTS          INDIA                          Preterm                        1       38    344
0-6 months    COHORTS          INDIA                          Early term                     0       63    344
0-6 months    COHORTS          INDIA                          Early term                     1       53    344
0-6 months    COHORTS          PHILIPPINES                    Full or late term              0       63    744
0-6 months    COHORTS          PHILIPPINES                    Full or late term              1      182    744
0-6 months    COHORTS          PHILIPPINES                    Preterm                        0       46    744
0-6 months    COHORTS          PHILIPPINES                    Preterm                        1      134    744
0-6 months    COHORTS          PHILIPPINES                    Early term                     0       87    744
0-6 months    COHORTS          PHILIPPINES                    Early term                     1      232    744
0-6 months    IRC              INDIA                          Full or late term              0       51    230
0-6 months    IRC              INDIA                          Full or late term              1       84    230
0-6 months    IRC              INDIA                          Preterm                        0        9    230
0-6 months    IRC              INDIA                          Preterm                        1       17    230
0-6 months    IRC              INDIA                          Early term                     0       23    230
0-6 months    IRC              INDIA                          Early term                     1       46    230
0-6 months    Keneba           GAMBIA                         Full or late term              0       53    555
0-6 months    Keneba           GAMBIA                         Full or late term              1      231    555
0-6 months    Keneba           GAMBIA                         Preterm                        0       20    555
0-6 months    Keneba           GAMBIA                         Preterm                        1       66    555
0-6 months    Keneba           GAMBIA                         Early term                     0       25    555
0-6 months    Keneba           GAMBIA                         Early term                     1      160    555
0-6 months    NIH-Crypto       BANGLADESH                     Full or late term              0        3    197
0-6 months    NIH-Crypto       BANGLADESH                     Full or late term              1       22    197
0-6 months    NIH-Crypto       BANGLADESH                     Preterm                        0       11    197
0-6 months    NIH-Crypto       BANGLADESH                     Preterm                        1       85    197
0-6 months    NIH-Crypto       BANGLADESH                     Early term                     0        7    197
0-6 months    NIH-Crypto       BANGLADESH                     Early term                     1       69    197
0-6 months    PROBIT           BELARUS                        Full or late term              0      211   4267
0-6 months    PROBIT           BELARUS                        Full or late term              1     1905   4267
0-6 months    PROBIT           BELARUS                        Preterm                        0       23   4267
0-6 months    PROBIT           BELARUS                        Preterm                        1      135   4267
0-6 months    PROBIT           BELARUS                        Early term                     0      189   4267
0-6 months    PROBIT           BELARUS                        Early term                     1     1804   4267
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0       52    316
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      133    316
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0       20    316
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       41    316
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0       23    316
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       47    316
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term              0       28    114
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term              1       39    114
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm                        0       14    114
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm                        1        8    114
6-24 months   CMC-V-BCS-2002   INDIA                          Early term                     0        8    114
6-24 months   CMC-V-BCS-2002   INDIA                          Early term                     1       17    114
6-24 months   COHORTS          GUATEMALA                      Full or late term              0       50    119
6-24 months   COHORTS          GUATEMALA                      Full or late term              1        3    119
6-24 months   COHORTS          GUATEMALA                      Preterm                        0       25    119
6-24 months   COHORTS          GUATEMALA                      Preterm                        1        2    119
6-24 months   COHORTS          GUATEMALA                      Early term                     0       38    119
6-24 months   COHORTS          GUATEMALA                      Early term                     1        1    119
6-24 months   COHORTS          INDIA                          Full or late term              0       65    179
6-24 months   COHORTS          INDIA                          Full or late term              1        0    179
6-24 months   COHORTS          INDIA                          Preterm                        0       50    179
6-24 months   COHORTS          INDIA                          Preterm                        1        0    179
6-24 months   COHORTS          INDIA                          Early term                     0       64    179
6-24 months   COHORTS          INDIA                          Early term                     1        0    179
6-24 months   COHORTS          PHILIPPINES                    Full or late term              0      156    931
6-24 months   COHORTS          PHILIPPINES                    Full or late term              1      170    931
6-24 months   COHORTS          PHILIPPINES                    Preterm                        0      110    931
6-24 months   COHORTS          PHILIPPINES                    Preterm                        1      104    931
6-24 months   COHORTS          PHILIPPINES                    Early term                     0      198    931
6-24 months   COHORTS          PHILIPPINES                    Early term                     1      193    931
6-24 months   IRC              INDIA                          Full or late term              0       41    152
6-24 months   IRC              INDIA                          Full or late term              1       50    152
6-24 months   IRC              INDIA                          Preterm                        0       15    152
6-24 months   IRC              INDIA                          Preterm                        1       12    152
6-24 months   IRC              INDIA                          Early term                     0       16    152
6-24 months   IRC              INDIA                          Early term                     1       18    152
6-24 months   Keneba           GAMBIA                         Full or late term              0      178    694
6-24 months   Keneba           GAMBIA                         Full or late term              1      168    694
6-24 months   Keneba           GAMBIA                         Preterm                        0       54    694
6-24 months   Keneba           GAMBIA                         Preterm                        1       55    694
6-24 months   Keneba           GAMBIA                         Early term                     0      116    694
6-24 months   Keneba           GAMBIA                         Early term                     1      123    694
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term              0       13    113
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term              1        3    113
6-24 months   NIH-Crypto       BANGLADESH                     Preterm                        0       46    113
6-24 months   NIH-Crypto       BANGLADESH                     Preterm                        1        7    113
6-24 months   NIH-Crypto       BANGLADESH                     Early term                     0       37    113
6-24 months   NIH-Crypto       BANGLADESH                     Early term                     1        7    113
6-24 months   PROBIT           BELARUS                        Full or late term              0       48    141
6-24 months   PROBIT           BELARUS                        Full or late term              1       16    141
6-24 months   PROBIT           BELARUS                        Preterm                        0        4    141
6-24 months   PROBIT           BELARUS                        Preterm                        1        1    141
6-24 months   PROBIT           BELARUS                        Early term                     0       51    141
6-24 months   PROBIT           BELARUS                        Early term                     1       21    141
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0       76    350
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      114    350
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0       32    350
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       36    350
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0       44    350
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       48    350


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
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
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

* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/3d435e2b-9db6-4d5f-9148-f128284aa677/73c9303f-0efc-442e-a685-1a609ae0bb45/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3d435e2b-9db6-4d5f-9148-f128284aa677/73c9303f-0efc-442e-a685-1a609ae0bb45/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3d435e2b-9db6-4d5f-9148-f128284aa677/73c9303f-0efc-442e-a685-1a609ae0bb45/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3d435e2b-9db6-4d5f-9148-f128284aa677/73c9303f-0efc-442e-a685-1a609ae0bb45/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6324324   0.5625487   0.7023162
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5714286   0.4229572   0.7199000
0-24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.6769231   0.5408455   0.8130007
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.5319149   0.4468531   0.6169767
0-24 months   COHORTS          GUATEMALA                      Preterm              NA                0.3518519   0.2184275   0.4852762
0-24 months   COHORTS          GUATEMALA                      Early term           NA                0.4588235   0.3513175   0.5663296
0-24 months   COHORTS          INDIA                          Full or late term    NA                0.2200957   0.1607962   0.2793952
0-24 months   COHORTS          INDIA                          Preterm              NA                0.2835821   0.2080763   0.3590879
0-24 months   COHORTS          INDIA                          Early term           NA                0.2944444   0.2285314   0.3603575
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.6164623   0.5734554   0.6594693
0-24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.6040609   0.5540745   0.6540474
0-24 months   COHORTS          PHILIPPINES                    Early term           NA                0.5985915   0.5610039   0.6361792
0-24 months   IRC              INDIA                          Full or late term    NA                0.5929204   0.5209401   0.6649006
0-24 months   IRC              INDIA                          Preterm              NA                0.5471698   0.4158117   0.6785279
0-24 months   IRC              INDIA                          Early term           NA                0.6213592   0.5268794   0.7158391
0-24 months   Keneba           GAMBIA                         Full or late term    NA                0.6333333   0.5941656   0.6725011
0-24 months   Keneba           GAMBIA                         Preterm              NA                0.6205128   0.5465714   0.6944543
0-24 months   Keneba           GAMBIA                         Early term           NA                0.6674528   0.6182486   0.7166571
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.6097561   0.4654735   0.7540387
0-24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.6174497   0.5406130   0.6942863
0-24 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.6333333   0.5433479   0.7233188
0-24 months   PROBIT           BELARUS                        Full or late term    NA                0.8811927   0.8677274   0.8946579
0-24 months   PROBIT           BELARUS                        Preterm              NA                0.8343558   0.7760612   0.8926504
0-24 months   PROBIT           BELARUS                        Early term           NA                0.8837772   0.8701047   0.8974498
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.6586667   0.6078603   0.7094731
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.5968992   0.5064015   0.6873969
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5864198   0.5062428   0.6665967
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6610169   0.5757140   0.7463199
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7407407   0.5666423   0.9148392
0-6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                0.6750000   0.5258441   0.8241559
0-6 months    COHORTS          GUATEMALA                      Full or late term    NA                0.8181818   0.7368393   0.8995243
0-6 months    COHORTS          GUATEMALA                      Preterm              NA                0.6296296   0.4457667   0.8134926
0-6 months    COHORTS          GUATEMALA                      Early term           NA                0.8260870   0.7207224   0.9314515
0-6 months    COHORTS          INDIA                          Full or late term    NA                0.3194444   0.2431789   0.3957100
0-6 months    COHORTS          INDIA                          Preterm              NA                0.4523810   0.3457871   0.5589748
0-6 months    COHORTS          INDIA                          Early term           NA                0.4568966   0.3661142   0.5476789
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.7428571   0.6882172   0.7974970
0-6 months    COHORTS          PHILIPPINES                    Preterm              NA                0.7444444   0.6801122   0.8087766
0-6 months    COHORTS          PHILIPPINES                    Early term           NA                0.7272727   0.6781705   0.7763749
0-6 months    IRC              INDIA                          Full or late term    NA                0.6222222   0.5361698   0.7082747
0-6 months    IRC              INDIA                          Preterm              NA                0.6538462   0.4797295   0.8279628
0-6 months    IRC              INDIA                          Early term           NA                0.6666667   0.5568093   0.7765240
0-6 months    Keneba           GAMBIA                         Full or late term    NA                0.8133803   0.7695675   0.8571931
0-6 months    Keneba           GAMBIA                         Preterm              NA                0.7674419   0.6814375   0.8534462
0-6 months    Keneba           GAMBIA                         Early term           NA                0.8648649   0.8169793   0.9127504
0-6 months    PROBIT           BELARUS                        Full or late term    NA                0.9002836   0.8874144   0.9131528
0-6 months    PROBIT           BELARUS                        Preterm              NA                0.8544304   0.7988728   0.9099880
0-6 months    PROBIT           BELARUS                        Early term           NA                0.9051681   0.8922559   0.9180803
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.7189189   0.6530656   0.7847722
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.6721311   0.5518529   0.7924094
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.6714286   0.5614299   0.7814273
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.5820896   0.4594727   0.7047064
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3636364   0.1308138   0.5964590
6-24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.6800000   0.4890151   0.8709849
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.5214724   0.4634910   0.5794538
6-24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.4859813   0.4159761   0.5559865
6-24 months   COHORTS          PHILIPPINES                    Early term           NA                0.4936061   0.4414105   0.5458018
6-24 months   IRC              INDIA                          Full or late term    NA                0.5494505   0.4419865   0.6569146
6-24 months   IRC              INDIA                          Preterm              NA                0.4444444   0.2479491   0.6409398
6-24 months   IRC              INDIA                          Early term           NA                0.5294118   0.3414334   0.7173901
6-24 months   Keneba           GAMBIA                         Full or late term    NA                0.4855491   0.4289230   0.5421753
6-24 months   Keneba           GAMBIA                         Preterm              NA                0.5045872   0.4038057   0.6053686
6-24 months   Keneba           GAMBIA                         Early term           NA                0.5146444   0.4472547   0.5820340
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.6000000   0.5285487   0.6714513
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.5294118   0.4055054   0.6533181
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5217391   0.4145563   0.6289220


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6321070   0.5744109   0.6898031
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4750000   0.4147665   0.5352335
0-24 months   COHORTS          INDIA                          NA                   NA                0.2619503   0.2237649   0.3001357
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6059701   0.5813402   0.6306001
0-24 months   IRC              INDIA                          NA                   NA                0.5942408   0.5412823   0.6471994
0-24 months   Keneba           GAMBIA                         NA                   NA                0.6429143   0.6145621   0.6712666
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROBIT           BELARUS                        NA                   NA                0.8806715   0.8711794   0.8901636
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6291291   0.5901846   0.6680736
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.6756757   0.6074152   0.7439361
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.7888199   0.7258783   0.8517615
0-6 months    COHORTS          INDIA                          NA                   NA                0.3982558   0.3464489   0.4500628
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.7365591   0.7047881   0.7683302
0-6 months    IRC              INDIA                          NA                   NA                0.6391304   0.5756367   0.7026242
0-6 months    Keneba           GAMBIA                         NA                   NA                0.8234234   0.7927195   0.8541273
0-6 months    PROBIT           BELARUS                        NA                   NA                0.9008671   0.8918443   0.9098900
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6993671   0.6481378   0.7505964
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.5614035   0.4645960   0.6582110
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.5016112   0.4676556   0.5355667
6-24 months   IRC              INDIA                          NA                   NA                0.5263158   0.4415211   0.6111105
6-24 months   Keneba           GAMBIA                         NA                   NA                0.4985591   0.4587425   0.5383757
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5657143   0.5118874   0.6195411


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level        estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ------------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.9035409   0.6811817   1.1984852
0-24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0703485   0.8509967   1.3462401
0-24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    0.6614815   0.4382920   0.9983248
0-24 months   COHORTS          GUATEMALA                      Early term           Full or late term    0.8625882   0.6494952   1.1455950
0-24 months   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          Preterm              Full or late term    1.2884491   0.8821822   1.8818118
0-24 months   COHORTS          INDIA                          Early term           Full or late term    1.3378019   0.9424712   1.8989589
0-24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9798829   0.8793557   1.0919023
0-24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    0.9710107   0.8840063   1.0665782
0-24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Preterm              Full or late term    0.9228386   0.7051713   1.2076940
0-24 months   IRC              INDIA                          Early term           Full or late term    1.0479641   0.8626426   1.2730981
0-24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   Keneba           GAMBIA                         Preterm              Full or late term    0.9797571   0.8566605   1.1205418
0-24 months   Keneba           GAMBIA                         Early term           Full or late term    1.0538729   0.9571635   1.1603536
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    1.0126174   0.7749201   1.3232255
0-24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.0386667   0.7878903   1.3692622
0-24 months   PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        Preterm              Full or late term    0.9468484   0.8814953   1.0170467
0-24 months   PROBIT           BELARUS                        Early term           Full or late term    1.0029330   0.9813595   1.0249809
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.9062235   0.7644676   1.0742653
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8903134   0.7609661   1.0416468
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.1206078   0.8570471   1.4652192
0-6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0211538   0.7906029   1.3189367
0-6 months    COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Preterm              Full or late term    0.7695473   0.5652821   1.0476239
0-6 months    COHORTS          GUATEMALA                      Early term           Full or late term    1.0096618   0.8589016   1.1868846
0-6 months    COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          Preterm              Full or late term    1.4161491   1.0125803   1.9805622
0-6 months    COHORTS          INDIA                          Early term           Full or late term    1.4302849   1.0483994   1.9512743
0-6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0021368   0.8946287   1.1225642
0-6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    0.9790210   0.8859946   1.0818148
0-6 months    IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Preterm              Full or late term    1.0508242   0.7784047   1.4185827
0-6 months    IRC              INDIA                          Early term           Full or late term    1.0714286   0.8640328   1.3286061
0-6 months    Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    Keneba           GAMBIA                         Preterm              Full or late term    0.9435216   0.8331966   1.0684548
0-6 months    Keneba           GAMBIA                         Early term           Full or late term    1.0632971   0.9842398   1.1487045
0-6 months    PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        Preterm              Full or late term    0.9490681   0.8879406   1.0144037
0-6 months    PROBIT           BELARUS                        Early term           Full or late term    1.0054256   0.9853249   1.0259362
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.9349193   0.7646574   1.1430923
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9339420   0.7741110   1.1267734
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.6247086   0.3184160   1.2256319
6-24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.1682051   0.8223605   1.6594951
6-24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9319406   0.7768892   1.1179372
6-24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    0.9465624   0.8119141   1.1035408
6-24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          Preterm              Full or late term    0.8088889   0.4987649   1.3118429
6-24 months   IRC              INDIA                          Early term           Full or late term    0.9635294   0.6423669   1.4452627
6-24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   Keneba           GAMBIA                         Preterm              Full or late term    1.0392093   0.8245529   1.3097472
6-24 months   Keneba           GAMBIA                         Early term           Full or late term    1.0599223   0.8894035   1.2631334
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.8823529   0.6785706   1.1473334
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8695652   0.6857587   1.1026381


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0003254   -0.0469263   0.0462755
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0569149   -0.1165335   0.0027037
0-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0418546   -0.0046947   0.0884039
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0104922   -0.0450644   0.0240800
0-24 months   IRC              INDIA                          Full or late term    NA                 0.0013205   -0.0417711   0.0444121
0-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0095810   -0.0185740   0.0377360
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0128245   -0.1224587   0.1481078
0-24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0005212   -0.0101169   0.0090746
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0295375   -0.0640612   0.0049861
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0146587   -0.0368417   0.0661592
0-6 months    COHORTS          GUATEMALA                      Full or late term    NA                -0.0293619   -0.0871996   0.0284757
0-6 months    COHORTS          INDIA                          Full or late term    NA                 0.0788114    0.0185551   0.1390677
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.0062980   -0.0513388   0.0387428
0-6 months    IRC              INDIA                          Full or late term    NA                 0.0169082   -0.0354403   0.0692567
0-6 months    Keneba           GAMBIA                         Full or late term    NA                 0.0100431   -0.0199573   0.0400436
0-6 months    PROBIT           BELARUS                        Full or late term    NA                 0.0005836   -0.0085142   0.0096814
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0195518   -0.0629854   0.0238817
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0206860   -0.1028182   0.0614461
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0198612   -0.0663470   0.0266245
6-24 months   IRC              INDIA                          Full or late term    NA                -0.0231348   -0.0933454   0.0470759
6-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0130099   -0.0269173   0.0529372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0342857   -0.0839393   0.0153678


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0005148   -0.0770278    0.0705627
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.1198208   -0.2535385   -0.0003671
0-24 months   COHORTS          INDIA                          Full or late term    NA                 0.1597807   -0.0391173    0.3206075
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0173147   -0.0759812    0.0381531
0-24 months   IRC              INDIA                          Full or late term    NA                 0.0022221   -0.0730179    0.0721863
0-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0149024   -0.0298566    0.0577162
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0205990   -0.2226324    0.2154418
0-24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0005918   -0.0115473    0.0102451
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0469499   -0.1035144    0.0067152
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0216949   -0.0575958    0.0950410
0-6 months    COHORTS          GUATEMALA                      Full or late term    NA                -0.0372226   -0.1135640    0.0338851
0-6 months    COHORTS          INDIA                          Full or late term    NA                 0.1978913    0.0312167    0.3358904
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.0085506   -0.0716011    0.0507902
0-6 months    IRC              INDIA                          Full or late term    NA                 0.0264550   -0.0593125    0.1052784
0-6 months    Keneba           GAMBIA                         Full or late term    NA                 0.0121968   -0.0249398    0.0479879
0-6 months    PROBIT           BELARUS                        Full or late term    NA                 0.0006478   -0.0095024    0.0106959
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0279565   -0.0920958    0.0324160
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0368470   -0.1946251    0.1000928
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0395949   -0.1365217    0.0490657
6-24 months   IRC              INDIA                          Full or late term    NA                -0.0439560   -0.1868530    0.0817361
6-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0260951   -0.0574238    0.1030174
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0606061   -0.1526179    0.0240606
