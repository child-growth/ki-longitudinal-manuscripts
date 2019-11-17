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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
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

agecat      studyid                    country                        single    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      187     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1       44     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0        0     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        0     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0       51      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        6      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        5      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        3      65
Birth       ki0047075b-MAL-ED          INDIA                          0               0       37      47
Birth       ki0047075b-MAL-ED          INDIA                          0               1       10      47
Birth       ki0047075b-MAL-ED          INDIA                          1               0        0      47
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0      47
Birth       ki0047075b-MAL-ED          NEPAL                          0               0       25      27
Birth       ki0047075b-MAL-ED          NEPAL                          0               1        2      27
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        0      27
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        0      27
Birth       ki0047075b-MAL-ED          PERU                           0               0      187     233
Birth       ki0047075b-MAL-ED          PERU                           0               1       22     233
Birth       ki0047075b-MAL-ED          PERU                           1               0       20     233
Birth       ki0047075b-MAL-ED          PERU                           1               1        4     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0       60     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        3     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       53     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        7     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       99     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       23     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        3     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     125
Birth       ki1119695-PROBIT           BELARUS                        0               0    13317   13890
Birth       ki1119695-PROBIT           BELARUS                        0               1       31   13890
Birth       ki1119695-PROBIT           BELARUS                        1               0      540   13890
Birth       ki1119695-PROBIT           BELARUS                        1               1        2   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    11620   13817
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1     1322   13817
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0      768   13817
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      107   13817
Birth       ki1135781-COHORTS          GUATEMALA                      0               0      679     767
Birth       ki1135781-COHORTS          GUATEMALA                      0               1       40     767
Birth       ki1135781-COHORTS          GUATEMALA                      1               0       43     767
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        5     767
Birth       ki1135781-COHORTS          INDIA                          0               0     4206    4778
Birth       ki1135781-COHORTS          INDIA                          0               1      565    4778
Birth       ki1135781-COHORTS          INDIA                          1               0        7    4778
Birth       ki1135781-COHORTS          INDIA                          1               1        0    4778
Birth       ki1135781-COHORTS          PHILIPPINES                    0               0     2760    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    0               1      176    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0       68    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1        6    3010
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0     1959    2819
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1      855    2819
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0        4    2819
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        1    2819
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      197     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1       44     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      175     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       28     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        2     209
6 months    ki0047075b-MAL-ED          INDIA                          0               0      191     234
6 months    ki0047075b-MAL-ED          INDIA                          0               1       43     234
6 months    ki0047075b-MAL-ED          INDIA                          1               0        0     234
6 months    ki0047075b-MAL-ED          INDIA                          1               1        0     234
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      224     236
6 months    ki0047075b-MAL-ED          NEPAL                          0               1       12     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               0        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0               0      192     273
6 months    ki0047075b-MAL-ED          PERU                           0               1       48     273
6 months    ki0047075b-MAL-ED          PERU                           1               0       21     273
6 months    ki0047075b-MAL-ED          PERU                           1               1       12     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      121     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       19     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       83     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       31     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      182     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       57     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        2     247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1654    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      181    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      164    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       14    2013
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      173     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1       75     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0       18     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1       11     277
6 months    ki1119695-PROBIT           BELARUS                        0               0    14188   15761
6 months    ki1119695-PROBIT           BELARUS                        0               1      930   15761
6 months    ki1119695-PROBIT           BELARUS                        1               0      585   15761
6 months    ki1119695-PROBIT           BELARUS                        1               1       58   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     6820    8638
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1     1305    8638
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      411    8638
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      102    8638
6 months    ki1135781-COHORTS          GUATEMALA                      0               0      499     893
6 months    ki1135781-COHORTS          GUATEMALA                      0               1      327     893
6 months    ki1135781-COHORTS          GUATEMALA                      1               0       30     893
6 months    ki1135781-COHORTS          GUATEMALA                      1               1       37     893
6 months    ki1135781-COHORTS          INDIA                          0               0     3991    4971
6 months    ki1135781-COHORTS          INDIA                          0               1      971    4971
6 months    ki1135781-COHORTS          INDIA                          1               0        7    4971
6 months    ki1135781-COHORTS          INDIA                          1               1        2    4971
6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     2055    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    0               1      553    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0       54    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1       14    2676
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     3598    4822
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1     1216    4822
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0        7    4822
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1        1    4822
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      111     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1      101     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      144     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        4     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       18     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        3     169
24 months   ki0047075b-MAL-ED          INDIA                          0               0      129     225
24 months   ki0047075b-MAL-ED          INDIA                          0               1       96     225
24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     225
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      178     228
24 months   ki0047075b-MAL-ED          NEPAL                          0               1       50     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               0        0     228
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     228
24 months   ki0047075b-MAL-ED          PERU                           0               0      111     201
24 months   ki0047075b-MAL-ED          PERU                           0               1       65     201
24 months   ki0047075b-MAL-ED          PERU                           1               0       16     201
24 months   ki0047075b-MAL-ED          PERU                           1               1        9     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0       85     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       46     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       69     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       38     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       59     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1      149     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        6     214
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0               0     3559    4035
24 months   ki1119695-PROBIT           BELARUS                        0               1      331    4035
24 months   ki1119695-PROBIT           BELARUS                        1               0      132    4035
24 months   ki1119695-PROBIT           BELARUS                        1               1       13    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0     1014    1637
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      519    1637
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       56    1637
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       48    1637
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      177    1010
24 months   ki1135781-COHORTS          GUATEMALA                      0               1      746    1010
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       10    1010
24 months   ki1135781-COHORTS          GUATEMALA                      1               1       77    1010
24 months   ki1135781-COHORTS          INDIA                          0               0     1622    3753
24 months   ki1135781-COHORTS          INDIA                          0               1     2122    3753
24 months   ki1135781-COHORTS          INDIA                          1               0        3    3753
24 months   ki1135781-COHORTS          INDIA                          1               1        6    3753
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0      880    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1     1477    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0       24    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       35    2416
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     2836    4744
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1     1902    4744
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0        5    4744
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1        1    4744


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
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/243ceab5-9450-4cf8-87a8-f9cf381016ca/35a7fba4-8a31-431e-8170-ae269a08f54b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/243ceab5-9450-4cf8-87a8-f9cf381016ca/35a7fba4-8a31-431e-8170-ae269a08f54b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/243ceab5-9450-4cf8-87a8-f9cf381016ca/35a7fba4-8a31-431e-8170-ae269a08f54b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/243ceab5-9450-4cf8-87a8-f9cf381016ca/35a7fba4-8a31-431e-8170-ae269a08f54b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1025525   0.0973018   0.1078033
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1197301   0.0951272   0.1443330
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0556328   0.0388678   0.0723978
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1041667   0.0176920   0.1906413
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0599455   0.0513537   0.0685373
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0810811   0.0199126   0.1422496
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.2032978   0.1523248   0.2542707
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3321926   0.1658354   0.4985497
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1297599   0.0733518   0.1861681
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2902431   0.2087866   0.3716996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0986144   0.0849728   0.1122561
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0797651   0.0403911   0.1191391
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.3027811   0.2453184   0.3602438
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.4151695   0.2300116   0.6003274
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0617346   0.0479877   0.0754814
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0864784   0.0578106   0.1151463
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1611177   0.1530995   0.1691358
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2065989   0.1684223   0.2447755
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3974356   0.3641402   0.4307309
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5333615   0.4131161   0.6536069
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2124608   0.1967205   0.2282012
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1887893   0.0991471   0.2784315
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3693182   0.2978389   0.4407975
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.3600000   0.1713737   0.5486263
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3571810   0.2744822   0.4398798
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3431616   0.2529937   0.4333295
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0851170   0.0543845   0.1158495
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0725789   0.0321502   0.1130076
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3378080   0.3141431   0.3614729
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4768164   0.3815557   0.5720772
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.8093572   0.7840606   0.8346537
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8503685   0.7557722   0.9449649
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6265852   0.6069756   0.6461949
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5678793   0.4662820   0.6694766


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1034233   0.0983457   0.1085009
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586701   0.0420278   0.0753124
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0604651   0.0519489   0.0689813
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0968703   0.0839461   0.1097946
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3104693   0.2558835   0.3650551
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1628849   0.1550974   0.1706725
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4076148   0.3753675   0.4398620
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2118834   0.1963977   0.2273691
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3463653   0.3233089   0.3694217
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8148515   0.7908851   0.8388178
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6258278   0.6065280   0.6451276


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1674996   0.9446844   1.442869
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 1.8723958   0.7741873   4.528447
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3525799   0.6275750   2.915145
6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.6340197   0.9353862   2.854458
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 2.2367697   1.3394641   3.735180
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8088584   0.4847015   1.349804
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.3711868   0.8441012   2.227403
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.4008104   1.0578432   1.854972
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2822860   1.0593365   1.552158
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.3420075   1.0570837   1.703729
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8885840   0.5497018   1.436381
24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.9747692   0.5575963   1.704056
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9607498   0.6777591   1.361900
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 0.8526954   0.4477765   1.623778
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4115012   1.1430990   1.742925
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0506715   0.9359842   1.179412
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9063082   0.7562294   1.086171


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0008708   -0.0006095   0.0023511
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0030373   -0.0025377   0.0086123
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0005196   -0.0010290   0.0020683
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0164824   -0.0047089   0.0376738
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0670905    0.0220466   0.1121343
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017441   -0.0054109   0.0019227
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0076882   -0.0121266   0.0275030
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0009518   -0.0000639   0.0019676
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0017672   -0.0003883   0.0039228
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0101792    0.0011005   0.0192579
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0005774   -0.0030476   0.0018927
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0011590   -0.0262516   0.0239336
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0042399   -0.0597915   0.0513118
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0001370   -0.0015510   0.0018251
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0085573    0.0022454   0.0148692
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0054943   -0.0010038   0.0119924
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0007574   -0.0037140   0.0021992


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0084195   -0.0059923   0.0226249
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0517694   -0.0470659   0.1412754
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0085936   -0.0173296   0.0338562
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0749951   -0.0258142   0.1658977
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.3408196    0.0790790   0.5281693
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0180044   -0.0565012   0.0190898
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0247631   -0.0412011   0.0865482
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0151837   -0.0010784   0.0311817
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0108497   -0.0024675   0.0239900
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0249726    0.0024014   0.0470331
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0027253   -0.0144483   0.0088623
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0031480   -0.0736742   0.0627455
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0120130   -0.1823065   0.1337524
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0016073   -0.0186985   0.0215083
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0247059    0.0063014   0.0427695
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0067427   -0.0012814   0.0147025
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0012102   -0.0059448   0.0035020
