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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        single    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                0      222     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                1        9     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                0        0     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                1        0     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0                0       55      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                1        2      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                0        7      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                1        1      65
Birth       ki0047075b-MAL-ED          INDIA                          0                0       45      47
Birth       ki0047075b-MAL-ED          INDIA                          0                1        2      47
Birth       ki0047075b-MAL-ED          INDIA                          1                0        0      47
Birth       ki0047075b-MAL-ED          INDIA                          1                1        0      47
Birth       ki0047075b-MAL-ED          NEPAL                          0                0       26      27
Birth       ki0047075b-MAL-ED          NEPAL                          0                1        1      27
Birth       ki0047075b-MAL-ED          NEPAL                          1                0        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          1                1        0      27
Birth       ki0047075b-MAL-ED          PERU                           0                0      206     233
Birth       ki0047075b-MAL-ED          PERU                           0                1        3     233
Birth       ki0047075b-MAL-ED          PERU                           1                0       23     233
Birth       ki0047075b-MAL-ED          PERU                           1                1        1     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                0       63     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        0     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       58     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        2     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      112     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       10     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        3     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     125
Birth       ki1119695-PROBIT           BELARUS                        0                0    13343   13890
Birth       ki1119695-PROBIT           BELARUS                        0                1        5   13890
Birth       ki1119695-PROBIT           BELARUS                        1                0      542   13890
Birth       ki1119695-PROBIT           BELARUS                        1                1        0   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0    12535   13817
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1      407   13817
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0      843   13817
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1       32   13817
Birth       ki1135781-COHORTS          GUATEMALA                      0                0      712     767
Birth       ki1135781-COHORTS          GUATEMALA                      0                1        7     767
Birth       ki1135781-COHORTS          GUATEMALA                      1                0       46     767
Birth       ki1135781-COHORTS          GUATEMALA                      1                1        2     767
Birth       ki1135781-COHORTS          INDIA                          0                0     4630    4778
Birth       ki1135781-COHORTS          INDIA                          0                1      141    4778
Birth       ki1135781-COHORTS          INDIA                          1                0        7    4778
Birth       ki1135781-COHORTS          INDIA                          1                1        0    4778
Birth       ki1135781-COHORTS          PHILIPPINES                    0                0     2893    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    0                1       43    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0       72    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1        2    3010
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0     2581    2819
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1      233    2819
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0        5    2819
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    2819
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                0      233     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                1        8     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                0        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                0      179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                0      225     234
6 months    ki0047075b-MAL-ED          INDIA                          0                1        9     234
6 months    ki0047075b-MAL-ED          INDIA                          1                0        0     234
6 months    ki0047075b-MAL-ED          INDIA                          1                1        0     234
6 months    ki0047075b-MAL-ED          NEPAL                          0                0      235     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0                0      232     273
6 months    ki0047075b-MAL-ED          PERU                           0                1        8     273
6 months    ki0047075b-MAL-ED          PERU                           1                0       31     273
6 months    ki0047075b-MAL-ED          PERU                           1                1        2     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      139     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                0      109     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                1        5     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      225     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       14     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        8     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        0     247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1818    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       17    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      176    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        2    2013
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                0      230     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                1       18     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                0       22     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                1        7     277
6 months    ki1119695-PROBIT           BELARUS                        0                0    14893   15761
6 months    ki1119695-PROBIT           BELARUS                        0                1      225   15761
6 months    ki1119695-PROBIT           BELARUS                        1                0      625   15761
6 months    ki1119695-PROBIT           BELARUS                        1                1       18   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0     7812    8638
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1      313    8638
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0      476    8638
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1       37    8638
6 months    ki1135781-COHORTS          GUATEMALA                      0                0      724     893
6 months    ki1135781-COHORTS          GUATEMALA                      0                1      102     893
6 months    ki1135781-COHORTS          GUATEMALA                      1                0       53     893
6 months    ki1135781-COHORTS          GUATEMALA                      1                1       14     893
6 months    ki1135781-COHORTS          INDIA                          0                0     4720    4971
6 months    ki1135781-COHORTS          INDIA                          0                1      242    4971
6 months    ki1135781-COHORTS          INDIA                          1                0        9    4971
6 months    ki1135781-COHORTS          INDIA                          1                1        0    4971
6 months    ki1135781-COHORTS          PHILIPPINES                    0                0     2482    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    0                1      126    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0       64    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1        4    2676
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     4543    4822
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      271    4822
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0        8    4822
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    4822
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                0      184     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                1       28     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                0      148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                0       20     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                0      195     225
24 months   ki0047075b-MAL-ED          INDIA                          0                1       30     225
24 months   ki0047075b-MAL-ED          INDIA                          1                0        0     225
24 months   ki0047075b-MAL-ED          INDIA                          1                1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0                0      221     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                1        7     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                1        0     228
24 months   ki0047075b-MAL-ED          PERU                           0                0      165     201
24 months   ki0047075b-MAL-ED          PERU                           0                1       11     201
24 months   ki0047075b-MAL-ED          PERU                           1                0       21     201
24 months   ki0047075b-MAL-ED          PERU                           1                1        4     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                0      119     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                1       12     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                0       92     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                1       15     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                0      141     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                1       67     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                0        3     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                1        3     214
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0                0     3827    4035
24 months   ki1119695-PROBIT           BELARUS                        0                1       63    4035
24 months   ki1119695-PROBIT           BELARUS                        1                0      143    4035
24 months   ki1119695-PROBIT           BELARUS                        1                1        2    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1379    1637
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1      154    1637
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0       81    1637
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       23    1637
24 months   ki1135781-COHORTS          GUATEMALA                      0                0      480    1010
24 months   ki1135781-COHORTS          GUATEMALA                      0                1      443    1010
24 months   ki1135781-COHORTS          GUATEMALA                      1                0       34    1010
24 months   ki1135781-COHORTS          GUATEMALA                      1                1       53    1010
24 months   ki1135781-COHORTS          INDIA                          0                0     2784    3753
24 months   ki1135781-COHORTS          INDIA                          0                1      960    3753
24 months   ki1135781-COHORTS          INDIA                          1                0        6    3753
24 months   ki1135781-COHORTS          INDIA                          1                1        3    3753
24 months   ki1135781-COHORTS          PHILIPPINES                    0                0     1666    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    0                1      691    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0       46    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       13    2416
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     4286    4744
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      452    4744
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0        6    4744
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1        0    4744


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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
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
![](/tmp/890db30b-485a-4099-84bd-37459110f565/f90d4a8a-681b-48aa-a855-19b55a10529f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/890db30b-485a-4099-84bd-37459110f565/f90d4a8a-681b-48aa-a855-19b55a10529f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/890db30b-485a-4099-84bd-37459110f565/f90d4a8a-681b-48aa-a855-19b55a10529f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/890db30b-485a-4099-84bd-37459110f565/f90d4a8a-681b-48aa-a855-19b55a10529f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0314480   0.0284411   0.0344549
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0365714   0.0241337   0.0490091
6 months    ki1112895-Guatemala BSC   GUATEMALA      0                    NA                0.0725806   0.0402320   0.1049293
6 months    ki1112895-Guatemala BSC   GUATEMALA      1                    NA                0.2413793   0.0853534   0.3974052
6 months    ki1119695-PROBIT          BELARUS        0                    NA                0.0148829   0.0095916   0.0201742
6 months    ki1119695-PROBIT          BELARUS        1                    NA                0.0279938   0.0123773   0.0436103
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0385231   0.0343381   0.0427080
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0721248   0.0497375   0.0945120
6 months    ki1135781-COHORTS         GUATEMALA      0                    NA                0.1234867   0.1010380   0.1459354
6 months    ki1135781-COHORTS         GUATEMALA      1                    NA                0.2089552   0.1115502   0.3063602
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.0916031   0.0421014   0.1411047
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.1401869   0.0742655   0.2061083
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.1004566   0.0854041   0.1155092
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.2211538   0.1413659   0.3009418
24 months   ki1135781-COHORTS         GUATEMALA      0                    NA                0.4799567   0.4477101   0.5122032
24 months   ki1135781-COHORTS         GUATEMALA      1                    NA                0.6091954   0.5066156   0.7117752
24 months   ki1135781-COHORTS         PHILIPPINES    0                    NA                0.2931693   0.2747771   0.3115615
24 months   ki1135781-COHORTS         PHILIPPINES    1                    NA                0.2203390   0.1170092   0.3236688


### Parameter: E(Y)


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0317725   0.0288478   0.0346971
6 months    ki1112895-Guatemala BSC   GUATEMALA      NA                   NA                0.0902527   0.0564475   0.1240580
6 months    ki1119695-PROBIT          BELARUS        NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0405186   0.0363604   0.0446769
6 months    ki1135781-COHORTS         GUATEMALA      NA                   NA                0.1298992   0.1078368   0.1519617
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.1134454   0.0730697   0.1538211
24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1081246   0.0930769   0.1231723
24 months   ki1135781-COHORTS         GUATEMALA      NA                   NA                0.4910891   0.4602428   0.5219354
24 months   ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.2913907   0.2732677   0.3095138


### Parameter: RR


agecat      studyid                   country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 1.162918   0.8168114   1.655679
6 months    ki1112895-Guatemala BSC   GUATEMALA      0                    0                 1.000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC   GUATEMALA      1                    0                 3.325671   1.5166712   7.292342
6 months    ki1119695-PROBIT          BELARUS        0                    0                 1.000000   1.0000000   1.000000
6 months    ki1119695-PROBIT          BELARUS        1                    0                 1.880933   1.1343093   3.118999
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 1.872248   1.3475413   2.601266
6 months    ki1135781-COHORTS         GUATEMALA      0                    0                 1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS         GUATEMALA      1                    0                 1.692128   1.0259726   2.790811
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    0                 1.000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    0                 1.530374   0.7476410   3.132578
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 2.201486   1.4895487   3.253697
24 months   ki1135781-COHORTS         GUATEMALA      0                    0                 1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS         GUATEMALA      1                    0                 1.269272   1.0588132   1.521563
24 months   ki1135781-COHORTS         PHILIPPINES    0                    0                 1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS         PHILIPPINES    1                    0                 0.751576   0.4682659   1.206294


### Parameter: PAR


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0003245   -0.0004862   0.0011351
6 months    ki1112895-Guatemala BSC   GUATEMALA      0                    NA                 0.0176721   -0.0000894   0.0354335
6 months    ki1119695-PROBIT          BELARUS        0                    NA                 0.0005349   -0.0000487   0.0011184
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0019956    0.0006326   0.0033585
6 months    ki1135781-COHORTS         GUATEMALA      0                    NA                 0.0064125   -0.0012313   0.0140564
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0218423   -0.0153477   0.0590323
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0076680    0.0023160   0.0130200
24 months   ki1135781-COHORTS         GUATEMALA      0                    NA                 0.0111324    0.0016037   0.0206612
24 months   ki1135781-COHORTS         PHILIPPINES    0                    NA                -0.0017786   -0.0044404   0.0008833


### Parameter: PAF


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0102118   -0.0156162   0.0353831
6 months    ki1112895-Guatemala BSC   GUATEMALA      0                    NA                 0.1958065   -0.0121457   0.3610334
6 months    ki1119695-PROBIT          BELARUS        0                    NA                 0.0346925   -0.0032220   0.0711742
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0492505    0.0153753   0.0819602
6 months    ki1135781-COHORTS         GUATEMALA      0                    NA                 0.0493655   -0.0108817   0.1060220
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.1925360   -0.2032610   0.4581408
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0709181    0.0208870   0.1183928
24 months   ki1135781-COHORTS         GUATEMALA      0                    NA                 0.0226689    0.0030245   0.0419262
24 months   ki1135781-COHORTS         PHILIPPINES    0                    NA                -0.0061037   -0.0152774   0.0029872
