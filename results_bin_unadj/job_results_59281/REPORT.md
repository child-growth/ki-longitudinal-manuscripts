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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        gagebrth             ever_co   n_cell       n
------------  ---------------  -----------------------------  ------------------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term          0      170     351
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term          1       45     351
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm                    0       35     351
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm                    1       17     351
0-24 months   CMC-V-BCS-2002   INDIA                          Early term                 0       70     351
0-24 months   CMC-V-BCS-2002   INDIA                          Early term                 1       14     351
0-24 months   COHORTS          GUATEMALA                      Full or late term          0      406     812
0-24 months   COHORTS          GUATEMALA                      Full or late term          1       43     812
0-24 months   COHORTS          GUATEMALA                      Preterm                    0      105     812
0-24 months   COHORTS          GUATEMALA                      Preterm                    1       26     812
0-24 months   COHORTS          GUATEMALA                      Early term                 0      195     812
0-24 months   COHORTS          GUATEMALA                      Early term                 1       37     812
0-24 months   COHORTS          INDIA                          Full or late term          0      550    1371
0-24 months   COHORTS          INDIA                          Full or late term          1       41    1371
0-24 months   COHORTS          INDIA                          Preterm                    0      280    1371
0-24 months   COHORTS          INDIA                          Preterm                    1       35    1371
0-24 months   COHORTS          INDIA                          Early term                 0      436    1371
0-24 months   COHORTS          INDIA                          Early term                 1       29    1371
0-24 months   COHORTS          PHILIPPINES                    Full or late term          0      987    3019
0-24 months   COHORTS          PHILIPPINES                    Full or late term          1      179    3019
0-24 months   COHORTS          PHILIPPINES                    Preterm                    0      502    3019
0-24 months   COHORTS          PHILIPPINES                    Preterm                    1      143    3019
0-24 months   COHORTS          PHILIPPINES                    Early term                 0      973    3019
0-24 months   COHORTS          PHILIPPINES                    Early term                 1      235    3019
0-24 months   IRC              INDIA                          Full or late term          0      211     390
0-24 months   IRC              INDIA                          Full or late term          1       39     390
0-24 months   IRC              INDIA                          Preterm                    0       28     390
0-24 months   IRC              INDIA                          Preterm                    1       14     390
0-24 months   IRC              INDIA                          Early term                 0       78     390
0-24 months   IRC              INDIA                          Early term                 1       20     390
0-24 months   JiVitA-3         BANGLADESH                     Full or late term          0    12381   25638
0-24 months   JiVitA-3         BANGLADESH                     Full or late term          1      952   25638
0-24 months   JiVitA-3         BANGLADESH                     Preterm                    0     4507   25638
0-24 months   JiVitA-3         BANGLADESH                     Preterm                    1      686   25638
0-24 months   JiVitA-3         BANGLADESH                     Early term                 0     6469   25638
0-24 months   JiVitA-3         BANGLADESH                     Early term                 1      643   25638
0-24 months   Keneba           GAMBIA                         Full or late term          0      706    1704
0-24 months   Keneba           GAMBIA                         Full or late term          1      137    1704
0-24 months   Keneba           GAMBIA                         Preterm                    0      202    1704
0-24 months   Keneba           GAMBIA                         Preterm                    1       55    1704
0-24 months   Keneba           GAMBIA                         Early term                 0      520    1704
0-24 months   Keneba           GAMBIA                         Early term                 1       84    1704
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term          0      161     758
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term          1        7     758
0-24 months   NIH-Crypto       BANGLADESH                     Preterm                    0      224     758
0-24 months   NIH-Crypto       BANGLADESH                     Preterm                    1       41     758
0-24 months   NIH-Crypto       BANGLADESH                     Early term                 0      302     758
0-24 months   NIH-Crypto       BANGLADESH                     Early term                 1       23     758
0-24 months   PROBIT           BELARUS                        Full or late term          0     8624   16897
0-24 months   PROBIT           BELARUS                        Full or late term          1        5   16897
0-24 months   PROBIT           BELARUS                        Preterm                    0      588   16897
0-24 months   PROBIT           BELARUS                        Preterm                    1        3   16897
0-24 months   PROBIT           BELARUS                        Early term                 0     7667   16897
0-24 months   PROBIT           BELARUS                        Early term                 1       10   16897
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1334    2254
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       56    2254
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      321    2254
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1       29    2254
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      487    2254
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1       27    2254
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term          0      200     346
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term          1       12     346
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm                    0       45     346
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm                    1        7     346
0-6 months    CMC-V-BCS-2002   INDIA                          Early term                 0       74     346
0-6 months    CMC-V-BCS-2002   INDIA                          Early term                 1        8     346
0-6 months    COHORTS          GUATEMALA                      Full or late term          0      415     765
0-6 months    COHORTS          GUATEMALA                      Full or late term          1        5     765
0-6 months    COHORTS          GUATEMALA                      Preterm                    0      124     765
0-6 months    COHORTS          GUATEMALA                      Preterm                    1        5     765
0-6 months    COHORTS          GUATEMALA                      Early term                 0      211     765
0-6 months    COHORTS          GUATEMALA                      Early term                 1        5     765
0-6 months    COHORTS          INDIA                          Full or late term          0      572    1348
0-6 months    COHORTS          INDIA                          Full or late term          1       10    1348
0-6 months    COHORTS          INDIA                          Preterm                    0      296    1348
0-6 months    COHORTS          INDIA                          Preterm                    1       12    1348
0-6 months    COHORTS          INDIA                          Early term                 0      451    1348
0-6 months    COHORTS          INDIA                          Early term                 1        7    1348
0-6 months    COHORTS          PHILIPPINES                    Full or late term          0     1156    3018
0-6 months    COHORTS          PHILIPPINES                    Full or late term          1       10    3018
0-6 months    COHORTS          PHILIPPINES                    Preterm                    0      613    3018
0-6 months    COHORTS          PHILIPPINES                    Preterm                    1       31    3018
0-6 months    COHORTS          PHILIPPINES                    Early term                 0     1177    3018
0-6 months    COHORTS          PHILIPPINES                    Early term                 1       31    3018
0-6 months    IRC              INDIA                          Full or late term          0      238     389
0-6 months    IRC              INDIA                          Full or late term          1       11     389
0-6 months    IRC              INDIA                          Preterm                    0       36     389
0-6 months    IRC              INDIA                          Preterm                    1        6     389
0-6 months    IRC              INDIA                          Early term                 0       92     389
0-6 months    IRC              INDIA                          Early term                 1        6     389
0-6 months    JiVitA-3         BANGLADESH                     Full or late term          0    12948   25536
0-6 months    JiVitA-3         BANGLADESH                     Full or late term          1      344   25536
0-6 months    JiVitA-3         BANGLADESH                     Preterm                    0     4753   25536
0-6 months    JiVitA-3         BANGLADESH                     Preterm                    1      401   25536
0-6 months    JiVitA-3         BANGLADESH                     Early term                 0     6825   25536
0-6 months    JiVitA-3         BANGLADESH                     Early term                 1      265   25536
0-6 months    Keneba           GAMBIA                         Full or late term          0      756    1585
0-6 months    Keneba           GAMBIA                         Full or late term          1       23    1585
0-6 months    Keneba           GAMBIA                         Preterm                    0      229    1585
0-6 months    Keneba           GAMBIA                         Preterm                    1       13    1585
0-6 months    Keneba           GAMBIA                         Early term                 0      558    1585
0-6 months    Keneba           GAMBIA                         Early term                 1        6    1585
0-6 months    NIH-Crypto       BANGLADESH                     Full or late term          0      168     758
0-6 months    NIH-Crypto       BANGLADESH                     Full or late term          1        0     758
0-6 months    NIH-Crypto       BANGLADESH                     Preterm                    0      250     758
0-6 months    NIH-Crypto       BANGLADESH                     Preterm                    1       15     758
0-6 months    NIH-Crypto       BANGLADESH                     Early term                 0      323     758
0-6 months    NIH-Crypto       BANGLADESH                     Early term                 1        2     758
0-6 months    PROBIT           BELARUS                        Full or late term          0     8623   16892
0-6 months    PROBIT           BELARUS                        Full or late term          1        3   16892
0-6 months    PROBIT           BELARUS                        Preterm                    0      588   16892
0-6 months    PROBIT           BELARUS                        Preterm                    1        3   16892
0-6 months    PROBIT           BELARUS                        Early term                 0     7668   16892
0-6 months    PROBIT           BELARUS                        Early term                 1        7   16892
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1380    2254
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       10    2254
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      343    2254
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        7    2254
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      513    2254
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        1    2254
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term          0      176     351
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term          1       39     351
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm                    0       40     351
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm                    1       12     351
6-24 months   CMC-V-BCS-2002   INDIA                          Early term                 0       75     351
6-24 months   CMC-V-BCS-2002   INDIA                          Early term                 1        9     351
6-24 months   COHORTS          GUATEMALA                      Full or late term          0      387     767
6-24 months   COHORTS          GUATEMALA                      Full or late term          1       39     767
6-24 months   COHORTS          GUATEMALA                      Preterm                    0       95     767
6-24 months   COHORTS          GUATEMALA                      Preterm                    1       25     767
6-24 months   COHORTS          GUATEMALA                      Early term                 0      188     767
6-24 months   COHORTS          GUATEMALA                      Early term                 1       33     767
6-24 months   COHORTS          INDIA                          Full or late term          0      534    1327
6-24 months   COHORTS          INDIA                          Full or late term          1       40    1327
6-24 months   COHORTS          INDIA                          Preterm                    0      274    1327
6-24 months   COHORTS          INDIA                          Preterm                    1       29    1327
6-24 months   COHORTS          INDIA                          Early term                 0      423    1327
6-24 months   COHORTS          INDIA                          Early term                 1       27    1327
6-24 months   COHORTS          PHILIPPINES                    Full or late term          0      905    2786
6-24 months   COHORTS          PHILIPPINES                    Full or late term          1      175    2786
6-24 months   COHORTS          PHILIPPINES                    Preterm                    0      459    2786
6-24 months   COHORTS          PHILIPPINES                    Preterm                    1      127    2786
6-24 months   COHORTS          PHILIPPINES                    Early term                 0      889    2786
6-24 months   COHORTS          PHILIPPINES                    Early term                 1      231    2786
6-24 months   IRC              INDIA                          Full or late term          0      217     390
6-24 months   IRC              INDIA                          Full or late term          1       33     390
6-24 months   IRC              INDIA                          Preterm                    0       30     390
6-24 months   IRC              INDIA                          Preterm                    1       12     390
6-24 months   IRC              INDIA                          Early term                 0       80     390
6-24 months   IRC              INDIA                          Early term                 1       18     390
6-24 months   JiVitA-3         BANGLADESH                     Full or late term          0     8080   16459
6-24 months   JiVitA-3         BANGLADESH                     Full or late term          1      672   16459
6-24 months   JiVitA-3         BANGLADESH                     Preterm                    0     2813   16459
6-24 months   JiVitA-3         BANGLADESH                     Preterm                    1      337   16459
6-24 months   JiVitA-3         BANGLADESH                     Early term                 0     4131   16459
6-24 months   JiVitA-3         BANGLADESH                     Early term                 1      426   16459
6-24 months   Keneba           GAMBIA                         Full or late term          0      685    1635
6-24 months   Keneba           GAMBIA                         Full or late term          1      129    1635
6-24 months   Keneba           GAMBIA                         Preterm                    0      190    1635
6-24 months   Keneba           GAMBIA                         Preterm                    1       51    1635
6-24 months   Keneba           GAMBIA                         Early term                 0      500    1635
6-24 months   Keneba           GAMBIA                         Early term                 1       80    1635
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term          0      151     730
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term          1        7     730
6-24 months   NIH-Crypto       BANGLADESH                     Preterm                    0      221     730
6-24 months   NIH-Crypto       BANGLADESH                     Preterm                    1       34     730
6-24 months   NIH-Crypto       BANGLADESH                     Early term                 0      295     730
6-24 months   NIH-Crypto       BANGLADESH                     Early term                 1       22     730
6-24 months   PROBIT           BELARUS                        Full or late term          0     8477   16598
6-24 months   PROBIT           BELARUS                        Full or late term          1        2   16598
6-24 months   PROBIT           BELARUS                        Preterm                    0      579   16598
6-24 months   PROBIT           BELARUS                        Preterm                    1        1   16598
6-24 months   PROBIT           BELARUS                        Early term                 0     7536   16598
6-24 months   PROBIT           BELARUS                        Early term                 1        3   16598
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1104    1896
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       53    1896
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      274    1896
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1       26    1896
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      412    1896
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1       27    1896


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
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
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

* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/d35180a3-cd6d-4819-8d40-0fae5b6859e2/2ca0ea24-8612-4e44-bf14-a6744bad0001/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d35180a3-cd6d-4819-8d40-0fae5b6859e2/2ca0ea24-8612-4e44-bf14-a6744bad0001/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d35180a3-cd6d-4819-8d40-0fae5b6859e2/2ca0ea24-8612-4e44-bf14-a6744bad0001/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d35180a3-cd6d-4819-8d40-0fae5b6859e2/2ca0ea24-8612-4e44-bf14-a6744bad0001/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2093023   0.1548470   0.2637577
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3269231   0.1992436   0.4546026
0-24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.1666667   0.0868559   0.2464775
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0957684   0.0685324   0.1230044
0-24 months   COHORTS          GUATEMALA                      Preterm              NA                0.1984733   0.1301309   0.2668157
0-24 months   COHORTS          GUATEMALA                      Early term           NA                0.1594828   0.1123414   0.2066241
0-24 months   COHORTS          INDIA                          Full or late term    NA                0.0693739   0.0488813   0.0898666
0-24 months   COHORTS          INDIA                          Preterm              NA                0.1111111   0.0763932   0.1458290
0-24 months   COHORTS          INDIA                          Early term           NA                0.0623656   0.0403784   0.0843528
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.1535163   0.1328217   0.1742109
0-24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.2217054   0.1896427   0.2537681
0-24 months   COHORTS          PHILIPPINES                    Early term           NA                0.1945364   0.1722105   0.2168624
0-24 months   IRC              INDIA                          Full or late term    NA                0.1560000   0.1109630   0.2010370
0-24 months   IRC              INDIA                          Preterm              NA                0.3333333   0.1905838   0.4760829
0-24 months   IRC              INDIA                          Early term           NA                0.2040816   0.1241849   0.2839783
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.0714018   0.0666220   0.0761815
0-24 months   JiVitA-3         BANGLADESH                     Preterm              NA                0.1321009   0.1218862   0.1423157
0-24 months   JiVitA-3         BANGLADESH                     Early term           NA                0.0904106   0.0833156   0.0975056
0-24 months   Keneba           GAMBIA                         Full or late term    NA                0.1625148   0.1376035   0.1874262
0-24 months   Keneba           GAMBIA                         Preterm              NA                0.2140078   0.1638506   0.2641649
0-24 months   Keneba           GAMBIA                         Early term           NA                0.1390728   0.1114695   0.1666762
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0416667   0.0114301   0.0719033
0-24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.1547170   0.1111476   0.1982864
0-24 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.0707692   0.0428710   0.0986675
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0402878   0.0299484   0.0506271
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0828571   0.0539707   0.1117436
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0525292   0.0332386   0.0718198
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0566038   0.0254523   0.0877552
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1346154   0.0417130   0.2275178
0-6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                0.0975610   0.0332453   0.1618766
0-6 months    COHORTS          GUATEMALA                      Full or late term    NA                0.0119048   0.0015255   0.0222840
0-6 months    COHORTS          GUATEMALA                      Preterm              NA                0.0387597   0.0054291   0.0720903
0-6 months    COHORTS          GUATEMALA                      Early term           NA                0.0231481   0.0030814   0.0432149
0-6 months    COHORTS          INDIA                          Full or late term    NA                0.0171821   0.0066207   0.0277436
0-6 months    COHORTS          INDIA                          Preterm              NA                0.0389610   0.0173428   0.0605792
0-6 months    COHORTS          INDIA                          Early term           NA                0.0152838   0.0040443   0.0265234
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.0085763   0.0032827   0.0138699
0-6 months    COHORTS          PHILIPPINES                    Preterm              NA                0.0481366   0.0316017   0.0646716
0-6 months    COHORTS          PHILIPPINES                    Early term           NA                0.0256623   0.0167438   0.0345807
0-6 months    IRC              INDIA                          Full or late term    NA                0.0441767   0.0186207   0.0697327
0-6 months    IRC              INDIA                          Preterm              NA                0.1428571   0.0368927   0.2488215
0-6 months    IRC              INDIA                          Early term           NA                0.0612245   0.0136978   0.1087512
0-6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                0.0258802   0.0230553   0.0287052
0-6 months    JiVitA-3         BANGLADESH                     Preterm              NA                0.0778036   0.0699186   0.0856887
0-6 months    JiVitA-3         BANGLADESH                     Early term           NA                0.0373766   0.0326786   0.0420746
0-6 months    Keneba           GAMBIA                         Full or late term    NA                0.0295250   0.0176344   0.0414156
0-6 months    Keneba           GAMBIA                         Preterm              NA                0.0537190   0.0253038   0.0821343
0-6 months    Keneba           GAMBIA                         Early term           NA                0.0106383   0.0021688   0.0191078
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1813953   0.1298133   0.2329774
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2307692   0.1160904   0.3454481
6-24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.1071429   0.0409059   0.1733798
6-24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0915493   0.0641459   0.1189527
6-24 months   COHORTS          GUATEMALA                      Preterm              NA                0.2083333   0.1356238   0.2810429
6-24 months   COHORTS          GUATEMALA                      Early term           NA                0.1493213   0.1023017   0.1963409
6-24 months   COHORTS          INDIA                          Full or late term    NA                0.0696864   0.0488490   0.0905239
6-24 months   COHORTS          INDIA                          Preterm              NA                0.0957096   0.0625719   0.1288473
6-24 months   COHORTS          INDIA                          Early term           NA                0.0600000   0.0380495   0.0819505
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.1620370   0.1400567   0.1840173
6-24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.2167235   0.1833588   0.2500883
6-24 months   COHORTS          PHILIPPINES                    Early term           NA                0.2062500   0.1825496   0.2299504
6-24 months   IRC              INDIA                          Full or late term    NA                0.1320000   0.0899871   0.1740129
6-24 months   IRC              INDIA                          Preterm              NA                0.2857143   0.1489153   0.4225133
6-24 months   IRC              INDIA                          Early term           NA                0.1836735   0.1069112   0.2604357
6-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.0767824   0.0707522   0.0828127
6-24 months   JiVitA-3         BANGLADESH                     Preterm              NA                0.1069841   0.0950733   0.1188949
6-24 months   JiVitA-3         BANGLADESH                     Early term           NA                0.0934826   0.0850130   0.1019521
6-24 months   Keneba           GAMBIA                         Full or late term    NA                0.1584767   0.1333818   0.1835715
6-24 months   Keneba           GAMBIA                         Preterm              NA                0.2116183   0.1600340   0.2632025
6-24 months   Keneba           GAMBIA                         Early term           NA                0.1379310   0.1098593   0.1660027
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0443038   0.0121970   0.0764106
6-24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.1333333   0.0915819   0.1750847
6-24 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.0694006   0.0414057   0.0973955
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0458081   0.0337582   0.0578581
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0866667   0.0548216   0.1185118
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0615034   0.0390234   0.0839834


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2165242   0.1733743   0.2596741
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1305419   0.1073553   0.1537285
0-24 months   COHORTS          INDIA                          NA                   NA                0.0765864   0.0625045   0.0906684
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1844982   0.1706594   0.1983369
0-24 months   IRC              INDIA                          NA                   NA                0.1871795   0.1484181   0.2259409
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0889695   0.0850028   0.0929362
0-24 months   Keneba           GAMBIA                         NA                   NA                0.1619718   0.1444738   0.1794699
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0496894   0.0407166   0.0586623
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.0780347   0.0497312   0.1063382
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.0196078   0.0097764   0.0294393
0-6 months    COHORTS          INDIA                          NA                   NA                0.0215134   0.0137652   0.0292615
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0238569   0.0184115   0.0293022
0-6 months    IRC              INDIA                          NA                   NA                0.0591260   0.0356574   0.0825946
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0395520   0.0369981   0.0421059
0-6 months    Keneba           GAMBIA                         NA                   NA                0.0264984   0.0185889   0.0344079
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1709402   0.1315009   0.2103795
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1264668   0.1029292   0.1500043
6-24 months   COHORTS          INDIA                          NA                   NA                0.0723436   0.0584002   0.0862871
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1913137   0.1767054   0.2059220
6-24 months   IRC              INDIA                          NA                   NA                0.1615385   0.1249661   0.1981108
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0871863   0.0825060   0.0918667
6-24 months   Keneba           GAMBIA                         NA                   NA                0.1590214   0.1412900   0.1767528
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0559072   0.0455633   0.0662511


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level        estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ------------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.5619658   0.9769393    2.497327
0-24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.7962963   0.4617352    1.373271
0-24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    2.0724303   1.3259419    3.239182
0-24 months   COHORTS          GUATEMALA                      Early term           Full or late term    1.6652967   1.1049683    2.509767
0-24 months   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   COHORTS          INDIA                          Preterm              Full or late term    1.6016260   1.0418845    2.462083
0-24 months   COHORTS          INDIA                          Early term           Full or late term    0.8989772   0.5675396    1.423971
0-24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.4441817   1.1851146    1.759881
0-24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2672037   1.0615954    1.512634
0-24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   IRC              INDIA                          Preterm              Full or late term    2.1367521   1.2748323    3.581420
0-24 months   IRC              INDIA                          Early term           Full or late term    1.3082156   0.8043136    2.127812
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.8501065   1.6752320    2.043236
0-24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.2662229   1.1474556    1.397283
0-24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   Keneba           GAMBIA                         Preterm              Full or late term    1.3168508   0.9952076    1.742447
0-24 months   Keneba           GAMBIA                         Early term           Full or late term    0.8557548   0.6659417    1.099670
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    3.7132075   1.7048770    8.087334
0-24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.6984615   0.7436993    3.878949
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    2.0566327   1.3339793    3.170767
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3038494   0.8330155    2.040806
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    2.3782051   0.9837792    5.749115
0-6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.7235772   0.7302577    4.068041
0-6 months    COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    COHORTS          GUATEMALA                      Preterm              Full or late term    3.2558140   0.9568134   11.078779
0-6 months    COHORTS          GUATEMALA                      Early term           Full or late term    1.9444444   0.5686405    6.648953
0-6 months    COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    COHORTS          INDIA                          Preterm              Full or late term    2.2675325   0.9906640    5.190159
0-6 months    COHORTS          INDIA                          Early term           Full or late term    0.8895197   0.3411203    2.319549
0-6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    5.6127329   2.7694809   11.374973
0-6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    2.9922185   1.4735405    6.076095
0-6 months    IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    IRC              INDIA                          Preterm              Full or late term    3.2337662   1.2623595    8.283888
0-6 months    IRC              INDIA                          Early term           Full or late term    1.3858998   0.5263615    3.649048
0-6 months    JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    JiVitA-3         BANGLADESH                     Preterm              Full or late term    3.0062968   2.5880173    3.492179
0-6 months    JiVitA-3         BANGLADESH                     Early term           Full or late term    1.4442139   1.2333107    1.691183
0-6 months    Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    Keneba           GAMBIA                         Preterm              Full or late term    1.8194395   0.9358545    3.537259
0-6 months    Keneba           GAMBIA                         Early term           Full or late term    0.3603145   0.1476399    0.879346
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.2721893   0.7176235    2.255313
6-24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.5906593   0.2990956    1.166445
6-24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    2.2756410   1.4368823    3.604013
6-24 months   COHORTS          GUATEMALA                      Early term           Full or late term    1.6310477   1.0562926    2.518541
6-24 months   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   COHORTS          INDIA                          Preterm              Full or late term    1.3734323   0.8692132    2.170142
6-24 months   COHORTS          INDIA                          Early term           Full or late term    0.8610000   0.5367858    1.381037
6-24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3374939   1.0893821    1.642114
6-24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2728571   1.0655434    1.520506
6-24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   IRC              INDIA                          Preterm              Full or late term    2.1645022   1.2180576    3.846345
6-24 months   IRC              INDIA                          Early term           Full or late term    1.3914657   0.8228622    2.352978
6-24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.3933409   1.2202547    1.590978
6-24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.2174990   1.0817233    1.370317
6-24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   Keneba           GAMBIA                         Preterm              Full or late term    1.3353276   0.9984988    1.785781
6-24 months   Keneba           GAMBIA                         Early term           Full or late term    0.8703555   0.6725222    1.126385
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    3.0095238   1.3666005    6.627565
6-24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.5664714   0.6834694    3.590260
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.8919497   1.2040734    2.972803
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3426312   0.8558210    2.106350


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0072219   -0.0273396   0.0417833
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0347735    0.0133480   0.0561990
0-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0072125   -0.0087935   0.0232185
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0309819    0.0139829   0.0479809
0-24 months   IRC              INDIA                          Full or late term    NA                 0.0311795    0.0006778   0.0616812
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0175677    0.0141232   0.0210122
0-24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0005430   -0.0182274   0.0171414
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0520009    0.0213449   0.0826569
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0094017    0.0019474   0.0168559
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0214309   -0.0027005   0.0455623
0-6 months    COHORTS          GUATEMALA                      Full or late term    NA                 0.0077031   -0.0015757   0.0169818
0-6 months    COHORTS          INDIA                          Full or late term    NA                 0.0043312   -0.0043440   0.0130064
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                 0.0152805    0.0092788   0.0212823
0-6 months    IRC              INDIA                          Full or late term    NA                 0.0149493   -0.0042281   0.0341266
0-6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0136718    0.0113303   0.0160133
0-6 months    Keneba           GAMBIA                         Full or late term    NA                -0.0030266   -0.0110869   0.0050337
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0104552   -0.0413843   0.0204739
6-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0349175    0.0132196   0.0566153
6-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0026572   -0.0132484   0.0185629
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0292767    0.0113335   0.0472199
6-24 months   IRC              INDIA                          Full or late term    NA                 0.0295385    0.0005610   0.0585159
6-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0104039    0.0062487   0.0145591
6-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0005447   -0.0172625   0.0183520
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0419976    0.0103726   0.0736225
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0100990    0.0014397   0.0187584


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0333537   -0.1401246   0.1804361
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.2663781    0.0891787   0.4091035
0-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0941745   -0.1401256   0.2803251
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.1679251    0.0710950   0.2546616
0-24 months   IRC              INDIA                          Full or late term    NA                 0.1665753   -0.0106502   0.3127230
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.1974577    0.1583533   0.2347452
0-24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0033524   -0.1186957   0.1000984
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.5551643    0.1158430   0.7761950
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1892086    0.0287439   0.3231624
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.2746331   -0.0891296   0.5169013
0-6 months    COHORTS          GUATEMALA                      Full or late term    NA                 0.3928571   -0.2355181   0.7016455
0-6 months    COHORTS          INDIA                          Full or late term    NA                 0.2013272   -0.3127887   0.5141044
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                 0.6405089    0.3630151   0.7971162
0-6 months    IRC              INDIA                          Full or late term    NA                 0.2528374   -0.1313107   0.5065442
0-6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.3456658    0.2874177   0.3991526
0-6 months    Keneba           GAMBIA                         Full or late term    NA                -0.1142185   -0.4616076   0.1506046
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0611628   -0.2580714   0.1049264
6-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.2760999    0.0903101   0.4239451
6-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0367305   -0.2101244   0.2332292
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.1530297    0.0543385   0.2414213
6-24 months   IRC              INDIA                          Full or late term    NA                 0.1828571   -0.0136344   0.3412591
6-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.1193294    0.0703913   0.1656912
6-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0034256   -0.1150878   0.1093432
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.4866385   -0.0147040   0.7402790
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1806396    0.0141114   0.3190392
