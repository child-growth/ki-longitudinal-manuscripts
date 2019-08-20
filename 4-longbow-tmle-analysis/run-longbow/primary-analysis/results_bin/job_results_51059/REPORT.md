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

agecat      studyid                    country                        gagebrth             stunted   n_cell       n
----------  -------------------------  -----------------------------  ------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0       47      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1       10      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0        8      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       19      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        4      90
Birth       ki1000108-IRC              INDIA                          Full or late term          0      211     369
Birth       ki1000108-IRC              INDIA                          Full or late term          1       27     369
Birth       ki1000108-IRC              INDIA                          Preterm                    0       27     369
Birth       ki1000108-IRC              INDIA                          Preterm                    1        9     369
Birth       ki1000108-IRC              INDIA                          Early term                 0       87     369
Birth       ki1000108-IRC              INDIA                          Early term                 1        8     369
Birth       ki1000109-EE               PAKISTAN                       Full or late term          0        0       2
Birth       ki1000109-EE               PAKISTAN                       Full or late term          1        0       2
Birth       ki1000109-EE               PAKISTAN                       Preterm                    0        0       2
Birth       ki1000109-EE               PAKISTAN                       Preterm                    1        1       2
Birth       ki1000109-EE               PAKISTAN                       Early term                 0        1       2
Birth       ki1000109-EE               PAKISTAN                       Early term                 1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0        1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0      128     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1       43     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       12     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                 1        3     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0        3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0       14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1        1      27
Birth       ki1101329-Keneba           GAMBIA                         Full or late term          0      712    1515
Birth       ki1101329-Keneba           GAMBIA                         Full or late term          1       22    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                    0      200    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                    1       35    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term                 0      521    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term                 1       25    1515
Birth       ki1119695-PROBIT           BELARUS                        Full or late term          0     7090   13884
Birth       ki1119695-PROBIT           BELARUS                        Full or late term          1        5   13884
Birth       ki1119695-PROBIT           BELARUS                        Preterm                    0      458   13884
Birth       ki1119695-PROBIT           BELARUS                        Preterm                    1       14   13884
Birth       ki1119695-PROBIT           BELARUS                        Early term                 0     6303   13884
Birth       ki1119695-PROBIT           BELARUS                        Early term                 1       14   13884
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     7432   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1     2110   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     1807   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1     1967   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     3286   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1     1832   18434
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
6 months    ki1000109-EE               PAKISTAN                       Full or late term          0       16     372
6 months    ki1000109-EE               PAKISTAN                       Full or late term          1        9     372
6 months    ki1000109-EE               PAKISTAN                       Preterm                    0      105     372
6 months    ki1000109-EE               PAKISTAN                       Preterm                    1      134     372
6 months    ki1000109-EE               PAKISTAN                       Early term                 0       58     372
6 months    ki1000109-EE               PAKISTAN                       Early term                 1       50     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0       24    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        1    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0      854    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1      356    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       72    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                 1       20    1327
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     5204   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1     1406   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     1550   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1      851   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     2503   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      968   12482
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0       70     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1      144     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       13     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1       39     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       18     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1       66     350
24 months   ki1000108-IRC              INDIA                          Full or late term          0      154     390
24 months   ki1000108-IRC              INDIA                          Full or late term          1       96     390
24 months   ki1000108-IRC              INDIA                          Preterm                    0       19     390
24 months   ki1000108-IRC              INDIA                          Preterm                    1       23     390
24 months   ki1000108-IRC              INDIA                          Early term                 0       55     390
24 months   ki1000108-IRC              INDIA                          Early term                 1       43     390
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
24 months   ki1101329-Keneba           GAMBIA                         Full or late term          0      375    1156
24 months   ki1101329-Keneba           GAMBIA                         Full or late term          1      182    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                    0       97    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                    1       70    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term                 0      300    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term                 1      132    1156
24 months   ki1119695-PROBIT           BELARUS                        Full or late term          0     1850    4035
24 months   ki1119695-PROBIT           BELARUS                        Full or late term          1      174    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                    0      123    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                    1       14    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term                 0     1718    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term                 1      156    4035
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          0       85     663
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          1      290     663
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    0       21     663
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    1       87     663
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 0       30     663
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 1      150     663
24 months   ki1135781-COHORTS          INDIA                          Full or late term          0      316    1308
24 months   ki1135781-COHORTS          INDIA                          Full or late term          1      249    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                    0      153    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                    1      152    1308
24 months   ki1135781-COHORTS          INDIA                          Early term                 0      240    1308
24 months   ki1135781-COHORTS          INDIA                          Early term                 1      198    1308
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          0      389    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          1      549    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      173    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    1      340    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 0      365    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 1      608    2424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     1793    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1     1608    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0      558    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1      738    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0      892    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      904    6493


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
![](/tmp/29a17453-7990-4f0b-b75b-53fb5760ac2f/4812ee03-b4a7-44c7-bab2-ca3506d49431/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/29a17453-7990-4f0b-b75b-53fb5760ac2f/4812ee03-b4a7-44c7-bab2-ca3506d49431/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/29a17453-7990-4f0b-b75b-53fb5760ac2f/4812ee03-b4a7-44c7-bab2-ca3506d49431/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/29a17453-7990-4f0b-b75b-53fb5760ac2f/4812ee03-b4a7-44c7-bab2-ca3506d49431/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                0.1134454    0.0730999   0.1537909
Birth       ki1000108-IRC              INDIA                          Preterm              NA                0.2500000    0.1083597   0.3916403
Birth       ki1000108-IRC              INDIA                          Early term           NA                0.0842105    0.0282919   0.1401292
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0307898    0.0182376   0.0433421
Birth       ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1434325    0.0986015   0.1882635
Birth       ki1101329-Keneba           GAMBIA                         Early term           NA                0.0456735    0.0281389   0.0632082
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0007047   -0.0002052   0.0016147
Birth       ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0296610   -0.0004536   0.0597756
Birth       ki1119695-PROBIT           BELARUS                        Early term           NA                0.0022162    0.0011584   0.0032741
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0328355    0.0137167   0.0519542
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1374987    0.0680094   0.2069880
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0620057    0.0267826   0.0972289
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0601489    0.0407128   0.0795851
Birth       ki1135781-COHORTS          INDIA                          Preterm              NA                0.1493562    0.1075548   0.1911576
Birth       ki1135781-COHORTS          INDIA                          Early term           NA                0.1068224    0.0778226   0.1358223
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0313146    0.0213624   0.0412668
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.1336785    0.1072897   0.1600672
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0504257    0.0380897   0.0627618
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2194984    0.2098713   0.2291255
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.5260520    0.5085373   0.5435668
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.3606507    0.3457636   0.3755379
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2615657    0.2024471   0.3206843
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4702333    0.3372797   0.6031869
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2937283    0.1959441   0.3915124
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.2071141    0.1567458   0.2574823
6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.4362776    0.2767564   0.5957989
6 months    ki1000108-IRC              INDIA                          Early term           NA                0.2181591    0.1348577   0.3014605
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                0.3600000    0.1715900   0.5484100
6 months    ki1000109-EE               PAKISTAN                       Preterm              NA                0.5606695    0.4976633   0.6236756
6 months    ki1000109-EE               PAKISTAN                       Early term           NA                0.4629630    0.3687966   0.5571294
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1413352    0.0863908   0.1962795
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.2832938    0.2273580   0.3392297
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1853809    0.1416054   0.2291563
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0839010    0.0680009   0.0998011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1353665    0.0964196   0.1743134
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1000242    0.0721822   0.1278662
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1104840    0.0865498   0.1344182
6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.2275338    0.1714907   0.2835769
6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.1188325    0.0910179   0.1466471
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0554108    0.0416489   0.0691727
6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.1368935    0.1007479   0.1730391
6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0649494    0.0482431   0.0816557
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.3377208    0.2906417   0.3847999
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.5532102    0.4612792   0.6451413
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.5045411    0.4357953   0.5732869
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1583723    0.1282506   0.1884940
6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.2253782    0.1776147   0.2731418
6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.1436770    0.1110279   0.1763260
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1683518    0.1455302   0.1911734
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.3002082    0.2629676   0.3374489
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2055637    0.1816122   0.2295151
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2145261    0.2033467   0.2257056
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.3504131    0.3301486   0.3706776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2782126    0.2615301   0.2948951
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6728583    0.6097708   0.7359459
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7485104    0.6283060   0.8687148
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.7894106    0.7002124   0.8786088
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.3846995    0.3242344   0.4451645
24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.5425898    0.3850559   0.7001237
24 months   ki1000108-IRC              INDIA                          Early term           NA                0.4435329    0.3433936   0.5436722
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1626376    0.0778938   0.2473815
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.3130258    0.2493386   0.3767131
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.2389614    0.1827757   0.2951470
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3219835    0.2831304   0.3608366
24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4253100    0.3509205   0.4996995
24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3092938    0.2661031   0.3524844
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0846233    0.0544646   0.1147820
24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.1201475    0.0393501   0.2009449
24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0840633    0.0481246   0.1200019
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.7689568    0.7264577   0.8114559
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.8025025    0.7275189   0.8774861
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.8352550    0.7804197   0.8900903
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.4389311    0.3985559   0.4793064
24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.5010181    0.4456711   0.5563651
24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.4501938    0.4041762   0.4962113
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.5784140    0.5473089   0.6095190
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6615462    0.6213175   0.7017749
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.6272291    0.5971856   0.6572726
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.4734616    0.4535275   0.4933958
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.5698511    0.5387676   0.6009346
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.5021820    0.4770492   0.5273148


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1192412   0.0861307   0.1523517
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0541254   0.0427281   0.0655227
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.0023768   0.0010945   0.0036592
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0567261   0.0384591   0.0749931
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0959010   0.0798450   0.1119570
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0611772   0.0526341   0.0697204
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3205490   0.3127517   0.3283463
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2910663   0.2432023   0.3389303
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2371134   0.1947393   0.2794875
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0956385   0.0824215   0.1088554
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1317322   0.1138432   0.1496212
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4193548   0.3831093   0.4556004
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1692073   0.1489117   0.1895030
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2113882   0.1959475   0.2268289
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2583721   0.2489533   0.2677908
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7114286   0.6638920   0.7589651
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4153846   0.3664142   0.4643550
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3321799   0.3050172   0.3593427
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7948718   0.7641122   0.8256314
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4579511   0.4309402   0.4849620
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6175743   0.5982239   0.6369246
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5005390   0.4858066   0.5152715


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level         estimate    ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ------------------  -----------  ----------  -----------
Birth       ki1000108-IRC              INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1000108-IRC              INDIA                          Preterm              Full or late term     2.2037037   1.1288592     4.301963
Birth       ki1000108-IRC              INDIA                          Early term           Full or late term     0.7423002   0.3494922     1.576600
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     4.6584362   2.7876039     7.784832
Birth       ki1101329-Keneba           GAMBIA                         Early term           Full or late term     1.4833965   0.8471009     2.597642
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    42.0889831   7.7901583   227.400064
Birth       ki1119695-PROBIT           BELARUS                        Early term           Full or late term     3.1448472   0.7336051    13.481455
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     4.1875073   1.9368178     9.053623
Birth       ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     1.8883768   0.8371722     4.259539
Birth       ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1135781-COHORTS          INDIA                          Preterm              Full or late term     2.4831063   1.6200133     3.806029
Birth       ki1135781-COHORTS          INDIA                          Early term           Full or late term     1.7759651   1.1646456     2.708165
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     4.2688885   2.9369519     6.204871
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term     1.6102950   1.0783708     2.404600
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     2.3966099   2.2670715     2.533550
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     1.6430677   1.5495049     1.742280
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     1.7977638   1.2518795     2.581682
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     1.1229618   0.7511356     1.678849
6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term     2.1064607   1.3562323     3.271694
6 months    ki1000108-IRC              INDIA                          Early term           Full or late term     1.0533284   0.6684560     1.659796
6 months    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1000109-EE               PAKISTAN                       Preterm              Full or late term     1.5574152   0.9118659     2.659977
6 months    ki1000109-EE               PAKISTAN                       Early term           Full or late term     1.2860082   0.7334813     2.254750
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     2.0044113   1.2965605     3.098710
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     1.3116400   0.8320446     2.067677
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term     1.6134074   1.1436696     2.276080
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term     1.1921696   0.8514842     1.669166
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     2.0594267   1.4846683     2.856691
6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term     1.0755626   0.7824848     1.478412
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     2.4705200   1.7128078     3.563429
6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term     1.1721435   0.9838333     1.396497
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     1.6380697   1.3185956     2.034947
6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     1.4939592   1.2289551     1.816107
6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term     1.4230910   1.0704679     1.891872
6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term     0.9072099   0.6744960     1.220215
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     1.7832198   1.4845047     2.142043
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term     1.2210364   1.0214755     1.459585
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     1.6334284   1.5176947     1.757988
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     1.2968704   1.2050200     1.395722
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term     1.1124339   0.9235221     1.339989
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term     1.1732196   1.0127583     1.359104
24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term     1.4104251   1.0133434     1.963104
24 months   ki1000108-IRC              INDIA                          Early term           Full or late term     1.1529335   0.8754352     1.518394
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term     1.9246825   1.1000171     3.367587
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term     1.4692870   0.8288682     2.604520
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term     1.3209062   1.0686572     1.632697
24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term     0.9605889   0.7996146     1.153970
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term     1.4197913   0.7299966     2.761393
24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term     0.9933814   0.6990341     1.411672
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term     1.0436249   0.9363821     1.163150
24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term     1.0862184   0.9969492     1.183481
24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term     1.1414504   0.9897776     1.316366
24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term     1.0256592   0.8950208     1.175366
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term     1.1437245   1.0551181     1.239772
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term     1.0843948   1.0097799     1.164523
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term     1.0000000   1.0000000     1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term     1.2035845   1.1238575     1.288967
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term     1.0606604   0.9967511     1.128667


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                0.0057958   -0.0191902   0.0307818
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0233356    0.0115986   0.0350725
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0016721    0.0003118   0.0030325
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0238906    0.0064933   0.0412879
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0357521    0.0183883   0.0531159
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0298627    0.0200773   0.0396480
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1010506    0.0935477   0.1085535
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0295006   -0.0094356   0.0684368
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.0299993   -0.0035044   0.0635031
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                0.1588172   -0.0236984   0.3413328
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0684550    0.0171879   0.1197221
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0117375    0.0008754   0.0225995
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0212481    0.0029754   0.0395208
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0072756    0.0017833   0.0127679
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0816340    0.0481978   0.1150703
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0108350   -0.0122990   0.0339690
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0430364    0.0241347   0.0619381
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0438459    0.0362523   0.0514395
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0385702    0.0012536   0.0758868
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.0306851   -0.0065709   0.0679412
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0941717    0.0135198   0.1748236
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0101964   -0.0176515   0.0380444
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0006307   -0.0142449   0.0155062
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0259150   -0.0008397   0.0526697
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0190199   -0.0112465   0.0492864
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0391603    0.0151981   0.0631225
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0270774    0.0142683   0.0398864


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Full or late term    NA                0.0486058   -0.1854004   0.2364176
Birth       ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.4311389    0.1948169   0.5981001
Birth       ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.7035044   -0.0450402   0.9158792
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.4211578    0.0651057   0.6416084
Birth       ki1135781-COHORTS          INDIA                          Full or late term    NA                0.3728018    0.1759171   0.5226481
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.4881334    0.3199794   0.6147067
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.3152423    0.2917895   0.3379184
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1013536   -0.0424724   0.2253364
6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.1265189   -0.0254038   0.2559329
6 months    ki1000109-EE               PAKISTAN                       Full or late term    NA                0.3061140   -0.1531003   0.5824493
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.3263023    0.0363303   0.5290206
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1227273    0.0027172   0.2282957
6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1612979    0.0116245   0.2883057
6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.1160631    0.0258410   0.1979293
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1946658    0.1105431   0.2708323
6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0640338   -0.0830493   0.1911423
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2035893    0.1097122   0.2875675
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1697007    0.1400696   0.1983107
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0542152   -0.0002036   0.1056732
24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.0738717   -0.0204291   0.1594578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.3666989   -0.0365403   0.6130683
24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0306956   -0.0569048   0.1110352
24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0073977   -0.1826879   0.1669321
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0326027   -0.0017875   0.0658123
24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0415327   -0.0269140   0.1054173
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0634099    0.0236993   0.1015052
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0540965    0.0280356   0.0794586
