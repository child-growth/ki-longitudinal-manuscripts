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
0-24 months   JiVitA-3         BANGLADESH                     Full or late term              0     2124   7200
0-24 months   JiVitA-3         BANGLADESH                     Full or late term              1     1576   7200
0-24 months   JiVitA-3         BANGLADESH                     Preterm                        0      856   7200
0-24 months   JiVitA-3         BANGLADESH                     Preterm                        1      659   7200
0-24 months   JiVitA-3         BANGLADESH                     Early term                     0     1185   7200
0-24 months   JiVitA-3         BANGLADESH                     Early term                     1      800   7200
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
0-6 months    JiVitA-3         BANGLADESH                     Full or late term              0      720   4484
0-6 months    JiVitA-3         BANGLADESH                     Full or late term              1     1576   4484
0-6 months    JiVitA-3         BANGLADESH                     Preterm                        0      308   4484
0-6 months    JiVitA-3         BANGLADESH                     Preterm                        1      659   4484
0-6 months    JiVitA-3         BANGLADESH                     Early term                     0      421   4484
0-6 months    JiVitA-3         BANGLADESH                     Early term                     1      800   4484
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
6-24 months   JiVitA-3         BANGLADESH                     Full or late term              0     1404   2716
6-24 months   JiVitA-3         BANGLADESH                     Full or late term              1        0   2716
6-24 months   JiVitA-3         BANGLADESH                     Preterm                        0      548   2716
6-24 months   JiVitA-3         BANGLADESH                     Preterm                        1        0   2716
6-24 months   JiVitA-3         BANGLADESH                     Early term                     0      764   2716
6-24 months   JiVitA-3         BANGLADESH                     Early term                     1        0   2716
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

* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/ddf9d187-d9d4-4168-9e32-3b319e6981cc/c73d0ed2-d5ed-413f-93bc-fd2e877afc2a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ddf9d187-d9d4-4168-9e32-3b319e6981cc/c73d0ed2-d5ed-413f-93bc-fd2e877afc2a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ddf9d187-d9d4-4168-9e32-3b319e6981cc/c73d0ed2-d5ed-413f-93bc-fd2e877afc2a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ddf9d187-d9d4-4168-9e32-3b319e6981cc/c73d0ed2-d5ed-413f-93bc-fd2e877afc2a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6301174   0.5602343   0.7000005
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5388680   0.3866768   0.6910592
0-24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.6570944   0.5249943   0.7891945
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.5265209   0.4401682   0.6128736
0-24 months   COHORTS          GUATEMALA                      Preterm              NA                0.3555351   0.2207093   0.4903609
0-24 months   COHORTS          GUATEMALA                      Early term           NA                0.4538677   0.3459151   0.5618202
0-24 months   COHORTS          INDIA                          Full or late term    NA                0.2193770   0.1598502   0.2789039
0-24 months   COHORTS          INDIA                          Preterm              NA                0.2839355   0.2078151   0.3600560
0-24 months   COHORTS          INDIA                          Early term           NA                0.2946466   0.2287035   0.3605898
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.6113416   0.5679802   0.6547029
0-24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.6116653   0.5619058   0.6614249
0-24 months   COHORTS          PHILIPPINES                    Early term           NA                0.5999726   0.5624355   0.6375097
0-24 months   IRC              INDIA                          Full or late term    NA                0.5935269   0.5214146   0.6656391
0-24 months   IRC              INDIA                          Preterm              NA                0.5588787   0.4261706   0.6915867
0-24 months   IRC              INDIA                          Early term           NA                0.6267625   0.5309593   0.7225658
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.4239860   0.4081124   0.4398596
0-24 months   JiVitA-3         BANGLADESH                     Preterm              NA                0.4393560   0.4143198   0.4643921
0-24 months   JiVitA-3         BANGLADESH                     Early term           NA                0.4035880   0.3818568   0.4253191
0-24 months   Keneba           GAMBIA                         Full or late term    NA                0.6346956   0.5951815   0.6742097
0-24 months   Keneba           GAMBIA                         Preterm              NA                0.6105655   0.5343466   0.6867844
0-24 months   Keneba           GAMBIA                         Early term           NA                0.6688489   0.6196014   0.7180963
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.6294979   0.4855324   0.7734635
0-24 months   NIH-Crypto       BANGLADESH                     Preterm              NA                0.6269827   0.5499007   0.7040646
0-24 months   NIH-Crypto       BANGLADESH                     Early term           NA                0.6381376   0.5477317   0.7285434
0-24 months   PROBIT           BELARUS                        Full or late term    NA                0.8813673   0.8678953   0.8948392
0-24 months   PROBIT           BELARUS                        Preterm              NA                0.8323962   0.7740945   0.8906979
0-24 months   PROBIT           BELARUS                        Early term           NA                0.8837657   0.8700621   0.8974693
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.6608508   0.6101579   0.7115438
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.5952031   0.5033532   0.6870531
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5819782   0.5010112   0.6629453
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6610169   0.5757140   0.7463199
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7407407   0.5666423   0.9148392
0-6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                0.6750000   0.5258441   0.8241559
0-6 months    COHORTS          GUATEMALA                      Full or late term    NA                0.8181818   0.7368393   0.8995243
0-6 months    COHORTS          GUATEMALA                      Preterm              NA                0.6296296   0.4457667   0.8134926
0-6 months    COHORTS          GUATEMALA                      Early term           NA                0.8260870   0.7207224   0.9314515
0-6 months    COHORTS          INDIA                          Full or late term    NA                0.3152164   0.2387638   0.3916690
0-6 months    COHORTS          INDIA                          Preterm              NA                0.4414841   0.3346341   0.5483341
0-6 months    COHORTS          INDIA                          Early term           NA                0.4549244   0.3629513   0.5468974
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.7449007   0.6899910   0.7998104
0-6 months    COHORTS          PHILIPPINES                    Preterm              NA                0.7471977   0.6822513   0.8121440
0-6 months    COHORTS          PHILIPPINES                    Early term           NA                0.7275226   0.6783128   0.7767325
0-6 months    IRC              INDIA                          Full or late term    NA                0.6222222   0.5361698   0.7082747
0-6 months    IRC              INDIA                          Preterm              NA                0.6538462   0.4797295   0.8279628
0-6 months    IRC              INDIA                          Early term           NA                0.6666667   0.5568093   0.7765240
0-6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                0.6830851   0.6641137   0.7020566
0-6 months    JiVitA-3         BANGLADESH                     Preterm              NA                0.6879839   0.6588717   0.7170961
0-6 months    JiVitA-3         BANGLADESH                     Early term           NA                0.6583359   0.6314707   0.6852011
0-6 months    Keneba           GAMBIA                         Full or late term    NA                0.8157592   0.7718196   0.8596987
0-6 months    Keneba           GAMBIA                         Preterm              NA                0.7592356   0.6734349   0.8450364
0-6 months    Keneba           GAMBIA                         Early term           NA                0.8638161   0.8160102   0.9116221
0-6 months    PROBIT           BELARUS                        Full or late term    NA                0.9002501   0.8873744   0.9131257
0-6 months    PROBIT           BELARUS                        Preterm              NA                0.8554091   0.7994694   0.9113489
0-6 months    PROBIT           BELARUS                        Early term           NA                0.9051982   0.8922810   0.9181154
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.7208005   0.6557652   0.7858358
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.6564335   0.5304682   0.7823988
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.6848341   0.5731127   0.7965555
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.5820896   0.4594727   0.7047064
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3636364   0.1308138   0.5964590
6-24 months   CMC-V-BCS-2002   INDIA                          Early term           NA                0.6800000   0.4890151   0.8709849
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.5185680   0.4604362   0.5766998
6-24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.4824859   0.4118758   0.5530961
6-24 months   COHORTS          PHILIPPINES                    Early term           NA                0.4927007   0.4403669   0.5450344
6-24 months   IRC              INDIA                          Full or late term    NA                0.5407023   0.4316788   0.6497259
6-24 months   IRC              INDIA                          Preterm              NA                0.4107199   0.2036543   0.6177856
6-24 months   IRC              INDIA                          Early term           NA                0.5085310   0.3208440   0.6962180
6-24 months   Keneba           GAMBIA                         Full or late term    NA                0.4810654   0.4247807   0.5373500
6-24 months   Keneba           GAMBIA                         Preterm              NA                0.5093741   0.4036142   0.6151341
6-24 months   Keneba           GAMBIA                         Early term           NA                0.5230017   0.4549623   0.5910412
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.5982858   0.5265355   0.6700360
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.5230611   0.3960339   0.6500883
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5247442   0.4152511   0.6342373


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6321070   0.5744109   0.6898031
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4750000   0.4147665   0.5352335
0-24 months   COHORTS          INDIA                          NA                   NA                0.2619503   0.2237649   0.3001357
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6059701   0.5813402   0.6306001
0-24 months   IRC              INDIA                          NA                   NA                0.5942408   0.5412823   0.6471994
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4215278   0.4101272   0.4329284
0-24 months   Keneba           GAMBIA                         NA                   NA                0.6429143   0.6145621   0.6712666
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROBIT           BELARUS                        NA                   NA                0.8806715   0.8711794   0.8901636
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6291291   0.5901846   0.6680736
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.6756757   0.6074152   0.7439361
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.7888199   0.7258783   0.8517615
0-6 months    COHORTS          INDIA                          NA                   NA                0.3982558   0.3464489   0.4500628
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.7365591   0.7047881   0.7683302
0-6 months    IRC              INDIA                          NA                   NA                0.6391304   0.5756367   0.7026242
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6768510   0.6631621   0.6905400
0-6 months    Keneba           GAMBIA                         NA                   NA                0.8234234   0.7927195   0.8541273
0-6 months    PROBIT           BELARUS                        NA                   NA                0.9008671   0.8918443   0.9098900
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6993671   0.6481378   0.7505964
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.5614035   0.4645960   0.6582110
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.5016112   0.4676556   0.5355667
6-24 months   IRC              INDIA                          NA                   NA                0.5263158   0.4415211   0.6111105
6-24 months   Keneba           GAMBIA                         NA                   NA                0.4985591   0.4587425   0.5383757
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5657143   0.5118874   0.6195411


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.8551866   0.6310607   1.158913
0-24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0428126   0.8299538   1.310263
0-24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    0.6752535   0.4458544   1.022682
0-24 months   COHORTS          GUATEMALA                      Early term           Full or late term    0.8620126   0.6464455   1.149464
0-24 months   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          Preterm              Full or late term    1.2942809   0.8838649   1.895271
0-24 months   COHORTS          INDIA                          Early term           Full or late term    1.3431061   0.9452178   1.908485
0-24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0005296   0.8983573   1.114322
0-24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    0.9814033   0.8929487   1.078620
0-24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          Preterm              Full or late term    0.9416232   0.7211225   1.229547
0-24 months   IRC              INDIA                          Early term           Full or late term    1.0559970   0.8682851   1.284290
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.0362511   0.9680295   1.109281
0-24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    0.9518897   0.8915307   1.016335
0-24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         Preterm              Full or late term    0.9619815   0.8368237   1.105858
0-24 months   Keneba           GAMBIA                         Early term           Full or late term    1.0538104   0.9571597   1.160221
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    0.9960044   0.7679742   1.291742
0-24 months   NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.0137246   0.7746528   1.326578
0-24 months   PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Preterm              Full or late term    0.9444374   0.8790985   1.014633
0-24 months   PROBIT           BELARUS                        Early term           Full or late term    1.0027213   0.9811238   1.024794
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.9006618   0.7580152   1.070152
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8806499   0.7512692   1.032312
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.1206078   0.8570471   1.465219
0-6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0211538   0.7906029   1.318937
0-6 months    COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      Preterm              Full or late term    0.7695473   0.5652821   1.047624
0-6 months    COHORTS          GUATEMALA                      Early term           Full or late term    1.0096618   0.8589016   1.186885
0-6 months    COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          Preterm              Full or late term    1.4005747   0.9936190   1.974207
0-6 months    COHORTS          INDIA                          Early term           Full or late term    1.4432130   1.0525790   1.978819
0-6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0030835   0.8949100   1.124333
0-6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    0.9766706   0.8836805   1.079446
0-6 months    IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          Preterm              Full or late term    1.0508242   0.7784047   1.418583
0-6 months    IRC              INDIA                          Early term           Full or late term    1.0714286   0.8640328   1.328606
0-6 months    JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.0071715   0.9575539   1.059360
0-6 months    JiVitA-3         BANGLADESH                     Early term           Full or late term    0.9637684   0.9174068   1.012473
0-6 months    Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         Preterm              Full or late term    0.9307105   0.8213821   1.054591
0-6 months    Keneba           GAMBIA                         Early term           Full or late term    1.0589107   0.9802562   1.143876
0-6 months    PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Preterm              Full or late term    0.9501906   0.8886648   1.015976
0-6 months    PROBIT           BELARUS                        Early term           Full or late term    1.0054964   0.9853831   1.026020
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.9107007   0.7372064   1.125025
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9501022   0.7897100   1.143070
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.6247086   0.3184160   1.225632
6-24 months   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.1682051   0.8223605   1.659495
6-24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9304198   0.7737998   1.118740
6-24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    0.9501177   0.8141036   1.108856
6-24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA                          Preterm              Full or late term    0.7596045   0.4418140   1.305977
6-24 months   IRC              INDIA                          Early term           Full or late term    0.9405008   0.6152072   1.437795
6-24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   Keneba           GAMBIA                         Preterm              Full or late term    1.0588460   0.8342941   1.343837
6-24 months   Keneba           GAMBIA                         Early term           Full or late term    1.0871739   0.9131885   1.294308
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.8742663   0.6666762   1.146496
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8770795   0.6892949   1.116022


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0019896   -0.0445954   0.0485746
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.0515209   -0.1120242   0.0089824
0-24 months   COHORTS          INDIA                          Full or late term    NA                 0.0425732   -0.0041105   0.0892570
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0053714   -0.0402111   0.0294683
0-24 months   IRC              INDIA                          Full or late term    NA                 0.0007140   -0.0426524   0.0440803
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0024583   -0.0135375   0.0086210
0-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0082187   -0.0201783   0.0366156
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0069173   -0.1419427   0.1281082
0-24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0006958   -0.0103006   0.0089091
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0317217   -0.0662238   0.0027804
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0146587   -0.0368417   0.0661592
0-6 months    COHORTS          GUATEMALA                      Full or late term    NA                -0.0293619   -0.0871996   0.0284757
0-6 months    COHORTS          INDIA                          Full or late term    NA                 0.0830394    0.0224316   0.1436472
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.0083416   -0.0536416   0.0369585
0-6 months    IRC              INDIA                          Full or late term    NA                 0.0169082   -0.0354403   0.0692567
0-6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0062341   -0.0195941   0.0071259
0-6 months    Keneba           GAMBIA                         Full or late term    NA                 0.0076643   -0.0223106   0.0376392
0-6 months    PROBIT           BELARUS                        Full or late term    NA                 0.0006171   -0.0084870   0.0097212
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0214334   -0.0643799   0.0215132
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0206860   -0.1028182   0.0614461
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0169568   -0.0635743   0.0296606
6-24 months   IRC              INDIA                          Full or late term    NA                -0.0143866   -0.0862557   0.0574826
6-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0174937   -0.0222931   0.0572805
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0325715   -0.0825072   0.0173643


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0031475   -0.0733083   0.0741571
0-24 months   COHORTS          GUATEMALA                      Full or late term    NA                -0.1084651   -0.2439240   0.0122428
0-24 months   COHORTS          INDIA                          Full or late term    NA                 0.1625242   -0.0372467   0.3238197
0-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0088641   -0.0680160   0.0470116
0-24 months   IRC              INDIA                          Full or late term    NA                 0.0012015   -0.0745214   0.0715882
0-24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0058318   -0.0324628   0.0201123
0-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0127835   -0.0323745   0.0559662
0-24 months   NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0111107   -0.2530455   0.1841120
0-24 months   PROBIT           BELARUS                        Full or late term    NA                -0.0007900   -0.0117560   0.0100571
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0504216   -0.1069806   0.0032476
0-6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0216949   -0.0575958   0.0950410
0-6 months    COHORTS          GUATEMALA                      Full or late term    NA                -0.0372226   -0.1135640   0.0338851
0-6 months    COHORTS          INDIA                          Full or late term    NA                 0.2085078    0.0404619   0.3471234
0-6 months    COHORTS          PHILIPPINES                    Full or late term    NA                -0.0113251   -0.0747463   0.0483537
0-6 months    IRC              INDIA                          Full or late term    NA                 0.0264550   -0.0593125   0.1052784
0-6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0092105   -0.0291473   0.0103401
0-6 months    Keneba           GAMBIA                         Full or late term    NA                 0.0093078   -0.0277913   0.0450678
0-6 months    PROBIT           BELARUS                        Full or late term    NA                 0.0006850   -0.0094723   0.0107400
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0306468   -0.0940938   0.0291208
6-24 months   CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0368470   -0.1946251   0.1000928
6-24 months   COHORTS          PHILIPPINES                    Full or late term    NA                -0.0338047   -0.1310343   0.0550665
6-24 months   IRC              INDIA                          Full or late term    NA                -0.0273345   -0.1736512   0.1007413
6-24 months   Keneba           GAMBIA                         Full or late term    NA                 0.0350885   -0.0481612   0.1117262
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0575758   -0.1500873   0.0274941
