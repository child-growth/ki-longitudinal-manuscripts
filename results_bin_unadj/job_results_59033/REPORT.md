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

**Outcome Variable:** wasted

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

agecat      studyid          country                        gagebrth             wasted   n_cell       n
----------  ---------------  -----------------------------  ------------------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Full or late term         0       47      86
Birth       CMC-V-BCS-2002   INDIA                          Full or late term         1        6      86
Birth       CMC-V-BCS-2002   INDIA                          Preterm                   0        8      86
Birth       CMC-V-BCS-2002   INDIA                          Preterm                   1        3      86
Birth       CMC-V-BCS-2002   INDIA                          Early term                0       20      86
Birth       CMC-V-BCS-2002   INDIA                          Early term                1        2      86
Birth       COHORTS          GUATEMALA                      Full or late term         0      240     572
Birth       COHORTS          GUATEMALA                      Full or late term         1       83     572
Birth       COHORTS          GUATEMALA                      Preterm                   0       55     572
Birth       COHORTS          GUATEMALA                      Preterm                   1       23     572
Birth       COHORTS          GUATEMALA                      Early term                0      131     572
Birth       COHORTS          GUATEMALA                      Early term                1       40     572
Birth       COHORTS          INDIA                          Full or late term         0      462    1229
Birth       COHORTS          INDIA                          Full or late term         1       91    1229
Birth       COHORTS          INDIA                          Preterm                   0      205    1229
Birth       COHORTS          INDIA                          Preterm                   1       54    1229
Birth       COHORTS          INDIA                          Early term                0      345    1229
Birth       COHORTS          INDIA                          Early term                1       72    1229
Birth       COHORTS          PHILIPPINES                    Full or late term         0      996    2874
Birth       COHORTS          PHILIPPINES                    Full or late term         1      139    2874
Birth       COHORTS          PHILIPPINES                    Preterm                   0      467    2874
Birth       COHORTS          PHILIPPINES                    Preterm                   1      112    2874
Birth       COHORTS          PHILIPPINES                    Early term                0      964    2874
Birth       COHORTS          PHILIPPINES                    Early term                1      196    2874
Birth       IRC              INDIA                          Full or late term         0      164     328
Birth       IRC              INDIA                          Full or late term         1       49     328
Birth       IRC              INDIA                          Preterm                   0       19     328
Birth       IRC              INDIA                          Preterm                   1       13     328
Birth       IRC              INDIA                          Early term                0       58     328
Birth       IRC              INDIA                          Early term                1       25     328
Birth       JiVitA-3         BANGLADESH                     Full or late term         0     8657   17161
Birth       JiVitA-3         BANGLADESH                     Full or late term         1     1011   17161
Birth       JiVitA-3         BANGLADESH                     Preterm                   0     2395   17161
Birth       JiVitA-3         BANGLADESH                     Preterm                   1      360   17161
Birth       JiVitA-3         BANGLADESH                     Early term                0     4218   17161
Birth       JiVitA-3         BANGLADESH                     Early term                1      520   17161
Birth       Keneba           GAMBIA                         Full or late term         0      528    1439
Birth       Keneba           GAMBIA                         Full or late term         1      181    1439
Birth       Keneba           GAMBIA                         Preterm                   0      162    1439
Birth       Keneba           GAMBIA                         Preterm                   1       44    1439
Birth       Keneba           GAMBIA                         Early term                0      396    1439
Birth       Keneba           GAMBIA                         Early term                1      128    1439
Birth       NIH-Crypto       BANGLADESH                     Full or late term         0      141     707
Birth       NIH-Crypto       BANGLADESH                     Full or late term         1       19     707
Birth       NIH-Crypto       BANGLADESH                     Preterm                   0      152     707
Birth       NIH-Crypto       BANGLADESH                     Preterm                   1       88     707
Birth       NIH-Crypto       BANGLADESH                     Early term                0      242     707
Birth       NIH-Crypto       BANGLADESH                     Early term                1       65     707
Birth       PROBIT           BELARUS                        Full or late term         0     5653   13817
Birth       PROBIT           BELARUS                        Full or late term         1     1412   13817
Birth       PROBIT           BELARUS                        Preterm                   0      365   13817
Birth       PROBIT           BELARUS                        Preterm                   1      102   13817
Birth       PROBIT           BELARUS                        Early term                0     4893   13817
Birth       PROBIT           BELARUS                        Early term                1     1392   13817
6 months    CMC-V-BCS-2002   INDIA                          Full or late term         0      183     346
6 months    CMC-V-BCS-2002   INDIA                          Full or late term         1       29     346
6 months    CMC-V-BCS-2002   INDIA                          Preterm                   0       45     346
6 months    CMC-V-BCS-2002   INDIA                          Preterm                   1        6     346
6 months    CMC-V-BCS-2002   INDIA                          Early term                0       76     346
6 months    CMC-V-BCS-2002   INDIA                          Early term                1        7     346
6 months    COHORTS          GUATEMALA                      Full or late term         0      377     714
6 months    COHORTS          GUATEMALA                      Full or late term         1       12     714
6 months    COHORTS          GUATEMALA                      Preterm                   0      110     714
6 months    COHORTS          GUATEMALA                      Preterm                   1        4     714
6 months    COHORTS          GUATEMALA                      Early term                0      202     714
6 months    COHORTS          GUATEMALA                      Early term                1        9     714
6 months    COHORTS          INDIA                          Full or late term         0      502    1312
6 months    COHORTS          INDIA                          Full or late term         1       66    1312
6 months    COHORTS          INDIA                          Preterm                   0      267    1312
6 months    COHORTS          INDIA                          Preterm                   1       32    1312
6 months    COHORTS          INDIA                          Early term                0      384    1312
6 months    COHORTS          INDIA                          Early term                1       61    1312
6 months    COHORTS          PHILIPPINES                    Full or late term         0      977    2685
6 months    COHORTS          PHILIPPINES                    Full or late term         1       51    2685
6 months    COHORTS          PHILIPPINES                    Preterm                   0      538    2685
6 months    COHORTS          PHILIPPINES                    Preterm                   1       34    2685
6 months    COHORTS          PHILIPPINES                    Early term                0     1011    2685
6 months    COHORTS          PHILIPPINES                    Early term                1       74    2685
6 months    IRC              INDIA                          Full or late term         0      223     388
6 months    IRC              INDIA                          Full or late term         1       26     388
6 months    IRC              INDIA                          Preterm                   0       32     388
6 months    IRC              INDIA                          Preterm                   1       10     388
6 months    IRC              INDIA                          Early term                0       80     388
6 months    IRC              INDIA                          Early term                1       17     388
6 months    JiVitA-3         BANGLADESH                     Full or late term         0     7812   15989
6 months    JiVitA-3         BANGLADESH                     Full or late term         1      699   15989
6 months    JiVitA-3         BANGLADESH                     Preterm                   0     2785   15989
6 months    JiVitA-3         BANGLADESH                     Preterm                   1      262   15989
6 months    JiVitA-3         BANGLADESH                     Early term                0     4043   15989
6 months    JiVitA-3         BANGLADESH                     Early term                1      388   15989
6 months    Keneba           GAMBIA                         Full or late term         0      615    1374
6 months    Keneba           GAMBIA                         Full or late term         1       43    1374
6 months    Keneba           GAMBIA                         Preterm                   0      196    1374
6 months    Keneba           GAMBIA                         Preterm                   1       11    1374
6 months    Keneba           GAMBIA                         Early term                0      487    1374
6 months    Keneba           GAMBIA                         Early term                1       22    1374
6 months    NIH-Crypto       BANGLADESH                     Full or late term         0      151     715
6 months    NIH-Crypto       BANGLADESH                     Full or late term         1        4     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                   0      240     715
6 months    NIH-Crypto       BANGLADESH                     Preterm                   1       11     715
6 months    NIH-Crypto       BANGLADESH                     Early term                0      303     715
6 months    NIH-Crypto       BANGLADESH                     Early term                1        6     715
6 months    PROBIT           BELARUS                        Full or late term         0     7961   15757
6 months    PROBIT           BELARUS                        Full or late term         1       45   15757
6 months    PROBIT           BELARUS                        Preterm                   0      545   15757
6 months    PROBIT           BELARUS                        Preterm                   1        6   15757
6 months    PROBIT           BELARUS                        Early term                0     7143   15757
6 months    PROBIT           BELARUS                        Early term                1       57   15757
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         0     1116    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         1       51    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0      273    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   1       17    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                0      428    1902
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       17    1902
24 months   CMC-V-BCS-2002   INDIA                          Full or late term         0      201     350
24 months   CMC-V-BCS-2002   INDIA                          Full or late term         1       13     350
24 months   CMC-V-BCS-2002   INDIA                          Preterm                   0       48     350
24 months   CMC-V-BCS-2002   INDIA                          Preterm                   1        4     350
24 months   CMC-V-BCS-2002   INDIA                          Early term                0       81     350
24 months   CMC-V-BCS-2002   INDIA                          Early term                1        3     350
24 months   COHORTS          GUATEMALA                      Full or late term         0      365     667
24 months   COHORTS          GUATEMALA                      Full or late term         1       12     667
24 months   COHORTS          GUATEMALA                      Preterm                   0      101     667
24 months   COHORTS          GUATEMALA                      Preterm                   1        8     667
24 months   COHORTS          GUATEMALA                      Early term                0      176     667
24 months   COHORTS          GUATEMALA                      Early term                1        5     667
24 months   COHORTS          INDIA                          Full or late term         0      513    1298
24 months   COHORTS          INDIA                          Full or late term         1       46    1298
24 months   COHORTS          INDIA                          Preterm                   0      279    1298
24 months   COHORTS          INDIA                          Preterm                   1       24    1298
24 months   COHORTS          INDIA                          Early term                0      393    1298
24 months   COHORTS          INDIA                          Early term                1       43    1298
24 months   COHORTS          PHILIPPINES                    Full or late term         0      882    2428
24 months   COHORTS          PHILIPPINES                    Full or late term         1       57    2428
24 months   COHORTS          PHILIPPINES                    Preterm                   0      483    2428
24 months   COHORTS          PHILIPPINES                    Preterm                   1       34    2428
24 months   COHORTS          PHILIPPINES                    Early term                0      897    2428
24 months   COHORTS          PHILIPPINES                    Early term                1       75    2428
24 months   IRC              INDIA                          Full or late term         0      233     390
24 months   IRC              INDIA                          Full or late term         1       17     390
24 months   IRC              INDIA                          Preterm                   0       35     390
24 months   IRC              INDIA                          Preterm                   1        7     390
24 months   IRC              INDIA                          Early term                0       92     390
24 months   IRC              INDIA                          Early term                1        6     390
24 months   JiVitA-3         BANGLADESH                     Full or late term         0     3419    8173
24 months   JiVitA-3         BANGLADESH                     Full or late term         1      890    8173
24 months   JiVitA-3         BANGLADESH                     Preterm                   0     1220    8173
24 months   JiVitA-3         BANGLADESH                     Preterm                   1      378    8173
24 months   JiVitA-3         BANGLADESH                     Early term                0     1769    8173
24 months   JiVitA-3         BANGLADESH                     Early term                1      497    8173
24 months   Keneba           GAMBIA                         Full or late term         0      496    1157
24 months   Keneba           GAMBIA                         Full or late term         1       62    1157
24 months   Keneba           GAMBIA                         Preterm                   0      145    1157
24 months   Keneba           GAMBIA                         Preterm                   1       23    1157
24 months   Keneba           GAMBIA                         Early term                0      393    1157
24 months   Keneba           GAMBIA                         Early term                1       38    1157
24 months   NIH-Crypto       BANGLADESH                     Full or late term         0       76     514
24 months   NIH-Crypto       BANGLADESH                     Full or late term         1        3     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                   0      187     514
24 months   NIH-Crypto       BANGLADESH                     Preterm                   1       21     514
24 months   NIH-Crypto       BANGLADESH                     Early term                0      206     514
24 months   NIH-Crypto       BANGLADESH                     Early term                1       21     514
24 months   PROBIT           BELARUS                        Full or late term         0     1976    3970
24 months   PROBIT           BELARUS                        Full or late term         1       15    3970
24 months   PROBIT           BELARUS                        Preterm                   0      133    3970
24 months   PROBIT           BELARUS                        Preterm                   1        3    3970
24 months   PROBIT           BELARUS                        Early term                0     1829    3970
24 months   PROBIT           BELARUS                        Early term                1       14    3970
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1        0       6


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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/de9e2082-1723-44ff-8915-08555350005f/0f5da243-9927-4722-8740-de3b6af48fc6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/de9e2082-1723-44ff-8915-08555350005f/0f5da243-9927-4722-8740-de3b6af48fc6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/de9e2082-1723-44ff-8915-08555350005f/0f5da243-9927-4722-8740-de3b6af48fc6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/de9e2082-1723-44ff-8915-08555350005f/0f5da243-9927-4722-8740-de3b6af48fc6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      Full or late term    NA                0.2569659   0.2092714   0.3046605
Birth       COHORTS          GUATEMALA                      Preterm              NA                0.2948718   0.1935900   0.3961536
Birth       COHORTS          GUATEMALA                      Early term           NA                0.2339181   0.1704144   0.2974219
Birth       COHORTS          INDIA                          Full or late term    NA                0.1645570   0.1336413   0.1954726
Birth       COHORTS          INDIA                          Preterm              NA                0.2084942   0.1590006   0.2579878
Birth       COHORTS          INDIA                          Early term           NA                0.1726619   0.1363711   0.2089527
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                0.1224670   0.1033919   0.1415421
Birth       COHORTS          PHILIPPINES                    Preterm              NA                0.1934370   0.1612579   0.2256160
Birth       COHORTS          PHILIPPINES                    Early term           NA                0.1689655   0.1473978   0.1905332
Birth       IRC              INDIA                          Full or late term    NA                0.2300469   0.1734410   0.2866528
Birth       IRC              INDIA                          Preterm              NA                0.4062500   0.2358245   0.5766755
Birth       IRC              INDIA                          Early term           NA                0.3012048   0.2023545   0.4000551
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                0.1045718   0.0977121   0.1114315
Birth       JiVitA-3         BANGLADESH                     Preterm              NA                0.1306715   0.1179226   0.1434204
Birth       JiVitA-3         BANGLADESH                     Early term           NA                0.1097509   0.1004883   0.1190136
Birth       Keneba           GAMBIA                         Full or late term    NA                0.2552891   0.2231832   0.2873951
Birth       Keneba           GAMBIA                         Preterm              NA                0.2135922   0.1576059   0.2695786
Birth       Keneba           GAMBIA                         Early term           NA                0.2442748   0.2074742   0.2810754
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                0.1187500   0.0685895   0.1689105
Birth       NIH-Crypto       BANGLADESH                     Preterm              NA                0.3666667   0.3056566   0.4276768
Birth       NIH-Crypto       BANGLADESH                     Early term           NA                0.2117264   0.1659952   0.2574575
Birth       PROBIT           BELARUS                        Full or late term    NA                0.1998585   0.1341432   0.2655737
Birth       PROBIT           BELARUS                        Preterm              NA                0.2184154   0.1179151   0.3189158
Birth       PROBIT           BELARUS                        Early term           NA                0.2214797   0.1495739   0.2933855
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1367925   0.0904694   0.1831155
6 months    CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290941   0.2062000
6 months    CMC-V-BCS-2002   INDIA                          Early term           NA                0.0843373   0.0244665   0.1442082
6 months    COHORTS          INDIA                          Full or late term    NA                0.1161972   0.0898330   0.1425614
6 months    COHORTS          INDIA                          Preterm              NA                0.1070234   0.0719694   0.1420774
6 months    COHORTS          INDIA                          Early term           NA                0.1370787   0.1051115   0.1690458
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                0.0496109   0.0363348   0.0628870
6 months    COHORTS          PHILIPPINES                    Preterm              NA                0.0594406   0.0400600   0.0788211
6 months    COHORTS          PHILIPPINES                    Early term           NA                0.0682028   0.0531998   0.0832057
6 months    IRC              INDIA                          Full or late term    NA                0.1044177   0.0663857   0.1424496
6 months    IRC              INDIA                          Preterm              NA                0.2380952   0.1091191   0.3670714
6 months    IRC              INDIA                          Early term           NA                0.1752577   0.0995012   0.2510143
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                0.0821290   0.0756737   0.0885843
6 months    JiVitA-3         BANGLADESH                     Preterm              NA                0.0859862   0.0750716   0.0969008
6 months    JiVitA-3         BANGLADESH                     Early term           NA                0.0875649   0.0785846   0.0965452
6 months    Keneba           GAMBIA                         Full or late term    NA                0.0653495   0.0464592   0.0842399
6 months    Keneba           GAMBIA                         Preterm              NA                0.0531401   0.0225715   0.0837087
6 months    Keneba           GAMBIA                         Early term           NA                0.0432220   0.0255492   0.0608948
6 months    PROBIT           BELARUS                        Full or late term    NA                0.0056208   0.0032178   0.0080238
6 months    PROBIT           BELARUS                        Preterm              NA                0.0108893   0.0042617   0.0175169
6 months    PROBIT           BELARUS                        Early term           NA                0.0079167   0.0057834   0.0100499
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0437018   0.0319698   0.0554338
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0586207   0.0315767   0.0856647
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0382022   0.0203880   0.0560165
24 months   COHORTS          GUATEMALA                      Full or late term    NA                0.0318302   0.0140966   0.0495639
24 months   COHORTS          GUATEMALA                      Preterm              NA                0.0733945   0.0244008   0.1223881
24 months   COHORTS          GUATEMALA                      Early term           NA                0.0276243   0.0037298   0.0515188
24 months   COHORTS          INDIA                          Full or late term    NA                0.0822898   0.0595003   0.1050793
24 months   COHORTS          INDIA                          Preterm              NA                0.0792079   0.0487879   0.1096279
24 months   COHORTS          INDIA                          Early term           NA                0.0986239   0.0706265   0.1266212
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                0.0607029   0.0454268   0.0759789
24 months   COHORTS          PHILIPPINES                    Preterm              NA                0.0657640   0.0443935   0.0871345
24 months   COHORTS          PHILIPPINES                    Early term           NA                0.0771605   0.0603815   0.0939395
24 months   IRC              INDIA                          Full or late term    NA                0.0680000   0.0367537   0.0992463
24 months   IRC              INDIA                          Preterm              NA                0.1666667   0.0538133   0.2795201
24 months   IRC              INDIA                          Early term           NA                0.0612245   0.0136980   0.1087510
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                0.2065444   0.1923463   0.2207425
24 months   JiVitA-3         BANGLADESH                     Preterm              NA                0.2365457   0.2146006   0.2584907
24 months   JiVitA-3         BANGLADESH                     Early term           NA                0.2193292   0.2011368   0.2375216
24 months   Keneba           GAMBIA                         Full or late term    NA                0.1111111   0.0850243   0.1371979
24 months   Keneba           GAMBIA                         Preterm              NA                0.1369048   0.0849028   0.1889067
24 months   Keneba           GAMBIA                         Early term           NA                0.0881671   0.0613872   0.1149469


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.2552448   0.2194833   0.2910062
Birth       COHORTS          INDIA                          NA                   NA                0.1765663   0.1552399   0.1978927
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.1555324   0.1422803   0.1687844
Birth       IRC              INDIA                          NA                   NA                0.2652439   0.2173954   0.3130924
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1101917   0.1049992   0.1153842
Birth       Keneba           GAMBIA                         NA                   NA                0.2453092   0.2230705   0.2675480
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROBIT           BELARUS                        NA                   NA                0.2103206   0.1450833   0.2755580
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1213873   0.0869266   0.1558480
6 months    COHORTS          INDIA                          NA                   NA                0.1211890   0.1035235   0.1388545
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0592179   0.0502884   0.0681474
6 months    IRC              INDIA                          NA                   NA                0.1365979   0.1023826   0.1708133
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0843705   0.0794524   0.0892887
6 months    Keneba           GAMBIA                         NA                   NA                0.0553130   0.0432217   0.0674042
6 months    PROBIT           BELARUS                        NA                   NA                0.0068541   0.0051915   0.0085167
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0446898   0.0354016   0.0539780
24 months   COHORTS          GUATEMALA                      NA                   NA                0.0374813   0.0230560   0.0519065
24 months   COHORTS          INDIA                          NA                   NA                0.0870570   0.0717143   0.1023997
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0683690   0.0583283   0.0784097
24 months   IRC              INDIA                          NA                   NA                0.0769231   0.0504429   0.1034032
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2159550   0.2060514   0.2258585
24 months   Keneba           GAMBIA                         NA                   NA                0.1063094   0.0885410   0.1240778


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
Birth       COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       COHORTS          GUATEMALA                      Preterm              Full or late term    1.1475131   0.7766066   1.695564
Birth       COHORTS          GUATEMALA                      Early term           Full or late term    0.9103079   0.6551869   1.264770
Birth       COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       COHORTS          INDIA                          Preterm              Full or late term    1.2670033   0.9360561   1.714958
Birth       COHORTS          INDIA                          Early term           Full or late term    1.0492529   0.7914949   1.390952
Birth       COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       COHORTS          PHILIPPINES                    Preterm              Full or late term    1.5795032   1.2576187   1.983773
Birth       COHORTS          PHILIPPINES                    Early term           Full or late term    1.3796825   1.1280315   1.687474
Birth       IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       IRC              INDIA                          Preterm              Full or late term    1.7659439   1.0858219   2.872071
Birth       IRC              INDIA                          Early term           Full or late term    1.3093189   0.8687701   1.973268
Birth       JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.2495867   1.1099163   1.406833
Birth       JiVitA-3         BANGLADESH                     Early term           Full or late term    1.0495274   0.9458035   1.164626
Birth       Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       Keneba           GAMBIA                         Preterm              Full or late term    0.8366679   0.6255932   1.118959
Birth       Keneba           GAMBIA                         Early term           Full or late term    0.9568555   0.7863534   1.164327
Birth       NIH-Crypto       BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH                     Preterm              Full or late term    3.0877193   1.9609673   4.861892
Birth       NIH-Crypto       BANGLADESH                     Early term           Full or late term    1.7829590   1.1094349   2.865371
Birth       PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       PROBIT           BELARUS                        Preterm              Full or late term    1.0928505   0.7361128   1.622472
Birth       PROBIT           BELARUS                        Early term           Full or late term    1.1081828   0.8992782   1.365617
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.8600406   0.3767610   1.963234
6 months    CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.6165351   0.2807839   1.353765
6 months    COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    COHORTS          INDIA                          Preterm              Full or late term    0.9210500   0.6183581   1.371912
6 months    COHORTS          INDIA                          Early term           Full or late term    1.1797072   0.8520579   1.633350
6 months    COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1981352   0.7858104   1.826812
6 months    COHORTS          PHILIPPINES                    Early term           Full or late term    1.3747538   0.9722542   1.943882
6 months    IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    IRC              INDIA                          Preterm              Full or late term    2.2802198   1.1870927   4.379946
6 months    IRC              INDIA                          Early term           Full or late term    1.6784298   0.9537122   2.953854
6 months    JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.0469652   0.9051428   1.211009
6 months    JiVitA-3         BANGLADESH                     Early term           Full or late term    1.0661870   0.9396849   1.209719
6 months    Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    Keneba           GAMBIA                         Preterm              Full or late term    0.8131671   0.4271548   1.548012
6 months    Keneba           GAMBIA                         Early term           Full or late term    0.6613972   0.4008590   1.091272
6 months    PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS                        Preterm              Full or late term    1.9373261   1.0788654   3.478870
6 months    PROBIT           BELARUS                        Early term           Full or late term    1.4084630   0.8413101   2.357951
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3413793   0.7865774   2.287504
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8741573   0.5103980   1.497167
24 months   COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   COHORTS          GUATEMALA                      Preterm              Full or late term    2.3058104   0.9665200   5.500933
24 months   COHORTS          GUATEMALA                      Early term           Full or late term    0.8678637   0.3101816   2.428214
24 months   COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   COHORTS          INDIA                          Preterm              Full or late term    0.9625484   0.5994987   1.545457
24 months   COHORTS          INDIA                          Early term           Full or late term    1.1984942   0.8061178   1.781859
24 months   COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0833758   0.7182593   1.634094
24 months   COHORTS          PHILIPPINES                    Early term           Full or late term    1.2711176   0.9114731   1.772669
24 months   IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   IRC              INDIA                          Preterm              Full or late term    2.4509804   1.0813122   5.555569
24 months   IRC              INDIA                          Early term           Full or late term    0.9003601   0.3653015   2.219121
24 months   JiVitA-3         BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     Preterm              Full or late term    1.1452532   1.0213275   1.284216
24 months   JiVitA-3         BANGLADESH                     Early term           Full or late term    1.0618984   0.9518116   1.184718
24 months   Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   Keneba           GAMBIA                         Preterm              Full or late term    1.2321429   0.7883692   1.925717
24 months   Keneba           GAMBIA                         Early term           Full or late term    0.7935035   0.5405335   1.164864


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -0.0017212   -0.0330994   0.0296570
Birth       COHORTS          INDIA                          Full or late term    NA                 0.0120094   -0.0114527   0.0354715
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                 0.0330654    0.0171882   0.0489426
Birth       IRC              INDIA                          Full or late term    NA                 0.0351970   -0.0013013   0.0716952
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0056199    0.0011912   0.0100486
Birth       Keneba           GAMBIA                         Full or late term    NA                -0.0099799   -0.0325543   0.0125945
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.1245315    0.0757570   0.1733060
Birth       PROBIT           BELARUS                        Full or late term    NA                 0.0104622   -0.0123831   0.0333075
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0154052   -0.0419343   0.0111240
6 months    COHORTS          INDIA                          Full or late term    NA                 0.0049918   -0.0151405   0.0251242
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                 0.0096070   -0.0013942   0.0206082
6 months    IRC              INDIA                          Full or late term    NA                 0.0321803    0.0046009   0.0597596
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0022415   -0.0020639   0.0065469
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.0100366   -0.0227354   0.0026623
6 months    PROBIT           BELARUS                        Full or late term    NA                 0.0012333   -0.0002880   0.0027547
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0009880   -0.0064288   0.0084048
24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.0056510   -0.0072744   0.0185765
24 months   COHORTS          INDIA                          Full or late term    NA                 0.0047672   -0.0127662   0.0223006
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.0076662   -0.0047305   0.0200628
24 months   IRC              INDIA                          Full or late term    NA                 0.0089231   -0.0117124   0.0295586
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0094105   -0.0000541   0.0188751
24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0048017   -0.0232362   0.0136328


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Full or late term    NA                -0.0067433   -0.1374967   0.1089803
Birth       COHORTS          INDIA                          Full or late term    NA                 0.0680161   -0.0746274   0.1917254
Birth       COHORTS          PHILIPPINES                    Full or late term    NA                 0.2125950    0.1049048   0.3073288
Birth       IRC              INDIA                          Full or late term    NA                 0.1326966   -0.0155082   0.2592721
Birth       JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0510014    0.0098464   0.0904458
Birth       Keneba           GAMBIA                         Full or late term    NA                -0.0406829   -0.1368725   0.0473681
Birth       NIH-Crypto       BANGLADESH                     Full or late term    NA                 0.5118823    0.2755326   0.6711254
Birth       PROBIT           BELARUS                        Full or late term    NA                 0.0497439   -0.0638844   0.1512361
6 months    CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1269093   -0.3655987   0.0700603
6 months    COHORTS          INDIA                          Full or late term    NA                 0.0411905   -0.1400978   0.1936520
6 months    COHORTS          PHILIPPINES                    Full or late term    NA                 0.1622311   -0.0439488   0.3276905
6 months    IRC              INDIA                          Full or late term    NA                 0.2355838    0.0131261   0.4078959
6 months    JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0265673   -0.0258081   0.0762685
6 months    Keneba           GAMBIA                         Full or late term    NA                -0.1814510   -0.4312528   0.0247520
6 months    PROBIT           BELARUS                        Full or late term    NA                 0.1799380   -0.0882413   0.3820289
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0221080   -0.1587005   0.1747024
24 months   COHORTS          GUATEMALA                      Full or late term    NA                 0.1507692   -0.2677534   0.4311253
24 months   COHORTS          INDIA                          Full or late term    NA                 0.0547596   -0.1694723   0.2359978
24 months   COHORTS          PHILIPPINES                    Full or late term    NA                 0.1121290   -0.0882338   0.2756015
24 months   IRC              INDIA                          Full or late term    NA                 0.1160000   -0.1939710   0.3454983
24 months   JiVitA-3         BANGLADESH                     Full or late term    NA                 0.0435764   -0.0014727   0.0865990
24 months   Keneba           GAMBIA                         Full or late term    NA                -0.0451671   -0.2336403   0.1145115
