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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        gagebrth             sstunted   n_cell       n
----------  -------------------------  -----------------------------  ------------------  ---------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           0       55      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           1        3      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     0       10      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     1        1      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  0       23      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  1        0      92
Birth       ki1000108-IRC              INDIA                          Full or late term           0      228     369
Birth       ki1000108-IRC              INDIA                          Full or late term           1       10     369
Birth       ki1000108-IRC              INDIA                          Preterm                     0       33     369
Birth       ki1000108-IRC              INDIA                          Preterm                     1        3     369
Birth       ki1000108-IRC              INDIA                          Early term                  0       93     369
Birth       ki1000108-IRC              INDIA                          Early term                  1        2     369
Birth       ki1000109-EE               PAKISTAN                       Full or late term           0       11     240
Birth       ki1000109-EE               PAKISTAN                       Full or late term           1        0     240
Birth       ki1000109-EE               PAKISTAN                       Preterm                     0      142     240
Birth       ki1000109-EE               PAKISTAN                       Preterm                     1       40     240
Birth       ki1000109-EE               PAKISTAN                       Early term                  0       39     240
Birth       ki1000109-EE               PAKISTAN                       Early term                  1        8     240
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           0      162     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           1        0     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     0      250     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     1        7     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  0      310     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  1        3     732
Birth       ki1101329-Keneba           GAMBIA                         Full or late term           0      726    1515
Birth       ki1101329-Keneba           GAMBIA                         Full or late term           1        8    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                     0      219    1515
Birth       ki1101329-Keneba           GAMBIA                         Preterm                     1       16    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term                  0      541    1515
Birth       ki1101329-Keneba           GAMBIA                         Early term                  1        5    1515
Birth       ki1119695-PROBIT           BELARUS                        Full or late term           0     7098   13890
Birth       ki1119695-PROBIT           BELARUS                        Full or late term           1        0   13890
Birth       ki1119695-PROBIT           BELARUS                        Preterm                     0      471   13890
Birth       ki1119695-PROBIT           BELARUS                        Preterm                     1        1   13890
Birth       ki1119695-PROBIT           BELARUS                        Early term                  0     6316   13890
Birth       ki1119695-PROBIT           BELARUS                        Early term                  1        4   13890
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term           0      338     617
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term           1        3     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                     0       91     617
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                     1        4     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                  0      179     617
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                  1        2     617
Birth       ki1135781-COHORTS          INDIA                          Full or late term           0      562    1293
Birth       ki1135781-COHORTS          INDIA                          Full or late term           1        8    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                     0      269    1293
Birth       ki1135781-COHORTS          INDIA                          Preterm                     1       16    1293
Birth       ki1135781-COHORTS          INDIA                          Early term                  0      431    1293
Birth       ki1135781-COHORTS          INDIA                          Early term                  1        7    1293
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term           0     1161    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term           1        3    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                     0      618    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                     1       31    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                  0     1199    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                  1       12    3024
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           0    10402   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           1      542   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     0     3299   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     1     1215   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                  0     5384   21442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                  1      600   21442
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           0      190     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           1       22     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     0       42     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     1       10     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  0       77     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  1        6     347
6 months    ki1000108-IRC              INDIA                          Full or late term           0      233     388
6 months    ki1000108-IRC              INDIA                          Full or late term           1       16     388
6 months    ki1000108-IRC              INDIA                          Preterm                     0       34     388
6 months    ki1000108-IRC              INDIA                          Preterm                     1        8     388
6 months    ki1000108-IRC              INDIA                          Early term                  0       93     388
6 months    ki1000108-IRC              INDIA                          Early term                  1        4     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term           0       15     373
6 months    ki1000109-EE               PAKISTAN                       Full or late term           1        2     373
6 months    ki1000109-EE               PAKISTAN                       Preterm                     0      229     373
6 months    ki1000109-EE               PAKISTAN                       Preterm                     1       68     373
6 months    ki1000109-EE               PAKISTAN                       Early term                  0       48     373
6 months    ki1000109-EE               PAKISTAN                       Early term                  1       11     373
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           0      153     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           1        2     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     0      236     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     1       15     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  0      303     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           0     1159    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           1        8    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     0      284    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     1        7    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  0      443    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  1        2    1903
6 months    ki1101329-Keneba           GAMBIA                         Full or late term           0      637    1374
6 months    ki1101329-Keneba           GAMBIA                         Full or late term           1       21    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                     0      197    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                     1       10    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                  0      505    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                  1        4    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term           0     7917   15761
6 months    ki1119695-PROBIT           BELARUS                        Full or late term           1       91   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                     0      533   15761
6 months    ki1119695-PROBIT           BELARUS                        Preterm                     1       18   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term                  0     7068   15761
6 months    ki1119695-PROBIT           BELARUS                        Early term                  1      134   15761
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term           0      356     713
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term           1       33     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                     0       86     713
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                     1       27     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                  0      178     713
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                  1       33     713
6 months    ki1135781-COHORTS          INDIA                          Full or late term           0      556    1312
6 months    ki1135781-COHORTS          INDIA                          Full or late term           1       12    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                     0      285    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                     1       14    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                  0      432    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                  1       13    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term           0      988    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term           1       40    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                     0      530    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                     1       43    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                  0     1038    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                  1       48    2687
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           0     8175   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           1      352   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     0     2688   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     1      357   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                  0     4169   16010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                  1      269   16010
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           0      147     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term           1       66     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     0       31     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                     1       21     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  0       56     349
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                  1       28     349
24 months   ki1000108-IRC              INDIA                          Full or late term           0      230     390
24 months   ki1000108-IRC              INDIA                          Full or late term           1       20     390
24 months   ki1000108-IRC              INDIA                          Preterm                     0       33     390
24 months   ki1000108-IRC              INDIA                          Preterm                     1        9     390
24 months   ki1000108-IRC              INDIA                          Early term                  0       89     390
24 months   ki1000108-IRC              INDIA                          Early term                  1        9     390
24 months   ki1000109-EE               PAKISTAN                       Full or late term           0        5     167
24 months   ki1000109-EE               PAKISTAN                       Full or late term           1        2     167
24 months   ki1000109-EE               PAKISTAN                       Preterm                     0       80     167
24 months   ki1000109-EE               PAKISTAN                       Preterm                     1       51     167
24 months   ki1000109-EE               PAKISTAN                       Early term                  0       23     167
24 months   ki1000109-EE               PAKISTAN                       Early term                  1        6     167
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           0       77     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term           1        2     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     0      188     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                     1       20     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  0      213     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                  1       14     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term           1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                     1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                  1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term           0      510    1156
24 months   ki1101329-Keneba           GAMBIA                         Full or late term           1       47    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                     0      145    1156
24 months   ki1101329-Keneba           GAMBIA                         Preterm                     1       22    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term                  0      408    1156
24 months   ki1101329-Keneba           GAMBIA                         Early term                  1       24    1156
24 months   ki1119695-PROBIT           BELARUS                        Full or late term           0     1994    4035
24 months   ki1119695-PROBIT           BELARUS                        Full or late term           1       30    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                     0      132    4035
24 months   ki1119695-PROBIT           BELARUS                        Preterm                     1        5    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term                  0     1844    4035
24 months   ki1119695-PROBIT           BELARUS                        Early term                  1       30    4035
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term           0      196     661
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term           1      179     661
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                     0       50     661
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                     1       57     661
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                  0       89     661
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                  1       90     661
24 months   ki1135781-COHORTS          INDIA                          Full or late term           0      458    1308
24 months   ki1135781-COHORTS          INDIA                          Full or late term           1      107    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                     0      228    1308
24 months   ki1135781-COHORTS          INDIA                          Preterm                     1       77    1308
24 months   ki1135781-COHORTS          INDIA                          Early term                  0      344    1308
24 months   ki1135781-COHORTS          INDIA                          Early term                  1       94    1308
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term           0      694    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term           1      244    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                     0      343    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                     1      170    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                  0      686    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                  1      287    2424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           0     3733    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term           1      594    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     0     1258    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                     1      346    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                  0     1923    8202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                  1      348    8202


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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/8b506c8c-f2c1-494b-b051-89b528d61b0b/362fbd7a-2dc3-4370-83b7-a4ad549dcc0f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8b506c8c-f2c1-494b-b051-89b528d61b0b/362fbd7a-2dc3-4370-83b7-a4ad549dcc0f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8b506c8c-f2c1-494b-b051-89b528d61b0b/362fbd7a-2dc3-4370-83b7-a4ad549dcc0f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8b506c8c-f2c1-494b-b051-89b528d61b0b/362fbd7a-2dc3-4370-83b7-a4ad549dcc0f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                0.0108992    0.0033854   0.0184130
Birth       ki1101329-Keneba           GAMBIA        Preterm              NA                0.0680851    0.0358691   0.1003011
Birth       ki1101329-Keneba           GAMBIA        Early term           NA                0.0091575    0.0011649   0.0171501
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                0.0140351    0.0043742   0.0236960
Birth       ki1135781-COHORTS          INDIA         Preterm              NA                0.0561404    0.0294051   0.0828756
Birth       ki1135781-COHORTS          INDIA         Early term           NA                0.0159817    0.0042330   0.0277305
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.0495093    0.0451152   0.0539033
Birth       kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.2726050    0.2586555   0.2865545
Birth       kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.1014087    0.0929739   0.1098435
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                0.1037736    0.0626625   0.1448847
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Preterm              NA                0.1923077    0.0850337   0.2995817
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Early term           NA                0.0722892    0.0164963   0.1280820
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                0.0114132    0.0068709   0.0159556
6 months    ki1119695-PROBIT           BELARUS       Preterm              NA                0.0361235    0.0213113   0.0509356
6 months    ki1119695-PROBIT           BELARUS       Early term           NA                0.0188931    0.0115060   0.0262803
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                0.0843391    0.0565601   0.1121181
6 months    ki1135781-COHORTS          GUATEMALA     Preterm              NA                0.2298456    0.1511779   0.3085134
6 months    ki1135781-COHORTS          GUATEMALA     Early term           NA                0.1510325    0.1014698   0.2005953
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                0.0214459    0.0094750   0.0334169
6 months    ki1135781-COHORTS          INDIA         Preterm              NA                0.0478746    0.0241641   0.0715852
6 months    ki1135781-COHORTS          INDIA         Early term           NA                0.0286891    0.0132350   0.0441432
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                0.0393351    0.0275232   0.0511471
6 months    ki1135781-COHORTS          PHILIPPINES   Preterm              NA                0.0736822    0.0522820   0.0950825
6 months    ki1135781-COHORTS          PHILIPPINES   Early term           NA                0.0446971    0.0324824   0.0569118
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.0420362    0.0377778   0.0462946
6 months    kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.1156587    0.1039724   0.1273451
6 months    kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.0599703    0.0524191   0.0675215
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                0.3105021    0.2478831   0.3731210
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Preterm              NA                0.3848029    0.2546904   0.5149155
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Early term           NA                0.3424900    0.2382323   0.4467478
24 months   ki1000108-IRC              INDIA         Full or late term    NA                0.0800000    0.0463276   0.1136724
24 months   ki1000108-IRC              INDIA         Preterm              NA                0.2142857    0.0900319   0.3385396
24 months   ki1000108-IRC              INDIA         Early term           NA                0.0918367    0.0345858   0.1490877
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                0.0836813    0.0605371   0.1068255
24 months   ki1101329-Keneba           GAMBIA        Preterm              NA                0.1318341    0.0824842   0.1811840
24 months   ki1101329-Keneba           GAMBIA        Early term           NA                0.0568580    0.0354124   0.0783037
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                0.0148221    0.0038188   0.0258255
24 months   ki1119695-PROBIT           BELARUS       Preterm              NA                0.0364964   -0.0116126   0.0846053
24 months   ki1119695-PROBIT           BELARUS       Early term           NA                0.0160085   -0.0030877   0.0351047
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                0.4825277    0.4319129   0.5331424
24 months   ki1135781-COHORTS          GUATEMALA     Preterm              NA                0.5097491    0.4126527   0.6068454
24 months   ki1135781-COHORTS          GUATEMALA     Early term           NA                0.5035935    0.4313314   0.5758556
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                0.1887950    0.1572681   0.2203219
24 months   ki1135781-COHORTS          INDIA         Preterm              NA                0.2489340    0.2011917   0.2966763
24 months   ki1135781-COHORTS          INDIA         Early term           NA                0.2147378    0.1765727   0.2529030
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                0.2550375    0.2273247   0.2827503
24 months   ki1135781-COHORTS          PHILIPPINES   Preterm              NA                0.3332497    0.2929300   0.3735694
24 months   ki1135781-COHORTS          PHILIPPINES   Early term           NA                0.2992527    0.2708114   0.3276941
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                0.1378532    0.1263709   0.1493354
24 months   kiGH5241-JiVitA-3          BANGLADESH    Preterm              NA                0.2099472    0.1895860   0.2303084
24 months   kiGH5241-JiVitA-3          BANGLADESH    Early term           NA                0.1535190    0.1370031   0.1700349


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           GAMBIA        NA                   NA                0.0191419   0.0122398   0.0260440
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0239753   0.0156340   0.0323165
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1099244   0.1052719   0.1145770
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1095101   0.0766059   0.1424143
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1304348   0.1056973   0.1551723
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0297256   0.0205326   0.0389187
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487533   0.0406091   0.0568974
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0610868   0.0571240   0.0650496
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3295129   0.2801285   0.3788973
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0974359   0.0679665   0.1269053
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0804498   0.0647640   0.0961357
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0161090   0.0034156   0.0288025
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4931921   0.4550499   0.5313343
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.2125382   0.1903591   0.2347173
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2891914   0.2711388   0.3072440
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1570349   0.1479400   0.1661298


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level        estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ------------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA        Preterm              Full or late term    6.2468085   2.7072028   14.414368
Birth       ki1101329-Keneba           GAMBIA        Early term           Full or late term    0.8402015   0.2762834    2.555125
Birth       ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA         Preterm              Full or late term    4.0000000   1.7320013    9.237869
Birth       ki1135781-COHORTS          INDIA         Early term           Full or late term    1.1386986   0.4159430    3.117338
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    5.5061412   4.9570937    6.116001
Birth       kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    2.0482777   1.8227358    2.301728
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Preterm              Full or late term    1.8531469   0.9349126    3.673234
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Early term           Full or late term    0.6966046   0.2925632    1.658643
6 months    ki1119695-PROBIT           BELARUS       Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS       Preterm              Full or late term    3.1650512   1.8465992    5.424864
6 months    ki1119695-PROBIT           BELARUS       Early term           Full or late term    1.6553679   1.2339320    2.220741
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA     Preterm              Full or late term    2.7252570   1.6943403    4.383432
6 months    ki1135781-COHORTS          GUATEMALA     Early term           Full or late term    1.7907780   1.1246224    2.851522
6 months    ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA         Preterm              Full or late term    2.2323400   1.0598029    4.702140
6 months    ki1135781-COHORTS          INDIA         Early term           Full or late term    1.3377419   0.6159467    2.905370
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Preterm              Full or late term    1.8731933   1.2338270    2.843878
6 months    ki1135781-COHORTS          PHILIPPINES   Early term           Full or late term    1.1363158   0.7573266    1.704963
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    2.7514067   2.4002278    3.153967
6 months    kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    1.4266345   1.2109943    1.680673
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Preterm              Full or late term    1.2392928   0.8352960    1.838685
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Early term           Full or late term    1.1030202   0.7652663    1.589843
24 months   ki1000108-IRC              INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA         Preterm              Full or late term    2.6785714   1.3083567    5.483783
24 months   ki1000108-IRC              INDIA         Early term           Full or late term    1.1479592   0.5410719    2.435555
24 months   ki1101329-Keneba           GAMBIA        Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA        Preterm              Full or late term    1.5754306   0.9914435    2.503402
24 months   ki1101329-Keneba           GAMBIA        Early term           Full or late term    0.6794592   0.4263666    1.082788
24 months   ki1119695-PROBIT           BELARUS       Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS       Preterm              Full or late term    2.4622871   0.5762612   10.521023
24 months   ki1119695-PROBIT           BELARUS       Early term           Full or late term    1.0800427   0.3773256    3.091474
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Preterm              Full or late term    1.0564142   0.8504025    1.312333
24 months   ki1135781-COHORTS          GUATEMALA     Early term           Full or late term    1.0436573   0.8748985    1.244968
24 months   ki1135781-COHORTS          INDIA         Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA         Preterm              Full or late term    1.3185415   1.0254642    1.695380
24 months   ki1135781-COHORTS          INDIA         Early term           Full or late term    1.1374129   0.8941566    1.446847
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Preterm              Full or late term    1.3066694   1.1116158    1.535949
24 months   ki1135781-COHORTS          PHILIPPINES   Early term           Full or late term    1.1733676   1.0167898    1.354057
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Preterm              Full or late term    1.5229773   1.3450647    1.724422
24 months   kiGH5241-JiVitA-3          BANGLADESH    Early term           Full or late term    1.1136414   0.9800213    1.265480


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                 0.0082427    0.0012149   0.0152706
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0099402    0.0009613   0.0189190
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0604152    0.0559285   0.0649019
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0057365   -0.0208651   0.0323381
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0040046    0.0015779   0.0064312
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0460957    0.0227411   0.0694504
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0082797   -0.0019769   0.0185362
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.0094182   -0.0005286   0.0193649
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0190506    0.0153760   0.0227252
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0190108   -0.0213905   0.0594122
24 months   ki1000108-IRC              INDIA         Full or late term    NA                 0.0174359   -0.0059874   0.0408591
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                -0.0032315   -0.0193843   0.0129213
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0012869   -0.0065493   0.0091231
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0106645   -0.0223912   0.0437201
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                 0.0237433   -0.0006115   0.0480981
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.0341539    0.0121190   0.0561889
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.0191817    0.0116206   0.0267429


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba           GAMBIA        Full or late term    NA                 0.4306117   -0.0227788   0.6830174
Birth       ki1135781-COHORTS          INDIA         Full or late term    NA                 0.4146010   -0.0580236   0.6761018
Birth       kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.5496064    0.5138313   0.5827490
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0523833   -0.2240006   0.2663587
6 months    ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.2597366    0.1152395   0.3806347
6 months    ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.3534005    0.1603392   0.5020716
6 months    ki1135781-COHORTS          INDIA         Full or late term    NA                 0.2785367   -0.1469127   0.5461649
6 months    ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.1931800   -0.0356259   0.3714347
6 months    kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.3118610    0.2538461   0.3653652
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Full or late term    NA                 0.0576938   -0.0732271   0.1726438
24 months   ki1000108-IRC              INDIA         Full or late term    NA                 0.1789474   -0.0935755   0.3835566
24 months   ki1101329-Keneba           GAMBIA        Full or late term    NA                -0.0401675   -0.2612831   0.1421844
24 months   ki1119695-PROBIT           BELARUS       Full or late term    NA                 0.0798875   -0.5128990   0.4404074
24 months   ki1135781-COHORTS          GUATEMALA     Full or late term    NA                 0.0216234   -0.0477821   0.0864314
24 months   ki1135781-COHORTS          INDIA         Full or late term    NA                 0.1117129   -0.0101521   0.2188761
24 months   ki1135781-COHORTS          PHILIPPINES   Full or late term    NA                 0.1181014    0.0385680   0.1910556
24 months   kiGH5241-JiVitA-3          BANGLADESH    Full or late term    NA                 0.1221494    0.0725432   0.1691024
