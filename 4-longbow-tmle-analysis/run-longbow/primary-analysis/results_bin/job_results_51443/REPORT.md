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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        single    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      235     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       13     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      185     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       30     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     217
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 0      218     239
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 1       21     239
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 0        0     239
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     239
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      234     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        4     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           0                 0      249     284
0-24 months   ki0047075b-MAL-ED          PERU                           0                 1        1     284
0-24 months   ki0047075b-MAL-ED          PERU                           1                 0       34     284
0-24 months   ki0047075b-MAL-ED          PERU                           1                 1        0     284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      154     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      117     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1     273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      244     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        9     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     253
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1896    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       53    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      194    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        5    2148
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 0      221     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 1        3     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 0       26     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 1        1     251
0-24 months   ki1119695-PROBIT           BELARUS                        0                 0    15755   16581
0-24 months   ki1119695-PROBIT           BELARUS                        0                 1      149   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                 0      667   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                 1       10   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     8563    9295
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1      154    9295
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      568    9295
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       10    9295
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                 0      880     990
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                 1       30     990
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0       76     990
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        4     990
0-24 months   ki1135781-COHORTS          INDIA                          0                 0     3707    4127
0-24 months   ki1135781-COHORTS          INDIA                          0                 1      413    4127
0-24 months   ki1135781-COHORTS          INDIA                          1                 0        7    4127
0-24 months   ki1135781-COHORTS          INDIA                          1                 1        0    4127
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 0     2571    2778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 1      136    2778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0       63    2778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1        8    2778
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      241     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        7     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      186     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       30     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     217
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 0      219     238
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 1       19     238
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 0        0     238
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      232     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        5     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 0        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     237
0-6 months    ki0047075b-MAL-ED          PERU                           0                 0      250     284
0-6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           1                 0       34     284
0-6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      152     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        2     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      117     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      244     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        9     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     253
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1814    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       45    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      178    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        7    2044
0-6 months    ki1119695-PROBIT           BELARUS                        0                 0    11923   13545
0-6 months    ki1119695-PROBIT           BELARUS                        0                 1     1090   13545
0-6 months    ki1119695-PROBIT           BELARUS                        1                 0      476   13545
0-6 months    ki1119695-PROBIT           BELARUS                        1                 1       56   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 0      564     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 1       14     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0       32     610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1        0     610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                 0      767     842
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                 1       50     842
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 0       24     842
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 1        1     842
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      235     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       13     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      185     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       30     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     217
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 0      218     239
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 1       21     239
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 0        0     239
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     239
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      234     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        4     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     238
6-24 months   ki0047075b-MAL-ED          PERU                           0                 0      249     284
6-24 months   ki0047075b-MAL-ED          PERU                           0                 1        1     284
6-24 months   ki0047075b-MAL-ED          PERU                           1                 0       34     284
6-24 months   ki0047075b-MAL-ED          PERU                           1                 1        0     284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      154     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      117     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1     273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      244     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        9     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     253
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1896    2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       53    2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      194    2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        5    2148
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 0      221     251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 1        3     251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 0       26     251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 1        1     251
6-24 months   ki1119695-PROBIT           BELARUS                        0                 0    15755   16581
6-24 months   ki1119695-PROBIT           BELARUS                        0                 1      149   16581
6-24 months   ki1119695-PROBIT           BELARUS                        1                 0      667   16581
6-24 months   ki1119695-PROBIT           BELARUS                        1                 1       10   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     8563    9295
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1      154    9295
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      568    9295
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       10    9295
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                 0      880     990
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                 1       30     990
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0       76     990
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        4     990
6-24 months   ki1135781-COHORTS          INDIA                          0                 0     3707    4127
6-24 months   ki1135781-COHORTS          INDIA                          0                 1      413    4127
6-24 months   ki1135781-COHORTS          INDIA                          1                 0        7    4127
6-24 months   ki1135781-COHORTS          INDIA                          1                 1        0    4127
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 0     2571    2778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 1      136    2778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0       63    2778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1        8    2778


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/7cd7e6ce-6ec8-458c-b4b2-fe9e700e24d1/0d2df3f2-f725-4238-b39f-880a3446cc4b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7cd7e6ce-6ec8-458c-b4b2-fe9e700e24d1/0d2df3f2-f725-4238-b39f-880a3446cc4b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7cd7e6ce-6ec8-458c-b4b2-fe9e700e24d1/0d2df3f2-f725-4238-b39f-880a3446cc4b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7cd7e6ce-6ec8-458c-b4b2-fe9e700e24d1/0d2df3f2-f725-4238-b39f-880a3446cc4b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0271934   0.0199709   0.0344159
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0251256   0.0033758   0.0468754
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0093721   0.0050912   0.0136530
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0144540   0.0053025   0.0236054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0176340   0.0148715   0.0203965
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0176651   0.0070138   0.0283164
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0502401   0.0420098   0.0584704
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1126761   0.0391140   0.1862381
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0242066   0.0172184   0.0311947
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0378378   0.0103364   0.0653393
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0840263   0.0554109   0.1126418
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0935687   0.0758043   0.1113330
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0271934   0.0199709   0.0344159
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0251256   0.0033758   0.0468754
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0093754   0.0050919   0.0136589
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0145673   0.0052366   0.0238980
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0176429   0.0148788   0.0204069
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0174275   0.0067374   0.0281176
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0502401   0.0420098   0.0584704
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1126761   0.0391140   0.1862381


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176439   0.0149673   0.0203205
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0518359   0.0435904   0.0600814
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0254403   0.0186125   0.0322681
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0846069   0.0570929   0.1121208
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176439   0.0149673   0.0203205
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0518359   0.0435904   0.0600814


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9239594   0.3736040   2.285042
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.5422336   0.8639704   2.752970
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0017632   0.5372737   1.867818
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.2427506   1.1440794   4.396487
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5631231   0.7150723   3.416933
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.1135640   0.8057204   1.539026
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9239594   0.3736040   2.285042
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.5537877   0.8681532   2.780910
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9877941   0.5244505   1.860494
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.2427506   1.1440794   4.396487


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0001916   -0.0023149   0.0019318
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0002172   -0.0001406   0.0005750
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000099   -0.0006734   0.0006932
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0015957   -0.0003313   0.0035227
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012338   -0.0013401   0.0038076
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0005805   -0.0014323   0.0025933
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0001916   -0.0023149   0.0019318
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0002139   -0.0001445   0.0005723
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000010   -0.0006833   0.0006853
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0015957   -0.0003313   0.0035227


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0070947   -0.0888621   0.0685324
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0226481   -0.0157366   0.0595822
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0005608   -0.0389279   0.0385486
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0307844   -0.0068119   0.0669768
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0484959   -0.0573614   0.1437553
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0068615   -0.0184828   0.0315752
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0070947   -0.0888621   0.0685324
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0223091   -0.0161833   0.0593434
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000567   -0.0394893   0.0380982
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0307844   -0.0068119   0.0669768
