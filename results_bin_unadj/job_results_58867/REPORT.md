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

**Outcome Variable:** stunted

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

agecat      studyid          country                        gagebrth             stunted   n_cell       n
----------  ---------------  -----------------------------  ------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term          0       48      92
Birth       CMC-V-BCS-2002   INDIA                          Full or late term          1       10      92
Birth       CMC-V-BCS-2002   INDIA                          Preterm                    0        8      92
Birth       CMC-V-BCS-2002   INDIA                          Preterm                    1        3      92
Birth       CMC-V-BCS-2002   INDIA                          Early term                 0       19      92
Birth       CMC-V-BCS-2002   INDIA                          Early term                 1        4      92
Birth       COHORTS          GUATEMALA                      Full or late term          0      330     617
Birth       COHORTS          GUATEMALA                      Full or late term          1       11     617
Birth       COHORTS          GUATEMALA                      Preterm                    0       82     617
Birth       COHORTS          GUATEMALA                      Preterm                    1       13     617
Birth       COHORTS          GUATEMALA                      Early term                 0      170     617
Birth       COHORTS          GUATEMALA                      Early term                 1       11     617
Birth       COHORTS          INDIA                          Full or late term          0      536    1293
Birth       COHORTS          INDIA                          Full or late term          1       34    1293
Birth       COHORTS          INDIA                          Preterm                    0      242    1293
Birth       COHORTS          INDIA                          Preterm                    1       43    1293
Birth       COHORTS          INDIA                          Early term                 0      391    1293
Birth       COHORTS          INDIA                          Early term                 1       47    1293
Birth       COHORTS          PHILIPPINES                    Full or late term          0     1128    3024
Birth       COHORTS          PHILIPPINES                    Full or late term          1       36    3024
Birth       COHORTS          PHILIPPINES                    Preterm                    0      561    3024
Birth       COHORTS          PHILIPPINES                    Preterm                    1       88    3024
Birth       COHORTS          PHILIPPINES                    Early term                 0     1150    3024
Birth       COHORTS          PHILIPPINES                    Early term                 1       61    3024
Birth       IRC              INDIA                          Full or late term          0      211     369
Birth       IRC              INDIA                          Full or late term          1       27     369
Birth       IRC              INDIA                          Preterm                    0       27     369
Birth       IRC              INDIA                          Preterm                    1        9     369
Birth       IRC              INDIA                          Early term                 0       87     369
Birth       IRC              INDIA                          Early term                 1        8     369
Birth       JiVitA-3         BANGLADESH                     Full or late term          0     8478   21442
Birth       JiVitA-3         BANGLADESH                     Full or late term          1     2466   21442
Birth       JiVitA-3         BANGLADESH                     Preterm                    0     2065   21442
Birth       JiVitA-3         BANGLADESH                     Preterm                    1     2449   21442
Birth       JiVitA-3         BANGLADESH                     Early term                 0     3790   21442
Birth       JiVitA-3         BANGLADESH                     Early term                 1     2194   21442
Birth       Keneba           GAMBIA                         Full or late term          0      712    1515
Birth       Keneba           GAMBIA                         Full or late term          1       22    1515
Birth       Keneba           GAMBIA                         Preterm                    0      200    1515
Birth       Keneba           GAMBIA                         Preterm                    1       35    1515
Birth       Keneba           GAMBIA                         Early term                 0      521    1515
Birth       Keneba           GAMBIA                         Early term                 1       25    1515
Birth       NIH-Crypto       BANGLADESH                     Full or late term          0      150     732
Birth       NIH-Crypto       BANGLADESH                     Full or late term          1       12     732
Birth       NIH-Crypto       BANGLADESH                     Preterm                    0      193     732
Birth       NIH-Crypto       BANGLADESH                     Preterm                    1       64     732
Birth       NIH-Crypto       BANGLADESH                     Early term                 0      288     732
Birth       NIH-Crypto       BANGLADESH                     Early term                 1       25     732
Birth       PROBIT           BELARUS                        Full or late term          0     7095   13893
Birth       PROBIT           BELARUS                        Full or late term          1        5   13893
Birth       PROBIT           BELARUS                        Preterm                    0      460   13893
Birth       PROBIT           BELARUS                        Preterm                    1       12   13893
Birth       PROBIT           BELARUS                        Early term                 0     6304   13893
Birth       PROBIT           BELARUS                        Early term                 1       17   13893
6 months    CMC-V-BCS-2002   INDIA                          Full or late term          0      157     347
6 months    CMC-V-BCS-2002   INDIA                          Full or late term          1       55     347
6 months    CMC-V-BCS-2002   INDIA                          Preterm                    0       29     347
6 months    CMC-V-BCS-2002   INDIA                          Preterm                    1       23     347
6 months    CMC-V-BCS-2002   INDIA                          Early term                 0       60     347
6 months    CMC-V-BCS-2002   INDIA                          Early term                 1       23     347
6 months    COHORTS          GUATEMALA                      Full or late term          0      258     713
6 months    COHORTS          GUATEMALA                      Full or late term          1      131     713
6 months    COHORTS          GUATEMALA                      Preterm                    0       50     713
6 months    COHORTS          GUATEMALA                      Preterm                    1       63     713
6 months    COHORTS          GUATEMALA                      Early term                 0      106     713
6 months    COHORTS          GUATEMALA                      Early term                 1      105     713
6 months    COHORTS          INDIA                          Full or late term          0      478    1312
6 months    COHORTS          INDIA                          Full or late term          1       90    1312
6 months    COHORTS          INDIA                          Preterm                    0      231    1312
6 months    COHORTS          INDIA                          Preterm                    1       68    1312
6 months    COHORTS          INDIA                          Early term                 0      381    1312
6 months    COHORTS          INDIA                          Early term                 1       64    1312
6 months    COHORTS          PHILIPPINES                    Full or late term          0      855    2687
6 months    COHORTS          PHILIPPINES                    Full or late term          1      173    2687
6 months    COHORTS          PHILIPPINES                    Preterm                    0      401    2687
6 months    COHORTS          PHILIPPINES                    Preterm                    1      172    2687
6 months    COHORTS          PHILIPPINES                    Early term                 0      863    2687
6 months    COHORTS          PHILIPPINES                    Early term                 1      223    2687
6 months    IRC              INDIA                          Full or late term          0      198     388
6 months    IRC              INDIA                          Full or late term          1       51     388
6 months    IRC              INDIA                          Preterm                    0       23     388
6 months    IRC              INDIA                          Preterm                    1       19     388
6 months    IRC              INDIA                          Early term                 0       75     388
6 months    IRC              INDIA                          Early term                 1       22     388
6 months    JiVitA-3         BANGLADESH                     Full or late term          0     6770   16010
6 months    JiVitA-3         BANGLADESH                     Full or late term          1     1757   16010
6 months    JiVitA-3         BANGLADESH                     Preterm                    0     1946   16010
6 months    JiVitA-3         BANGLADESH                     Preterm                    1     1099   16010
6 months    JiVitA-3         BANGLADESH                     Early term                 0     3246   16010
6 months    JiVitA-3         BANGLADESH                     Early term                 1     1192   16010
6 months    Keneba           GAMBIA                         Full or late term          0      583    1374
6 months    Keneba           GAMBIA                         Full or late term          1       75    1374
6 months    Keneba           GAMBIA                         Preterm                    0      160    1374
6 months    Keneba           GAMBIA                         Preterm                    1       47    1374
6 months    Keneba           GAMBIA                         Early term                 0      450    1374
6 months    Keneba           GAMBIA                         Early term                 1       59    1374
6 months    NIH-Crypto       BANGLADESH                     Full or late term          0      134     715
6 months    NIH-Crypto       BANGLADESH                     Full or late term          1       21     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                    0      180     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                    1       71     715
6 months    NIH-Crypto       BANGLADESH                     Early term                 0      251     715
6 months    NIH-Crypto       BANGLADESH                     Early term                 1       58     715
6 months    PROBIT           BELARUS                        Full or late term          0     7751   15760
6 months    PROBIT           BELARUS                        Full or late term          1      256   15760
6 months    PROBIT           BELARUS                        Preterm                    0      503   15760
6 months    PROBIT           BELARUS                        Preterm                    1       48   15760
6 months    PROBIT           BELARUS                        Early term                 0     6886   15760
6 months    PROBIT           BELARUS                        Early term                 1      316   15760
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1070    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       97    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      252    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1       39    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      399    1903
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1       46    1903
24 months   CMC-V-BCS-2002   INDIA                          Full or late term          0       69     349
24 months   CMC-V-BCS-2002   INDIA                          Full or late term          1      144     349
24 months   CMC-V-BCS-2002   INDIA                          Preterm                    0       13     349
24 months   CMC-V-BCS-2002   INDIA                          Preterm                    1       39     349
24 months   CMC-V-BCS-2002   INDIA                          Early term                 0       18     349
24 months   CMC-V-BCS-2002   INDIA                          Early term                 1       66     349
24 months   COHORTS          GUATEMALA                      Full or late term          0       76     661
24 months   COHORTS          GUATEMALA                      Full or late term          1      299     661
24 months   COHORTS          GUATEMALA                      Preterm                    0       19     661
24 months   COHORTS          GUATEMALA                      Preterm                    1       88     661
24 months   COHORTS          GUATEMALA                      Early term                 0       24     661
24 months   COHORTS          GUATEMALA                      Early term                 1      155     661
24 months   COHORTS          INDIA                          Full or late term          0      278    1308
24 months   COHORTS          INDIA                          Full or late term          1      287    1308
24 months   COHORTS          INDIA                          Preterm                    0      138    1308
24 months   COHORTS          INDIA                          Preterm                    1      167    1308
24 months   COHORTS          INDIA                          Early term                 0      196    1308
24 months   COHORTS          INDIA                          Early term                 1      242    1308
24 months   COHORTS          PHILIPPINES                    Full or late term          0      384    2424
24 months   COHORTS          PHILIPPINES                    Full or late term          1      554    2424
24 months   COHORTS          PHILIPPINES                    Preterm                    0      173    2424
24 months   COHORTS          PHILIPPINES                    Preterm                    1      340    2424
24 months   COHORTS          PHILIPPINES                    Early term                 0      355    2424
24 months   COHORTS          PHILIPPINES                    Early term                 1      618    2424
24 months   IRC              INDIA                          Full or late term          0      152     390
24 months   IRC              INDIA                          Full or late term          1       98     390
24 months   IRC              INDIA                          Preterm                    0       19     390
24 months   IRC              INDIA                          Preterm                    1       23     390
24 months   IRC              INDIA                          Early term                 0       55     390
24 months   IRC              INDIA                          Early term                 1       43     390
24 months   JiVitA-3         BANGLADESH                     Full or late term          0     2338    8202
24 months   JiVitA-3         BANGLADESH                     Full or late term          1     1989    8202
24 months   JiVitA-3         BANGLADESH                     Preterm                    0      686    8202
24 months   JiVitA-3         BANGLADESH                     Preterm                    1      918    8202
24 months   JiVitA-3         BANGLADESH                     Early term                 0     1150    8202
24 months   JiVitA-3         BANGLADESH                     Early term                 1     1121    8202
24 months   Keneba           GAMBIA                         Full or late term          0      373    1156
24 months   Keneba           GAMBIA                         Full or late term          1      184    1156
24 months   Keneba           GAMBIA                         Preterm                    0       95    1156
24 months   Keneba           GAMBIA                         Preterm                    1       72    1156
24 months   Keneba           GAMBIA                         Early term                 0      300    1156
24 months   Keneba           GAMBIA                         Early term                 1      132    1156
24 months   NIH-Crypto       BANGLADESH                     Full or late term          0       66     514
24 months   NIH-Crypto       BANGLADESH                     Full or late term          1       13     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                    0      143     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                    1       65     514
24 months   NIH-Crypto       BANGLADESH                     Early term                 0      173     514
24 months   NIH-Crypto       BANGLADESH                     Early term                 1       54     514
24 months   PROBIT           BELARUS                        Full or late term          0     1888    4035
24 months   PROBIT           BELARUS                        Full or late term          1      137    4035
24 months   PROBIT           BELARUS                        Preterm                    0      124    4035
24 months   PROBIT           BELARUS                        Preterm                    1       13    4035
24 months   PROBIT           BELARUS                        Early term                 0     1748    4035
24 months   PROBIT           BELARUS                        Early term                 1      125    4035
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        0       6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/f1176ed1-a017-4a0b-8e47-bbbecf48fb60/08e3b00f-6389-4ab9-bb04-9f0ed8380257/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f1176ed1-a017-4a0b-8e47-bbbecf48fb60/08e3b00f-6389-4ab9-bb04-9f0ed8380257/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f1176ed1-a017-4a0b-8e47-bbbecf48fb60/08e3b00f-6389-4ab9-bb04-9f0ed8380257/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f1176ed1-a017-4a0b-8e47-bbbecf48fb60/08e3b00f-6389-4ab9-bb04-9f0ed8380257/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Full or late term    NA                0.0322581    0.0134899   0.0510262
Birth       COHORTS          GUATEMALA                      Preterm              NA                0.1368421    0.0676760   0.2060082
Birth       COHORTS          GUATEMALA                      Early term           NA                0.0607735    0.0259395   0.0956075
Birth       COHORTS          INDIA                          Full or late term    NA                0.0596491    0.0401989   0.0790994
Birth       COHORTS          INDIA                          Preterm              NA                0.1508772    0.1093062   0.1924482
Birth       COHORTS          INDIA                          Early term           NA                0.1073059    0.0783097   0.1363022
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                0.0309278    0.0209807   0.0408749
Birth       COHORTS          PHILIPPINES                    Preterm              NA                0.1355932    0.1092496   0.1619369
Birth       COHORTS          PHILIPPINES                    Early term           NA                0.0503716    0.0380514   0.0626918
Birth       IRC              INDIA                          Full or late term    NA                0.1134454    0.0730999   0.1537909
Birth       IRC              INDIA                          Preterm              NA                0.2500000    0.1083597   0.3916403
Birth       IRC              INDIA                          Early term           NA                0.0842105    0.0282919   0.1401292
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                0.2253289    0.2160473   0.2346106
Birth       JiVitA-3         BANGLADESH                     Preterm              NA                0.5425343    0.5259816   0.5590871
Birth       JiVitA-3         BANGLADESH                     Early term           NA                0.3666444    0.3528647   0.3804241
Birth       Keneba           GAMBIA                         Full or late term    NA                0.0299728    0.0176332   0.0423123
Birth       Keneba           GAMBIA                         Preterm              NA                0.1489362    0.1034019   0.1944705
Birth       Keneba           GAMBIA                         Early term           NA                0.0457875    0.0282491   0.0633260
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0740741    0.0337180   0.1144301
Birth       NIH-Crypto       BANGLADESH                     Preterm              NA                0.2490272    0.1961201   0.3019343
Birth       NIH-Crypto       BANGLADESH                     Early term           NA                0.0798722    0.0498187   0.1099257
Birth       PROBIT           BELARUS                        Full or late term    NA                0.0007042   -0.0002235   0.0016320
Birth       PROBIT           BELARUS                        Preterm              NA                0.0254237    0.0044461   0.0464013
Birth       PROBIT           BELARUS                        Early term           NA                0.0026894    0.0008212   0.0045577
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2594340    0.2003456   0.3185224
6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4423077    0.3071214   0.5774940
6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                0.2771084    0.1806818   0.3735351
6 months    COHORTS          GUATEMALA                      Full or late term    NA                0.3367609    0.2897635   0.3837583
6 months    COHORTS          GUATEMALA                      Preterm              NA                0.5575221    0.4658810   0.6491633
6 months    COHORTS          GUATEMALA                      Early term           NA                0.4976303    0.4301190   0.5651417
6 months    COHORTS          INDIA                          Full or late term    NA                0.1584507    0.1284089   0.1884925
6 months    COHORTS          INDIA                          Preterm              NA                0.2274247    0.1798948   0.2749547
6 months    COHORTS          INDIA                          Early term           NA                0.1438202    0.1112046   0.1764359
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.1682879    0.1454138   0.1911621
6 months    COHORTS          PHILIPPINES                    Preterm              NA                0.3001745    0.2626398   0.3377093
6 months    COHORTS          PHILIPPINES                    Early term           NA                0.2053407    0.1813114   0.2293700
6 months    IRC              INDIA                          Full or late term    NA                0.2048193    0.1546281   0.2550104
6 months    IRC              INDIA                          Preterm              NA                0.4523810    0.3016594   0.6031025
6 months    IRC              INDIA                          Early term           NA                0.2268041    0.1433606   0.3102477
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                0.2060514    0.1962479   0.2158548
6 months    JiVitA-3         BANGLADESH                     Preterm              NA                0.3609195    0.3435107   0.3783284
6 months    JiVitA-3         BANGLADESH                     Early term           NA                0.2685895    0.2543026   0.2828763
6 months    Keneba           GAMBIA                         Full or late term    NA                0.1139818    0.0896915   0.1382720
6 months    Keneba           GAMBIA                         Preterm              NA                0.2270531    0.1699632   0.2841431
6 months    Keneba           GAMBIA                         Early term           NA                0.1159136    0.0880933   0.1437339
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                0.1354839    0.0815680   0.1893997
6 months    NIH-Crypto       BANGLADESH                     Preterm              NA                0.2828685    0.2271106   0.3386265
6 months    NIH-Crypto       BANGLADESH                     Early term           NA                0.1877023    0.1441345   0.2312700
6 months    PROBIT           BELARUS                        Full or late term    NA                0.0319720    0.0233322   0.0406118
6 months    PROBIT           BELARUS                        Preterm              NA                0.0871143    0.0523430   0.1218857
6 months    PROBIT           BELARUS                        Early term           NA                0.0438767    0.0313451   0.0564083
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0831191    0.0672762   0.0989620
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1340206    0.0948685   0.1731727
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1033708    0.0750772   0.1316643
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6760563    0.6131191   0.7389936
24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7500000    0.6321390   0.8678610
24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.7857143    0.6978403   0.8735883
24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.7973333    0.7566167   0.8380500
24 months   COHORTS          GUATEMALA                      Preterm              NA                0.8224299    0.7499664   0.8948934
24 months   COHORTS          GUATEMALA                      Early term           NA                0.8659218    0.8159680   0.9158756
24 months   COHORTS          INDIA                          Full or late term    NA                0.5079646    0.4667259   0.5492033
24 months   COHORTS          INDIA                          Preterm              NA                0.5475410    0.4916602   0.6034217
24 months   COHORTS          INDIA                          Early term           NA                0.5525114    0.5059272   0.5990956
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.5906183    0.5591442   0.6220925
24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.6627680    0.6218491   0.7036870
24 months   COHORTS          PHILIPPINES                    Early term           NA                0.6351490    0.6048954   0.6654026
24 months   IRC              INDIA                          Full or late term    NA                0.3920000    0.3314059   0.4525941
24 months   IRC              INDIA                          Preterm              NA                0.5476190    0.3968985   0.6983396
24 months   IRC              INDIA                          Early term           NA                0.4387755    0.3404011   0.5371499
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.4596718    0.4416599   0.4776838
24 months   JiVitA-3         BANGLADESH                     Preterm              NA                0.5723192    0.5463684   0.5982700
24 months   JiVitA-3         BANGLADESH                     Early term           NA                0.4936151    0.4707687   0.5164616
24 months   Keneba           GAMBIA                         Full or late term    NA                0.3303411    0.2912645   0.3694177
24 months   Keneba           GAMBIA                         Preterm              NA                0.4311377    0.3559946   0.5062809
24 months   Keneba           GAMBIA                         Early term           NA                0.3055556    0.2620987   0.3490124
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.1645570    0.0827154   0.2463985
24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.3125000    0.2494477   0.3755523
24 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.2378855    0.1824418   0.2933292
24 months   PROBIT           BELARUS                        Full or late term    NA                0.0676543    0.0401026   0.0952061
24 months   PROBIT           BELARUS                        Preterm              NA                0.0948905    0.0197637   0.1700173
24 months   PROBIT           BELARUS                        Early term           NA                0.0667379    0.0347048   0.0987709


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.0567261   0.0384591   0.0749931
Birth       COHORTS          INDIA                          NA                   NA                0.0959010   0.0798450   0.1119570
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0611772   0.0526341   0.0697204
Birth       IRC              INDIA                          NA                   NA                0.1192412   0.0861307   0.1523517
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3315456   0.3240495   0.3390416
Birth       Keneba           GAMBIA                         NA                   NA                0.0541254   0.0427281   0.0655227
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       PROBIT           BELARUS                        NA                   NA                0.0024473   0.0007336   0.0041610
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2910663   0.2432023   0.3389303
6 months    COHORTS          GUATEMALA                      NA                   NA                0.4193548   0.3831093   0.4556004
6 months    COHORTS          INDIA                          NA                   NA                0.1692073   0.1489117   0.1895030
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2113882   0.1959475   0.2268289
6 months    IRC              INDIA                          NA                   NA                0.2371134   0.1947393   0.2794875
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2528420   0.2446204   0.2610636
6 months    Keneba           GAMBIA                         NA                   NA                0.1317322   0.1138432   0.1496211
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROBIT           BELARUS                        NA                   NA                0.0393401   0.0293640   0.0493162
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0956385   0.0824215   0.1088554
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7134670   0.6659628   0.7609713
24 months   COHORTS          GUATEMALA                      NA                   NA                0.8199697   0.7906576   0.8492819
24 months   COHORTS          INDIA                          NA                   NA                0.5321101   0.5050591   0.5591611
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6237624   0.6044733   0.6430515
24 months   IRC              INDIA                          NA                   NA                0.4205128   0.3714576   0.4695680
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4910997   0.4777434   0.5044561
24 months   Keneba           GAMBIA                         NA                   NA                0.3356401   0.3084071   0.3628732
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROBIT           BELARUS                        NA                   NA                0.0681537   0.0420376   0.0942697


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level         estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ------------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       COHORTS          GUATEMALA                      Preterm              Full or late term     4.2421053    1.9627721     9.168389
Birth       COHORTS          GUATEMALA                      Early term           Full or late term     1.8839779    0.8324856     4.263584
Birth       COHORTS          INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       COHORTS          INDIA                          Preterm              Full or late term     2.5294118    1.6505151     3.876320
Birth       COHORTS          INDIA                          Early term           Full or late term     1.7989525    1.1778748     2.747516
Birth       COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       COHORTS          PHILIPPINES                    Preterm              Full or late term     4.3841808    3.0109434     6.383727
Birth       COHORTS          PHILIPPINES                    Early term           Full or late term     1.6286815    1.0873157     2.439589
Birth       IRC              INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       IRC              INDIA                          Preterm              Full or late term     2.2037037    1.1288592     4.301963
Birth       IRC              INDIA                          Early term           Full or late term     0.7423002    0.3494922     1.576600
Birth       JiVitA-3         BANGLADESH                     Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       JiVitA-3         BANGLADESH                     Preterm              Full or late term     2.4077436    2.2857043     2.536299
Birth       JiVitA-3         BANGLADESH                     Early term           Full or late term     1.6271517    1.5416273     1.717421
Birth       Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       Keneba           GAMBIA                         Preterm              Full or late term     4.9690522    2.9755587     8.298099
Birth       Keneba           GAMBIA                         Early term           Full or late term     1.5276390    0.8705747     2.680621
Birth       NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       NIH-Crypto       BANGLADESH                     Preterm              Full or late term     3.3618677    1.8733542     6.033111
Birth       NIH-Crypto       BANGLADESH                     Early term           Full or late term     1.0782748    0.5561316     2.090650
Birth       PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000    1.0000000     1.000000
Birth       PROBIT           BELARUS                        Preterm              Full or late term    36.1016949   10.3744573   125.628969
Birth       PROBIT           BELARUS                        Early term           Full or late term     3.8190160    1.3496706    10.806254
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     1.7048951    1.1645510     2.495955
6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term     1.0681271    0.7047033     1.618973
6 months    COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    COHORTS          GUATEMALA                      Preterm              Full or late term     1.6555428    1.3344287     2.053929
6 months    COHORTS          GUATEMALA                      Early term           Full or late term     1.4776962    1.2163479     1.795199
6 months    COHORTS          INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    COHORTS          INDIA                          Preterm              Full or late term     1.4353029    1.0824178     1.903234
6 months    COHORTS          INDIA                          Early term           Full or late term     0.9076654    0.6753833     1.219835
6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term     1.7836960    1.4828955     2.145513
6 months    COHORTS          PHILIPPINES                    Early term           Full or late term     1.2201748    1.0198306     1.459876
6 months    IRC              INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    IRC              INDIA                          Preterm              Full or late term     2.2086835    1.4605439     3.340045
6 months    IRC              INDIA                          Early term           Full or late term     1.1073378    0.7117056     1.722899
6 months    JiVitA-3         BANGLADESH                     Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    JiVitA-3         BANGLADESH                     Preterm              Full or late term     1.7515998    1.6425078     1.867938
6 months    JiVitA-3         BANGLADESH                     Early term           Full or late term     1.3035073    1.2207275     1.391900
6 months    Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    Keneba           GAMBIA                         Preterm              Full or late term     1.9920129    1.4326790     2.769717
6 months    Keneba           GAMBIA                         Early term           Full or late term     1.0169483    0.7377435     1.401820
6 months    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    NIH-Crypto       BANGLADESH                     Preterm              Full or late term     2.0878391    1.3391510     3.255101
6 months    NIH-Crypto       BANGLADESH                     Early term           Full or late term     1.3854215    0.8739862     2.196136
6 months    PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    PROBIT           BELARUS                        Preterm              Full or late term     2.7247051    1.7299462     4.291473
6 months    PROBIT           BELARUS                        Early term           Full or late term     1.3723467    1.1617732     1.621087
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     1.0000000    1.0000000     1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     1.6123924    1.1375793     2.285387
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     1.2436465    0.8909302     1.736002
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     1.1093750    0.9241728     1.331691
24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term     1.1622024    1.0048130     1.344245
24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   COHORTS          GUATEMALA                      Preterm              Full or late term     1.0314756    0.9316040     1.142054
24 months   COHORTS          GUATEMALA                      Early term           Full or late term     1.0860223    1.0054932     1.173001
24 months   COHORTS          INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   COHORTS          INDIA                          Preterm              Full or late term     1.0779117    0.9461218     1.228059
24 months   COHORTS          INDIA                          Early term           Full or late term     1.0876967    0.9675548     1.222757
24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term     1.1221596    1.0342719     1.217516
24 months   COHORTS          PHILIPPINES                    Early term           Full or late term     1.0753967    1.0012154     1.155074
24 months   IRC              INDIA                          Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   IRC              INDIA                          Preterm              Full or late term     1.3969874    1.0188273     1.915510
24 months   IRC              INDIA                          Early term           Full or late term     1.1193253    0.8524862     1.469688
24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term     1.2450604    1.1733498     1.321154
24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term     1.0738425    1.0146564     1.136481
24 months   Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   Keneba           GAMBIA                         Preterm              Full or late term     1.3051289    1.0572380     1.611143
24 months   Keneba           GAMBIA                         Early term           Full or late term     0.9249698    0.7687566     1.112926
24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term     1.8990385    1.1103037     3.248073
24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term     1.4456117    0.8346730     2.503727
24 months   PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000    1.0000000     1.000000
24 months   PROBIT           BELARUS                        Preterm              Full or late term     1.4025787    0.5747799     3.422574
24 months   PROBIT           BELARUS                        Early term           Full or late term     0.9864537    0.6763897     1.438654


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Full or late term    NA                0.0244680    0.0072466   0.0416894
Birth       COHORTS          INDIA                          Full or late term    NA                0.0362519    0.0188576   0.0536461
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                0.0302494    0.0204638   0.0400350
Birth       IRC              INDIA                          Full or late term    NA                0.0057958   -0.0191902   0.0307818
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                0.1062166    0.0991026   0.1133307
Birth       Keneba           GAMBIA                         Full or late term    NA                0.0241527    0.0125500   0.0357554
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0639041    0.0247532   0.1030549
Birth       PROBIT           BELARUS                        Full or late term    NA                0.0017431    0.0005871   0.0028990
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0316323   -0.0073061   0.0705708
6 months    COHORTS          GUATEMALA                      Full or late term    NA                0.0825939    0.0492416   0.1159462
6 months    COHORTS          INDIA                          Full or late term    NA                0.0107566   -0.0123298   0.0338430
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.0431002    0.0240927   0.0621078
6 months    IRC              INDIA                          Full or late term    NA                0.0322941   -0.0005901   0.0651784
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                0.0467906    0.0402554   0.0533258
6 months    Keneba           GAMBIA                         Full or late term    NA                0.0177504   -0.0008217   0.0363225
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0743063    0.0239228   0.1246898
6 months    PROBIT           BELARUS                        Full or late term    NA                0.0073681    0.0035411   0.0111950
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0125194    0.0016639   0.0233748
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0374107    0.0002258   0.0745956
24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0226364   -0.0025823   0.0478551
24 months   COHORTS          INDIA                          Full or late term    NA                0.0241455   -0.0068898   0.0551807
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.0331440    0.0087305   0.0575576
24 months   IRC              INDIA                          Full or late term    NA                0.0285128   -0.0085117   0.0655374
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.0314279    0.0203032   0.0425527
24 months   Keneba           GAMBIA                         Full or late term    NA                0.0052990   -0.0229342   0.0335323
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0922524    0.0143531   0.1701517
24 months   PROBIT           BELARUS                        Full or late term    NA                0.0004993   -0.0116016   0.0126002


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Full or late term    NA                0.4313364    0.0819272   0.6477640
Birth       COHORTS          INDIA                          Full or late term    NA                0.3780136    0.1805054   0.5279199
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                0.4944553    0.3260309   0.6207906
Birth       IRC              INDIA                          Full or late term    NA                0.0486058   -0.1854004   0.2364176
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                0.3203681    0.2987550   0.3413150
Birth       Keneba           GAMBIA                         Full or late term    NA                0.4462351    0.2137384   0.6099828
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                0.4631463    0.1068457   0.6773101
Birth       PROBIT           BELARUS                        Full or late term    NA                0.7122411    0.2970627   0.8822012
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1086774   -0.0352902   0.2326248
6 months    COHORTS          GUATEMALA                      Full or late term    NA                0.1969547    0.1130293   0.2729391
6 months    COHORTS          INDIA                          Full or late term    NA                0.0635706   -0.0831558   0.1904212
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.2038914    0.1094932   0.2882829
6 months    IRC              INDIA                          Full or late term    NA                0.1361970   -0.0130777   0.2634764
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                0.1850587    0.1588952   0.2104084
6 months    Keneba           GAMBIA                         Full or late term    NA                0.1347462   -0.0173400   0.2640964
6 months    NIH-Crypto       BANGLADESH                     Full or late term    NA                0.3541935    0.0683540   0.5523343
6 months    PROBIT           BELARUS                        Full or late term    NA                0.1872918    0.0995928   0.2664489
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1309029    0.0109997   0.2362695
24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0524351   -0.0016012   0.1035561
24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0276064   -0.0037690   0.0580010
24 months   COHORTS          INDIA                          Full or late term    NA                0.0453769   -0.0148234   0.1020060
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.0531357    0.0130995   0.0915477
24 months   IRC              INDIA                          Full or late term    NA                0.0678049   -0.0246711   0.1519350
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.0639950    0.0408646   0.0865675
24 months   Keneba           GAMBIA                         Full or late term    NA                0.0157878   -0.0720290   0.0964110
24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.3592252   -0.0245831   0.5992591
24 months   PROBIT           BELARUS                        Full or late term    NA                0.0073266   -0.1867541   0.1696675
