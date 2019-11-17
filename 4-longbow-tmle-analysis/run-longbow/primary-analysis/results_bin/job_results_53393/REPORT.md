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

**Outcome Variable:** stunted

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
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth             stunted   n_cell       n
----------  -------------------------  -----------------------------  ------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0       48      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1       10      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0        8      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        3      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       19      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        4      92
Birth       ki1000108-IRC              INDIA                          Full or late term          0      211     369
Birth       ki1000108-IRC              INDIA                          Full or late term          1       27     369
Birth       ki1000108-IRC              INDIA                          Preterm                    0       27     369
Birth       ki1000108-IRC              INDIA                          Preterm                    1        9     369
Birth       ki1000108-IRC              INDIA                          Early term                 0       87     369
Birth       ki1000108-IRC              INDIA                          Early term                 1        8     369
Birth       ki1000109-EE               PAKISTAN                       Full or late term          0        6     240
Birth       ki1000109-EE               PAKISTAN                       Full or late term          1        5     240
Birth       ki1000109-EE               PAKISTAN                       Preterm                    0      108     240
Birth       ki1000109-EE               PAKISTAN                       Preterm                    1       74     240
Birth       ki1000109-EE               PAKISTAN                       Early term                 0       26     240
Birth       ki1000109-EE               PAKISTAN                       Early term                 1       21     240
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0      150     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1       12     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      193     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1       64     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      288     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1       25     732
Birth       ki1101329-Keneba           GAMBIA                         Full or late term          0      712    1515
Birth       ki1101329-Keneba           GAMBIA                         Full or late term          1       22    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                    0      200    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                    1       35    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term                 0      521    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term                 1       25    1515
Birth       ki1119695-PROBIT           BELARUS                        Full or late term          0     7093   13890
Birth       ki1119695-PROBIT           BELARUS                        Full or late term          1        5   13890
Birth       ki1119695-PROBIT           BELARUS                        Preterm                    0      458   13890
Birth       ki1119695-PROBIT           BELARUS                        Preterm                    1       14   13890
Birth       ki1119695-PROBIT           BELARUS                        Early term                 0     6306   13890
Birth       ki1119695-PROBIT           BELARUS                        Early term                 1       14   13890
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term          0      330     617
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term          1       11     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                    0       82     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                    1       13     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                 0      170     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                 1       11     617
Birth       ki1135781-COHORTS          INDIA                          Full or late term          0      536    1293
Birth       ki1135781-COHORTS          INDIA                          Full or late term          1       34    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                    0      242    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                    1       43    1293
Birth       ki1135781-COHORTS          INDIA                          Early term                 0      391    1293
Birth       ki1135781-COHORTS          INDIA                          Early term                 1       47    1293
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term          0     1128    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term          1       36    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      561    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                    1       88    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                 0     1150    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                 1       61    3024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     8478   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1     2466   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     2065   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1     2449   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     3790   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1     2194   21442
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      157     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1       55     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       29     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1       23     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       60     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1       23     347
6 months    ki1000108-IRC              INDIA                          Full or late term          0      198     388
6 months    ki1000108-IRC              INDIA                          Full or late term          1       51     388
6 months    ki1000108-IRC              INDIA                          Preterm                    0       23     388
6 months    ki1000108-IRC              INDIA                          Preterm                    1       19     388
6 months    ki1000108-IRC              INDIA                          Early term                 0       75     388
6 months    ki1000108-IRC              INDIA                          Early term                 1       22     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term          0       13     373
6 months    ki1000109-EE               PAKISTAN                       Full or late term          1        4     373
6 months    ki1000109-EE               PAKISTAN                       Preterm                    0      141     373
6 months    ki1000109-EE               PAKISTAN                       Preterm                    1      156     373
6 months    ki1000109-EE               PAKISTAN                       Early term                 0       36     373
6 months    ki1000109-EE               PAKISTAN                       Early term                 1       23     373
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0      134     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1       21     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      180     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1       71     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1       58     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1070    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       97    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      252    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1       39    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      399    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1       46    1903
6 months    ki1101329-Keneba           GAMBIA                         Full or late term          0      583    1374
6 months    ki1101329-Keneba           GAMBIA                         Full or late term          1       75    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                    0      160    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                    1       47    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                 0      450    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                 1       59    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term          0     7570   15761
6 months    ki1119695-PROBIT           BELARUS                        Full or late term          1      438   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                    0      482   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                    1       69   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term                 0     6721   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term                 1      481   15761
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          0      258     713
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          1      131     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    0       50     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    1       63     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 0      106     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 1      105     713
6 months    ki1135781-COHORTS          INDIA                          Full or late term          0      478    1312
6 months    ki1135781-COHORTS          INDIA                          Full or late term          1       90    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                    0      231    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                    1       68    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                 0      381    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                 1       64    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          0      855    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          1      173    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      401    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    1      172    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 0      863    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 1      223    2687
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     6770   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1     1757   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     1946   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1     1099   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     3246   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1     1192   16010
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0       69     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1      144     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       13     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1       39     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       18     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1       66     349
24 months   ki1000108-IRC              INDIA                          Full or late term          0      152     390
24 months   ki1000108-IRC              INDIA                          Full or late term          1       98     390
24 months   ki1000108-IRC              INDIA                          Preterm                    0       19     390
24 months   ki1000108-IRC              INDIA                          Preterm                    1       23     390
24 months   ki1000108-IRC              INDIA                          Early term                 0       55     390
24 months   ki1000108-IRC              INDIA                          Early term                 1       43     390
24 months   ki1000109-EE               PAKISTAN                       Full or late term          0        1     167
24 months   ki1000109-EE               PAKISTAN                       Full or late term          1        6     167
24 months   ki1000109-EE               PAKISTAN                       Preterm                    0       35     167
24 months   ki1000109-EE               PAKISTAN                       Preterm                    1       96     167
24 months   ki1000109-EE               PAKISTAN                       Early term                 0       13     167
24 months   ki1000109-EE               PAKISTAN                       Early term                 1       16     167
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0       66     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1       13     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      143     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1       65     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      173     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1       54     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term          0      373    1156
24 months   ki1101329-Keneba           GAMBIA                         Full or late term          1      184    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                    0       95    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                    1       72    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term                 0      300    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term                 1      132    1156
24 months   ki1119695-PROBIT           BELARUS                        Full or late term          0     1850    4035
24 months   ki1119695-PROBIT           BELARUS                        Full or late term          1      174    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                    0      123    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                    1       14    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term                 0     1718    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term                 1      156    4035
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          0       76     661
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          1      299     661
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    0       19     661
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    1       88     661
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 0       24     661
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 1      155     661
24 months   ki1135781-COHORTS          INDIA                          Full or late term          0      278    1308
24 months   ki1135781-COHORTS          INDIA                          Full or late term          1      287    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                    0      138    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                    1      167    1308
24 months   ki1135781-COHORTS          INDIA                          Early term                 0      196    1308
24 months   ki1135781-COHORTS          INDIA                          Early term                 1      242    1308
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          0      384    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          1      554    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      173    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    1      340    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 0      355    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 1      618    2424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     2338    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1     1989    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0      686    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1      918    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     1150    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1     1121    8202


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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/2f0d18b3-d3e5-4107-ad71-bc4f2dc5cc38/2b3435d9-2324-422e-a6d7-7596bee36b5d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2f0d18b3-d3e5-4107-ad71-bc4f2dc5cc38/2b3435d9-2324-422e-a6d7-7596bee36b5d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2f0d18b3-d3e5-4107-ad71-bc4f2dc5cc38/2b3435d9-2324-422e-a6d7-7596bee36b5d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2f0d18b3-d3e5-4107-ad71-bc4f2dc5cc38/2b3435d9-2324-422e-a6d7-7596bee36b5d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                0.1134454    0.0730999   0.1537909
Birth       ki1000108-IRC              INDIA                          Preterm              NA                0.2500000    0.1083597   0.3916403
Birth       ki1000108-IRC              INDIA                          Early term           NA                0.0842105    0.0282919   0.1401292
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                0.4545455    0.1596783   0.7494126
Birth       ki1000109-EE               PAKISTAN                       Preterm              NA                0.4065934    0.3350820   0.4781048
Birth       ki1000109-EE               PAKISTAN                       Early term           NA                0.4468085    0.3043776   0.5892394
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0764226    0.0352322   0.1176131
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.2456257    0.1926094   0.2986421
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0800882    0.0499024   0.1102741
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0304694    0.0180830   0.0428559
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1460056    0.1010761   0.1909351
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                0.0460020    0.0285129   0.0634910
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0007044   -0.0002055   0.0016144
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0296610   -0.0004610   0.0597831
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                0.0022152    0.0011581   0.0032723
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0322589    0.0132412   0.0512766
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1411206    0.0711919   0.2110494
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0602398    0.0250571   0.0954224
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0603212    0.0408889   0.0797536
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                0.1493788    0.1077308   0.1910267
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                0.1071575    0.0781371   0.1361780
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0317331    0.0218004   0.0416659
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.1330330    0.1068453   0.1592207
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0505932    0.0382401   0.0629464
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2246589    0.2153492   0.2339687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.5449697    0.5285802   0.5613592
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.3676641    0.3538595   0.3814686
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2583652    0.1989140   0.3178164
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4542910    0.3208006   0.5877815
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2707291    0.1714917   0.3699665
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.2082878    0.1575194   0.2590561
6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.4299455    0.2657204   0.5941705
6 months    ki1000108-IRC              INDIA                          Early term           NA                0.2204634    0.1363009   0.3046259
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1371015    0.0822318   0.1919711
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.2797174    0.2238338   0.3356009
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1871471    0.1430211   0.2312731
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0839295    0.0680068   0.0998522
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1322779    0.0937710   0.1707849
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0991617    0.0714366   0.1268867
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1101415    0.0862968   0.1339861
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.2267594    0.1702613   0.2832574
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.1178742    0.0901174   0.1456311
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0555101    0.0416051   0.0694151
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.1343599    0.0993969   0.1693228
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0652015    0.0484227   0.0819803
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.3382856    0.2911833   0.3853879
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.5463371    0.4539653   0.6387089
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.5024905    0.4337625   0.5712185
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1603169    0.1301148   0.1905189
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.2235332    0.1758606   0.2712058
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.1429616    0.1105370   0.1753863
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1685270    0.1457034   0.1913507
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.3017249    0.2643668   0.3390829
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2060520    0.1821316   0.2299725
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2078150    0.1980042   0.2176259
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.3579396    0.3405817   0.3752975
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2668753    0.2525036   0.2812470
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6795218    0.6162994   0.7427441
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7591321    0.6405416   0.8777226
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.7945502    0.7061503   0.8829500
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.3925033    0.3317677   0.4532390
24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.5291950    0.3726300   0.6857600
24 months   ki1000108-IRC              INDIA                          Early term           NA                0.4448277    0.3447303   0.5449252
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1603485    0.0763016   0.2443954
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.3159361    0.2526271   0.3792451
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.2376084    0.1818329   0.2933840
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3262332    0.2871848   0.3652815
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4400031    0.3651808   0.5148254
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3097650    0.2666719   0.3528581
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0843704    0.0536051   0.1151356
24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.1200624    0.0364770   0.2036477
24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0828616    0.0464058   0.1193175
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.7967971    0.7559644   0.8376298
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.8228449    0.7490798   0.8966100
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.8673555    0.8173739   0.9173370
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.5079516    0.4671196   0.5487836
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.5404327    0.4864631   0.5944022
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.5515306    0.5062353   0.5968260
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.5856017    0.5545939   0.6166096
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6620338    0.6219415   0.7021260
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.6389687    0.6090978   0.6688396
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.4618211    0.4438428   0.4797994
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.5715611    0.5457097   0.5974124
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.4914229    0.4684513   0.5143944


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1192412   0.0861307   0.1523517
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                0.4166667   0.3541635   0.4791698
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0541254   0.0427281   0.0655227
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.0023758   0.0010936   0.0036580
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0567261   0.0384591   0.0749931
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0959010   0.0798450   0.1119570
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0611772   0.0526341   0.0697204
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3315456   0.3240495   0.3390416
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2910663   0.2432023   0.3389303
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2371134   0.1947393   0.2794875
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0956385   0.0824215   0.1088554
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1317322   0.1138432   0.1496212
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4193548   0.3831093   0.4556004
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1692073   0.1489117   0.1895030
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2113882   0.1959475   0.2268289
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2528420   0.2446204   0.2610636
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7134670   0.6659628   0.7609713
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4205128   0.3714576   0.4695680
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3356401   0.3084071   0.3628732
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8199697   0.7906576   0.8492819
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5321101   0.5050591   0.5591611
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6237624   0.6044733   0.6430515
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4910997   0.4777434   0.5044561


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level         estimate    ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  -----------  ----------  -----------
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term     2.2037037   1.1288592     4.301963
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term     0.7423002   0.3494922     1.576600
Birth       ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1000109-EE               PAKISTAN                       Preterm              Full or late term     0.8945055   0.4567534     1.751799
Birth       ki1000109-EE               PAKISTAN                       Early term           Full or late term     0.9829787   0.4771297     2.025125
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     3.2140441   1.7982017     5.744672
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     1.0479647   0.5427222     2.023558
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     4.7918699   2.8800173     7.972875
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term     1.5097744   0.8647657     2.635880
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    42.1067797   7.7888005   227.632084
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term     3.1446835   0.7332444    13.486683
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     4.3746269   2.0246505     9.452180
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     1.8673843   0.8143093     4.282309
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term     2.4763881   1.6179635     3.790257
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term     1.7764483   1.1664261     2.705502
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     4.1922416   2.8982393     6.063989
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term     1.5943347   1.0725429     2.369978
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     2.4257646   2.3039122     2.554062
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     1.6365435   1.5500685     1.727843
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     1.7583290   1.2103991     2.554299
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     1.0478544   0.6796305     1.615582
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term     2.0641897   1.3119734     3.247687
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term     1.0584558   0.6719924     1.667175
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     2.0402214   1.3048533     3.190016
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     1.3650263   0.8574006     2.173193
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     1.5760601   1.1137771     2.230218
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     1.1814875   0.8429849     1.655917
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     2.0588012   1.4816555     2.860761
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term     1.0702079   0.7775047     1.473103
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     2.4204592   1.6762104     3.495159
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term     1.1745885   0.9829355     1.403610
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     1.6150173   1.2975562     2.010149
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     1.4854030   1.2218466     1.805810
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term     1.3943211   1.0492837     1.852818
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.8917442   0.6642198     1.197206
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     1.7903649   1.4905728     2.150453
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term     1.2226646   1.0231654     1.461063
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     1.7223951   1.6147419     1.837225
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     1.2841963   1.2027678     1.371138
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     1.1171564   0.9315604     1.339729
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     1.1692785   1.0114267     1.351766
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term     1.3482559   0.9654406     1.882865
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term     1.1333094   0.8625056     1.489138
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     1.9703090   1.1241540     3.453368
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     1.4818250   0.8346248     2.630889
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     1.3487380   1.0961909     1.659468
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.9495202   0.7910137     1.139789
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     1.4230393   0.7179798     2.820470
24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.9821174   0.6774618     1.423777
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     1.0326907   0.9313311     1.145082
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     1.0885525   1.0077616     1.175820
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term     1.0639452   0.9376495     1.207252
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term     1.0857937   0.9695707     1.215948
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     1.1305188   1.0437963     1.224447
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term     1.0911319   1.0174661     1.170131
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     1.2376244   1.1670364     1.312482
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     1.0640980   1.0053548     1.126274


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.0057958   -0.0191902   0.0307818
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0378788   -0.3257731   0.2500156
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0615555    0.0217061   0.1014049
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0236560    0.0120123   0.0352997
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0016714    0.0003113   0.0030314
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0244672    0.0071066   0.0418278
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0355798    0.0182216   0.0529379
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0294441    0.0196765   0.0392118
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.1068866    0.0997454   0.1140278
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0327011   -0.0065918   0.0719940
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0288256   -0.0047326   0.0623839
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0726887    0.0215029   0.1238746
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0117090    0.0008204   0.0225975
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0215907    0.0033451   0.0398364
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0071763    0.0016037   0.0127489
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0810692    0.0476166   0.1145219
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0088905   -0.0143100   0.0320909
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0428611    0.0239440   0.0617782
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0450269    0.0385002   0.0515537
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0339453   -0.0034770   0.0713676
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0280095   -0.0092292   0.0652482
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0964608    0.0165087   0.1764130
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0094070   -0.0185801   0.0373941
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0008836   -0.0142562   0.0160235
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0231726   -0.0021429   0.0484881
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0241585   -0.0059728   0.0542898
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0381607    0.0143196   0.0620017
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0292787    0.0181545   0.0404028


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                 0.0486058   -0.1854004   0.2364176
Birth       ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0909091   -1.0553535   0.4209840
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.4461250    0.0833957   0.6653109
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.4370586    0.2039978   0.6018817
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.7035016   -0.0454955   0.9159142
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.4313217    0.0756707   0.6501301
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.3710052    0.1742825   0.5208598
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.4812918    0.3139208   0.6078322
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.3223890    0.3006732   0.3434304
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.1123493   -0.0332068   0.2373997
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.1215690   -0.0308642   0.2514620
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.3464830    0.0552350   0.5479463
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1224294    0.0020949   0.2282531
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.1638986    0.0145482   0.2906142
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1144794    0.0222905   0.1979758
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1933189    0.1091675   0.2695210
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0525418   -0.0948619   0.1801002
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.2027603    0.1088234   0.2867956
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.1780833    0.1519663   0.2033960
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0475779   -0.0067642   0.0989868
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0666079   -0.0264153   0.1512005
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.3756126   -0.0246847   0.6195321
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0280269   -0.0590721   0.1079629
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0103649   -0.1833706   0.1723830
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0282604   -0.0032433   0.0587748
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0454013   -0.0130294   0.1004617
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0611782    0.0220744   0.0987184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0596185    0.0365154   0.0821677
