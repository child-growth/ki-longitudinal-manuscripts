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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid          country                        gagebrth             ever_stunted   n_cell       n
---------------------------  ---------------  -----------------------------  ------------------  -------------  -------  ------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          Full or late term               0       18     278
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          Full or late term               1      164     278
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          Preterm                         0        3     278
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          Preterm                         1       30     278
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          Early term                      0        7     278
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          Early term                      1       56     278
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Full or late term               0       94     694
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Full or late term               1      303     694
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Preterm                         0       23     694
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Preterm                         1       79     694
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Early term                      0       41     694
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Early term                      1      154     694
0-24 months (no birth st.)   COHORTS          INDIA                          Full or late term               0      395    1238
0-24 months (no birth st.)   COHORTS          INDIA                          Full or late term               1      160    1238
0-24 months (no birth st.)   COHORTS          INDIA                          Preterm                         0      181    1238
0-24 months (no birth st.)   COHORTS          INDIA                          Preterm                         1       88    1238
0-24 months (no birth st.)   COHORTS          INDIA                          Early term                      0      290    1238
0-24 months (no birth st.)   COHORTS          INDIA                          Early term                      1      124    1238
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Full or late term               0      395    2846
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Full or late term               1      735    2846
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Preterm                         0      185    2846
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Preterm                         1      380    2846
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Early term                      0      370    2846
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Early term                      1      781    2846
0-24 months (no birth st.)   IRC              INDIA                          Full or late term               0       95     341
0-24 months (no birth st.)   IRC              INDIA                          Full or late term               1      126     341
0-24 months (no birth st.)   IRC              INDIA                          Preterm                         0        9     341
0-24 months (no birth st.)   IRC              INDIA                          Preterm                         1       23     341
0-24 months (no birth st.)   IRC              INDIA                          Early term                      0       34     341
0-24 months (no birth st.)   IRC              INDIA                          Early term                      1       54     341
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Full or late term               0     7905   17441
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Full or late term               1     2507   17441
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Preterm                         0     1779   17441
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Preterm                         1      679   17441
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Early term                      0     3338   17441
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Early term                      1     1233   17441
0-24 months (no birth st.)   Keneba           GAMBIA                         Full or late term               0      413    1581
0-24 months (no birth st.)   Keneba           GAMBIA                         Full or late term               1      394    1581
0-24 months (no birth st.)   Keneba           GAMBIA                         Preterm                         0       78    1581
0-24 months (no birth st.)   Keneba           GAMBIA                         Preterm                         1      135    1581
0-24 months (no birth st.)   Keneba           GAMBIA                         Early term                      0      285    1581
0-24 months (no birth st.)   Keneba           GAMBIA                         Early term                      1      276    1581
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Full or late term               0      105     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Full or late term               1       51     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Preterm                         0      110     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Preterm                         1       89     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Early term                      0      181     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Early term                      1      117     653
0-24 months (no birth st.)   PROBIT           BELARUS                        Full or late term               0     7743   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        Full or late term               1      852   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        Preterm                         0      414   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        Preterm                         1      151   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        Early term                      0     6587   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        Early term                      1     1018   16765
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0      944    2101
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1      379    2101
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      204    2101
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1       97    2101
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      327    2101
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1      150    2101
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Full or late term               0      108     274
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Full or late term               1       71     274
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Preterm                         0       19     274
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Preterm                         1       14     274
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Early term                      0       43     274
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Early term                      1       19     274
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Full or late term               0      296     669
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Full or late term               1       82     669
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Preterm                         0       70     669
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Preterm                         1       31     669
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Early term                      0      137     669
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Early term                      1       53     669
0-6 months (no birth st.)    COHORTS          INDIA                          Full or late term               0      512    1222
0-6 months (no birth st.)    COHORTS          INDIA                          Full or late term               1       37    1222
0-6 months (no birth st.)    COHORTS          INDIA                          Preterm                         0      242    1222
0-6 months (no birth st.)    COHORTS          INDIA                          Preterm                         1       23    1222
0-6 months (no birth st.)    COHORTS          INDIA                          Early term                      0      384    1222
0-6 months (no birth st.)    COHORTS          INDIA                          Early term                      1       24    1222
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Full or late term               0      957    2846
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Full or late term               1      173    2846
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Preterm                         0      425    2846
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Preterm                         1      140    2846
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Early term                      0      924    2846
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Early term                      1      227    2846
0-6 months (no birth st.)    IRC              INDIA                          Full or late term               0      151     341
0-6 months (no birth st.)    IRC              INDIA                          Full or late term               1       70     341
0-6 months (no birth st.)    IRC              INDIA                          Preterm                         0       19     341
0-6 months (no birth st.)    IRC              INDIA                          Preterm                         1       13     341
0-6 months (no birth st.)    IRC              INDIA                          Early term                      0       55     341
0-6 months (no birth st.)    IRC              INDIA                          Early term                      1       33     341
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Full or late term               0     9182   17398
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Full or late term               1     1203   17398
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Preterm                         0     2051   17398
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Preterm                         1      402   17398
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Early term                      0     3876   17398
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Early term                      1      684   17398
0-6 months (no birth st.)    Keneba           GAMBIA                         Full or late term               0      596    1500
0-6 months (no birth st.)    Keneba           GAMBIA                         Full or late term               1      160    1500
0-6 months (no birth st.)    Keneba           GAMBIA                         Preterm                         0      129    1500
0-6 months (no birth st.)    Keneba           GAMBIA                         Preterm                         1       77    1500
0-6 months (no birth st.)    Keneba           GAMBIA                         Early term                      0      405    1500
0-6 months (no birth st.)    Keneba           GAMBIA                         Early term                      1      133    1500
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Full or late term               0      134     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Full or late term               1       22     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Preterm                         0      150     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Preterm                         1       49     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Early term                      0      245     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Early term                      1       53     653
0-6 months (no birth st.)    PROBIT           BELARUS                        Full or late term               0     8211   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        Full or late term               1      383   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        Preterm                         0      459   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        Preterm                         1      106   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        Early term                      0     7063   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        Early term                      1      541   16763
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0     1155    2101
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1      168    2101
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      257    2101
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1       44    2101
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      406    2101
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1       71    2101
6-24 months                  CMC-V-BCS-2002   INDIA                          Full or late term               0       18     175
6-24 months                  CMC-V-BCS-2002   INDIA                          Full or late term               1       93     175
6-24 months                  CMC-V-BCS-2002   INDIA                          Preterm                         0        3     175
6-24 months                  CMC-V-BCS-2002   INDIA                          Preterm                         1       16     175
6-24 months                  CMC-V-BCS-2002   INDIA                          Early term                      0        7     175
6-24 months                  CMC-V-BCS-2002   INDIA                          Early term                      1       38     175
6-24 months                  COHORTS          GUATEMALA                      Full or late term               0       77     518
6-24 months                  COHORTS          GUATEMALA                      Full or late term               1      228     518
6-24 months                  COHORTS          GUATEMALA                      Preterm                         0       20     518
6-24 months                  COHORTS          GUATEMALA                      Preterm                         1       49     518
6-24 months                  COHORTS          GUATEMALA                      Early term                      0       33     518
6-24 months                  COHORTS          GUATEMALA                      Early term                      1      111     518
6-24 months                  COHORTS          INDIA                          Full or late term               0      381    1120
6-24 months                  COHORTS          INDIA                          Full or late term               1      124    1120
6-24 months                  COHORTS          INDIA                          Preterm                         0      171    1120
6-24 months                  COHORTS          INDIA                          Preterm                         1       66    1120
6-24 months                  COHORTS          INDIA                          Early term                      0      277    1120
6-24 months                  COHORTS          INDIA                          Early term                      1      101    1120
6-24 months                  COHORTS          PHILIPPINES                    Full or late term               0      317    2104
6-24 months                  COHORTS          PHILIPPINES                    Full or late term               1      562    2104
6-24 months                  COHORTS          PHILIPPINES                    Preterm                         0      137    2104
6-24 months                  COHORTS          PHILIPPINES                    Preterm                         1      240    2104
6-24 months                  COHORTS          PHILIPPINES                    Early term                      0      294    2104
6-24 months                  COHORTS          PHILIPPINES                    Early term                      1      554    2104
6-24 months                  IRC              INDIA                          Full or late term               0       95     225
6-24 months                  IRC              INDIA                          Full or late term               1       56     225
6-24 months                  IRC              INDIA                          Preterm                         0        9     225
6-24 months                  IRC              INDIA                          Preterm                         1       10     225
6-24 months                  IRC              INDIA                          Early term                      0       34     225
6-24 months                  IRC              INDIA                          Early term                      1       21     225
6-24 months                  JiVitA-3         BANGLADESH                     Full or late term               0     4829    9942
6-24 months                  JiVitA-3         BANGLADESH                     Full or late term               1     1310    9942
6-24 months                  JiVitA-3         BANGLADESH                     Preterm                         0      988    9942
6-24 months                  JiVitA-3         BANGLADESH                     Preterm                         1      289    9942
6-24 months                  JiVitA-3         BANGLADESH                     Early term                      0     1974    9942
6-24 months                  JiVitA-3         BANGLADESH                     Early term                      1      552    9942
6-24 months                  Keneba           GAMBIA                         Full or late term               0      394    1205
6-24 months                  Keneba           GAMBIA                         Full or late term               1      247    1205
6-24 months                  Keneba           GAMBIA                         Preterm                         0       66    1205
6-24 months                  Keneba           GAMBIA                         Preterm                         1       66    1205
6-24 months                  Keneba           GAMBIA                         Early term                      0      273    1205
6-24 months                  Keneba           GAMBIA                         Early term                      1      159    1205
6-24 months                  NIH-Crypto       BANGLADESH                     Full or late term               0       96     506
6-24 months                  NIH-Crypto       BANGLADESH                     Full or late term               1       29     506
6-24 months                  NIH-Crypto       BANGLADESH                     Preterm                         0      102     506
6-24 months                  NIH-Crypto       BANGLADESH                     Preterm                         1       40     506
6-24 months                  NIH-Crypto       BANGLADESH                     Early term                      0      175     506
6-24 months                  NIH-Crypto       BANGLADESH                     Early term                      1       64     506
6-24 months                  PROBIT           BELARUS                        Full or late term               0     7604   15467
6-24 months                  PROBIT           BELARUS                        Full or late term               1      471   15467
6-24 months                  PROBIT           BELARUS                        Preterm                         0      404   15467
6-24 months                  PROBIT           BELARUS                        Preterm                         1       45   15467
6-24 months                  PROBIT           BELARUS                        Early term                      0     6465   15467
6-24 months                  PROBIT           BELARUS                        Early term                      1      478   15467
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0      738    1508
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1      211    1508
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      166    1508
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1       53    1508
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      261    1508
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1       79    1508


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA

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
![](/tmp/5d1e6a5f-2c1b-4066-b435-7349fc21925c/a211cde7-6a5d-457c-ad56-9756736753d0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5d1e6a5f-2c1b-4066-b435-7349fc21925c/a211cde7-6a5d-457c-ad56-9756736753d0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5d1e6a5f-2c1b-4066-b435-7349fc21925c/a211cde7-6a5d-457c-ad56-9756736753d0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5d1e6a5f-2c1b-4066-b435-7349fc21925c/a211cde7-6a5d-457c-ad56-9756736753d0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Full or late term    NA                0.7648292   0.7229143   0.8067441
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Preterm              NA                0.7840160   0.7024601   0.8655719
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Early term           NA                0.7932459   0.7358458   0.8506461
0-24 months (no birth st.)   COHORTS          INDIA                          Full or late term    NA                0.2878858   0.2508570   0.3249146
0-24 months (no birth st.)   COHORTS          INDIA                          Preterm              NA                0.3202373   0.2646190   0.3758556
0-24 months (no birth st.)   COHORTS          INDIA                          Early term           NA                0.3073546   0.2634174   0.3512917
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Full or late term    NA                0.6484108   0.6213662   0.6754554
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Preterm              NA                0.6642016   0.6268859   0.7015173
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Early term           NA                0.6825079   0.6561147   0.7089010
0-24 months (no birth st.)   IRC              INDIA                          Full or late term    NA                0.5701357   0.5047709   0.6355006
0-24 months (no birth st.)   IRC              INDIA                          Preterm              NA                0.7187500   0.5627423   0.8747577
0-24 months (no birth st.)   IRC              INDIA                          Early term           NA                0.6136364   0.5117542   0.7155185
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Full or late term    NA                0.2435016   0.2336319   0.2533714
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Preterm              NA                0.2691281   0.2494207   0.2888355
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Early term           NA                0.2679968   0.2538275   0.2821661
0-24 months (no birth st.)   Keneba           GAMBIA                         Full or late term    NA                0.4894525   0.4550038   0.5239012
0-24 months (no birth st.)   Keneba           GAMBIA                         Preterm              NA                0.6344403   0.5708851   0.6979956
0-24 months (no birth st.)   Keneba           GAMBIA                         Early term           NA                0.4907650   0.4493613   0.5321686
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.3219017   0.2496015   0.3942019
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Preterm              NA                0.4362424   0.3673380   0.5051468
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Early term           NA                0.3959891   0.3402630   0.4517153
0-24 months (no birth st.)   PROBIT           BELARUS                        Full or late term    NA                0.0998052   0.0819601   0.1176503
0-24 months (no birth st.)   PROBIT           BELARUS                        Preterm              NA                0.2651855   0.2307055   0.2996656
0-24 months (no birth st.)   PROBIT           BELARUS                        Early term           NA                0.1329604   0.1152855   0.1506353
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2861655   0.2617719   0.3105592
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.3182946   0.2651350   0.3714541
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.3141014   0.2723418   0.3558610
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.3979112   0.3258037   0.4700187
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4195389   0.2462286   0.5928492
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Early term           NA                0.3073353   0.1887103   0.4259604
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Full or late term    NA                0.2175010   0.1757736   0.2592283
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Preterm              NA                0.3000206   0.2094556   0.3905856
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Early term           NA                0.2777364   0.2138015   0.3416713
0-6 months (no birth st.)    COHORTS          INDIA                          Full or late term    NA                0.0660971   0.0455729   0.0866214
0-6 months (no birth st.)    COHORTS          INDIA                          Preterm              NA                0.0833100   0.0504797   0.1161403
0-6 months (no birth st.)    COHORTS          INDIA                          Early term           NA                0.0584024   0.0357211   0.0810836
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Full or late term    NA                0.1520758   0.1312030   0.1729487
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Preterm              NA                0.2430826   0.2076681   0.2784971
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Early term           NA                0.2000587   0.1770460   0.2230713
0-6 months (no birth st.)    IRC              INDIA                          Full or late term    NA                0.3158462   0.2543350   0.3773575
0-6 months (no birth st.)    IRC              INDIA                          Preterm              NA                0.4112688   0.2373335   0.5852042
0-6 months (no birth st.)    IRC              INDIA                          Early term           NA                0.3783182   0.2747938   0.4818426
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Full or late term    NA                0.1176659   0.1106001   0.1247317
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Preterm              NA                0.1571737   0.1416536   0.1726939
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Early term           NA                0.1468884   0.1351624   0.1586144
0-6 months (no birth st.)    Keneba           GAMBIA                         Full or late term    NA                0.2122904   0.1831631   0.2414177
0-6 months (no birth st.)    Keneba           GAMBIA                         Preterm              NA                0.3728692   0.3063008   0.4394376
0-6 months (no birth st.)    Keneba           GAMBIA                         Early term           NA                0.2459703   0.2093959   0.2825447
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Full or late term    NA                0.1482872   0.0891410   0.2074333
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Preterm              NA                0.2399069   0.1799749   0.2998390
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Early term           NA                0.1773652   0.1335489   0.2211814
0-6 months (no birth st.)    PROBIT           BELARUS                        Full or late term    NA                0.0451511   0.0333099   0.0569922
0-6 months (no birth st.)    PROBIT           BELARUS                        Preterm              NA                0.1845533   0.1471312   0.2219754
0-6 months (no birth st.)    PROBIT           BELARUS                        Early term           NA                0.0702919   0.0578859   0.0826980
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1267548   0.1088041   0.1447055
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1434759   0.1031541   0.1837978
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1471639   0.1151017   0.1792261
6-24 months                  COHORTS          GUATEMALA                      Full or late term    NA                0.7470706   0.6981657   0.7959755
6-24 months                  COHORTS          GUATEMALA                      Preterm              NA                0.6983722   0.5892496   0.8074949
6-24 months                  COHORTS          GUATEMALA                      Early term           NA                0.7686716   0.6994504   0.8378929
6-24 months                  COHORTS          INDIA                          Full or late term    NA                0.2451345   0.2079818   0.2822872
6-24 months                  COHORTS          INDIA                          Preterm              NA                0.2668911   0.2097881   0.3239942
6-24 months                  COHORTS          INDIA                          Early term           NA                0.2693063   0.2249563   0.3136564
6-24 months                  COHORTS          PHILIPPINES                    Full or late term    NA                0.6372572   0.6062807   0.6682338
6-24 months                  COHORTS          PHILIPPINES                    Preterm              NA                0.6368256   0.5905785   0.6830727
6-24 months                  COHORTS          PHILIPPINES                    Early term           NA                0.6541159   0.6226290   0.6856028
6-24 months                  IRC              INDIA                          Full or late term    NA                0.3708609   0.2936452   0.4480766
6-24 months                  IRC              INDIA                          Preterm              NA                0.5263158   0.3013035   0.7513281
6-24 months                  IRC              INDIA                          Early term           NA                0.3818182   0.2531354   0.5105010
6-24 months                  JiVitA-3         BANGLADESH                     Full or late term    NA                0.2152876   0.2029327   0.2276426
6-24 months                  JiVitA-3         BANGLADESH                     Preterm              NA                0.2176552   0.1925166   0.2427939
6-24 months                  JiVitA-3         BANGLADESH                     Early term           NA                0.2166748   0.1990297   0.2343200
6-24 months                  Keneba           GAMBIA                         Full or late term    NA                0.3859870   0.3484440   0.4235300
6-24 months                  Keneba           GAMBIA                         Preterm              NA                0.5018449   0.4170763   0.5866136
6-24 months                  Keneba           GAMBIA                         Early term           NA                0.3669763   0.3214209   0.4125318
6-24 months                  NIH-Crypto       BANGLADESH                     Full or late term    NA                0.2117855   0.1434631   0.2801079
6-24 months                  NIH-Crypto       BANGLADESH                     Preterm              NA                0.2686685   0.1940779   0.3432591
6-24 months                  NIH-Crypto       BANGLADESH                     Early term           NA                0.2733964   0.2167408   0.3300519
6-24 months                  PROBIT           BELARUS                        Full or late term    NA                0.0574340   0.0437687   0.0710993
6-24 months                  PROBIT           BELARUS                        Preterm              NA                0.0943507   0.0599734   0.1287280
6-24 months                  PROBIT           BELARUS                        Early term           NA                0.0681172   0.0566292   0.0796051
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2229833   0.1965305   0.2494361
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2470191   0.1906735   0.3033648
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2369372   0.1923921   0.2814823


### Parameter: E(Y)


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      NA                   NA                0.7723343   0.7411143   0.8035543
0-24 months (no birth st.)   COHORTS          INDIA                          NA                   NA                0.3004847   0.2749357   0.3260336
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    NA                   NA                0.6661982   0.6488700   0.6835264
0-24 months (no birth st.)   IRC              INDIA                          NA                   NA                0.5953079   0.5431354   0.6474804
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     NA                   NA                0.2533685   0.2454041   0.2613329
0-24 months (no birth st.)   Keneba           GAMBIA                         NA                   NA                0.5091714   0.4845214   0.5338214
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   PROBIT           BELARUS                        NA                   NA                0.1205488   0.1047261   0.1363714
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2979534   0.2783922   0.3175146
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3795620   0.3219972   0.4371269
0-6 months (no birth st.)    COHORTS          GUATEMALA                      NA                   NA                0.2481315   0.2153770   0.2808861
0-6 months (no birth st.)    COHORTS          INDIA                          NA                   NA                0.0687398   0.0545482   0.0829313
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    NA                   NA                0.1897400   0.1753322   0.2041478
0-6 months (no birth st.)    IRC              INDIA                          NA                   NA                0.3401760   0.2898173   0.3905347
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     NA                   NA                0.1315668   0.1257634   0.1373703
0-6 months (no birth st.)    Keneba           GAMBIA                         NA                   NA                0.2466667   0.2248446   0.2684887
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    PROBIT           BELARUS                        NA                   NA                0.0614448   0.0507274   0.0721623
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1346978   0.1200961   0.1492994
6-24 months                  COHORTS          GUATEMALA                      NA                   NA                0.7490347   0.7116615   0.7864080
6-24 months                  COHORTS          INDIA                          NA                   NA                0.2598214   0.2341270   0.2855158
6-24 months                  COHORTS          PHILIPPINES                    NA                   NA                0.6444867   0.6240287   0.6649447
6-24 months                  IRC              INDIA                          NA                   NA                0.3866667   0.3228931   0.4504402
6-24 months                  JiVitA-3         BANGLADESH                     NA                   NA                0.2163549   0.2067486   0.2259611
6-24 months                  Keneba           GAMBIA                         NA                   NA                0.3917012   0.3641291   0.4192734
6-24 months                  NIH-Crypto       BANGLADESH                     NA                   NA                0.2628459   0.2244546   0.3012371
6-24 months                  PROBIT           BELARUS                        NA                   NA                0.0642659   0.0526827   0.0758490
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2274536   0.2062895   0.2486177


### Parameter: RR


agecat                       studyid          country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Preterm              Full or late term    1.0250864   0.9113610   1.153003
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Early term           Full or late term    1.0371543   0.9470541   1.135826
0-24 months (no birth st.)   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS          INDIA                          Preterm              Full or late term    1.1123761   0.8975903   1.378558
0-24 months (no birth st.)   COHORTS          INDIA                          Early term           Full or late term    1.0676267   0.8825561   1.291506
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0243530   0.9559980   1.097595
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Early term           Full or late term    1.0525856   0.9953795   1.113079
0-24 months (no birth st.)   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   IRC              INDIA                          Preterm              Full or late term    1.2606647   0.9862620   1.611413
0-24 months (no birth st.)   IRC              INDIA                          Early term           Full or late term    1.0762987   0.8796426   1.316920
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.1052415   1.0185040   1.199366
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.1005955   1.0335880   1.171947
0-24 months (no birth st.)   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   Keneba           GAMBIA                         Preterm              Full or late term    1.2962245   1.1474117   1.464338
0-24 months (no birth st.)   Keneba           GAMBIA                         Early term           Full or late term    1.0026815   0.8985211   1.118917
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    1.3552036   1.0314088   1.780649
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.2301553   0.9458676   1.599888
0-24 months (no birth st.)   PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROBIT           BELARUS                        Preterm              Full or late term    2.6570319   2.1170922   3.334677
0-24 months (no birth st.)   PROBIT           BELARUS                        Early term           Full or late term    1.3321995   1.1829064   1.500335
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.1122743   0.9220566   1.341733
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0976212   0.9372132   1.285484
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.0543531   0.6714632   1.655579
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.7723717   0.5041988   1.183180
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Preterm              Full or late term    1.3793988   0.9642527   1.973281
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Early term           Full or late term    1.2769432   0.9461402   1.723406
0-6 months (no birth st.)    COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          INDIA                          Preterm              Full or late term    1.2604177   0.7636677   2.080293
0-6 months (no birth st.)    COHORTS          INDIA                          Early term           Full or late term    0.8835840   0.5377414   1.451852
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Preterm              Full or late term    1.5984303   1.3088141   1.952133
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Early term           Full or late term    1.3155189   1.1002421   1.572917
0-6 months (no birth st.)    IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    IRC              INDIA                          Preterm              Full or late term    1.3021173   0.8173390   2.074426
0-6 months (no birth st.)    IRC              INDIA                          Early term           Full or late term    1.1977923   0.8556740   1.676697
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.3357626   1.1921277   1.496704
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Early term           Full or late term    1.2483512   1.1315373   1.377224
0-6 months (no birth st.)    Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    Keneba           GAMBIA                         Preterm              Full or late term    1.7564108   1.4022663   2.199995
0-6 months (no birth st.)    Keneba           GAMBIA                         Early term           Full or late term    1.1586501   0.9467915   1.417915
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Preterm              Full or late term    1.6178536   1.0110053   2.588958
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.1960927   0.7485354   1.911249
0-6 months (no birth st.)    PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROBIT           BELARUS                        Preterm              Full or late term    4.0874608   3.0183835   5.535193
0-6 months (no birth st.)    PROBIT           BELARUS                        Early term           Full or late term    1.5568161   1.2704854   1.907678
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.1319167   0.8262545   1.550655
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.1610123   0.8953336   1.505528
6-24 months                  COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  COHORTS          GUATEMALA                      Preterm              Full or late term    0.9348142   0.7890163   1.107553
6-24 months                  COHORTS          GUATEMALA                      Early term           Full or late term    1.0289143   0.9204246   1.150192
6-24 months                  COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  COHORTS          INDIA                          Preterm              Full or late term    1.0887538   0.8386537   1.413438
6-24 months                  COHORTS          INDIA                          Early term           Full or late term    1.0986063   0.8799994   1.371519
6-24 months                  COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9993227   0.9168063   1.089266
6-24 months                  COHORTS          PHILIPPINES                    Early term           Full or late term    1.0264550   0.9596349   1.097928
6-24 months                  IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  IRC              INDIA                          Preterm              Full or late term    1.4191729   0.8820972   2.283254
6-24 months                  IRC              INDIA                          Early term           Full or late term    1.0295455   0.6927854   1.530003
6-24 months                  JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.0109974   0.8909287   1.147247
6-24 months                  JiVitA-3         BANGLADESH                     Early term           Full or late term    1.0064434   0.9121612   1.110471
6-24 months                  Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  Keneba           GAMBIA                         Preterm              Full or late term    1.3001602   1.0707055   1.578788
6-24 months                  Keneba           GAMBIA                         Early term           Full or late term    0.9507479   0.8124251   1.112621
6-24 months                  NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  NIH-Crypto       BANGLADESH                     Preterm              Full or late term    1.2685878   0.8306887   1.937326
6-24 months                  NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.2909117   0.8838675   1.885410
6-24 months                  PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  PROBIT           BELARUS                        Preterm              Full or late term    1.6427674   1.0780182   2.503376
6-24 months                  PROBIT           BELARUS                        Early term           Full or late term    1.1860079   1.0018984   1.403949
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.1077920   0.8564106   1.432961
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0625781   0.8506418   1.327318


### Parameter: PAR


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Full or late term    NA                 0.0075051   -0.0194808   0.0344909
0-24 months (no birth st.)   COHORTS          INDIA                          Full or late term    NA                 0.0125988   -0.0150372   0.0402349
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0177873   -0.0027226   0.0382973
0-24 months (no birth st.)   IRC              INDIA                          Full or late term    NA                 0.0251722   -0.0129918   0.0633362
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0098669    0.0040018   0.0157319
0-24 months (no birth st.)   Keneba           GAMBIA                         Full or late term    NA                 0.0197189   -0.0042869   0.0437247
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0716664    0.0077078   0.1356251
0-24 months (no birth st.)   PROBIT           BELARUS                        Full or late term    NA                 0.0207436    0.0139564   0.0275308
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0117878   -0.0033596   0.0269353
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0183492   -0.0602131   0.0235148
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Full or late term    NA                 0.0306306    0.0014077   0.0598534
0-6 months (no birth st.)    COHORTS          INDIA                          Full or late term    NA                 0.0026426   -0.0127472   0.0180324
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Full or late term    NA                 0.0376641    0.0205151   0.0548132
0-6 months (no birth st.)    IRC              INDIA                          Full or late term    NA                 0.0243297   -0.0134665   0.0621260
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0139009    0.0092246   0.0185773
0-6 months (no birth st.)    Keneba           GAMBIA                         Full or late term    NA                 0.0343762    0.0127326   0.0560199
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0416056   -0.0121341   0.0953454
0-6 months (no birth st.)    PROBIT           BELARUS                        Full or late term    NA                 0.0162938    0.0109553   0.0216322
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0079429   -0.0034549   0.0193407
6-24 months                  COHORTS          GUATEMALA                      Full or late term    NA                 0.0019642   -0.0293598   0.0332881
6-24 months                  COHORTS          INDIA                          Full or late term    NA                 0.0146869   -0.0130686   0.0424425
6-24 months                  COHORTS          PHILIPPINES                    Full or late term    NA                 0.0072294   -0.0159535   0.0304124
6-24 months                  IRC              INDIA                          Full or late term    NA                 0.0158057   -0.0292126   0.0608240
6-24 months                  JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0010672   -0.0059747   0.0081091
6-24 months                  Keneba           GAMBIA                         Full or late term    NA                 0.0057142   -0.0199350   0.0313635
6-24 months                  NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0510604   -0.0093550   0.1114757
6-24 months                  PROBIT           BELARUS                        Full or late term    NA                 0.0068319    0.0015894   0.0120744
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0044703   -0.0119211   0.0208616


### Parameter: PAF


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Full or late term    NA                 0.0097174   -0.0258623   0.0440631
0-24 months (no birth st.)   COHORTS          INDIA                          Full or late term    NA                 0.0419284   -0.0545524   0.1295822
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0266998   -0.0045976   0.0570221
0-24 months (no birth st.)   IRC              INDIA                          Full or late term    NA                 0.0422843   -0.0242259   0.1044755
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0389427    0.0154860   0.0618406
0-24 months (no birth st.)   Keneba           GAMBIA                         Full or late term    NA                 0.0387275   -0.0096385   0.0847765
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.1820941    0.0023750   0.3294373
0-24 months (no birth st.)   PROBIT           BELARUS                        Full or late term    NA                 0.1720763    0.1068582   0.2325321
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0395627   -0.0126365   0.0890711
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0483430   -0.1646950   0.0563855
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Full or late term    NA                 0.1234449   -0.0020859   0.2332505
0-6 months (no birth st.)    COHORTS          INDIA                          Full or late term    NA                 0.0384440   -0.2134393   0.2380418
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Full or late term    NA                 0.1985040    0.1036788   0.2832973
0-6 months (no birth st.)    IRC              INDIA                          Full or late term    NA                 0.0715210   -0.0465096   0.1762396
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.1056568    0.0695824   0.1403324
0-6 months (no birth st.)    Keneba           GAMBIA                         Full or late term    NA                 0.1393631    0.0474226   0.2224298
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.2191007   -0.1204739   0.4557626
0-6 months (no birth st.)    PROBIT           BELARUS                        Full or late term    NA                 0.2651771    0.1611452   0.3563073
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0589685   -0.0293950   0.1397469
6-24 months                  COHORTS          GUATEMALA                      Full or late term    NA                 0.0026222   -0.0400870   0.0435777
6-24 months                  COHORTS          INDIA                          Full or late term    NA                 0.0565270   -0.0565243   0.1574814
6-24 months                  COHORTS          PHILIPPINES                    Full or late term    NA                 0.0112174   -0.0254193   0.0465451
6-24 months                  IRC              INDIA                          Full or late term    NA                 0.0408769   -0.0829571   0.1505508
6-24 months                  JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0049327   -0.0281720   0.0369715
6-24 months                  Keneba           GAMBIA                         Full or late term    NA                 0.0145883   -0.0531199   0.0779433
6-24 months                  NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.1942597   -0.0703462   0.3934510
6-24 months                  PROBIT           BELARUS                        Full or late term    NA                 0.1063062    0.0143094   0.1897168
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0196535   -0.0551030   0.0891133
