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

**Outcome Variable:** ever_wasted

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

agecat                        studyid          country                        gagebrth             ever_wasted   n_cell       n
----------------------------  ---------------  -----------------------------  ------------------  ------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term              0      123     348
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term              1       90     348
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Preterm                        0       25     348
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Preterm                        1       27     348
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Early term                     0       46     348
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Early term                     1       37     348
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Full or late term              0      394     809
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Full or late term              1       54     809
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Preterm                        0      105     809
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Preterm                        1       25     809
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Early term                     0      191     809
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Early term                     1       40     809
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term              0      470    1345
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term              1      109    1345
0-24 months (no birth wast)   COHORTS          INDIA                          Preterm                        0      242    1345
0-24 months (no birth wast)   COHORTS          INDIA                          Preterm                        1       66    1345
0-24 months (no birth wast)   COHORTS          INDIA                          Early term                     0      358    1345
0-24 months (no birth wast)   COHORTS          INDIA                          Early term                     1      100    1345
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term              0      830    2993
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term              1      328    2993
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Preterm                        0      434    2993
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Preterm                        1      199    2993
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Early term                     0      822    2993
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Early term                     1      380    2993
0-24 months (no birth wast)   IRC              INDIA                          Full or late term              0      121     389
0-24 months (no birth wast)   IRC              INDIA                          Full or late term              1      128     389
0-24 months (no birth wast)   IRC              INDIA                          Preterm                        0       16     389
0-24 months (no birth wast)   IRC              INDIA                          Preterm                        1       26     389
0-24 months (no birth wast)   IRC              INDIA                          Early term                     0       44     389
0-24 months (no birth wast)   IRC              INDIA                          Early term                     1       54     389
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Full or late term              0    10907   25266
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Full or late term              1     2227   25266
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Preterm                        0     4285   25266
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Preterm                        1      827   25266
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Early term                     0     5814   25266
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Early term                     1     1206   25266
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term              0      528    1692
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term              1      310    1692
0-24 months (no birth wast)   Keneba           GAMBIA                         Preterm                        0      153    1692
0-24 months (no birth wast)   Keneba           GAMBIA                         Preterm                        1      103    1692
0-24 months (no birth wast)   Keneba           GAMBIA                         Early term                     0      392    1692
0-24 months (no birth wast)   Keneba           GAMBIA                         Early term                     1      206    1692
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Full or late term              0      152     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Full or late term              1       16     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Preterm                        0      214     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Preterm                        1       47     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Early term                     0      280     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Early term                     1       45     754
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term              0     8030   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term              1      591   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Preterm                        0      547   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Preterm                        1       44   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Early term                     0     7154   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        Early term                     1      513   16879
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0     1145    2242
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      240    2242
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      253    2242
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       91    2242
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      401    2242
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1      112    2242
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Full or late term              0      136     332
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Full or late term              1       64     332
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Preterm                        0       36     332
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Preterm                        1       15     332
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Early term                     0       58     332
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Early term                     1       23     332
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Full or late term              0      406     745
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Full or late term              1        4     745
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Preterm                        0      120     745
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Preterm                        1        2     745
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Early term                     0      208     745
0-6 months (no birth wast)    COHORTS          GUATEMALA                      Early term                     1        5     745
0-6 months (no birth wast)    COHORTS          INDIA                          Full or late term              0      484    1249
0-6 months (no birth wast)    COHORTS          INDIA                          Full or late term              1       49    1249
0-6 months (no birth wast)    COHORTS          INDIA                          Preterm                        0      262    1249
0-6 months (no birth wast)    COHORTS          INDIA                          Preterm                        1       20    1249
0-6 months (no birth wast)    COHORTS          INDIA                          Early term                     0      395    1249
0-6 months (no birth wast)    COHORTS          INDIA                          Early term                     1       39    1249
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term              0     1047    2972
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term              1      103    2972
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Preterm                        0      569    2972
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Preterm                        1       60    2972
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Early term                     0     1076    2972
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Early term                     1      117    2972
0-6 months (no birth wast)    IRC              INDIA                          Full or late term              0      160     371
0-6 months (no birth wast)    IRC              INDIA                          Full or late term              1       79     371
0-6 months (no birth wast)    IRC              INDIA                          Preterm                        0       28     371
0-6 months (no birth wast)    IRC              INDIA                          Preterm                        1       10     371
0-6 months (no birth wast)    IRC              INDIA                          Early term                     0       54     371
0-6 months (no birth wast)    IRC              INDIA                          Early term                     1       40     371
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Full or late term              0    12058   24985
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Full or late term              1      944   24985
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Preterm                        0     4726   24985
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Preterm                        1      309   24985
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Early term                     0     6443   24985
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Early term                     1      505   24985
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term              0      672    1565
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term              1       95    1565
0-6 months (no birth wast)    Keneba           GAMBIA                         Preterm                        0      206    1565
0-6 months (no birth wast)    Keneba           GAMBIA                         Preterm                        1       34    1565
0-6 months (no birth wast)    Keneba           GAMBIA                         Early term                     0      506    1565
0-6 months (no birth wast)    Keneba           GAMBIA                         Early term                     1       52    1565
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Full or late term              0      162     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Full or late term              1        6     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Preterm                        0      255     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Preterm                        1        5     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Early term                     0      312     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Early term                     1        9     749
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term              0     7996   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term              1      533   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Preterm                        0      542   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Preterm                        1       39   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Early term                     0     7133   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        Early term                     1      450   16693
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0     1270    2234
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      110    2234
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      301    2234
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       42    2234
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      471    2234
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       40    2234
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term              0      164     351
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term              1       51     351
6-24 months                   CMC-V-BCS-2002   INDIA                          Preterm                        0       33     351
6-24 months                   CMC-V-BCS-2002   INDIA                          Preterm                        1       19     351
6-24 months                   CMC-V-BCS-2002   INDIA                          Early term                     0       63     351
6-24 months                   CMC-V-BCS-2002   INDIA                          Early term                     1       21     351
6-24 months                   COHORTS          GUATEMALA                      Full or late term              0      376     769
6-24 months                   COHORTS          GUATEMALA                      Full or late term              1       51     769
6-24 months                   COHORTS          GUATEMALA                      Preterm                        0       97     769
6-24 months                   COHORTS          GUATEMALA                      Preterm                        1       24     769
6-24 months                   COHORTS          GUATEMALA                      Early term                     0      185     769
6-24 months                   COHORTS          GUATEMALA                      Early term                     1       36     769
6-24 months                   COHORTS          INDIA                          Full or late term              0      510    1327
6-24 months                   COHORTS          INDIA                          Full or late term              1       64    1327
6-24 months                   COHORTS          INDIA                          Preterm                        0      255    1327
6-24 months                   COHORTS          INDIA                          Preterm                        1       48    1327
6-24 months                   COHORTS          INDIA                          Early term                     0      387    1327
6-24 months                   COHORTS          INDIA                          Early term                     1       63    1327
6-24 months                   COHORTS          PHILIPPINES                    Full or late term              0      815    2787
6-24 months                   COHORTS          PHILIPPINES                    Full or late term              1      266    2787
6-24 months                   COHORTS          PHILIPPINES                    Preterm                        0      419    2787
6-24 months                   COHORTS          PHILIPPINES                    Preterm                        1      167    2787
6-24 months                   COHORTS          PHILIPPINES                    Early term                     0      809    2787
6-24 months                   COHORTS          PHILIPPINES                    Early term                     1      311    2787
6-24 months                   IRC              INDIA                          Full or late term              0      177     390
6-24 months                   IRC              INDIA                          Full or late term              1       73     390
6-24 months                   IRC              INDIA                          Preterm                        0       21     390
6-24 months                   IRC              INDIA                          Preterm                        1       21     390
6-24 months                   IRC              INDIA                          Early term                     0       68     390
6-24 months                   IRC              INDIA                          Early term                     1       30     390
6-24 months                   JiVitA-3         BANGLADESH                     Full or late term              0     7353   16477
6-24 months                   JiVitA-3         BANGLADESH                     Full or late term              1     1404   16477
6-24 months                   JiVitA-3         BANGLADESH                     Preterm                        0     2610   16477
6-24 months                   JiVitA-3         BANGLADESH                     Preterm                        1      548   16477
6-24 months                   JiVitA-3         BANGLADESH                     Early term                     0     3798   16477
6-24 months                   JiVitA-3         BANGLADESH                     Early term                     1      764   16477
6-24 months                   Keneba           GAMBIA                         Full or late term              0      547    1635
6-24 months                   Keneba           GAMBIA                         Full or late term              1      267    1635
6-24 months                   Keneba           GAMBIA                         Preterm                        0      159    1635
6-24 months                   Keneba           GAMBIA                         Preterm                        1       82    1635
6-24 months                   Keneba           GAMBIA                         Early term                     0      399    1635
6-24 months                   Keneba           GAMBIA                         Early term                     1      181    1635
6-24 months                   NIH-Crypto       BANGLADESH                     Full or late term              0      146     730
6-24 months                   NIH-Crypto       BANGLADESH                     Full or late term              1       12     730
6-24 months                   NIH-Crypto       BANGLADESH                     Preterm                        0      210     730
6-24 months                   NIH-Crypto       BANGLADESH                     Preterm                        1       45     730
6-24 months                   NIH-Crypto       BANGLADESH                     Early term                     0      278     730
6-24 months                   NIH-Crypto       BANGLADESH                     Early term                     1       39     730
6-24 months                   PROBIT           BELARUS                        Full or late term              0     8415   16598
6-24 months                   PROBIT           BELARUS                        Full or late term              1       64   16598
6-24 months                   PROBIT           BELARUS                        Preterm                        0      575   16598
6-24 months                   PROBIT           BELARUS                        Preterm                        1        5   16598
6-24 months                   PROBIT           BELARUS                        Early term                     0     7469   16598
6-24 months                   PROBIT           BELARUS                        Early term                     1       70   16598
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0      997    1897
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      161    1897
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      240    1897
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       60    1897
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      358    1897
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       81    1897


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

* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA

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




# Results Detail

## Results Plots
![](/tmp/789a9ba5-86e3-448b-be86-271f87f8508f/6dacf10d-357f-477c-996f-500efd39a9c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/789a9ba5-86e3-448b-be86-271f87f8508f/6dacf10d-357f-477c-996f-500efd39a9c7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/789a9ba5-86e3-448b-be86-271f87f8508f/6dacf10d-357f-477c-996f-500efd39a9c7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/789a9ba5-86e3-448b-be86-271f87f8508f/6dacf10d-357f-477c-996f-500efd39a9c7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.4198278    0.3530764   0.4865792
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4958663    0.3557954   0.6359371
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Early term           NA                0.4228433    0.3138497   0.5318368
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Full or late term    NA                0.1225908    0.0922922   0.1528894
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Preterm              NA                0.2046738    0.1381041   0.2712435
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Early term           NA                0.1789315    0.1308899   0.2269732
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term    NA                0.1848926    0.1532597   0.2165256
0-24 months (no birth wast)   COHORTS          INDIA                          Preterm              NA                0.2156916    0.1705503   0.2608329
0-24 months (no birth wast)   COHORTS          INDIA                          Early term           NA                0.2203702    0.1828724   0.2578680
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term    NA                0.2840153    0.2581083   0.3099223
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Preterm              NA                0.3082596    0.2724599   0.3440593
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Early term           NA                0.3164987    0.2903689   0.3426284
0-24 months (no birth wast)   IRC              INDIA                          Full or late term    NA                0.5110549    0.4487892   0.5733207
0-24 months (no birth wast)   IRC              INDIA                          Preterm              NA                0.6230981    0.4625355   0.7836608
0-24 months (no birth wast)   IRC              INDIA                          Early term           NA                0.5476192    0.4467721   0.6484663
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Full or late term    NA                0.1709036    0.1637530   0.1780541
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Preterm              NA                0.1558704    0.1451345   0.1666062
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Early term           NA                0.1721128    0.1622813   0.1819443
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term    NA                0.3669604    0.3344992   0.3994215
0-24 months (no birth wast)   Keneba           GAMBIA                         Preterm              NA                0.4040634    0.3441599   0.4639669
0-24 months (no birth wast)   Keneba           GAMBIA                         Early term           NA                0.3458593    0.3076544   0.3840641
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0901651    0.0468783   0.1334518
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Preterm              NA                0.1760255    0.1299945   0.2220564
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Early term           NA                0.1390526    0.1013726   0.1767327
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term    NA                0.0690484    0.0565333   0.0815636
0-24 months (no birth wast)   PROBIT           BELARUS                        Preterm              NA                0.0764671    0.0487171   0.1042171
0-24 months (no birth wast)   PROBIT           BELARUS                        Early term           NA                0.0669893    0.0541588   0.0798199
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1732033    0.1532543   0.1931523
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2665361    0.2197249   0.3133473
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2170690    0.1812791   0.2528590
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.3191032    0.2539994   0.3842070
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2838083    0.1548119   0.4128046
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Early term           NA                0.2806304    0.1807663   0.3804945
0-6 months (no birth wast)    COHORTS          INDIA                          Full or late term    NA                0.0922238    0.0676485   0.1167991
0-6 months (no birth wast)    COHORTS          INDIA                          Preterm              NA                0.0710984    0.0411071   0.1010897
0-6 months (no birth wast)    COHORTS          INDIA                          Early term           NA                0.0901009    0.0631530   0.1170487
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term    NA                0.0902478    0.0737243   0.1067713
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Preterm              NA                0.0953955    0.0723893   0.1184017
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Early term           NA                0.0984799    0.0816066   0.1153532
0-6 months (no birth wast)    IRC              INDIA                          Full or late term    NA                0.3290029    0.2691547   0.3888511
0-6 months (no birth wast)    IRC              INDIA                          Preterm              NA                0.2739095    0.1280490   0.4197700
0-6 months (no birth wast)    IRC              INDIA                          Early term           NA                0.4258900    0.3242735   0.5275066
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Full or late term    NA                0.0732902    0.0681706   0.0784098
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Preterm              NA                0.0596129    0.0526424   0.0665834
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Early term           NA                0.0724515    0.0657348   0.0791681
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term    NA                0.1246832    0.1012776   0.1480887
0-6 months (no birth wast)    Keneba           GAMBIA                         Preterm              NA                0.1398434    0.0955404   0.1841465
0-6 months (no birth wast)    Keneba           GAMBIA                         Early term           NA                0.0931869    0.0688890   0.1174848
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0357143    0.0076336   0.0637950
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Preterm              NA                0.0192308    0.0025263   0.0359353
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Early term           NA                0.0280374    0.0099665   0.0461083
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term    NA                0.0624415    0.0504884   0.0743946
0-6 months (no birth wast)    PROBIT           BELARUS                        Preterm              NA                0.0699024    0.0455729   0.0942319
0-6 months (no birth wast)    PROBIT           BELARUS                        Early term           NA                0.0594814    0.0473608   0.0716020
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0792637    0.0649787   0.0935488
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1207838    0.0859773   0.1555903
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0786232    0.0553157   0.1019308
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2364288    0.1793827   0.2934750
6-24 months                   CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3666365    0.2339356   0.4993374
6-24 months                   CMC-V-BCS-2002   INDIA                          Early term           NA                0.2468756    0.1533682   0.3403830
6-24 months                   COHORTS          GUATEMALA                      Full or late term    NA                0.1193061    0.0883460   0.1502662
6-24 months                   COHORTS          GUATEMALA                      Preterm              NA                0.1981136    0.1285357   0.2676916
6-24 months                   COHORTS          GUATEMALA                      Early term           NA                0.1652013    0.1166643   0.2137383
6-24 months                   COHORTS          INDIA                          Full or late term    NA                0.1085771    0.0827752   0.1343790
6-24 months                   COHORTS          INDIA                          Preterm              NA                0.1610631    0.1206788   0.2014474
6-24 months                   COHORTS          INDIA                          Early term           NA                0.1424950    0.1107814   0.1742086
6-24 months                   COHORTS          PHILIPPINES                    Full or late term    NA                0.2475264    0.2219638   0.2730889
6-24 months                   COHORTS          PHILIPPINES                    Preterm              NA                0.2812004    0.2454007   0.3170001
6-24 months                   COHORTS          PHILIPPINES                    Early term           NA                0.2783769    0.2522423   0.3045114
6-24 months                   IRC              INDIA                          Full or late term    NA                0.2913153    0.2347347   0.3478959
6-24 months                   IRC              INDIA                          Preterm              NA                0.4521980    0.2937295   0.6106665
6-24 months                   IRC              INDIA                          Early term           NA                0.2894268    0.1955328   0.3833207
6-24 months                   JiVitA-3         BANGLADESH                     Full or late term    NA                0.1620863    0.1534015   0.1707712
6-24 months                   JiVitA-3         BANGLADESH                     Preterm              NA                0.1668606    0.1529639   0.1807573
6-24 months                   JiVitA-3         BANGLADESH                     Early term           NA                0.1678399    0.1563030   0.1793768
6-24 months                   Keneba           GAMBIA                         Full or late term    NA                0.3263110    0.2942297   0.3583923
6-24 months                   Keneba           GAMBIA                         Preterm              NA                0.3450228    0.2848648   0.4051807
6-24 months                   Keneba           GAMBIA                         Early term           NA                0.3139502    0.2761899   0.3517106
6-24 months                   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.0716792    0.0312394   0.1121191
6-24 months                   NIH-Crypto       BANGLADESH                     Preterm              NA                0.1725136    0.1263144   0.2187129
6-24 months                   NIH-Crypto       BANGLADESH                     Early term           NA                0.1249560    0.0882859   0.1616261
6-24 months                   PROBIT           BELARUS                        Full or late term    NA                0.0075481    0.0034134   0.0116827
6-24 months                   PROBIT           BELARUS                        Preterm              NA                0.0086207   -0.0063700   0.0236114
6-24 months                   PROBIT           BELARUS                        Early term           NA                0.0092851    0.0051918   0.0133783
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1388199    0.1188538   0.1587861
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2014741    0.1560552   0.2468929
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1844210    0.1478858   0.2209562


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.4425287   0.3902692   0.4947882
0-24 months (no birth wast)   COHORTS          GUATEMALA                      NA                   NA                0.1470952   0.1226726   0.1715178
0-24 months (no birth wast)   COHORTS          INDIA                          NA                   NA                0.2044610   0.1828992   0.2260227
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    NA                   NA                0.3030404   0.2865732   0.3195077
0-24 months (no birth wast)   IRC              INDIA                          NA                   NA                0.5347044   0.4850733   0.5843354
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     NA                   NA                0.1686060   0.1631976   0.1740145
0-24 months (no birth wast)   Keneba           GAMBIA                         NA                   NA                0.3658392   0.3428819   0.3887966
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   PROBIT           BELARUS                        NA                   NA                0.0680135   0.0562135   0.0798135
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1975914   0.1811057   0.2140772
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3072289   0.2575285   0.3569293
0-6 months (no birth wast)    COHORTS          INDIA                          NA                   NA                0.0864692   0.0708761   0.1020623
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    NA                   NA                0.0942127   0.0837084   0.1047169
0-6 months (no birth wast)    IRC              INDIA                          NA                   NA                0.3477089   0.2991827   0.3962350
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     NA                   NA                0.0703622   0.0666948   0.0740296
0-6 months (no birth wast)    Keneba           GAMBIA                         NA                   NA                0.1156550   0.0998052   0.1315047
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    PROBIT           BELARUS                        NA                   NA                0.0612233   0.0502388   0.0722078
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0859445   0.0743193   0.0975697
6-24 months                   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2592593   0.2133485   0.3051700
6-24 months                   COHORTS          GUATEMALA                      NA                   NA                0.1443433   0.1194882   0.1691984
6-24 months                   COHORTS          INDIA                          NA                   NA                0.1318764   0.1136647   0.1500881
6-24 months                   COHORTS          PHILIPPINES                    NA                   NA                0.2669537   0.2505274   0.2833801
6-24 months                   IRC              INDIA                          NA                   NA                0.3179487   0.2716722   0.3642252
6-24 months                   JiVitA-3         BANGLADESH                     NA                   NA                0.1648358   0.1585302   0.1711415
6-24 months                   Keneba           GAMBIA                         NA                   NA                0.3241590   0.3014644   0.3468537
6-24 months                   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   PROBIT           BELARUS                        NA                   NA                0.0083745   0.0044130   0.0123360
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1591987   0.1427306   0.1756669


### Parameter: RR


agecat                        studyid          country                        intervention_level   baseline_level        estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ------------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.1811182   0.8534728   1.6345457
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0071826   0.7434810   1.3644153
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Preterm              Full or late term    1.6695686   1.1104908   2.5101146
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Early term           Full or late term    1.4595836   1.0139597   2.1010543
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          INDIA                          Preterm              Full or late term    1.1665776   0.8910887   1.5272368
0-24 months (no birth wast)   COHORTS          INDIA                          Early term           Full or late term    1.1918819   0.9375157   1.5152627
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0853626   0.9366429   1.2576959
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Early term           Full or late term    1.1143719   0.9857473   1.2597800
0-24 months (no birth wast)   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   IRC              INDIA                          Preterm              Full or late term    1.2192391   0.9166196   1.6217675
0-24 months (no birth wast)   IRC              INDIA                          Early term           Full or late term    1.0715466   0.8591271   1.3364869
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Preterm              Full or late term    0.9120370   0.8438835   0.9856947
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.0070756   0.9402600   1.0786391
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   Keneba           GAMBIA                         Preterm              Full or late term    1.1011091   0.9267194   1.3083155
0-24 months (no birth wast)   Keneba           GAMBIA                         Early term           Full or late term    0.9424976   0.8184929   1.0852895
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    1.9522581   1.1294288   3.3745481
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.5422006   0.8880985   2.6780618
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROBIT           BELARUS                        Preterm              Full or late term    1.1074412   0.8064841   1.5207071
0-24 months (no birth wast)   PROBIT           BELARUS                        Early term           Full or late term    0.9701787   0.8468017   1.1115314
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5388630   1.2473468   1.8985092
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.2532618   1.0250941   1.5322155
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.8893934   0.5400083   1.4648306
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.8794347   0.5834660   1.3255363
0-6 months (no birth wast)    COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    COHORTS          INDIA                          Preterm              Full or late term    0.7709339   0.4680559   1.2698036
0-6 months (no birth wast)    COHORTS          INDIA                          Early term           Full or late term    0.9769813   0.6543946   1.4585887
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0570396   0.7808473   1.4309235
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Early term           Full or late term    1.0912171   0.8492618   1.4021055
0-6 months (no birth wast)    IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    IRC              INDIA                          Preterm              Full or late term    0.8325442   0.4741188   1.4619331
0-6 months (no birth wast)    IRC              INDIA                          Early term           Full or late term    1.2944871   0.9583224   1.7485731
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Preterm              Full or late term    0.8133818   0.7127033   0.9282824
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Early term           Full or late term    0.9885562   0.8814731   1.1086480
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    Keneba           GAMBIA                         Preterm              Full or late term    1.1215903   0.7760624   1.6209583
0-6 months (no birth wast)    Keneba           GAMBIA                         Early term           Full or late term    0.7473897   0.5421978   1.0302354
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Preterm              Full or late term    0.5384615   0.1668478   1.7377568
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Early term           Full or late term    0.7850467   0.2840280   2.1698509
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROBIT           BELARUS                        Preterm              Full or late term    1.1194870   0.8140792   1.5394708
0-6 months (no birth wast)    PROBIT           BELARUS                        Early term           Full or late term    0.9525945   0.8178506   1.1095380
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5238216   1.0849787   2.1401639
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9919195   0.7013343   1.4029033
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.5507267   1.0032239   2.3970254
6-24 months                   CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0441858   0.6662306   1.6365563
6-24 months                   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          GUATEMALA                      Preterm              Full or late term    1.6605490   1.0730297   2.5697545
6-24 months                   COHORTS          GUATEMALA                      Early term           Full or late term    1.3846843   0.9357165   2.0490721
6-24 months                   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          INDIA                          Preterm              Full or late term    1.4833981   1.0515892   2.0925185
6-24 months                   COHORTS          INDIA                          Early term           Full or late term    1.3123851   0.9491857   1.8145601
6-24 months                   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1360423   0.9650328   1.3373556
6-24 months                   COHORTS          PHILIPPINES                    Early term           Full or late term    1.1246354   0.9786956   1.2923371
6-24 months                   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   IRC              INDIA                          Preterm              Full or late term    1.5522632   1.0394961   2.3179703
6-24 months                   IRC              INDIA                          Early term           Full or late term    0.9935172   0.6800808   1.4514106
6-24 months                   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.0294551   0.9327244   1.1362176
6-24 months                   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.0354970   0.9506315   1.1279387
6-24 months                   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   Keneba           GAMBIA                         Preterm              Full or late term    1.0573434   0.8657077   1.2914002
6-24 months                   Keneba           GAMBIA                         Early term           Full or late term    0.9621196   0.8240891   1.1232696
6-24 months                   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    2.4067458   1.2883207   4.4961053
6-24 months                   NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.7432671   0.9228271   3.2931197
6-24 months                   PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   PROBIT           BELARUS                        Preterm              Full or late term    1.1421067   0.3000593   4.3471662
6-24 months                   PROBIT           BELARUS                        Early term           Full or late term    1.2301242   0.7702262   1.9646249
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.4513341   1.1107779   1.8963022
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3284908   1.0399076   1.6971583


### Parameter: PAR


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0227009   -0.0195403   0.0649422
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Full or late term    NA                 0.0245044    0.0022968   0.0467119
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term    NA                 0.0195683   -0.0046848   0.0438215
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0190251   -0.0014285   0.0394788
0-24 months (no birth wast)   IRC              INDIA                          Full or late term    NA                 0.0236494   -0.0139235   0.0612223
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0022975   -0.0070640   0.0024690
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term    NA                -0.0011211   -0.0241811   0.0219389
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0530710    0.0121996   0.0939424
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term    NA                -0.0010349   -0.0053336   0.0032637
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0243882    0.0110505   0.0377258
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0118743   -0.0523049   0.0285563
0-6 months (no birth wast)    COHORTS          INDIA                          Full or late term    NA                -0.0057546   -0.0239981   0.0124889
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term    NA                 0.0039649   -0.0091606   0.0170903
0-6 months (no birth wast)    IRC              INDIA                          Full or late term    NA                 0.0187060   -0.0180010   0.0554129
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0029280   -0.0062729   0.0004170
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term    NA                -0.0090282   -0.0253064   0.0072500
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.0090120   -0.0328503   0.0148263
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term    NA                -0.0012182   -0.0054579   0.0030215
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0066808   -0.0026241   0.0159857
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0228304   -0.0144432   0.0601041
6-24 months                   COHORTS          GUATEMALA                      Full or late term    NA                 0.0250372    0.0024019   0.0476725
6-24 months                   COHORTS          INDIA                          Full or late term    NA                 0.0232993    0.0029648   0.0436338
6-24 months                   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0194274   -0.0007993   0.0396540
6-24 months                   IRC              INDIA                          Full or late term    NA                 0.0266334   -0.0089963   0.0622632
6-24 months                   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0027495   -0.0030438   0.0085428
6-24 months                   Keneba           GAMBIA                         Full or late term    NA                -0.0021520   -0.0247904   0.0204865
6-24 months                   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0598276    0.0206997   0.0989556
6-24 months                   PROBIT           BELARUS                        Full or late term    NA                 0.0008264   -0.0009328   0.0025857
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0203788    0.0068041   0.0339536


### Parameter: PAF


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0512982   -0.0492453   0.1422072
0-24 months (no birth wast)   COHORTS          GUATEMALA                      Full or late term    NA                 0.1665885    0.0032952   0.3031289
0-24 months (no birth wast)   COHORTS          INDIA                          Full or late term    NA                 0.0957070   -0.0309566   0.2068087
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0627808   -0.0071965   0.1278962
0-24 months (no birth wast)   IRC              INDIA                          Full or late term    NA                 0.0442290   -0.0288185   0.1120900
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0136267   -0.0423055   0.0142630
0-24 months (no birth wast)   Keneba           GAMBIA                         Full or late term    NA                -0.0030645   -0.0681216   0.0580300
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.3705143    0.0190692   0.5960447
0-24 months (no birth wast)   PROBIT           BELARUS                        Full or late term    NA                -0.0152167   -0.0805171   0.0461373
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1234272    0.0537200   0.1879996
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0386496   -0.1788799   0.0849001
0-6 months (no birth wast)    COHORTS          INDIA                          Full or late term    NA                -0.0665507   -0.2995448   0.1246702
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    Full or late term    NA                 0.0420842   -0.1077764   0.1716716
0-6 months (no birth wast)    IRC              INDIA                          Full or late term    NA                 0.0537978   -0.0578995   0.1537016
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     Full or late term    NA                -0.0416128   -0.0901595   0.0047720
0-6 months (no birth wast)    Keneba           GAMBIA                         Full or late term    NA                -0.0780616   -0.2281263   0.0536667
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     Full or late term    NA                -0.3375000   -1.5855791   0.3081216
0-6 months (no birth wast)    PROBIT           BELARUS                        Full or late term    NA                -0.0198978   -0.0914777   0.0469879
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0777334   -0.0367522   0.1795766
6-24 months                   CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0880603   -0.0673566   0.2208470
6-24 months                   COHORTS          GUATEMALA                      Full or late term    NA                 0.1734559    0.0028544   0.3148693
6-24 months                   COHORTS          INDIA                          Full or late term    NA                 0.1766752    0.0079264   0.3167203
6-24 months                   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0727743   -0.0061329   0.1454931
6-24 months                   IRC              INDIA                          Full or late term    NA                 0.0837664   -0.0353096   0.1891469
6-24 months                   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0166802   -0.0191262   0.0512286
6-24 months                   Keneba           GAMBIA                         Full or late term    NA                -0.0066386   -0.0789566   0.0608321
6-24 months                   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.4549393    0.0763605   0.6783473
6-24 months                   PROBIT           BELARUS                        Full or late term    NA                 0.0986856   -0.1372698   0.2856861
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1280088    0.0391557   0.2086453
