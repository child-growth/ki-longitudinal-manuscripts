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

**Outcome Variable:** ever_swasted

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

agecat                        studyid          country                        gagebrth             ever_swasted   n_cell       n
----------------------------  ---------------  -----------------------------  ------------------  -------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term               0      183     348
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term               1       30     348
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Preterm                         0       42     348
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Preterm                         1       10     348
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Early term                      0       71     348
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Early term                      1       12     348
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Full or late term               0      441     809
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Full or late term               1        7     809
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Preterm                         0      126     809
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Preterm                         1        4     809
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Early term                      0      222     809
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Early term                      1        9     809
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term               0      556    1345
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term               1       23    1345
0-24 months (no birth wast)   COHORTS          INDIA                          Preterm                         0      294    1345
0-24 months (no birth wast)   COHORTS          INDIA                          Preterm                         1       14    1345
0-24 months (no birth wast)   COHORTS          INDIA                          Early term                      0      433    1345
0-24 months (no birth wast)   COHORTS          INDIA                          Early term                      1       25    1345
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term               0     1073    2993
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term               1       85    2993
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Preterm                         0      581    2993
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Preterm                         1       52    2993
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Early term                      0     1093    2993
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Early term                      1      109    2993
0-24 months (no birth wast)   IRC              INDIA                          Full or late term               0      206     389
0-24 months (no birth wast)   IRC              INDIA                          Full or late term               1       43     389
0-24 months (no birth wast)   IRC              INDIA                          Preterm                         0       34     389
0-24 months (no birth wast)   IRC              INDIA                          Preterm                         1        8     389
0-24 months (no birth wast)   IRC              INDIA                          Early term                      0       74     389
0-24 months (no birth wast)   IRC              INDIA                          Early term                      1       24     389
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term               0      711    1692
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term               1      127    1692
0-24 months (no birth wast)   Keneba           GAMBIA                         Preterm                         0      218    1692
0-24 months (no birth wast)   Keneba           GAMBIA                         Preterm                         1       38    1692
0-24 months (no birth wast)   Keneba           GAMBIA                         Early term                      0      530    1692
0-24 months (no birth wast)   Keneba           GAMBIA                         Early term                      1       68    1692
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Full or late term               0      165     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Full or late term               1        3     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Preterm                         0      250     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Preterm                         1       11     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Early term                      0      319     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Early term                      1        6     754
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term               0     8516   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term               1      105   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Preterm                         0      583   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Preterm                         1        8   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Early term                      0     7576   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Early term                      1       91   16879
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0     1325    2242
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1       60    2242
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      323    2242
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1       21    2242
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      483    2242
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1       30    2242
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Full or late term               0      180     332
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Full or late term               1       20     332
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Preterm                         0       49     332
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Preterm                         1        2     332
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Early term                      0       75     332
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Early term                      1        6     332
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Full or late term               0      409     745
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Full or late term               1        1     745
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Preterm                         0      122     745
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Preterm                         1        0     745
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Early term                      0      212     745
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Early term                      1        1     745
0-6 months (no birth wast)    COHORTS          INDIA                          Full or late term               0      524    1249
0-6 months (no birth wast)    COHORTS          INDIA                          Full or late term               1        9    1249
0-6 months (no birth wast)    COHORTS          INDIA                          Preterm                         0      278    1249
0-6 months (no birth wast)    COHORTS          INDIA                          Preterm                         1        4    1249
0-6 months (no birth wast)    COHORTS          INDIA                          Early term                      0      425    1249
0-6 months (no birth wast)    COHORTS          INDIA                          Early term                      1        9    1249
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term               0     1128    2972
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term               1       22    2972
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Preterm                         0      616    2972
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Preterm                         1       13    2972
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Early term                      0     1163    2972
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Early term                      1       30    2972
0-6 months (no birth wast)    IRC              INDIA                          Full or late term               0      206     371
0-6 months (no birth wast)    IRC              INDIA                          Full or late term               1       33     371
0-6 months (no birth wast)    IRC              INDIA                          Preterm                         0       33     371
0-6 months (no birth wast)    IRC              INDIA                          Preterm                         1        5     371
0-6 months (no birth wast)    IRC              INDIA                          Early term                      0       77     371
0-6 months (no birth wast)    IRC              INDIA                          Early term                      1       17     371
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term               0      731    1565
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term               1       36    1565
0-6 months (no birth wast)    Keneba           GAMBIA                         Preterm                         0      228    1565
0-6 months (no birth wast)    Keneba           GAMBIA                         Preterm                         1       12    1565
0-6 months (no birth wast)    Keneba           GAMBIA                         Early term                      0      542    1565
0-6 months (no birth wast)    Keneba           GAMBIA                         Early term                      1       16    1565
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Full or late term               0      168     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Full or late term               1        0     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Preterm                         0      259     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Preterm                         1        1     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Early term                      0      321     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Early term                      1        0     749
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term               0     8431   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term               1       98   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Preterm                         0      573   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Preterm                         1        8   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Early term                      0     7497   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Early term                      1       86   16693
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0     1356    2234
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1       24    2234
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      337    2234
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1        6    2234
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      503    2234
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1        8    2234
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term               0      201     351
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term               1       14     351
6-24 months                   CMC-V-BCS-2002   INDIA                          Preterm                         0       44     351
6-24 months                   CMC-V-BCS-2002   INDIA                          Preterm                         1        8     351
6-24 months                   CMC-V-BCS-2002   INDIA                          Early term                      0       78     351
6-24 months                   CMC-V-BCS-2002   INDIA                          Early term                      1        6     351
6-24 months                   COHORTS          GUATEMALA                      Full or late term               0      420     769
6-24 months                   COHORTS          GUATEMALA                      Full or late term               1        7     769
6-24 months                   COHORTS          GUATEMALA                      Preterm                         0      116     769
6-24 months                   COHORTS          GUATEMALA                      Preterm                         1        5     769
6-24 months                   COHORTS          GUATEMALA                      Early term                      0      213     769
6-24 months                   COHORTS          GUATEMALA                      Early term                      1        8     769
6-24 months                   COHORTS          INDIA                          Full or late term               0      559    1327
6-24 months                   COHORTS          INDIA                          Full or late term               1       15    1327
6-24 months                   COHORTS          INDIA                          Preterm                         0      291    1327
6-24 months                   COHORTS          INDIA                          Preterm                         1       12    1327
6-24 months                   COHORTS          INDIA                          Early term                      0      432    1327
6-24 months                   COHORTS          INDIA                          Early term                      1       18    1327
6-24 months                   COHORTS          PHILIPPINES                    Full or late term               0     1016    2787
6-24 months                   COHORTS          PHILIPPINES                    Full or late term               1       65    2787
6-24 months                   COHORTS          PHILIPPINES                    Preterm                         0      547    2787
6-24 months                   COHORTS          PHILIPPINES                    Preterm                         1       39    2787
6-24 months                   COHORTS          PHILIPPINES                    Early term                      0     1038    2787
6-24 months                   COHORTS          PHILIPPINES                    Early term                      1       82    2787
6-24 months                   IRC              INDIA                          Full or late term               0      237     390
6-24 months                   IRC              INDIA                          Full or late term               1       13     390
6-24 months                   IRC              INDIA                          Preterm                         0       37     390
6-24 months                   IRC              INDIA                          Preterm                         1        5     390
6-24 months                   IRC              INDIA                          Early term                      0       90     390
6-24 months                   IRC              INDIA                          Early term                      1        8     390
6-24 months                   Keneba           GAMBIA                         Full or late term               0      718    1635
6-24 months                   Keneba           GAMBIA                         Full or late term               1       96    1635
6-24 months                   Keneba           GAMBIA                         Preterm                         0      214    1635
6-24 months                   Keneba           GAMBIA                         Preterm                         1       27    1635
6-24 months                   Keneba           GAMBIA                         Early term                      0      522    1635
6-24 months                   Keneba           GAMBIA                         Early term                      1       58    1635
6-24 months                   NIH-Crypto       BANGLADESH                     Full or late term               0      155     730
6-24 months                   NIH-Crypto       BANGLADESH                     Full or late term               1        3     730
6-24 months                   NIH-Crypto       BANGLADESH                     Preterm                         0      244     730
6-24 months                   NIH-Crypto       BANGLADESH                     Preterm                         1       11     730
6-24 months                   NIH-Crypto       BANGLADESH                     Early term                      0      311     730
6-24 months                   NIH-Crypto       BANGLADESH                     Early term                      1        6     730
6-24 months                   PROBIT           BELARUS                        Full or late term               0     8472   16598
6-24 months                   PROBIT           BELARUS                        Full or late term               1        7   16598
6-24 months                   PROBIT           BELARUS                        Preterm                         0      580   16598
6-24 months                   PROBIT           BELARUS                        Preterm                         1        0   16598
6-24 months                   PROBIT           BELARUS                        Early term                      0     7534   16598
6-24 months                   PROBIT           BELARUS                        Early term                      1        5   16598
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0     1120    1897
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1       38    1897
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      284    1897
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1       16    1897
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      417    1897
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1       22    1897


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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

* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/66192fc5-e1fc-4982-adce-20de3ecbf975/e22e47a6-d992-4268-b1c9-c575e5fdb6fd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/66192fc5-e1fc-4982-adce-20de3ecbf975/e22e47a6-d992-4268-b1c9-c575e5fdb6fd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/66192fc5-e1fc-4982-adce-20de3ecbf975/e22e47a6-d992-4268-b1c9-c575e5fdb6fd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/66192fc5-e1fc-4982-adce-20de3ecbf975/e22e47a6-d992-4268-b1c9-c575e5fdb6fd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1408451   0.0940619   0.1876283
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1923077   0.0850342   0.2995812
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Early term           NA                0.1445783   0.0688121   0.2203445
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term    NA                0.0397237   0.0238092   0.0556382
0-24 months (no birth wast)   COHORTS          INDIA                          Preterm              NA                0.0454545   0.0221832   0.0687259
0-24 months (no birth wast)   COHORTS          INDIA                          Early term           NA                0.0545852   0.0337726   0.0753977
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term    NA                0.0734024   0.0583791   0.0884258
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Preterm              NA                0.0821485   0.0607539   0.1035431
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Early term           NA                0.0906822   0.0744459   0.1069185
0-24 months (no birth wast)   IRC              INDIA                          Full or late term    NA                0.1726908   0.1256823   0.2196992
0-24 months (no birth wast)   IRC              INDIA                          Preterm              NA                0.1904762   0.0715664   0.3093860
0-24 months (no birth wast)   IRC              INDIA                          Early term           NA                0.2448980   0.1596489   0.3301470
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term    NA                0.1515513   0.1272658   0.1758368
0-24 months (no birth wast)   Keneba           GAMBIA                         Preterm              NA                0.1484375   0.1048726   0.1920024
0-24 months (no birth wast)   Keneba           GAMBIA                         Early term           NA                0.1137124   0.0882607   0.1391641
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term    NA                0.0121796   0.0079391   0.0164200
0-24 months (no birth wast)   PROBIT           BELARUS                        Preterm              NA                0.0135364   0.0026530   0.0244198
0-24 months (no birth wast)   PROBIT           BELARUS                        Early term           NA                0.0118690   0.0079340   0.0158041
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0433213   0.0325974   0.0540452
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0610465   0.0357408   0.0863522
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0584795   0.0381699   0.0787892
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term    NA                0.0191304   0.0112120   0.0270489
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Preterm              NA                0.0206677   0.0095477   0.0317878
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Early term           NA                0.0251467   0.0162606   0.0340328
0-6 months (no birth wast)    IRC              INDIA                          Full or late term    NA                0.1380753   0.0942800   0.1818707
0-6 months (no birth wast)    IRC              INDIA                          Preterm              NA                0.1315789   0.0239570   0.2392009
0-6 months (no birth wast)    IRC              INDIA                          Early term           NA                0.1808511   0.1029377   0.2587645
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term    NA                0.0469361   0.0319633   0.0619089
0-6 months (no birth wast)    Keneba           GAMBIA                         Preterm              NA                0.0500000   0.0224179   0.0775821
0-6 months (no birth wast)    Keneba           GAMBIA                         Early term           NA                0.0286738   0.0148224   0.0425253
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term    NA                0.0114902   0.0071987   0.0157818
0-6 months (no birth wast)    PROBIT           BELARUS                        Preterm              NA                0.0137694   0.0027531   0.0247857
0-6 months (no birth wast)    PROBIT           BELARUS                        Early term           NA                0.0113412   0.0076534   0.0150290
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0173913   0.0104927   0.0242899
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0174927   0.0036157   0.0313697
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0156556   0.0048899   0.0264213
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0651163   0.0320891   0.0981435
6-24 months                   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1538462   0.0556411   0.2520512
6-24 months                   CMC-V-BCS-2002   INDIA                          Early term           NA                0.0714286   0.0162753   0.1265819
6-24 months                   COHORTS          GUATEMALA                      Full or late term    NA                0.0163934   0.0043413   0.0284455
6-24 months                   COHORTS          GUATEMALA                      Preterm              NA                0.0413223   0.0058355   0.0768091
6-24 months                   COHORTS          GUATEMALA                      Early term           NA                0.0361991   0.0115570   0.0608412
6-24 months                   COHORTS          INDIA                          Full or late term    NA                0.0261324   0.0130768   0.0391880
6-24 months                   COHORTS          INDIA                          Preterm              NA                0.0396040   0.0176362   0.0615717
6-24 months                   COHORTS          INDIA                          Early term           NA                0.0400000   0.0218878   0.0581122
6-24 months                   COHORTS          PHILIPPINES                    Full or late term    NA                0.0601295   0.0459556   0.0743035
6-24 months                   COHORTS          PHILIPPINES                    Preterm              NA                0.0665529   0.0463690   0.0867368
6-24 months                   COHORTS          PHILIPPINES                    Early term           NA                0.0732143   0.0579560   0.0884725
6-24 months                   IRC              INDIA                          Full or late term    NA                0.0520000   0.0244424   0.0795576
6-24 months                   IRC              INDIA                          Preterm              NA                0.1190476   0.0209818   0.2171134
6-24 months                   IRC              INDIA                          Early term           NA                0.0816327   0.0273535   0.1359118
6-24 months                   Keneba           GAMBIA                         Full or late term    NA                0.1179361   0.0957724   0.1400998
6-24 months                   Keneba           GAMBIA                         Preterm              NA                0.1120332   0.0722001   0.1518663
6-24 months                   Keneba           GAMBIA                         Early term           NA                0.1000000   0.0755776   0.1244224
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0328152   0.0225516   0.0430788
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0533333   0.0279002   0.0787665
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0501139   0.0296991   0.0705287


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494253   0.1119149   0.1869357
0-24 months (no birth wast)   COHORTS          INDIA                          NA                   NA                0.0460967   0.0348859   0.0573074
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    NA                   NA                0.0821918   0.0723504   0.0920332
0-24 months (no birth wast)   IRC              INDIA                          NA                   NA                0.1928021   0.1535486   0.2320555
0-24 months (no birth wast)   Keneba           GAMBIA                         NA                   NA                0.1377069   0.1212828   0.1541310
0-24 months (no birth wast)   PROBIT           BELARUS                        NA                   NA                0.0120860   0.0083142   0.0158578
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0495094   0.0405280   0.0584908
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    NA                   NA                0.0218708   0.0166115   0.0271301
0-6 months (no birth wast)    IRC              INDIA                          NA                   NA                0.1482480   0.1120405   0.1844555
0-6 months (no birth wast)    Keneba           GAMBIA                         NA                   NA                0.0408946   0.0310794   0.0507097
0-6 months (no birth wast)    PROBIT           BELARUS                        NA                   NA                0.0115018   0.0077384   0.0152653
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0170098   0.0116466   0.0223731
6-24 months                   CMC-V-BCS-2002   INDIA                          NA                   NA                0.0797721   0.0513872   0.1081570
6-24 months                   COHORTS          GUATEMALA                      NA                   NA                0.0260078   0.0147515   0.0372641
6-24 months                   COHORTS          INDIA                          NA                   NA                0.0339111   0.0241689   0.0436532
6-24 months                   COHORTS          PHILIPPINES                    NA                   NA                0.0667384   0.0574713   0.0760056
6-24 months                   IRC              INDIA                          NA                   NA                0.0666667   0.0418784   0.0914549
6-24 months                   Keneba           GAMBIA                         NA                   NA                0.1107034   0.0954900   0.1259167
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0400633   0.0312360   0.0488905


### Parameter: RR


agecat                        studyid          country                        intervention_level   baseline_level        estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ------------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.3653846   0.7133440   2.6134306
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0265060   0.5519545   1.9090606
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          INDIA                          Preterm              Full or late term    1.1442688   0.5973068   2.1920911
0-24 months (no birth wast)   COHORTS          INDIA                          Early term           Full or late term    1.3741219   0.7903712   2.3890179
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1191525   0.8035899   1.5586336
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2354116   0.9412661   1.6214775
0-24 months (no birth wast)   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   IRC              INDIA                          Preterm              Full or late term    1.1029900   0.5582108   2.1794403
0-24 months (no birth wast)   IRC              INDIA                          Early term           Full or late term    1.4181300   0.9115965   2.2061217
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   Keneba           GAMBIA                         Preterm              Full or late term    0.9794537   0.7010698   1.3683796
0-24 months (no birth wast)   Keneba           GAMBIA                         Early term           Full or late term    0.7503226   0.5697671   0.9880949
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROBIT           BELARUS                        Preterm              Full or late term    1.1114012   0.4942436   2.4991981
0-24 months (no birth wast)   PROBIT           BELARUS                        Early term           Full or late term    0.9745055   0.7534443   1.2604262
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.4091570   0.8695083   2.2837314
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3499025   0.8812130   2.0678732
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0803584   0.5479663   2.1300110
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Early term           Full or late term    1.3144860   0.7627717   2.2652565
0-6 months (no birth wast)    IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    IRC              INDIA                          Preterm              Full or late term    0.9529506   0.3963465   2.2912142
0-6 months (no birth wast)    IRC              INDIA                          Early term           Full or late term    1.3098001   0.7671220   2.2363800
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    Keneba           GAMBIA                         Preterm              Full or late term    1.0652778   0.5632659   2.0147089
0-6 months (no birth wast)    Keneba           GAMBIA                         Early term           Full or late term    0.6109120   0.3424267   1.0899076
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROBIT           BELARUS                        Preterm              Full or late term    1.1983561   0.5365041   2.6766942
0-6 months (no birth wast)    PROBIT           BELARUS                        Early term           Full or late term    0.9870279   0.7773190   1.2533132
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0058309   0.4143137   2.4418593
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9001957   0.4069725   1.9911720
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    2.3626374   1.0454758   5.3392488
6-24 months                   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0969388   0.4354790   2.7631061
6-24 months                   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          GUATEMALA                      Preterm              Full or late term    2.5206612   0.8138650   7.8068629
6-24 months                   COHORTS          GUATEMALA                      Early term           Full or late term    2.2081448   0.8107545   6.0140317
6-24 months                   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          INDIA                          Preterm              Full or late term    1.5155116   0.7183840   3.1971413
6-24 months                   COHORTS          INDIA                          Early term           Full or late term    1.5306667   0.7799265   3.0040530
6-24 months                   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1068259   0.7538093   1.6251639
6-24 months                   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2176099   0.8889179   1.6678411
6-24 months                   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   IRC              INDIA                          Preterm              Full or late term    2.2893773   0.8596588   6.0968941
6-24 months                   IRC              INDIA                          Early term           Full or late term    1.5698587   0.6707962   3.6739273
6-24 months                   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   Keneba           GAMBIA                         Preterm              Full or late term    0.9499481   0.6353963   1.4202183
6-24 months                   Keneba           GAMBIA                         Early term           Full or late term    0.8479167   0.6230469   1.1539462
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.6252632   0.9188605   2.8747348
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.5271550   0.9137641   2.5523025


### Parameter: PAR


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0085802   -0.0216930   0.0388534
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term    NA                 0.0063730   -0.0063114   0.0190574
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0087894   -0.0033723   0.0209510
0-24 months (no birth wast)   IRC              INDIA                          Full or late term    NA                 0.0201113   -0.0102472   0.0504698
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term    NA                -0.0138445   -0.0304375   0.0027486
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term    NA                -0.0000935   -0.0016320   0.0014449
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0061881   -0.0011319   0.0135081
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term    NA                 0.0027404   -0.0037278   0.0092086
0-6 months (no birth wast)    IRC              INDIA                          Full or late term    NA                 0.0101727   -0.0173555   0.0377009
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term    NA                -0.0060415   -0.0160803   0.0039972
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term    NA                 0.0000116   -0.0013615   0.0013847
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0003815   -0.0045718   0.0038089
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0146558   -0.0090126   0.0383242
6-24 months                   COHORTS          GUATEMALA                      Full or late term    NA                 0.0096144   -0.0009047   0.0201334
6-24 months                   COHORTS          INDIA                          Full or late term    NA                 0.0077787   -0.0030796   0.0186369
6-24 months                   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0066089   -0.0048337   0.0180515
6-24 months                   IRC              INDIA                          Full or late term    NA                 0.0146667   -0.0053399   0.0346732
6-24 months                   Keneba           GAMBIA                         Full or late term    NA                -0.0072328   -0.0225151   0.0080496
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0072481   -0.0001447   0.0146408


### Parameter: PAF


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0574215   -0.1681713   0.2394486
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term    NA                 0.1382528   -0.1833274   0.3724407
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term    NA                 0.1069372   -0.0534434   0.2429009
0-24 months (no birth wast)   IRC              INDIA                          Full or late term    NA                 0.1043106   -0.0668583   0.2480168
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term    NA                -0.1005357   -0.2274425   0.0132500
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term    NA                -0.0077393   -0.1431149   0.1116042
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1249878   -0.0342088   0.2596792
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term    NA                 0.1252977   -0.2245199   0.3751803
0-6 months (no birth wast)    IRC              INDIA                          Full or late term    NA                 0.0686192   -0.1362511   0.2365507
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term    NA                -0.1477347   -0.4185707   0.0713929
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term    NA                 0.0010100   -0.1258804   0.1135995
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0224256   -0.3008630   0.1964149
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.1837209   -0.1651221   0.4281187
6-24 months                   COHORTS          GUATEMALA                      Full or late term    NA                 0.3696721   -0.1384210   0.6509962
6-24 months                   COHORTS          INDIA                          Full or late term    NA                 0.2293844   -0.1578152   0.4870957
6-24 months                   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0990272   -0.0892458   0.2547577
6-24 months                   IRC              INDIA                          Full or late term    NA                 0.2200000   -0.1312945   0.4622090
6-24 months                   Keneba           GAMBIA                         Full or late term    NA                -0.0653345   -0.2124813   0.0639545
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1809154   -0.0209810   0.3428872
