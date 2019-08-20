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

agecat      studyid                    country                        single    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      210     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1       47     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0        0     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        0     257
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0      151     191
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1       15     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0       19     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        6     191
Birth       ki0047075b-MAL-ED          INDIA                          0               0      173     205
Birth       ki0047075b-MAL-ED          INDIA                          0               1       32     205
Birth       ki0047075b-MAL-ED          INDIA                          1               0        0     205
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0     205
Birth       ki0047075b-MAL-ED          NEPAL                          0               0      155     173
Birth       ki0047075b-MAL-ED          NEPAL                          0               1       18     173
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        0     173
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        0     173
Birth       ki0047075b-MAL-ED          PERU                           0               0      226     287
Birth       ki0047075b-MAL-ED          PERU                           0               1       27     287
Birth       ki0047075b-MAL-ED          PERU                           1               0       27     287
Birth       ki0047075b-MAL-ED          PERU                           1               1        7     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      133     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       13     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      101     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       15     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      100     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       17     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        5     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     123
Birth       ki1119695-PROBIT           BELARUS                        0               0    13312   13884
Birth       ki1119695-PROBIT           BELARUS                        0               1       31   13884
Birth       ki1119695-PROBIT           BELARUS                        1               0      539   13884
Birth       ki1119695-PROBIT           BELARUS                        1               1        2   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    11582   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1     1320   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0      763   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      107   13772
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      196     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1       45     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0        0     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      175     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        4     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       28     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        2     209
6 months    ki0047075b-MAL-ED          INDIA                          0               0      190     234
6 months    ki0047075b-MAL-ED          INDIA                          0               1       44     234
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      183     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       56     247
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     6498    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1     1277    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      393    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       97    8265
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
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      114     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       98     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      145     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        3     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       18     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        3     169
24 months   ki0047075b-MAL-ED          INDIA                          0               0      131     225
24 months   ki0047075b-MAL-ED          INDIA                          0               1       94     225
24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     225
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      179     228
24 months   ki0047075b-MAL-ED          NEPAL                          0               1       49     228
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
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       61     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1      147     214
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
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0      150     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      263     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0        9     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       34     456
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      198    1013
24 months   ki1135781-COHORTS          GUATEMALA                      0               1      728    1013
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       11    1013
24 months   ki1135781-COHORTS          GUATEMALA                      1               1       76    1013
24 months   ki1135781-COHORTS          INDIA                          0               0     1900    3756
24 months   ki1135781-COHORTS          INDIA                          0               1     1847    3756
24 months   ki1135781-COHORTS          INDIA                          1               0        3    3756
24 months   ki1135781-COHORTS          INDIA                          1               1        6    3756
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0      895    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1     1462    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0       24    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       35    2416


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/c67ed8bc-bed2-457e-b47d-7a008146869a/a4386b91-7365-4832-83be-cad8587bf5b5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c67ed8bc-bed2-457e-b47d-7a008146869a/a4386b91-7365-4832-83be-cad8587bf5b5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c67ed8bc-bed2-457e-b47d-7a008146869a/a4386b91-7365-4832-83be-cad8587bf5b5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c67ed8bc-bed2-457e-b47d-7a008146869a/a4386b91-7365-4832-83be-cad8587bf5b5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.0903614   0.0466334   0.1340895
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2400000   0.0721465   0.4078535
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                0.1067194   0.0686074   0.1448313
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                0.2058824   0.0697321   0.3420326
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0906269   0.0442959   0.1369579
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1358239   0.0744815   0.1971664
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1025638   0.0973015   0.1078260
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1167236   0.0928322   0.1406149
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0556328   0.0388678   0.0723978
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1041667   0.0176920   0.1906413
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0599455   0.0513537   0.0685373
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0810811   0.0199126   0.1422496
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.2028820   0.1518137   0.2539504
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3372997   0.1710262   0.5035732
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1288302   0.0719587   0.1857016
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2840787   0.2017935   0.3663639
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0986441   0.0849970   0.1122913
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0782401   0.0389683   0.1175120
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.3025368   0.2450669   0.3600067
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.3892073   0.1991935   0.5792211
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0626502   0.0485116   0.0767888
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0522703   0.0393040   0.0652367
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1645758   0.1563214   0.1728301
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2029771   0.1637068   0.2422474
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3973944   0.3640634   0.4307254
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5065179   0.3660420   0.6469939
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2115307   0.1955753   0.2274861
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2790937   0.2219463   0.3362412
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3693182   0.2978389   0.4407975
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.3600000   0.1713737   0.5486263
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3476759   0.2654566   0.4298952
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3478760   0.2567790   0.4389731
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0851237   0.0544040   0.1158435
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0780110   0.0381850   0.1178370
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6368039   0.5903712   0.6832365
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7906977   0.6689718   0.9124235
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7870996   0.7607524   0.8134467
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8550629   0.7571406   0.9529851
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6191331   0.5991645   0.6391016
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6904949   0.6314097   0.7495800


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1099476   0.0654669   0.1544284
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1184669   0.0810142   0.1559196
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1068702   0.0693890   0.1443514
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1036160   0.0985259   0.1087061
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586701   0.0420278   0.0753124
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0604651   0.0519489   0.0689813
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0968703   0.0839461   0.1097946
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3104693   0.2558835   0.3650551
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662432   0.1582164   0.1742700
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4076148   0.3753675   0.4398620
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2118834   0.1963977   0.2273691
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6513158   0.6075279   0.6951037
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7936821   0.7687506   0.8186137
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6196192   0.6002567   0.6389817


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                 2.6560000   1.1346616   6.217128
Birth       ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 1.9291939   0.9098576   4.090518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.4987160   0.7557606   2.972038
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1380586   0.9215645   1.405412
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 1.8723958   0.7741873   4.528447
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3525799   0.6275750   2.915145
6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.6625411   0.9584465   2.883878
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 2.2050638   1.3056361   3.724090
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7931552   0.4714430   1.334404
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.2864793   0.7612107   2.174206
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.8343200   0.6181205   1.126140
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2333354   1.0103218   1.505576
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.2745976   0.9556158   1.700055
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3194006   1.0608122   1.641024
24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.9747692   0.5575963   1.704056
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0005756   0.7034002   1.423303
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 0.9164419   0.5041294   1.665973
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2416659   1.0471916   1.472256
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0863465   0.9640141   1.224203
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.1152608   1.0186133   1.221078


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0195862   -0.0042246   0.0433970
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0117475   -0.0054086   0.0289037
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0162434   -0.0179871   0.0504738
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0010523   -0.0004408   0.0025453
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0030373   -0.0025377   0.0086123
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0005196   -0.0010290   0.0020683
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0168982   -0.0044412   0.0382375
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0680202    0.0226367   0.1134037
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017738   -0.0054495   0.0019019
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0079325   -0.0119492   0.0278142
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0000362   -0.0010950   0.0011673
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0016674   -0.0005169   0.0038517
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0102204    0.0007510   0.0196898
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0003527   -0.0023182   0.0030236
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0011590   -0.0262516   0.0239336
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0052653   -0.0504365   0.0609670
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0001303   -0.0015606   0.0018212
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0145119    0.0015502   0.0274736
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0065826   -0.0001597   0.0133249
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0004862   -0.0028185   0.0037908


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1781411   -0.0569878   0.3609652
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0991630   -0.0549019   0.2307272
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1519915   -0.2305999   0.4156359
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0101556   -0.0043532   0.0244547
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0517694   -0.0470659   0.1412754
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0085936   -0.0173296   0.0338562
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0768868   -0.0247395   0.1684345
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.3455428    0.0801903   0.5343447
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0183111   -0.0569013   0.0188700
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0255501   -0.0406475   0.0875367
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0005767   -0.0176621   0.0184886
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0100301   -0.0031907   0.0230767
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0250736    0.0015385   0.0480540
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0016647   -0.0110327   0.0142026
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0031480   -0.0736742   0.0627455
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0149182   -0.1562538   0.1607499
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0015281   -0.0187913   0.0214423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0222809    0.0020242   0.0421265
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0082937   -0.0002630   0.0167772
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0007846   -0.0045656   0.0061063
