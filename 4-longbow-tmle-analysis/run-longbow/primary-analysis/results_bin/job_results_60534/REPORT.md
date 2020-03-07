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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impsan

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




# Results Detail

## Results Plots
![](/tmp/e0568a3d-21a5-465d-907d-2b29cab86ddb/57b099bb-2f7d-4b97-a86a-207c330130f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e0568a3d-21a5-465d-907d-2b29cab86ddb/57b099bb-2f7d-4b97-a86a-207c330130f6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e0568a3d-21a5-465d-907d-2b29cab86ddb/57b099bb-2f7d-4b97-a86a-207c330130f6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e0568a3d-21a5-465d-907d-2b29cab86ddb/57b099bb-2f7d-4b97-a86a-207c330130f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2151205   0.1605110   0.2697299
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3740099   0.2463678   0.5016519
0-24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.1800867   0.1029340   0.2572395
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0972146   0.0698328   0.1245964
0-24 months   COHORTS          GUATEMALA                      Preterm              NA                0.2110419   0.1435271   0.2785567
0-24 months   COHORTS          GUATEMALA                      Early term           NA                0.1599931   0.1135145   0.2064717
0-24 months   COHORTS          INDIA                          Full or late term    NA                0.0674508   0.0473284   0.0875731
0-24 months   COHORTS          INDIA                          Preterm              NA                0.1111851   0.0764252   0.1459451
0-24 months   COHORTS          INDIA                          Early term           NA                0.0639208   0.0419539   0.0858878
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.1536469   0.1331442   0.1741497
0-24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.2170043   0.1855194   0.2484892
0-24 months   COHORTS          PHILIPPINES                    Early term           NA                0.1967064   0.1747095   0.2187032
0-24 months   IRC              INDIA                          Full or late term    NA                0.1558356   0.1107549   0.2009164
0-24 months   IRC              INDIA                          Preterm              NA                0.3357056   0.1892905   0.4821207
0-24 months   IRC              INDIA                          Early term           NA                0.1992948   0.1189136   0.2796760
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.0722751   0.0675027   0.0770475
0-24 months   JiVitA-3         BANGLADESH                     Preterm              NA                0.1281681   0.1180293   0.1383069
0-24 months   JiVitA-3         BANGLADESH                     Early term           NA                0.0901731   0.0830967   0.0972495
0-24 months   Keneba           GAMBIA                         Full or late term    NA                0.1599747   0.1352430   0.1847063
0-24 months   Keneba           GAMBIA                         Preterm              NA                0.2177828   0.1678903   0.2676753
0-24 months   Keneba           GAMBIA                         Early term           NA                0.1403400   0.1125625   0.1681175
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0416667   0.0114301   0.0719033
0-24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.1547170   0.1111476   0.1982864
0-24 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.0707692   0.0428710   0.0986675
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0405251   0.0301670   0.0508831
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0819071   0.0530399   0.1107743
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0528170   0.0336032   0.0720308
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0566038   0.0254523   0.0877552
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1346154   0.0417130   0.2275178
0-6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                0.0975610   0.0332453   0.1618766
0-6 months    COHORTS          GUATEMALA                      Full or late term    NA                0.0119048   0.0015255   0.0222840
0-6 months    COHORTS          GUATEMALA                      Preterm              NA                0.0387597   0.0054291   0.0720903
0-6 months    COHORTS          GUATEMALA                      Early term           NA                0.0231481   0.0030814   0.0432149
0-6 months    COHORTS          INDIA                          Full or late term    NA                0.0171821   0.0066207   0.0277436
0-6 months    COHORTS          INDIA                          Preterm              NA                0.0389610   0.0173428   0.0605792
0-6 months    COHORTS          INDIA                          Early term           NA                0.0152838   0.0040443   0.0265234
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.0086276   0.0032794   0.0139758
0-6 months    COHORTS          PHILIPPINES                    Preterm              NA                0.0464554   0.0301487   0.0627621
0-6 months    COHORTS          PHILIPPINES                    Early term           NA                0.0257731   0.0168291   0.0347171
0-6 months    IRC              INDIA                          Full or late term    NA                0.0441767   0.0186207   0.0697327
0-6 months    IRC              INDIA                          Preterm              NA                0.1428571   0.0368927   0.2488215
0-6 months    IRC              INDIA                          Early term           NA                0.0612245   0.0136978   0.1087512
0-6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                0.0262139   0.0233868   0.0290409
0-6 months    JiVitA-3         BANGLADESH                     Preterm              NA                0.0750139   0.0671944   0.0828333
0-6 months    JiVitA-3         BANGLADESH                     Early term           NA                0.0372099   0.0325049   0.0419150
0-6 months    Keneba           GAMBIA                         Full or late term    NA                0.0295250   0.0176344   0.0414156
0-6 months    Keneba           GAMBIA                         Preterm              NA                0.0537190   0.0253038   0.0821343
0-6 months    Keneba           GAMBIA                         Early term           NA                0.0106383   0.0021688   0.0191078
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1813953   0.1298133   0.2329774
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2307692   0.1160904   0.3454481
6-24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.1071429   0.0409059   0.1733798
6-24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0912849   0.0637859   0.1187839
6-24 months   COHORTS          GUATEMALA                      Preterm              NA                0.2077137   0.1372214   0.2782060
6-24 months   COHORTS          GUATEMALA                      Early term           NA                0.1480323   0.1018762   0.1941883
6-24 months   COHORTS          INDIA                          Full or late term    NA                0.0675969   0.0471307   0.0880630
6-24 months   COHORTS          INDIA                          Preterm              NA                0.0938013   0.0611705   0.1264321
6-24 months   COHORTS          INDIA                          Early term           NA                0.0628315   0.0404542   0.0852089
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.1629318   0.1411473   0.1847162
6-24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.2136790   0.1811445   0.2462134
6-24 months   COHORTS          PHILIPPINES                    Early term           NA                0.2066766   0.1832901   0.2300631
6-24 months   IRC              INDIA                          Full or late term    NA                0.1323481   0.0902288   0.1744674
6-24 months   IRC              INDIA                          Preterm              NA                0.2824816   0.1414981   0.4234650
6-24 months   IRC              INDIA                          Early term           NA                0.1836595   0.1051625   0.2621565
6-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.0780919   0.0720178   0.0841660
6-24 months   JiVitA-3         BANGLADESH                     Preterm              NA                0.1019647   0.0903501   0.1135792
6-24 months   JiVitA-3         BANGLADESH                     Early term           NA                0.0928295   0.0843654   0.1012936
6-24 months   Keneba           GAMBIA                         Full or late term    NA                0.1580548   0.1330580   0.1830517
6-24 months   Keneba           GAMBIA                         Preterm              NA                0.2103983   0.1590394   0.2617572
6-24 months   Keneba           GAMBIA                         Early term           NA                0.1373378   0.1093119   0.1653638
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0443038   0.0121970   0.0764106
6-24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.1333333   0.0915819   0.1750847
6-24 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.0694006   0.0414057   0.0973955
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0460218   0.0339482   0.0580954
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0869356   0.0549764   0.1188948
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0616343   0.0391035   0.0841652


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
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.7386065   1.1348037    2.663679
0-24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.8371435   0.5086169    1.377872
0-24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    2.1708873   1.4184936    3.322364
0-24 months   COHORTS          GUATEMALA                      Early term           Full or late term    1.6457723   1.0990085    2.464555
0-24 months   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   COHORTS          INDIA                          Preterm              Full or late term    1.6483897   1.0717346    2.535318
0-24 months   COHORTS          INDIA                          Early term           Full or late term    0.9476662   0.6026417    1.490224
0-24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.4123569   1.1609908    1.718146
0-24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2802492   1.0772319    1.521528
0-24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   IRC              INDIA                          Preterm              Full or late term    2.1542285   1.2753189    3.638855
0-24 months   IRC              INDIA                          Early term           Full or late term    1.2788782   0.7780066    2.102205
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.7733370   1.6039335    1.960632
0-24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.2476368   1.1314378    1.375770
0-24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   Keneba           GAMBIA                         Preterm              Full or late term    1.3613582   1.0331572    1.793818
0-24 months   Keneba           GAMBIA                         Early term           Full or late term    0.8772641   0.6829269    1.126903
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    3.7132075   1.7048770    8.087334
0-24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.6984615   0.7436993    3.878949
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    2.0211475   1.3076282    3.124005
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3033175   0.8354617    2.033171
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
0-6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    5.3845373   2.6398618   10.982864
0-6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    2.9872938   1.4674847    6.081102
0-6 months    IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    IRC              INDIA                          Preterm              Full or late term    3.2337662   1.2623595    8.283888
0-6 months    IRC              INDIA                          Early term           Full or late term    1.3858998   0.5263615    3.649048
0-6 months    JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    JiVitA-3         BANGLADESH                     Preterm              Full or late term    2.8616092   2.4596263    3.329289
0-6 months    JiVitA-3         BANGLADESH                     Early term           Full or late term    1.4194742   1.2124851    1.661799
0-6 months    Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
0-6 months    Keneba           GAMBIA                         Preterm              Full or late term    1.8194395   0.9358545    3.537259
0-6 months    Keneba           GAMBIA                         Early term           Full or late term    0.3603145   0.1476399    0.879346
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.2721893   0.7176235    2.255313
6-24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.5906593   0.2990956    1.166445
6-24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    2.2754448   1.4460391    3.580573
6-24 months   COHORTS          GUATEMALA                      Early term           Full or late term    1.6216516   1.0527609    2.497959
6-24 months   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   COHORTS          INDIA                          Preterm              Full or late term    1.3876571   0.8774395    2.194558
6-24 months   COHORTS          INDIA                          Early term           Full or late term    0.9295037   0.5835606    1.480527
6-24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3114628   1.0725178    1.603642
6-24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2684854   1.0662730    1.509046
6-24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   IRC              INDIA                          Preterm              Full or late term    2.1343838   1.1805073    3.859014
6-24 months   IRC              INDIA                          Early term           Full or late term    1.3877006   0.8141685    2.365251
6-24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.3057006   1.1411597    1.493966
6-24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.1887212   1.0567092    1.337225
6-24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   Keneba           GAMBIA                         Preterm              Full or late term    1.3311727   0.9956895    1.779692
6-24 months   Keneba           GAMBIA                         Early term           Full or late term    0.8689251   0.6719525    1.123637
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    3.0095238   1.3666005    6.627565
6-24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.5664714   0.6834694    3.590260
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.8890089   1.2025121    2.967417
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3392422   0.8539792    2.100250


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0014037   -0.0336172   0.0364247
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0333273    0.0119834   0.0546712
0-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0091357   -0.0065089   0.0247803
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0308512    0.0141734   0.0475291
0-24 months   IRC              INDIA                          Full or late term    NA                 0.0313438    0.0007454   0.0619423
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0166944    0.0132450   0.0201437
0-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0019972   -0.0155166   0.0195110
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0520009    0.0213449   0.0826569
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0091644    0.0016891   0.0166396
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0214309   -0.0027005   0.0455623
0-6 months    COHORTS          GUATEMALA                      Full or late term    NA                 0.0077031   -0.0015757   0.0169818
0-6 months    COHORTS          INDIA                          Full or late term    NA                 0.0043312   -0.0043440   0.0130064
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                 0.0152293    0.0091928   0.0212658
0-6 months    IRC              INDIA                          Full or late term    NA                 0.0149493   -0.0042281   0.0341266
0-6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0133381    0.0109912   0.0156851
0-6 months    Keneba           GAMBIA                         Full or late term    NA                -0.0030266   -0.0110869   0.0050337
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0104552   -0.0413843   0.0204739
6-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0351819    0.0136369   0.0567269
6-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0047468   -0.0107794   0.0202729
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0283819    0.0107889   0.0459750
6-24 months   IRC              INDIA                          Full or late term    NA                 0.0291904    0.0000147   0.0583661
6-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0090944    0.0048982   0.0132906
6-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0009666   -0.0167254   0.0186585
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0419976    0.0103726   0.0736225
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0098854    0.0012043   0.0185664


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0064831   -0.1691210   0.1557111
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.2552996    0.0785899   0.3981196
0-24 months   COHORTS          INDIA                          Full or late term    NA                 0.1192858   -0.1097097   0.3010266
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.1672171    0.0722571   0.2524574
0-24 months   IRC              INDIA                          Full or late term    NA                 0.1674534   -0.0104004   0.3140008
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.1876417    0.1485467   0.2249416
0-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0123304   -0.1019453   0.1147552
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.5551643    0.1158430   0.7761950
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1844333    0.0235222   0.3188283
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.2746331   -0.0891296   0.5169013
0-6 months    COHORTS          GUATEMALA                      Full or late term    NA                 0.3928571   -0.2355181   0.7016455
0-6 months    COHORTS          INDIA                          Full or late term    NA                 0.2013272   -0.3127887   0.5141044
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                 0.6383613    0.3574589   0.7964604
0-6 months    IRC              INDIA                          Full or late term    NA                 0.2528374   -0.1313107   0.5065442
0-6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.3372302    0.2789072   0.3908359
0-6 months    Keneba           GAMBIA                         Full or late term    NA                -0.1142185   -0.4616076   0.1506046
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0611628   -0.2580714   0.1049264
6-24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.2781907    0.0931088   0.4255004
6-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0656142   -0.1755080   0.2572769
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.1483529    0.0516559   0.2351903
6-24 months   IRC              INDIA                          Full or late term    NA                 0.1807024   -0.0171986   0.3401008
6-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.1043101    0.0549148   0.1511239
6-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0060782   -0.1116421   0.1113321
6-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.4866385   -0.0147040   0.7402790
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1768179    0.0098505   0.3156298
