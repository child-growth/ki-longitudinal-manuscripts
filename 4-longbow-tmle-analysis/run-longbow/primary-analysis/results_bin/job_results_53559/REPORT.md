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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth             wasted   n_cell       n
----------  -------------------------  -----------------------------  ------------------  -------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         0       47      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         1        6      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   0        8      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   1        3      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                0       20      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                1        2      86
Birth       ki1000108-IRC              INDIA                          Full or late term         0      164     328
Birth       ki1000108-IRC              INDIA                          Full or late term         1       49     328
Birth       ki1000108-IRC              INDIA                          Preterm                   0       19     328
Birth       ki1000108-IRC              INDIA                          Preterm                   1       13     328
Birth       ki1000108-IRC              INDIA                          Early term                0       58     328
Birth       ki1000108-IRC              INDIA                          Early term                1       25     328
Birth       ki1000109-EE               PAKISTAN                       Full or late term         0        7     177
Birth       ki1000109-EE               PAKISTAN                       Full or late term         1        2     177
Birth       ki1000109-EE               PAKISTAN                       Preterm                   0      118     177
Birth       ki1000109-EE               PAKISTAN                       Preterm                   1       14     177
Birth       ki1000109-EE               PAKISTAN                       Early term                0       30     177
Birth       ki1000109-EE               PAKISTAN                       Early term                1        6     177
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         0      141     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         1       19     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   0      152     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   1       88     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                0      242     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                1       65     707
Birth       ki1101329-Keneba           GAMBIA                         Full or late term         0      528    1439
Birth       ki1101329-Keneba           GAMBIA                         Full or late term         1      181    1439
Birth       ki1101329-Keneba           GAMBIA                         Preterm                   0      162    1439
Birth       ki1101329-Keneba           GAMBIA                         Preterm                   1       44    1439
Birth       ki1101329-Keneba           GAMBIA                         Early term                0      396    1439
Birth       ki1101329-Keneba           GAMBIA                         Early term                1      128    1439
Birth       ki1119695-PROBIT           BELARUS                        Full or late term         0     5665   13830
Birth       ki1119695-PROBIT           BELARUS                        Full or late term         1     1409   13830
Birth       ki1119695-PROBIT           BELARUS                        Preterm                   0      365   13830
Birth       ki1119695-PROBIT           BELARUS                        Preterm                   1      103   13830
Birth       ki1119695-PROBIT           BELARUS                        Early term                0     4913   13830
Birth       ki1119695-PROBIT           BELARUS                        Early term                1     1375   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term         0      240     572
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term         1       83     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                   0       55     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                   1       23     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                0      131     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                1       40     572
Birth       ki1135781-COHORTS          INDIA                          Full or late term         0      462    1229
Birth       ki1135781-COHORTS          INDIA                          Full or late term         1       91    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                   0      205    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                   1       54    1229
Birth       ki1135781-COHORTS          INDIA                          Early term                0      345    1229
Birth       ki1135781-COHORTS          INDIA                          Early term                1       72    1229
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term         0      996    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term         1      139    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                   0      467    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                   1      112    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                0      964    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                1      196    2874
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         0     8657   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         1     1011   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   0     2395   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   1      360   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                0     4218   17161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                1      520   17161
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         0      183     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         1       29     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   0       45     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   1        6     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                0       76     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                1        7     346
6 months    ki1000108-IRC              INDIA                          Full or late term         0      223     388
6 months    ki1000108-IRC              INDIA                          Full or late term         1       26     388
6 months    ki1000108-IRC              INDIA                          Preterm                   0       32     388
6 months    ki1000108-IRC              INDIA                          Preterm                   1       10     388
6 months    ki1000108-IRC              INDIA                          Early term                0       80     388
6 months    ki1000108-IRC              INDIA                          Early term                1       17     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term         0       16     375
6 months    ki1000109-EE               PAKISTAN                       Full or late term         1        1     375
6 months    ki1000109-EE               PAKISTAN                       Preterm                   0      258     375
6 months    ki1000109-EE               PAKISTAN                       Preterm                   1       41     375
6 months    ki1000109-EE               PAKISTAN                       Early term                0       54     375
6 months    ki1000109-EE               PAKISTAN                       Early term                1        5     375
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         0      151     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         1        4     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   0      240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   1       11     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                0      303     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         0     1116    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         1       51    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0      273    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   1       17    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                0      428    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1       17    1902
6 months    ki1101329-Keneba           GAMBIA                         Full or late term         0      615    1374
6 months    ki1101329-Keneba           GAMBIA                         Full or late term         1       43    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                   0      196    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                   1       11    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                0      487    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                1       22    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term         0     7942   15758
6 months    ki1119695-PROBIT           BELARUS                        Full or late term         1       64   15758
6 months    ki1119695-PROBIT           BELARUS                        Preterm                   0      545   15758
6 months    ki1119695-PROBIT           BELARUS                        Preterm                   1        6   15758
6 months    ki1119695-PROBIT           BELARUS                        Early term                0     7141   15758
6 months    ki1119695-PROBIT           BELARUS                        Early term                1       60   15758
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term         0      377     714
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term         1       12     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                   0      110     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                   1        4     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                0      202     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                1        9     714
6 months    ki1135781-COHORTS          INDIA                          Full or late term         0      502    1312
6 months    ki1135781-COHORTS          INDIA                          Full or late term         1       66    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                   0      267    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                   1       32    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                0      384    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                1       61    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term         0      977    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term         1       51    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                   0      538    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                   1       34    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                0     1011    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                1       74    2685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         0     7812   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         1      699   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   0     2785   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   1      262   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                0     4043   15989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                1      388   15989
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         0      201     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term         1       13     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   0       48     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                   1        4     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                0       81     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                1        3     350
24 months   ki1000108-IRC              INDIA                          Full or late term         0      233     390
24 months   ki1000108-IRC              INDIA                          Full or late term         1       17     390
24 months   ki1000108-IRC              INDIA                          Preterm                   0       35     390
24 months   ki1000108-IRC              INDIA                          Preterm                   1        7     390
24 months   ki1000108-IRC              INDIA                          Early term                0       92     390
24 months   ki1000108-IRC              INDIA                          Early term                1        6     390
24 months   ki1000109-EE               PAKISTAN                       Full or late term         0        5     168
24 months   ki1000109-EE               PAKISTAN                       Full or late term         1        2     168
24 months   ki1000109-EE               PAKISTAN                       Preterm                   0      106     168
24 months   ki1000109-EE               PAKISTAN                       Preterm                   1       26     168
24 months   ki1000109-EE               PAKISTAN                       Early term                0       27     168
24 months   ki1000109-EE               PAKISTAN                       Early term                1        2     168
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         0       76     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term         1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   0      187     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                   1       21     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                0      206     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                1       21     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term         1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                   1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term         0      496    1157
24 months   ki1101329-Keneba           GAMBIA                         Full or late term         1       62    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                   0      145    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                   1       23    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term                0      393    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term                1       38    1157
24 months   ki1119695-PROBIT           BELARUS                        Full or late term         0     1974    3972
24 months   ki1119695-PROBIT           BELARUS                        Full or late term         1       17    3972
24 months   ki1119695-PROBIT           BELARUS                        Preterm                   0      134    3972
24 months   ki1119695-PROBIT           BELARUS                        Preterm                   1        2    3972
24 months   ki1119695-PROBIT           BELARUS                        Early term                0     1820    3972
24 months   ki1119695-PROBIT           BELARUS                        Early term                1       25    3972
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term         0      365     667
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term         1       12     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                   0      101     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                   1        8     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                0      176     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                1        5     667
24 months   ki1135781-COHORTS          INDIA                          Full or late term         0      513    1298
24 months   ki1135781-COHORTS          INDIA                          Full or late term         1       46    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                   0      279    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                   1       24    1298
24 months   ki1135781-COHORTS          INDIA                          Early term                0      393    1298
24 months   ki1135781-COHORTS          INDIA                          Early term                1       43    1298
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term         0      882    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term         1       57    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                   0      483    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                   1       34    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                0      897    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                1       75    2428
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         0     3419    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term         1      890    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   0     1220    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                   1      378    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                0     1769    8173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                1      497    8173


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/3d54cac6-e477-43c3-82d1-2f9a3be6da90/b72f76ac-a7d1-46b6-af6d-263174dad4ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3d54cac6-e477-43c3-82d1-2f9a3be6da90/b72f76ac-a7d1-46b6-af6d-263174dad4ce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3d54cac6-e477-43c3-82d1-2f9a3be6da90/b72f76ac-a7d1-46b6-af6d-263174dad4ce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3d54cac6-e477-43c3-82d1-2f9a3be6da90/b72f76ac-a7d1-46b6-af6d-263174dad4ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                0.2320264   0.1743673   0.2896856
Birth       ki1000108-IRC              INDIA                          Preterm              NA                0.4082223   0.2217492   0.5946954
Birth       ki1000108-IRC              INDIA                          Early term           NA                0.2939235   0.1927454   0.3951016
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1196477   0.0685155   0.1707799
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.3675302   0.3063558   0.4287046
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.2119516   0.1658357   0.2580675
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.2561032   0.2238615   0.2883449
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                0.2128809   0.1562547   0.2695071
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                0.2421772   0.2051485   0.2792059
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.1965226   0.1308257   0.2622196
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                0.2017106   0.0968838   0.3065373
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                0.2156369   0.1440847   0.2871891
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.2580864   0.2103188   0.3058540
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.2951473   0.1915184   0.3987763
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.2370437   0.1729247   0.3011626
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1637410   0.1328930   0.1945889
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                0.2096148   0.1596345   0.2595951
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                0.1728276   0.1363264   0.2093289
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1245303   0.1054968   0.1435638
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.1948531   0.1627141   0.2269920
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.1673665   0.1458049   0.1889280
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1034293   0.0966135   0.1102451
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1304447   0.1177031   0.1431863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1115761   0.1022260   0.1209262
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1367925   0.0904694   0.1831155
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290941   0.2062000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.0843373   0.0244665   0.1442082
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.1041785   0.0660729   0.1422842
6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.2361086   0.1063617   0.3658556
6 months    ki1000108-IRC              INDIA                          Early term           NA                0.1767912   0.0994992   0.2540833
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0438247   0.0320555   0.0555938
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0585003   0.0313001   0.0857005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0376527   0.0198437   0.0554618
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0647401   0.0457981   0.0836822
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0512087   0.0204261   0.0819914
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0423825   0.0246180   0.0601471
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0079940   0.0052977   0.0106903
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0108893   0.0041766   0.0176019
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0083322   0.0061259   0.0105385
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1131495   0.0870276   0.1392714
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.1127991   0.0772969   0.1483013
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.1372233   0.1054853   0.1689613
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0492300   0.0359937   0.0624662
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0594832   0.0400168   0.0789496
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0685656   0.0535537   0.0835775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0823802   0.0758990   0.0888615
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0846620   0.0738731   0.0954509
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0874799   0.0784481   0.0965116
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.0680000   0.0367537   0.0992463
24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1666667   0.0538133   0.2795201
24 months   ki1000108-IRC              INDIA                          Early term           NA                0.0612245   0.0136980   0.1087510
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1096129   0.0835059   0.1357198
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1380354   0.0851639   0.1909068
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0871565   0.0604654   0.1138475
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0318302   0.0140966   0.0495639
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0733945   0.0244008   0.1223881
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0276243   0.0037298   0.0515188
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0804911   0.0577402   0.1032420
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0816129   0.0510266   0.1121991
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.0991860   0.0712897   0.1270823
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0607919   0.0454392   0.0761445
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0649799   0.0438585   0.0861013
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0776244   0.0608135   0.0944352
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2064667   0.1920958   0.2208376
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.2365970   0.2144954   0.2586986
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2195049   0.2011013   0.2379084


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2652439   0.2173954   0.3130924
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.2453092   0.2230705   0.2675480
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2087491   0.1435025   0.2739957
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2552448   0.2194833   0.2910062
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1765663   0.1552399   0.1978927
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1555324   0.1422803   0.1687844
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1101917   0.1049992   0.1153842
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1213873   0.0869266   0.1558480
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1365979   0.1023826   0.1708133
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0446898   0.0354016   0.0539780
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0553130   0.0432217   0.0674042
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0082498   0.0066007   0.0098989
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1211890   0.1035235   0.1388545
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0592179   0.0502884   0.0681474
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0843705   0.0794524   0.0892887
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0769231   0.0504429   0.1034032
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1063094   0.0885410   0.1240778
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0374813   0.0230560   0.0519065
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0870570   0.0717143   0.1023997
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0683690   0.0583283   0.0784097
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2159550   0.2060514   0.2258585


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term    1.7593786   1.0450105   2.962088
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term    1.2667673   0.8284438   1.937004
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    3.0717692   1.9415506   4.859913
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.7714634   1.0961967   2.862700
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.8312309   0.6193513   1.115594
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9456236   0.7757973   1.152626
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0263988   0.6563714   1.605028
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0972624   0.8783555   1.370726
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.1435989   0.7688108   1.701093
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.9184663   0.6617279   1.274814
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.2801608   0.9452088   1.733809
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0554940   0.7951450   1.401087
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.5647045   1.2499783   1.958674
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.3439822   1.1007677   1.640935
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.2611967   1.1190077   1.421453
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0787668   0.9721102   1.197125
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.8600406   0.3767610   1.963234
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.6165351   0.2807839   1.353765
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    2.2663841   1.1706076   4.387890
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.6970023   0.9590247   3.002860
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3348720   0.7801968   2.283889
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8591675   0.4986803   1.480245
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.7909887   0.4053359   1.543567
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.6546557   0.3925864   1.091668
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.3621824   0.7434005   2.496018
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0423032   0.6562126   1.655555
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.9969033   0.6748345   1.472681
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2127608   0.8755473   1.679851
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.2082722   0.7913186   1.844923
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.3927621   0.9849783   1.969369
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0276981   0.8878621   1.189558
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0619041   0.9356664   1.205173
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    2.4509804   1.0813122   5.555569
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    0.9003601   0.3653015   2.219121
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.2592992   0.8024218   1.976310
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.7951301   0.5398378   1.171151
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.3058104   0.9665200   5.500933
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.8678637   0.3101816   2.428214
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.0139369   0.6342361   1.620955
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2322609   0.8280753   1.833730
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0688913   0.7083334   1.612981
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2768872   0.9155418   1.780848
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1459332   1.0203693   1.286949
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0631493   0.9515061   1.187892


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.0332175   -0.0042489   0.0706838
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.1236337    0.0740527   0.1732148
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0107939   -0.0334864   0.0118985
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0122265   -0.0126780   0.0371310
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0028416   -0.0343240   0.0286407
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0128253   -0.0106242   0.0362749
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0310021    0.0151716   0.0468326
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0067624    0.0023372   0.0111876
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0154052   -0.0419343   0.0111240
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0324194    0.0047289   0.0601099
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0008651   -0.0065776   0.0083079
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0094272   -0.0221697   0.0033153
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0002558   -0.0015017   0.0020133
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0080395   -0.0118669   0.0279459
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0099879   -0.0009635   0.0209394
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0019903   -0.0023469   0.0063275
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0089231   -0.0117124   0.0295586
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0033034   -0.0217232   0.0151163
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0056510   -0.0072744   0.0185765
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0065659   -0.0108851   0.0240170
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0075772   -0.0048746   0.0200289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0094883   -0.0001973   0.0191739


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.1252337   -0.0274550   0.2552315
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.5081922    0.2665126   0.6702398
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0440013   -0.1406932   0.0444944
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0585702   -0.0666151   0.1690629
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0111330   -0.1423152   0.1049843
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0726375   -0.0699485   0.1962219
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1993289    0.0921308   0.2938694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0613695    0.0202358   0.1007762
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1269093   -0.3655987   0.0700603
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.2373344    0.0137227   0.4102482
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0193589   -0.1621110   0.1724914
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1704336   -0.4212939   0.0361495
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0310037   -0.2093196   0.2235685
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0663387   -0.1131687   0.2168991
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1686640   -0.0366590   0.3333203
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0235898   -0.0291797   0.0736536
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1160000   -0.1939710   0.3454983
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0310738   -0.2195914   0.1283037
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1507692   -0.2677534   0.4311253
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0754212   -0.1482821   0.2555437
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1108272   -0.0905724   0.2750337
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0439365   -0.0021905   0.0879404
