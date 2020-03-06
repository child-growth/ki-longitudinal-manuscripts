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

agecat      studyid          country                        single    sstunted   n_cell       n
----------  ---------------  -----------------------------  -------  ---------  -------  ------
Birth       COHORTS          GUATEMALA                      0                0      712     767
Birth       COHORTS          GUATEMALA                      0                1        7     767
Birth       COHORTS          GUATEMALA                      1                0       46     767
Birth       COHORTS          GUATEMALA                      1                1        2     767
Birth       COHORTS          INDIA                          0                0     4630    4778
Birth       COHORTS          INDIA                          0                1      141    4778
Birth       COHORTS          INDIA                          1                0        7    4778
Birth       COHORTS          INDIA                          1                1        0    4778
Birth       COHORTS          PHILIPPINES                    0                0     2893    3010
Birth       COHORTS          PHILIPPINES                    0                1       43    3010
Birth       COHORTS          PHILIPPINES                    1                0       72    3010
Birth       COHORTS          PHILIPPINES                    1                1        2    3010
Birth       MAL-ED           BANGLADESH                     0                0      222     231
Birth       MAL-ED           BANGLADESH                     0                1        9     231
Birth       MAL-ED           BANGLADESH                     1                0        0     231
Birth       MAL-ED           BANGLADESH                     1                1        0     231
Birth       MAL-ED           BRAZIL                         0                0       55      65
Birth       MAL-ED           BRAZIL                         0                1        2      65
Birth       MAL-ED           BRAZIL                         1                0        7      65
Birth       MAL-ED           BRAZIL                         1                1        1      65
Birth       MAL-ED           INDIA                          0                0       45      47
Birth       MAL-ED           INDIA                          0                1        2      47
Birth       MAL-ED           INDIA                          1                0        0      47
Birth       MAL-ED           INDIA                          1                1        0      47
Birth       MAL-ED           NEPAL                          0                0       26      27
Birth       MAL-ED           NEPAL                          0                1        1      27
Birth       MAL-ED           NEPAL                          1                0        0      27
Birth       MAL-ED           NEPAL                          1                1        0      27
Birth       MAL-ED           PERU                           0                0      206     233
Birth       MAL-ED           PERU                           0                1        3     233
Birth       MAL-ED           PERU                           1                0       23     233
Birth       MAL-ED           PERU                           1                1        1     233
Birth       MAL-ED           SOUTH AFRICA                   0                0       63     123
Birth       MAL-ED           SOUTH AFRICA                   0                1        0     123
Birth       MAL-ED           SOUTH AFRICA                   1                0       58     123
Birth       MAL-ED           SOUTH AFRICA                   1                1        2     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      112     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       10     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        3     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     125
Birth       PROBIT           BELARUS                        0                0    13346   13893
Birth       PROBIT           BELARUS                        0                1        5   13893
Birth       PROBIT           BELARUS                        1                0      542   13893
Birth       PROBIT           BELARUS                        1                1        0   13893
Birth       ZVITAMBO         ZIMBABWE                       0                0    12535   13817
Birth       ZVITAMBO         ZIMBABWE                       0                1      407   13817
Birth       ZVITAMBO         ZIMBABWE                       1                0      843   13817
Birth       ZVITAMBO         ZIMBABWE                       1                1       32   13817
6 months    COHORTS          GUATEMALA                      0                0      724     893
6 months    COHORTS          GUATEMALA                      0                1      102     893
6 months    COHORTS          GUATEMALA                      1                0       53     893
6 months    COHORTS          GUATEMALA                      1                1       14     893
6 months    COHORTS          INDIA                          0                0     4720    4971
6 months    COHORTS          INDIA                          0                1      242    4971
6 months    COHORTS          INDIA                          1                0        9    4971
6 months    COHORTS          INDIA                          1                1        0    4971
6 months    COHORTS          PHILIPPINES                    0                0     2482    2676
6 months    COHORTS          PHILIPPINES                    0                1      126    2676
6 months    COHORTS          PHILIPPINES                    1                0       64    2676
6 months    COHORTS          PHILIPPINES                    1                1        4    2676
6 months    Guatemala BSC    GUATEMALA                      0                0      230     277
6 months    Guatemala BSC    GUATEMALA                      0                1       18     277
6 months    Guatemala BSC    GUATEMALA                      1                0       22     277
6 months    Guatemala BSC    GUATEMALA                      1                1        7     277
6 months    MAL-ED           BANGLADESH                     0                0      233     241
6 months    MAL-ED           BANGLADESH                     0                1        8     241
6 months    MAL-ED           BANGLADESH                     1                0        0     241
6 months    MAL-ED           BANGLADESH                     1                1        0     241
6 months    MAL-ED           BRAZIL                         0                0      179     209
6 months    MAL-ED           BRAZIL                         0                1        0     209
6 months    MAL-ED           BRAZIL                         1                0       30     209
6 months    MAL-ED           BRAZIL                         1                1        0     209
6 months    MAL-ED           INDIA                          0                0      225     234
6 months    MAL-ED           INDIA                          0                1        9     234
6 months    MAL-ED           INDIA                          1                0        0     234
6 months    MAL-ED           INDIA                          1                1        0     234
6 months    MAL-ED           NEPAL                          0                0      235     236
6 months    MAL-ED           NEPAL                          0                1        1     236
6 months    MAL-ED           NEPAL                          1                0        0     236
6 months    MAL-ED           NEPAL                          1                1        0     236
6 months    MAL-ED           PERU                           0                0      232     273
6 months    MAL-ED           PERU                           0                1        8     273
6 months    MAL-ED           PERU                           1                0       31     273
6 months    MAL-ED           PERU                           1                1        2     273
6 months    MAL-ED           SOUTH AFRICA                   0                0      139     254
6 months    MAL-ED           SOUTH AFRICA                   0                1        1     254
6 months    MAL-ED           SOUTH AFRICA                   1                0      109     254
6 months    MAL-ED           SOUTH AFRICA                   1                1        5     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      225     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       14     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        8     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     247
6 months    PROBIT           BELARUS                        0                0    14947   15760
6 months    PROBIT           BELARUS                        0                1      170   15760
6 months    PROBIT           BELARUS                        1                0      636   15760
6 months    PROBIT           BELARUS                        1                1        7   15760
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1818    2013
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       17    2013
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      176    2013
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        2    2013
6 months    ZVITAMBO         ZIMBABWE                       0                0     7812    8638
6 months    ZVITAMBO         ZIMBABWE                       0                1      313    8638
6 months    ZVITAMBO         ZIMBABWE                       1                0      476    8638
6 months    ZVITAMBO         ZIMBABWE                       1                1       37    8638
24 months   COHORTS          GUATEMALA                      0                0      480    1010
24 months   COHORTS          GUATEMALA                      0                1      443    1010
24 months   COHORTS          GUATEMALA                      1                0       34    1010
24 months   COHORTS          GUATEMALA                      1                1       53    1010
24 months   COHORTS          INDIA                          0                0     2784    3753
24 months   COHORTS          INDIA                          0                1      960    3753
24 months   COHORTS          INDIA                          1                0        6    3753
24 months   COHORTS          INDIA                          1                1        3    3753
24 months   COHORTS          PHILIPPINES                    0                0     1666    2416
24 months   COHORTS          PHILIPPINES                    0                1      691    2416
24 months   COHORTS          PHILIPPINES                    1                0       46    2416
24 months   COHORTS          PHILIPPINES                    1                1       13    2416
24 months   MAL-ED           BANGLADESH                     0                0      184     212
24 months   MAL-ED           BANGLADESH                     0                1       28     212
24 months   MAL-ED           BANGLADESH                     1                0        0     212
24 months   MAL-ED           BANGLADESH                     1                1        0     212
24 months   MAL-ED           BRAZIL                         0                0      148     169
24 months   MAL-ED           BRAZIL                         0                1        0     169
24 months   MAL-ED           BRAZIL                         1                0       20     169
24 months   MAL-ED           BRAZIL                         1                1        1     169
24 months   MAL-ED           INDIA                          0                0      195     225
24 months   MAL-ED           INDIA                          0                1       30     225
24 months   MAL-ED           INDIA                          1                0        0     225
24 months   MAL-ED           INDIA                          1                1        0     225
24 months   MAL-ED           NEPAL                          0                0      221     228
24 months   MAL-ED           NEPAL                          0                1        7     228
24 months   MAL-ED           NEPAL                          1                0        0     228
24 months   MAL-ED           NEPAL                          1                1        0     228
24 months   MAL-ED           PERU                           0                0      165     201
24 months   MAL-ED           PERU                           0                1       11     201
24 months   MAL-ED           PERU                           1                0       21     201
24 months   MAL-ED           PERU                           1                1        4     201
24 months   MAL-ED           SOUTH AFRICA                   0                0      119     238
24 months   MAL-ED           SOUTH AFRICA                   0                1       12     238
24 months   MAL-ED           SOUTH AFRICA                   1                0       92     238
24 months   MAL-ED           SOUTH AFRICA                   1                1       15     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      141     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       67     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        3     214
24 months   PROBIT           BELARUS                        0                0     3828    4035
24 months   PROBIT           BELARUS                        0                1       62    4035
24 months   PROBIT           BELARUS                        1                0      142    4035
24 months   PROBIT           BELARUS                        1                1        3    4035
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0                0     1379    1637
24 months   ZVITAMBO         ZIMBABWE                       0                1      154    1637
24 months   ZVITAMBO         ZIMBABWE                       1                0       81    1637
24 months   ZVITAMBO         ZIMBABWE                       1                1       23    1637


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/79dc04dd-adf3-4045-88ac-4f8dcff8aaea/2d3bc4b2-2317-4b7b-ae82-27a91c7ad2e2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/79dc04dd-adf3-4045-88ac-4f8dcff8aaea/2d3bc4b2-2317-4b7b-ae82-27a91c7ad2e2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/79dc04dd-adf3-4045-88ac-4f8dcff8aaea/2d3bc4b2-2317-4b7b-ae82-27a91c7ad2e2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/79dc04dd-adf3-4045-88ac-4f8dcff8aaea/2d3bc4b2-2317-4b7b-ae82-27a91c7ad2e2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ZVITAMBO        ZIMBABWE       0                    NA                0.0314480   0.0284411   0.0344549
Birth       ZVITAMBO        ZIMBABWE       1                    NA                0.0365714   0.0241337   0.0490091
6 months    COHORTS         GUATEMALA      0                    NA                0.1234867   0.1010380   0.1459354
6 months    COHORTS         GUATEMALA      1                    NA                0.2089552   0.1115502   0.3063602
6 months    Guatemala BSC   GUATEMALA      0                    NA                0.0725806   0.0402320   0.1049293
6 months    Guatemala BSC   GUATEMALA      1                    NA                0.2413793   0.0853534   0.3974052
6 months    PROBIT          BELARUS        0                    NA                0.0112456   0.0052992   0.0171921
6 months    PROBIT          BELARUS        1                    NA                0.0108865   0.0033545   0.0184185
6 months    ZVITAMBO        ZIMBABWE       0                    NA                0.0385231   0.0343381   0.0427080
6 months    ZVITAMBO        ZIMBABWE       1                    NA                0.0721248   0.0497375   0.0945120
24 months   COHORTS         GUATEMALA      0                    NA                0.4799567   0.4477101   0.5122032
24 months   COHORTS         GUATEMALA      1                    NA                0.6091954   0.5066156   0.7117752
24 months   COHORTS         PHILIPPINES    0                    NA                0.2931693   0.2747771   0.3115615
24 months   COHORTS         PHILIPPINES    1                    NA                0.2203390   0.1170092   0.3236688
24 months   MAL-ED          SOUTH AFRICA   0                    NA                0.0916031   0.0421014   0.1411047
24 months   MAL-ED          SOUTH AFRICA   1                    NA                0.1401869   0.0742655   0.2061083
24 months   ZVITAMBO        ZIMBABWE       0                    NA                0.1004566   0.0854041   0.1155092
24 months   ZVITAMBO        ZIMBABWE       1                    NA                0.2211538   0.1413659   0.3009418


### Parameter: E(Y)


agecat      studyid         country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ZVITAMBO        ZIMBABWE       NA                   NA                0.0317725   0.0288478   0.0346971
6 months    COHORTS         GUATEMALA      NA                   NA                0.1298992   0.1078368   0.1519617
6 months    Guatemala BSC   GUATEMALA      NA                   NA                0.0902527   0.0564475   0.1240580
6 months    PROBIT          BELARUS        NA                   NA                0.0112310   0.0054733   0.0169886
6 months    ZVITAMBO        ZIMBABWE       NA                   NA                0.0405186   0.0363604   0.0446769
24 months   COHORTS         GUATEMALA      NA                   NA                0.4910891   0.4602428   0.5219354
24 months   COHORTS         PHILIPPINES    NA                   NA                0.2913907   0.2732677   0.3095138
24 months   MAL-ED          SOUTH AFRICA   NA                   NA                0.1134454   0.0730697   0.1538211
24 months   ZVITAMBO        ZIMBABWE       NA                   NA                0.1081246   0.0930769   0.1231723


### Parameter: RR


agecat      studyid         country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  -------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
Birth       ZVITAMBO        ZIMBABWE       1                    0                 1.1629175   0.8168114   1.655679
6 months    COHORTS         GUATEMALA      0                    0                 1.0000000   1.0000000   1.000000
6 months    COHORTS         GUATEMALA      1                    0                 1.6921276   1.0259726   2.790811
6 months    Guatemala BSC   GUATEMALA      0                    0                 1.0000000   1.0000000   1.000000
6 months    Guatemala BSC   GUATEMALA      1                    0                 3.3256705   1.5166712   7.292342
6 months    PROBIT          BELARUS        0                    0                 1.0000000   1.0000000   1.000000
6 months    PROBIT          BELARUS        1                    0                 0.9680633   0.4323138   2.167746
6 months    ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
6 months    ZVITAMBO        ZIMBABWE       1                    0                 1.8722481   1.3475413   2.601266
24 months   COHORTS         GUATEMALA      0                    0                 1.0000000   1.0000000   1.000000
24 months   COHORTS         GUATEMALA      1                    0                 1.2692717   1.0588132   1.521563
24 months   COHORTS         PHILIPPINES    0                    0                 1.0000000   1.0000000   1.000000
24 months   COHORTS         PHILIPPINES    1                    0                 0.7515760   0.4682659   1.206294
24 months   MAL-ED          SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.000000
24 months   MAL-ED          SOUTH AFRICA   1                    0                 1.5303738   0.7476410   3.132578
24 months   ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
24 months   ZVITAMBO        ZIMBABWE       1                    0                 2.2014860   1.4895487   3.253697


### Parameter: PAR


agecat      studyid         country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ZVITAMBO        ZIMBABWE       0                    NA                 0.0003245   -0.0004862   0.0011351
6 months    COHORTS         GUATEMALA      0                    NA                 0.0064125   -0.0012313   0.0140564
6 months    Guatemala BSC   GUATEMALA      0                    NA                 0.0176721   -0.0000894   0.0354335
6 months    PROBIT          BELARUS        0                    NA                -0.0000147   -0.0003765   0.0003472
6 months    ZVITAMBO        ZIMBABWE       0                    NA                 0.0019956    0.0006326   0.0033585
24 months   COHORTS         GUATEMALA      0                    NA                 0.0111324    0.0016037   0.0206612
24 months   COHORTS         PHILIPPINES    0                    NA                -0.0017786   -0.0044404   0.0008833
24 months   MAL-ED          SOUTH AFRICA   0                    NA                 0.0218423   -0.0153477   0.0590323
24 months   ZVITAMBO        ZIMBABWE       0                    NA                 0.0076680    0.0023160   0.0130200


### Parameter: PAF


agecat      studyid         country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ZVITAMBO        ZIMBABWE       0                    NA                 0.0102118   -0.0156162   0.0353831
6 months    COHORTS         GUATEMALA      0                    NA                 0.0493655   -0.0108817   0.1060220
6 months    Guatemala BSC   GUATEMALA      0                    NA                 0.1958065   -0.0121457   0.3610334
6 months    PROBIT          BELARUS        0                    NA                -0.0013047   -0.0337044   0.0300795
6 months    ZVITAMBO        ZIMBABWE       0                    NA                 0.0492505    0.0153753   0.0819602
24 months   COHORTS         GUATEMALA      0                    NA                 0.0226689    0.0030245   0.0419262
24 months   COHORTS         PHILIPPINES    0                    NA                -0.0061037   -0.0152774   0.0029872
24 months   MAL-ED          SOUTH AFRICA   0                    NA                 0.1925360   -0.2032610   0.4581408
24 months   ZVITAMBO        ZIMBABWE       0                    NA                 0.0709181    0.0208870   0.1183928
