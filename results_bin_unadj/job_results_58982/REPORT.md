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

unadjusted

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/5e4048e4-5f7c-4960-a2ee-26024229d784/735c33ad-943f-4ada-9e9c-290a4284cd71/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5e4048e4-5f7c-4960-a2ee-26024229d784/735c33ad-943f-4ada-9e9c-290a4284cd71/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5e4048e4-5f7c-4960-a2ee-26024229d784/735c33ad-943f-4ada-9e9c-290a4284cd71/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5e4048e4-5f7c-4960-a2ee-26024229d784/735c33ad-943f-4ada-9e9c-290a4284cd71/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Full or late term    NA                0.7632242   0.7213775   0.8050708
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Preterm              NA                0.7745098   0.6933505   0.8556691
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Early term           NA                0.7897436   0.7325086   0.8469786
0-24 months (no birth st.)   COHORTS          INDIA                          Full or late term    NA                0.2882883   0.2505882   0.3259884
0-24 months (no birth st.)   COHORTS          INDIA                          Preterm              NA                0.3271375   0.2710488   0.3832263
0-24 months (no birth st.)   COHORTS          INDIA                          Early term           NA                0.2995169   0.2553769   0.3436570
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Full or late term    NA                0.6504425   0.6226358   0.6782491
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Preterm              NA                0.6725664   0.6338647   0.7112680
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Early term           NA                0.6785404   0.6515544   0.7055264
0-24 months (no birth st.)   IRC              INDIA                          Full or late term    NA                0.5701357   0.5047709   0.6355006
0-24 months (no birth st.)   IRC              INDIA                          Preterm              NA                0.7187500   0.5627423   0.8747577
0-24 months (no birth st.)   IRC              INDIA                          Early term           NA                0.6136364   0.5117542   0.7155185
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Full or late term    NA                0.2407799   0.2309920   0.2505678
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Preterm              NA                0.2762408   0.2565373   0.2959444
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Early term           NA                0.2697440   0.2554718   0.2840163
0-24 months (no birth st.)   Keneba           GAMBIA                         Full or late term    NA                0.4882280   0.4537297   0.5227264
0-24 months (no birth st.)   Keneba           GAMBIA                         Preterm              NA                0.6338028   0.5690840   0.6985216
0-24 months (no birth st.)   Keneba           GAMBIA                         Early term           NA                0.4919786   0.4505960   0.5333612
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Full or late term    NA                0.3269231   0.2532560   0.4005902
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Preterm              NA                0.4472362   0.3781020   0.5163703
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Early term           NA                0.3926174   0.3371308   0.4481041
0-24 months (no birth st.)   PROBIT           BELARUS                        Full or late term    NA                0.0991274   0.0816595   0.1165953
0-24 months (no birth st.)   PROBIT           BELARUS                        Preterm              NA                0.2672566   0.2331054   0.3014079
0-24 months (no birth st.)   PROBIT           BELARUS                        Early term           NA                0.1338593   0.1161540   0.1515646
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2864701   0.2621023   0.3108380
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.3222591   0.2694508   0.3750675
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.3144654   0.2727887   0.3561421
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.3966480   0.3248515   0.4684446
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4242424   0.2553104   0.5931744
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Early term           NA                0.3064516   0.1914866   0.4214166
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Full or late term    NA                0.2169312   0.1753509   0.2585116
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Preterm              NA                0.3069307   0.2169145   0.3969469
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Early term           NA                0.2789474   0.2151297   0.3427650
0-6 months (no birth st.)    COHORTS          INDIA                          Full or late term    NA                0.0673953   0.0464154   0.0883752
0-6 months (no birth st.)    COHORTS          INDIA                          Preterm              NA                0.0867925   0.0528824   0.1207025
0-6 months (no birth st.)    COHORTS          INDIA                          Early term           NA                0.0588235   0.0359830   0.0816641
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Full or late term    NA                0.1530973   0.1320990   0.1740957
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Preterm              NA                0.2477876   0.2121827   0.2833925
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Early term           NA                0.1972198   0.1742287   0.2202109
0-6 months (no birth st.)    IRC              INDIA                          Full or late term    NA                0.3167421   0.2553185   0.3781656
0-6 months (no birth st.)    IRC              INDIA                          Preterm              NA                0.4062500   0.2358344   0.5766656
0-6 months (no birth st.)    IRC              INDIA                          Early term           NA                0.3750000   0.2737022   0.4762978
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Full or late term    NA                0.1158402   0.1088622   0.1228181
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Preterm              NA                0.1638810   0.1480796   0.1796824
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Early term           NA                0.1500000   0.1381468   0.1618532
0-6 months (no birth st.)    Keneba           GAMBIA                         Full or late term    NA                0.2116402   0.1825134   0.2407670
0-6 months (no birth st.)    Keneba           GAMBIA                         Preterm              NA                0.3737864   0.3076969   0.4398759
0-6 months (no birth st.)    Keneba           GAMBIA                         Early term           NA                0.2472119   0.2107472   0.2836766
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Full or late term    NA                0.1410256   0.0863671   0.1956841
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Preterm              NA                0.2462312   0.1863287   0.3061337
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Early term           NA                0.1778523   0.1344036   0.2213011
0-6 months (no birth st.)    PROBIT           BELARUS                        Full or late term    NA                0.0445660   0.0328524   0.0562795
0-6 months (no birth st.)    PROBIT           BELARUS                        Preterm              NA                0.1876106   0.1531758   0.2220454
0-6 months (no birth st.)    PROBIT           BELARUS                        Early term           NA                0.0711468   0.0588139   0.0834796
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1269841   0.1090386   0.1449297
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1461794   0.1062590   0.1860998
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1488470   0.1168973   0.1807966
6-24 months                  COHORTS          GUATEMALA                      Full or late term    NA                0.7475410   0.6987398   0.7963422
6-24 months                  COHORTS          GUATEMALA                      Preterm              NA                0.7101449   0.6029912   0.8172986
6-24 months                  COHORTS          GUATEMALA                      Early term           NA                0.7708333   0.7021198   0.8395469
6-24 months                  COHORTS          INDIA                          Full or late term    NA                0.2455446   0.2079886   0.2831005
6-24 months                  COHORTS          INDIA                          Preterm              NA                0.2784810   0.2213871   0.3355749
6-24 months                  COHORTS          INDIA                          Early term           NA                0.2671958   0.2225680   0.3118235
6-24 months                  COHORTS          PHILIPPINES                    Full or late term    NA                0.6393629   0.6076113   0.6711145
6-24 months                  COHORTS          PHILIPPINES                    Preterm              NA                0.6366048   0.5880418   0.6851677
6-24 months                  COHORTS          PHILIPPINES                    Early term           NA                0.6533019   0.6212624   0.6853414
6-24 months                  IRC              INDIA                          Full or late term    NA                0.3708609   0.2936452   0.4480766
6-24 months                  IRC              INDIA                          Preterm              NA                0.5263158   0.3013035   0.7513281
6-24 months                  IRC              INDIA                          Early term           NA                0.3818182   0.2531354   0.5105010
6-24 months                  JiVitA-3         BANGLADESH                     Full or late term    NA                0.2133898   0.2010427   0.2257369
6-24 months                  JiVitA-3         BANGLADESH                     Preterm              NA                0.2263117   0.2006555   0.2519678
6-24 months                  JiVitA-3         BANGLADESH                     Early term           NA                0.2185273   0.2007245   0.2363302
6-24 months                  Keneba           GAMBIA                         Full or late term    NA                0.3853354   0.3476444   0.4230264
6-24 months                  Keneba           GAMBIA                         Preterm              NA                0.5000000   0.4146681   0.5853319
6-24 months                  Keneba           GAMBIA                         Early term           NA                0.3680556   0.3225586   0.4135525
6-24 months                  NIH-Crypto       BANGLADESH                     Full or late term    NA                0.2320000   0.1579292   0.3060708
6-24 months                  NIH-Crypto       BANGLADESH                     Preterm              NA                0.2816901   0.2076316   0.3557487
6-24 months                  NIH-Crypto       BANGLADESH                     Early term           NA                0.2677824   0.2115884   0.3239764
6-24 months                  PROBIT           BELARUS                        Full or late term    NA                0.0583282   0.0447972   0.0718591
6-24 months                  PROBIT           BELARUS                        Preterm              NA                0.1002227   0.0636763   0.1367691
6-24 months                  PROBIT           BELARUS                        Early term           NA                0.0688463   0.0572497   0.0804429
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2223393   0.1958749   0.2488037
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2420091   0.1852654   0.2987529
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2323529   0.1874466   0.2772593


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
6-24 months                  NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  PROBIT           BELARUS                        NA                   NA                0.0642659   0.0526827   0.0758490
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2274536   0.2062895   0.2486177


### Parameter: RR


agecat                       studyid          country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Preterm              Full or late term    1.0147868   0.9015976   1.142186
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Early term           Full or late term    1.0347466   0.9448587   1.133186
0-24 months (no birth st.)   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS          INDIA                          Preterm              Full or late term    1.1347584   0.9146506   1.407834
0-24 months (no birth st.)   COHORTS          INDIA                          Early term           Full or late term    1.0389493   0.8531526   1.265208
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0340136   0.9624842   1.110859
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Early term           Full or late term    1.0431982   0.9840309   1.105923
0-24 months (no birth st.)   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   IRC              INDIA                          Preterm              Full or late term    1.2606647   0.9862620   1.611413
0-24 months (no birth st.)   IRC              INDIA                          Early term           Full or late term    1.0762987   0.8796426   1.316920
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.1472755   1.0592663   1.242597
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.1202932   1.0517682   1.193283
0-24 months (no birth st.)   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   Keneba           GAMBIA                         Preterm              Full or late term    1.2981697   1.1465750   1.469808
0-24 months (no birth st.)   Keneba           GAMBIA                         Early term           Full or late term    1.0076821   0.9028467   1.124691
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Preterm              Full or late term    1.3680166   1.0409169   1.797905
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.2009475   0.9204661   1.566896
0-24 months (no birth st.)   PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROBIT           BELARUS                        Preterm              Full or late term    2.6960925   2.1496154   3.381495
0-24 months (no birth st.)   PROBIT           BELARUS                        Early term           Full or late term    1.3503764   1.2019829   1.517090
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.1249310   0.9352796   1.353039
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0977249   0.9377785   1.284952
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.0695689   0.6906300   1.656426
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.7726034   0.5093991   1.171804
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Preterm              Full or late term    1.4148756   0.9966877   2.008526
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Early term           Full or late term    1.2858793   0.9540687   1.733089
0-6 months (no birth st.)    COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          INDIA                          Preterm              Full or late term    1.2878123   0.7814462   2.122297
0-6 months (no birth st.)    COHORTS          INDIA                          Early term           Full or late term    0.8728140   0.5306240   1.435676
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Preterm              Full or late term    1.6184971   1.3269120   1.974157
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Early term           Full or late term    1.2881988   1.0759879   1.542263
0-6 months (no birth st.)    IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    IRC              INDIA                          Preterm              Full or late term    1.2825893   0.8079468   2.036069
0-6 months (no birth st.)    IRC              INDIA                          Early term           Full or late term    1.1839286   0.8490052   1.650976
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.4147164   1.2656845   1.581297
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Early term           Full or late term    1.2948878   1.1747374   1.427327
0-6 months (no birth st.)    Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    Keneba           GAMBIA                         Preterm              Full or late term    1.7661408   1.4116195   2.209698
0-6 months (no birth st.)    Keneba           GAMBIA                         Early term           Full or late term    1.1680762   0.9546801   1.429172
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Preterm              Full or late term    1.7460027   1.1048676   2.759177
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.2611348   0.7976110   1.994031
0-6 months (no birth st.)    PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROBIT           BELARUS                        Preterm              Full or late term    4.2097276   3.1240473   5.672707
0-6 months (no birth st.)    PROBIT           BELARUS                        Early term           Full or late term    1.5964368   1.3093384   1.946487
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.1511628   0.8464378   1.565592
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.1721698   0.9065253   1.515658
6-24 months                  COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  COHORTS          GUATEMALA                      Preterm              Full or late term    0.9499746   0.8059555   1.119729
6-24 months                  COHORTS          GUATEMALA                      Early term           Full or late term    1.0311586   0.9232945   1.151624
6-24 months                  COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  COHORTS          INDIA                          Preterm              Full or late term    1.1341364   0.8781708   1.464710
6-24 months                  COHORTS          INDIA                          Early term           Full or late term    1.0881763   0.8676473   1.364757
6-24 months                  COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9956861   0.9090564   1.090571
6-24 months                  COHORTS          PHILIPPINES                    Early term           Full or late term    1.0218013   0.9529161   1.095666
6-24 months                  IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  IRC              INDIA                          Preterm              Full or late term    1.4191729   0.8820972   2.283254
6-24 months                  IRC              INDIA                          Early term           Full or late term    1.0295455   0.6927854   1.530003
6-24 months                  JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.0605552   0.9366302   1.200877
6-24 months                  JiVitA-3         BANGLADESH                     Early term           Full or late term    1.0240757   0.9270555   1.131250
6-24 months                  Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  Keneba           GAMBIA                         Preterm              Full or late term    1.2975709   1.0658653   1.579646
6-24 months                  Keneba           GAMBIA                         Early term           Full or late term    0.9551563   0.8158597   1.118236
6-24 months                  NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  NIH-Crypto       BANGLADESH                     Preterm              Full or late term    1.2141816   0.8029065   1.836125
6-24 months                  NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.1542346   0.7877113   1.691302
6-24 months                  PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  PROBIT           BELARUS                        Preterm              Full or late term    1.7182557   1.1329207   2.606010
6-24 months                  PROBIT           BELARUS                        Early term           Full or late term    1.1803270   1.0038777   1.387790
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0884676   0.8367914   1.415839
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0450376   0.8328289   1.311318


### Parameter: PAR


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Full or late term    NA                 0.0091101   -0.0177667   0.0359869
0-24 months (no birth st.)   COHORTS          INDIA                          Full or late term    NA                 0.0121964   -0.0160826   0.0404753
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0157557   -0.0056796   0.0371910
0-24 months (no birth st.)   IRC              INDIA                          Full or late term    NA                 0.0251722   -0.0129918   0.0633362
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0125886    0.0067703   0.0184070
0-24 months (no birth st.)   Keneba           GAMBIA                         Full or late term    NA                 0.0209434   -0.0031974   0.0450842
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0666451    0.0015287   0.1317614
0-24 months (no birth st.)   PROBIT           BELARUS                        Full or late term    NA                 0.0214214    0.0148230   0.0280197
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0114832   -0.0036367   0.0266031
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0170860   -0.0587204   0.0245484
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Full or late term    NA                 0.0312003    0.0020795   0.0603212
0-6 months (no birth st.)    COHORTS          INDIA                          Full or late term    NA                 0.0013445   -0.0143419   0.0170309
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Full or late term    NA                 0.0366426    0.0193691   0.0539162
0-6 months (no birth st.)    IRC              INDIA                          Full or late term    NA                 0.0234339   -0.0142295   0.0610972
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0157267    0.0110947   0.0203587
0-6 months (no birth st.)    Keneba           GAMBIA                         Full or late term    NA                 0.0350265    0.0133604   0.0566925
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0488672   -0.0007964   0.0985308
0-6 months (no birth st.)    PROBIT           BELARUS                        Full or late term    NA                 0.0168789    0.0116430   0.0221148
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0077136   -0.0036737   0.0191009
6-24 months                  COHORTS          GUATEMALA                      Full or late term    NA                 0.0014938   -0.0297117   0.0326992
6-24 months                  COHORTS          INDIA                          Full or late term    NA                 0.0142769   -0.0139849   0.0425387
6-24 months                  COHORTS          PHILIPPINES                    Full or late term    NA                 0.0051238   -0.0190490   0.0292965
6-24 months                  IRC              INDIA                          Full or late term    NA                 0.0158057   -0.0292126   0.0608240
6-24 months                  JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0029651   -0.0041706   0.0101007
6-24 months                  Keneba           GAMBIA                         Full or late term    NA                 0.0063658   -0.0195078   0.0322395
6-24 months                  NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.0308458   -0.0343436   0.0960353
6-24 months                  PROBIT           BELARUS                        Full or late term    NA                 0.0059377    0.0011419   0.0107335
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0051143   -0.0112195   0.0214480


### Parameter: PAF


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS          GUATEMALA                      Full or late term    NA                 0.0117956   -0.0236432   0.0460074
0-24 months (no birth st.)   COHORTS          INDIA                          Full or late term    NA                 0.0405890   -0.0582805   0.1302216
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0236502   -0.0090791   0.0553178
0-24 months (no birth st.)   IRC              INDIA                          Full or late term    NA                 0.0422843   -0.0242259   0.1044755
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0496851    0.0264126   0.0724013
0-24 months (no birth st.)   Keneba           GAMBIA                         Full or late term    NA                 0.0411323   -0.0075148   0.0874306
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.1693355   -0.0138187   0.3194015
0-24 months (no birth st.)   PROBIT           BELARUS                        Full or late term    NA                 0.1776987    0.1147654   0.2361580
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0385403   -0.0135563   0.0879592
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0450150   -0.1607351   0.0591683
0-6 months (no birth st.)    COHORTS          GUATEMALA                      Full or late term    NA                 0.1257411    0.0007075   0.2351302
0-6 months (no birth st.)    COHORTS          INDIA                          Full or late term    NA                 0.0195594   -0.2373454   0.2231241
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    Full or late term    NA                 0.1931203    0.0975734   0.2785509
0-6 months (no birth st.)    IRC              INDIA                          Full or late term    NA                 0.0688875   -0.0486600   0.1732588
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.1195339    0.0838616   0.1538171
0-6 months (no birth st.)    Keneba           GAMBIA                         Full or late term    NA                 0.1419991    0.0499475   0.2251318
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.2573408   -0.0532049   0.4763196
0-6 months (no birth st.)    PROBIT           BELARUS                        Full or late term    NA                 0.2746996    0.1722228   0.3644899
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0572663   -0.0310035   0.1379788
6-24 months                  COHORTS          GUATEMALA                      Full or late term    NA                 0.0019943   -0.0405490   0.0427981
6-24 months                  COHORTS          INDIA                          Full or late term    NA                 0.0549488   -0.0602810   0.1576556
6-24 months                  COHORTS          PHILIPPINES                    Full or late term    NA                 0.0079502   -0.0302771   0.0447591
6-24 months                  IRC              INDIA                          Full or late term    NA                 0.0408769   -0.0829571   0.1505508
6-24 months                  JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0137046   -0.0198824   0.0461855
6-24 months                  Keneba           GAMBIA                         Full or late term    NA                 0.0162518   -0.0520738   0.0801400
6-24 months                  NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.1173534   -0.1687207   0.3334036
6-24 months                  PROBIT           BELARUS                        Full or late term    NA                 0.0923925    0.0085839   0.1691164
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0224849   -0.0520160   0.0917099
