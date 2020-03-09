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
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Full or late term               0    12677   25266
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Full or late term               1      457   25266
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Preterm                         0     4924   25266
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Preterm                         1      188   25266
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Early term                      0     6763   25266
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Early term                      1      257   25266
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
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Full or late term               0    12791   24985
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Full or late term               1      211   24985
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Preterm                         0     4959   24985
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Preterm                         1       76   24985
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Early term                      0     6825   24985
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Early term                      1      123   24985
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
6-24 months                   JiVitA-3         BANGLADESH                     Full or late term               0     8489   16477
6-24 months                   JiVitA-3         BANGLADESH                     Full or late term               1      268   16477
6-24 months                   JiVitA-3         BANGLADESH                     Preterm                         0     3043   16477
6-24 months                   JiVitA-3         BANGLADESH                     Preterm                         1      115   16477
6-24 months                   JiVitA-3         BANGLADESH                     Early term                      0     4414   16477
6-24 months                   JiVitA-3         BANGLADESH                     Early term                      1      148   16477
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
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/926a65cb-2d76-4e5a-96ce-f772f95c0cba/7cb60899-c0a3-424a-b8eb-f0611daf860f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/926a65cb-2d76-4e5a-96ce-f772f95c0cba/7cb60899-c0a3-424a-b8eb-f0611daf860f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/926a65cb-2d76-4e5a-96ce-f772f95c0cba/7cb60899-c0a3-424a-b8eb-f0611daf860f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/926a65cb-2d76-4e5a-96ce-f772f95c0cba/7cb60899-c0a3-424a-b8eb-f0611daf860f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1414191   0.0945370   0.1883011
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1947260   0.0866866   0.3027654
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Early term           NA                0.1486504   0.0716610   0.2256397
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term    NA                0.0387457   0.0229167   0.0545747
0-24 months (no birth wast)   COHORTS          INDIA                          Preterm              NA                0.0453042   0.0214939   0.0691144
0-24 months (no birth wast)   COHORTS          INDIA                          Early term           NA                0.0541269   0.0331126   0.0751412
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term    NA                0.0729398   0.0579697   0.0879099
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Preterm              NA                0.0819199   0.0604912   0.1033486
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Early term           NA                0.0916373   0.0754454   0.1078291
0-24 months (no birth wast)   IRC              INDIA                          Full or late term    NA                0.1726908   0.1256823   0.2196992
0-24 months (no birth wast)   IRC              INDIA                          Preterm              NA                0.1904762   0.0715664   0.3093860
0-24 months (no birth wast)   IRC              INDIA                          Early term           NA                0.2448980   0.1596489   0.3301470
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Full or late term    NA                0.0352716   0.0317564   0.0387867
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Preterm              NA                0.0350161   0.0296522   0.0403799
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Early term           NA                0.0364665   0.0316034   0.0413296
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term    NA                0.1501742   0.1259307   0.1744177
0-24 months (no birth wast)   Keneba           GAMBIA                         Preterm              NA                0.1506375   0.1067854   0.1944896
0-24 months (no birth wast)   Keneba           GAMBIA                         Early term           NA                0.1150659   0.0894518   0.1406800
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term    NA                0.0121796   0.0079391   0.0164200
0-24 months (no birth wast)   PROBIT           BELARUS                        Preterm              NA                0.0135364   0.0026530   0.0244198
0-24 months (no birth wast)   PROBIT           BELARUS                        Early term           NA                0.0118690   0.0079340   0.0158041
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0433609   0.0326435   0.0540783
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0625611   0.0370003   0.0881218
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0592962   0.0390404   0.0795520
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term    NA                0.0192654   0.0112598   0.0272710
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Preterm              NA                0.0204930   0.0094549   0.0315312
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Early term           NA                0.0250963   0.0162272   0.0339655
0-6 months (no birth wast)    IRC              INDIA                          Full or late term    NA                0.1380753   0.0942800   0.1818707
0-6 months (no birth wast)    IRC              INDIA                          Preterm              NA                0.1315789   0.0239570   0.2392009
0-6 months (no birth wast)    IRC              INDIA                          Early term           NA                0.1808511   0.1029377   0.2587645
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Full or late term    NA                0.0163220   0.0138330   0.0188109
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Preterm              NA                0.0146698   0.0111675   0.0181720
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Early term           NA                0.0176752   0.0142315   0.0211190
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term    NA                0.0460000   0.0312440   0.0607561
0-6 months (no birth wast)    Keneba           GAMBIA                         Preterm              NA                0.0505948   0.0227872   0.0784025
0-6 months (no birth wast)    Keneba           GAMBIA                         Early term           NA                0.0294425   0.0152121   0.0436728
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
6-24 months                   COHORTS          INDIA                          Full or late term    NA                0.0257685   0.0127738   0.0387633
6-24 months                   COHORTS          INDIA                          Preterm              NA                0.0377674   0.0166640   0.0588708
6-24 months                   COHORTS          INDIA                          Early term           NA                0.0411352   0.0227431   0.0595272
6-24 months                   COHORTS          PHILIPPINES                    Full or late term    NA                0.0600171   0.0459181   0.0741160
6-24 months                   COHORTS          PHILIPPINES                    Preterm              NA                0.0650875   0.0452524   0.0849227
6-24 months                   COHORTS          PHILIPPINES                    Early term           NA                0.0735137   0.0582576   0.0887699
6-24 months                   IRC              INDIA                          Full or late term    NA                0.0520000   0.0244424   0.0795576
6-24 months                   IRC              INDIA                          Preterm              NA                0.1190476   0.0209818   0.2171134
6-24 months                   IRC              INDIA                          Early term           NA                0.0816327   0.0273535   0.1359118
6-24 months                   JiVitA-3         BANGLADESH                     Full or late term    NA                0.0312463   0.0270150   0.0354776
6-24 months                   JiVitA-3         BANGLADESH                     Preterm              NA                0.0340290   0.0272674   0.0407906
6-24 months                   JiVitA-3         BANGLADESH                     Early term           NA                0.0321163   0.0265734   0.0376592
6-24 months                   Keneba           GAMBIA                         Full or late term    NA                0.1182330   0.0960218   0.1404442
6-24 months                   Keneba           GAMBIA                         Preterm              NA                0.1111106   0.0707954   0.1514257
6-24 months                   Keneba           GAMBIA                         Early term           NA                0.0999458   0.0754368   0.1244548
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0326017   0.0223856   0.0428178
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0529821   0.0277254   0.0782388
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0493671   0.0292272   0.0695071


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494253   0.1119149   0.1869357
0-24 months (no birth wast)   COHORTS          INDIA                          NA                   NA                0.0460967   0.0348859   0.0573074
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    NA                   NA                0.0821918   0.0723504   0.0920332
0-24 months (no birth wast)   IRC              INDIA                          NA                   NA                0.1928021   0.1535486   0.2320555
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     NA                   NA                0.0357002   0.0330794   0.0383209
0-24 months (no birth wast)   Keneba           GAMBIA                         NA                   NA                0.1377069   0.1212828   0.1541310
0-24 months (no birth wast)   PROBIT           BELARUS                        NA                   NA                0.0120860   0.0083142   0.0158578
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0495094   0.0405280   0.0584908
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    NA                   NA                0.0218708   0.0166115   0.0271301
0-6 months (no birth wast)    IRC              INDIA                          NA                   NA                0.1482480   0.1120405   0.1844555
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     NA                   NA                0.0164098   0.0145698   0.0182498
0-6 months (no birth wast)    Keneba           GAMBIA                         NA                   NA                0.0408946   0.0310794   0.0507097
0-6 months (no birth wast)    PROBIT           BELARUS                        NA                   NA                0.0115018   0.0077384   0.0152653
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0170098   0.0116466   0.0223731
6-24 months                   CMC-V-BCS-2002   INDIA                          NA                   NA                0.0797721   0.0513872   0.1081570
6-24 months                   COHORTS          GUATEMALA                      NA                   NA                0.0260078   0.0147515   0.0372641
6-24 months                   COHORTS          INDIA                          NA                   NA                0.0339111   0.0241689   0.0436532
6-24 months                   COHORTS          PHILIPPINES                    NA                   NA                0.0667384   0.0574713   0.0760056
6-24 months                   IRC              INDIA                          NA                   NA                0.0666667   0.0418784   0.0914549
6-24 months                   JiVitA-3         BANGLADESH                     NA                   NA                0.0322267   0.0291993   0.0352542
6-24 months                   Keneba           GAMBIA                         NA                   NA                0.1107034   0.0954900   0.1259167
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0400633   0.0312360   0.0488905


### Parameter: RR


agecat                        studyid          country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.3769427   0.7212212   2.628834
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0511336   0.5680822   1.944933
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS          INDIA                          Preterm              Full or late term    1.1692709   0.6012180   2.274041
0-24 months (no birth wast)   COHORTS          INDIA                          Early term           Full or late term    1.3969791   0.7952646   2.453964
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1231158   0.8054712   1.566026
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2563406   0.9583790   1.646939
0-24 months (no birth wast)   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   IRC              INDIA                          Preterm              Full or late term    1.1029900   0.5582108   2.179440
0-24 months (no birth wast)   IRC              INDIA                          Early term           Full or late term    1.4181300   0.9115965   2.206122
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Preterm              Full or late term    0.9927567   0.8318626   1.184770
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.0338783   0.8784820   1.216763
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   Keneba           GAMBIA                         Preterm              Full or late term    1.0030851   0.7190886   1.399243
0-24 months (no birth wast)   Keneba           GAMBIA                         Early term           Full or late term    0.7662163   0.5820501   1.008654
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROBIT           BELARUS                        Preterm              Full or late term    1.1114012   0.4942436   2.499198
0-24 months (no birth wast)   PROBIT           BELARUS                        Early term           Full or late term    0.9745055   0.7534443   1.260426
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.4427991   0.8951094   2.325603
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3675037   0.8969874   2.084830
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0637240   0.5386959   2.100459
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Early term           Full or late term    1.3026655   0.7549345   2.247794
0-6 months (no birth wast)    IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    IRC              INDIA                          Preterm              Full or late term    0.9529506   0.3963465   2.291214
0-6 months (no birth wast)    IRC              INDIA                          Early term           Full or late term    1.3098001   0.7671220   2.236380
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Preterm              Full or late term    0.8987744   0.6882310   1.173727
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Early term           Full or late term    1.0829101   0.8473622   1.383935
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    Keneba           GAMBIA                         Preterm              Full or late term    1.0998877   0.5820779   2.078335
0-6 months (no birth wast)    Keneba           GAMBIA                         Early term           Full or late term    0.6400532   0.3584057   1.143029
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    PROBIT           BELARUS                        Preterm              Full or late term    1.1983561   0.5365041   2.676694
0-6 months (no birth wast)    PROBIT           BELARUS                        Early term           Full or late term    0.9870279   0.7773190   1.253313
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0058309   0.4143137   2.441859
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9001957   0.4069725   1.991172
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    2.3626374   1.0454758   5.339249
6-24 months                   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0969388   0.4354790   2.763106
6-24 months                   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   COHORTS          GUATEMALA                      Preterm              Full or late term    2.5206612   0.8138650   7.806863
6-24 months                   COHORTS          GUATEMALA                      Early term           Full or late term    2.2081448   0.8107545   6.014032
6-24 months                   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   COHORTS          INDIA                          Preterm              Full or late term    1.4656430   0.6919719   3.104330
6-24 months                   COHORTS          INDIA                          Early term           Full or late term    1.5963347   0.8143213   3.129335
6-24 months                   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0844836   0.7388175   1.591875
6-24 months                   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2248804   0.8958721   1.674717
6-24 months                   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   IRC              INDIA                          Preterm              Full or late term    2.2893773   0.8596588   6.096894
6-24 months                   IRC              INDIA                          Early term           Full or late term    1.5698587   0.6707962   3.673927
6-24 months                   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.0890584   0.8599066   1.379276
6-24 months                   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.0278437   0.8225538   1.284369
6-24 months                   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   Keneba           GAMBIA                         Preterm              Full or late term    0.9397594   0.6245171   1.414129
6-24 months                   Keneba           GAMBIA                         Early term           Full or late term    0.8453293   0.6206481   1.151348
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.6251326   0.9186512   2.874928
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.5142498   0.9050582   2.533486


### Parameter: PAR


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0080062   -0.0223750   0.0383874
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term    NA                 0.0073510   -0.0052772   0.0199792
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0092520   -0.0028606   0.0213645
0-24 months (no birth wast)   IRC              INDIA                          Full or late term    NA                 0.0201113   -0.0102472   0.0504698
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0004286   -0.0019210   0.0027782
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term    NA                -0.0124673   -0.0290278   0.0040932
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term    NA                -0.0000935   -0.0016320   0.0014449
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0061485   -0.0011692   0.0134661
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term    NA                 0.0026054   -0.0039347   0.0091456
0-6 months (no birth wast)    IRC              INDIA                          Full or late term    NA                 0.0101727   -0.0173555   0.0377009
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0000879   -0.0015400   0.0017158
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term    NA                -0.0051054   -0.0149880   0.0047771
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term    NA                 0.0000116   -0.0013615   0.0013847
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0003815   -0.0045718   0.0038089
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0146558   -0.0090126   0.0383242
6-24 months                   COHORTS          GUATEMALA                      Full or late term    NA                 0.0096144   -0.0009047   0.0201334
6-24 months                   COHORTS          INDIA                          Full or late term    NA                 0.0081426   -0.0026424   0.0189275
6-24 months                   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0067214   -0.0046437   0.0180864
6-24 months                   IRC              INDIA                          Full or late term    NA                 0.0146667   -0.0053399   0.0346732
6-24 months                   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0009805   -0.0019015   0.0038624
6-24 months                   Keneba           GAMBIA                         Full or late term    NA                -0.0075296   -0.0228585   0.0077992
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0074616    0.0000880   0.0148351


### Parameter: PAF


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0535799   -0.1728162   0.2362734
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term    NA                 0.1594693   -0.1616302   0.3918100
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term    NA                 0.1125655   -0.0471738   0.2479377
0-24 months (no birth wast)   IRC              INDIA                          Full or late term    NA                 0.1043106   -0.0668583   0.2480168
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0120052   -0.0560545   0.0756787
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term    NA                -0.0905353   -0.2172470   0.0229861
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term    NA                -0.0077393   -0.1431149   0.1116042
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1241881   -0.0349164   0.2588324
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term    NA                 0.1191282   -0.2351453   0.3717863
0-6 months (no birth wast)    IRC              INDIA                          Full or late term    NA                 0.0686192   -0.1362511   0.2365507
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0053560   -0.0989827   0.0997886
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term    NA                -0.1248441   -0.3921762   0.0911537
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term    NA                 0.0010100   -0.1258804   0.1135995
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0224256   -0.3008630   0.1964149
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.1837209   -0.1651221   0.4281187
6-24 months                   COHORTS          GUATEMALA                      Full or late term    NA                 0.3696721   -0.1384210   0.6509962
6-24 months                   COHORTS          INDIA                          Full or late term    NA                 0.2401152   -0.1449965   0.4956972
6-24 months                   COHORTS          PHILIPPINES                    Full or late term    NA                 0.1007120   -0.0861600   0.2554329
6-24 months                   IRC              INDIA                          Full or late term    NA                 0.2200000   -0.1312945   0.4622090
6-24 months                   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0304238   -0.0633863   0.1159581
6-24 months                   Keneba           GAMBIA                         Full or late term    NA                -0.0680162   -0.2156060   0.0616542
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1862445   -0.0149306   0.3475436
