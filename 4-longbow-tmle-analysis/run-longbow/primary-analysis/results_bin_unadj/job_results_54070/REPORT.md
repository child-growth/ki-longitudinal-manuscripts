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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        single    swasted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      207     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1        8     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0        0     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        0     215
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0       54      62
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        8      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0      62
Birth       ki0047075b-MAL-ED          INDIA                          0               0       45      45
Birth       ki0047075b-MAL-ED          INDIA                          0               1        0      45
Birth       ki0047075b-MAL-ED          INDIA                          1               0        0      45
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0      45
Birth       ki0047075b-MAL-ED          NEPAL                          0               0       25      26
Birth       ki0047075b-MAL-ED          NEPAL                          0               1        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        0      26
Birth       ki0047075b-MAL-ED          PERU                           0               0      205     228
Birth       ki0047075b-MAL-ED          PERU                           0               1        0     228
Birth       ki0047075b-MAL-ED          PERU                           1               0       23     228
Birth       ki0047075b-MAL-ED          PERU                           1               1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0       63     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       57     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      112     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        3     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     115
Birth       ki1119695-PROBIT           BELARUS                        0               0    12427   13830
Birth       ki1119695-PROBIT           BELARUS                        0               1      864   13830
Birth       ki1119695-PROBIT           BELARUS                        1               0      497   13830
Birth       ki1119695-PROBIT           BELARUS                        1               1       42   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    11340   12864
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1      725   12864
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0      735   12864
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1       64   12864
Birth       ki1135781-COHORTS          GUATEMALA                      0               0      602     691
Birth       ki1135781-COHORTS          GUATEMALA                      0               1       52     691
Birth       ki1135781-COHORTS          GUATEMALA                      1               0       35     691
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        2     691
Birth       ki1135781-COHORTS          INDIA                          0               0     4242    4463
Birth       ki1135781-COHORTS          INDIA                          0               1      214    4463
Birth       ki1135781-COHORTS          INDIA                          1               0        7    4463
Birth       ki1135781-COHORTS          INDIA                          1               1        0    4463
Birth       ki1135781-COHORTS          PHILIPPINES                    0               0     2674    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    0               1      115    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0       66    2860
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1        5    2860
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0     2357    2393
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1       31    2393
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0        5    2393
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        0    2393
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      239     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        2     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0               0      228     234
6 months    ki0047075b-MAL-ED          INDIA                          0               1        6     234
6 months    ki0047075b-MAL-ED          INDIA                          1               0        0     234
6 months    ki0047075b-MAL-ED          INDIA                          1               1        0     234
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      236     236
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0               0      240     273
6 months    ki0047075b-MAL-ED          PERU                           0               1        0     273
6 months    ki0047075b-MAL-ED          PERU                           1               0       33     273
6 months    ki0047075b-MAL-ED          PERU                           1               1        0     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      138     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      113     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      239     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        8     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1825    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        9    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      175    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        3    2012
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      248     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1        0     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0       29     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        0     277
6 months    ki1119695-PROBIT           BELARUS                        0               0    15099   15758
6 months    ki1119695-PROBIT           BELARUS                        0               1       16   15758
6 months    ki1119695-PROBIT           BELARUS                        1               0      643   15758
6 months    ki1119695-PROBIT           BELARUS                        1               1        0   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     7898    8474
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1       73    8474
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      498    8474
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1        5    8474
6 months    ki1135781-COHORTS          GUATEMALA                      0               0      822     894
6 months    ki1135781-COHORTS          GUATEMALA                      0               1        5     894
6 months    ki1135781-COHORTS          GUATEMALA                      1               0       66     894
6 months    ki1135781-COHORTS          GUATEMALA                      1               1        1     894
6 months    ki1135781-COHORTS          INDIA                          0               0     4802    4964
6 months    ki1135781-COHORTS          INDIA                          0               1      153    4964
6 months    ki1135781-COHORTS          INDIA                          1               0        9    4964
6 months    ki1135781-COHORTS          INDIA                          1               1        0    4964
6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     2573    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    0               1       33    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0       67    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1        1    2674
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     4783    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1       33    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0        8    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1        0    4824
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      212     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       20     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0               0      223     225
24 months   ki0047075b-MAL-ED          INDIA                          0               1        2     225
24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     225
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      228     228
24 months   ki0047075b-MAL-ED          NEPAL                          0               1        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     228
24 months   ki0047075b-MAL-ED          PERU                           0               0      174     201
24 months   ki0047075b-MAL-ED          PERU                           0               1        2     201
24 months   ki0047075b-MAL-ED          PERU                           1               0       25     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        0     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      131     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      107     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      208     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     214
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0               0     3827    3972
24 months   ki1119695-PROBIT           BELARUS                        0               1        3    3972
24 months   ki1119695-PROBIT           BELARUS                        1               0      141    3972
24 months   ki1119695-PROBIT           BELARUS                        1               1        1    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0      358     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1       30     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       43     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1        1     432
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      928    1021
24 months   ki1135781-COHORTS          GUATEMALA                      0               1        4    1021
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       89    1021
24 months   ki1135781-COHORTS          GUATEMALA                      1               1        0    1021
24 months   ki1135781-COHORTS          INDIA                          0               0     3676    3726
24 months   ki1135781-COHORTS          INDIA                          0               1       41    3726
24 months   ki1135781-COHORTS          INDIA                          1               0        9    3726
24 months   ki1135781-COHORTS          INDIA                          1               1        0    3726
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0     2336    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1       25    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0       59    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1        0    2420
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     4592    4727
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      129    4727
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0        6    4727
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1        0    4727


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/0be5548a-9c66-48eb-b121-4b6ecc365745/f902462b-71ba-43df-a0db-59bee59b73e1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0be5548a-9c66-48eb-b121-4b6ecc365745/f902462b-71ba-43df-a0db-59bee59b73e1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0be5548a-9c66-48eb-b121-4b6ecc365745/f902462b-71ba-43df-a0db-59bee59b73e1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0be5548a-9c66-48eb-b121-4b6ecc365745/f902462b-71ba-43df-a0db-59bee59b73e1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat     studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT     BELARUS       0                    NA                0.0650064   0.0315640   0.0984488
Birth      ki1119695-PROBIT     BELARUS       1                    NA                0.0779221   0.0442516   0.1115926
Birth      ki1126311-ZVITAMBO   ZIMBABWE      0                    NA                0.0600912   0.0558504   0.0643320
Birth      ki1126311-ZVITAMBO   ZIMBABWE      1                    NA                0.0801001   0.0612776   0.0989227
Birth      ki1135781-COHORTS    PHILIPPINES   0                    NA                0.0412334   0.0338517   0.0486152
Birth      ki1135781-COHORTS    PHILIPPINES   1                    NA                0.0704225   0.0113146   0.1295305
6 months   ki1126311-ZVITAMBO   ZIMBABWE      0                    NA                0.0091582   0.0070669   0.0112495
6 months   ki1126311-ZVITAMBO   ZIMBABWE      1                    NA                0.0099404   0.0012703   0.0186104


### Parameter: E(Y)


agecat     studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth      ki1119695-PROBIT     BELARUS       NA                   NA                0.0655098   0.0324802   0.0985393
Birth      ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0613340   0.0571874   0.0654805
Birth      ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0419580   0.0346088   0.0493073
6 months   ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0092046   0.0071712   0.0112380


### Parameter: RR


agecat     studyid              country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
---------  -------------------  ------------  -------------------  ---------------  ---------  ----------  ---------
Birth      ki1119695-PROBIT     BELARUS       0                    0                 1.000000   1.0000000   1.000000
Birth      ki1119695-PROBIT     BELARUS       1                    0                 1.198683   0.8148436   1.763334
Birth      ki1126311-ZVITAMBO   ZIMBABWE      0                    0                 1.000000   1.0000000   1.000000
Birth      ki1126311-ZVITAMBO   ZIMBABWE      1                    0                 1.332977   1.0429549   1.703647
Birth      ki1135781-COHORTS    PHILIPPINES   0                    0                 1.000000   1.0000000   1.000000
Birth      ki1135781-COHORTS    PHILIPPINES   1                    0                 1.707900   0.7240114   4.028833
6 months   ki1126311-ZVITAMBO   ZIMBABWE      0                    0                 1.000000   1.0000000   1.000000
6 months   ki1126311-ZVITAMBO   ZIMBABWE      1                    0                 1.085405   0.4405852   2.673954


### Parameter: PAR


agecat     studyid              country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth      ki1119695-PROBIT     BELARUS       0                    NA                0.0005034   -0.0005429   0.0015496
Birth      ki1126311-ZVITAMBO   ZIMBABWE      0                    NA                0.0012428    0.0000415   0.0024441
Birth      ki1135781-COHORTS    PHILIPPINES   0                    NA                0.0007246   -0.0007738   0.0022231
6 months   ki1126311-ZVITAMBO   ZIMBABWE      0                    NA                0.0000464   -0.0004830   0.0005758


### Parameter: PAF


agecat     studyid              country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------  -------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth      ki1119695-PROBIT     BELARUS       0                    NA                0.0076838   -0.0102888   0.0253367
Birth      ki1126311-ZVITAMBO   ZIMBABWE      0                    NA                0.0202626    0.0005219   0.0396133
Birth      ki1135781-COHORTS    PHILIPPINES   0                    NA                0.0172702   -0.0189809   0.0522317
6 months   ki1126311-ZVITAMBO   ZIMBABWE      0                    NA                0.0050439   -0.0541556   0.0609189
