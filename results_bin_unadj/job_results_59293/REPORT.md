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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        single    ever_co   n_cell       n
------------  ---------------  -----------------------------  -------  --------  -------  ------
0-24 months   COHORTS          GUATEMALA                      0               0      972    1197
0-24 months   COHORTS          GUATEMALA                      0               1      127    1197
0-24 months   COHORTS          GUATEMALA                      1               0       85    1197
0-24 months   COHORTS          GUATEMALA                      1               1       13    1197
0-24 months   COHORTS          INDIA                          0               0     4840    5374
0-24 months   COHORTS          INDIA                          0               1      525    5374
0-24 months   COHORTS          INDIA                          1               0        7    5374
0-24 months   COHORTS          INDIA                          1               1        2    5374
0-24 months   COHORTS          PHILIPPINES                    0               0     2396    3005
0-24 months   COHORTS          PHILIPPINES                    0               1      535    3005
0-24 months   COHORTS          PHILIPPINES                    1               0       56    3005
0-24 months   COHORTS          PHILIPPINES                    1               1       18    3005
0-24 months   Guatemala BSC    GUATEMALA                      0               0      232     282
0-24 months   Guatemala BSC    GUATEMALA                      0               1       20     282
0-24 months   Guatemala BSC    GUATEMALA                      1               0       28     282
0-24 months   Guatemala BSC    GUATEMALA                      1               1        2     282
0-24 months   JiVitA-4         BANGLADESH                     0               0     4540    5423
0-24 months   JiVitA-4         BANGLADESH                     0               1      875    5423
0-24 months   JiVitA-4         BANGLADESH                     1               0        7    5423
0-24 months   JiVitA-4         BANGLADESH                     1               1        1    5423
0-24 months   MAL-ED           BANGLADESH                     0               0      224     263
0-24 months   MAL-ED           BANGLADESH                     0               1       39     263
0-24 months   MAL-ED           BANGLADESH                     1               0        0     263
0-24 months   MAL-ED           BANGLADESH                     1               1        0     263
0-24 months   MAL-ED           BRAZIL                         0               0      196     233
0-24 months   MAL-ED           BRAZIL                         0               1        1     233
0-24 months   MAL-ED           BRAZIL                         1               0       34     233
0-24 months   MAL-ED           BRAZIL                         1               1        2     233
0-24 months   MAL-ED           INDIA                          0               0      196     249
0-24 months   MAL-ED           INDIA                          0               1       53     249
0-24 months   MAL-ED           INDIA                          1               0        0     249
0-24 months   MAL-ED           INDIA                          1               1        0     249
0-24 months   MAL-ED           NEPAL                          0               0      218     240
0-24 months   MAL-ED           NEPAL                          0               1       22     240
0-24 months   MAL-ED           NEPAL                          1               0        0     240
0-24 months   MAL-ED           NEPAL                          1               1        0     240
0-24 months   MAL-ED           PERU                           0               0      260     302
0-24 months   MAL-ED           PERU                           0               1        8     302
0-24 months   MAL-ED           PERU                           1               0       30     302
0-24 months   MAL-ED           PERU                           1               1        4     302
0-24 months   MAL-ED           SOUTH AFRICA                   0               0      165     312
0-24 months   MAL-ED           SOUTH AFRICA                   0               1       11     312
0-24 months   MAL-ED           SOUTH AFRICA                   1               0      124     312
0-24 months   MAL-ED           SOUTH AFRICA                   1               1       12     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      229     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1       22     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        9     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        1     261
0-24 months   PROBIT           BELARUS                        0               0    16188   16897
0-24 months   PROBIT           BELARUS                        0               1       16   16897
0-24 months   PROBIT           BELARUS                        1               0      691   16897
0-24 months   PROBIT           BELARUS                        1               1        2   16897
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2039    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      112    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      217    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        7    2375
0-24 months   ZVITAMBO         ZIMBABWE                       0               0    12475   13886
0-24 months   ZVITAMBO         ZIMBABWE                       0               1      534   13886
0-24 months   ZVITAMBO         ZIMBABWE                       1               0      824   13886
0-24 months   ZVITAMBO         ZIMBABWE                       1               1       53   13886
0-6 months    COHORTS          GUATEMALA                      0               0      872     958
0-6 months    COHORTS          GUATEMALA                      0               1       17     958
0-6 months    COHORTS          GUATEMALA                      1               0       68     958
0-6 months    COHORTS          GUATEMALA                      1               1        1     958
0-6 months    COHORTS          INDIA                          0               0     5020    5169
0-6 months    COHORTS          INDIA                          0               1      141    5169
0-6 months    COHORTS          INDIA                          1               0        8    5169
0-6 months    COHORTS          INDIA                          1               1        0    5169
0-6 months    COHORTS          PHILIPPINES                    0               0     2868    3004
0-6 months    COHORTS          PHILIPPINES                    0               1       62    3004
0-6 months    COHORTS          PHILIPPINES                    1               0       68    3004
0-6 months    COHORTS          PHILIPPINES                    1               1        6    3004
0-6 months    Guatemala BSC    GUATEMALA                      0               0      233     265
0-6 months    Guatemala BSC    GUATEMALA                      0               1        5     265
0-6 months    Guatemala BSC    GUATEMALA                      1               0       25     265
0-6 months    Guatemala BSC    GUATEMALA                      1               1        2     265
0-6 months    JiVitA-4         BANGLADESH                     0               0     4936    5077
0-6 months    JiVitA-4         BANGLADESH                     0               1      134    5077
0-6 months    JiVitA-4         BANGLADESH                     1               0        7    5077
0-6 months    JiVitA-4         BANGLADESH                     1               1        0    5077
0-6 months    MAL-ED           BANGLADESH                     0               0      254     263
0-6 months    MAL-ED           BANGLADESH                     0               1        9     263
0-6 months    MAL-ED           BANGLADESH                     1               0        0     263
0-6 months    MAL-ED           BANGLADESH                     1               1        0     263
0-6 months    MAL-ED           BRAZIL                         0               0      197     233
0-6 months    MAL-ED           BRAZIL                         0               1        0     233
0-6 months    MAL-ED           BRAZIL                         1               0       35     233
0-6 months    MAL-ED           BRAZIL                         1               1        1     233
0-6 months    MAL-ED           INDIA                          0               0      231     249
0-6 months    MAL-ED           INDIA                          0               1       18     249
0-6 months    MAL-ED           INDIA                          1               0        0     249
0-6 months    MAL-ED           INDIA                          1               1        0     249
0-6 months    MAL-ED           NEPAL                          0               0      232     240
0-6 months    MAL-ED           NEPAL                          0               1        8     240
0-6 months    MAL-ED           NEPAL                          1               0        0     240
0-6 months    MAL-ED           NEPAL                          1               1        0     240
0-6 months    MAL-ED           PERU                           0               0      268     302
0-6 months    MAL-ED           PERU                           0               1        0     302
0-6 months    MAL-ED           PERU                           1               0       32     302
0-6 months    MAL-ED           PERU                           1               1        2     302
0-6 months    MAL-ED           SOUTH AFRICA                   0               0      174     312
0-6 months    MAL-ED           SOUTH AFRICA                   0               1        2     312
0-6 months    MAL-ED           SOUTH AFRICA                   1               0      133     312
0-6 months    MAL-ED           SOUTH AFRICA                   1               1        3     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      247     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1        4     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0       10     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     261
0-6 months    PROBIT           BELARUS                        0               0    16188   16892
0-6 months    PROBIT           BELARUS                        0               1       11   16892
0-6 months    PROBIT           BELARUS                        1               0      691   16892
0-6 months    PROBIT           BELARUS                        1               1        2   16892
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2133    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       18    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      223    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1    2375
0-6 months    ZVITAMBO         ZIMBABWE                       0               0    12776   13790
0-6 months    ZVITAMBO         ZIMBABWE                       0               1      148   13790
0-6 months    ZVITAMBO         ZIMBABWE                       1               0      849   13790
0-6 months    ZVITAMBO         ZIMBABWE                       1               1       17   13790
6-24 months   COHORTS          GUATEMALA                      0               0      900    1110
6-24 months   COHORTS          GUATEMALA                      0               1      116    1110
6-24 months   COHORTS          GUATEMALA                      1               0       81    1110
6-24 months   COHORTS          GUATEMALA                      1               1       13    1110
6-24 months   COHORTS          INDIA                          0               0     4549    5023
6-24 months   COHORTS          INDIA                          0               1      465    5023
6-24 months   COHORTS          INDIA                          1               0        7    5023
6-24 months   COHORTS          INDIA                          1               1        2    5023
6-24 months   COHORTS          PHILIPPINES                    0               0     2188    2774
6-24 months   COHORTS          PHILIPPINES                    0               1      514    2774
6-24 months   COHORTS          PHILIPPINES                    1               0       55    2774
6-24 months   COHORTS          PHILIPPINES                    1               1       17    2774
6-24 months   Guatemala BSC    GUATEMALA                      0               0      219     266
6-24 months   Guatemala BSC    GUATEMALA                      0               1       17     266
6-24 months   Guatemala BSC    GUATEMALA                      1               0       29     266
6-24 months   Guatemala BSC    GUATEMALA                      1               1        1     266
6-24 months   JiVitA-4         BANGLADESH                     0               0     4611    5419
6-24 months   JiVitA-4         BANGLADESH                     0               1      800    5419
6-24 months   JiVitA-4         BANGLADESH                     1               0        7    5419
6-24 months   JiVitA-4         BANGLADESH                     1               1        1    5419
6-24 months   MAL-ED           BANGLADESH                     0               0      204     239
6-24 months   MAL-ED           BANGLADESH                     0               1       35     239
6-24 months   MAL-ED           BANGLADESH                     1               0        0     239
6-24 months   MAL-ED           BANGLADESH                     1               1        0     239
6-24 months   MAL-ED           BRAZIL                         0               0      176     207
6-24 months   MAL-ED           BRAZIL                         0               1        1     207
6-24 months   MAL-ED           BRAZIL                         1               0       29     207
6-24 months   MAL-ED           BRAZIL                         1               1        1     207
6-24 months   MAL-ED           INDIA                          0               0      186     233
6-24 months   MAL-ED           INDIA                          0               1       47     233
6-24 months   MAL-ED           INDIA                          1               0        0     233
6-24 months   MAL-ED           INDIA                          1               1        0     233
6-24 months   MAL-ED           NEPAL                          0               0      219     235
6-24 months   MAL-ED           NEPAL                          0               1       16     235
6-24 months   MAL-ED           NEPAL                          1               0        0     235
6-24 months   MAL-ED           NEPAL                          1               1        0     235
6-24 months   MAL-ED           PERU                           0               0      230     270
6-24 months   MAL-ED           PERU                           0               1        8     270
6-24 months   MAL-ED           PERU                           1               0       29     270
6-24 months   MAL-ED           PERU                           1               1        3     270
6-24 months   MAL-ED           SOUTH AFRICA                   0               0      135     259
6-24 months   MAL-ED           SOUTH AFRICA                   0               1        9     259
6-24 months   MAL-ED           SOUTH AFRICA                   1               0      104     259
6-24 months   MAL-ED           SOUTH AFRICA                   1               1       11     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      217     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1       20     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        7     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        1     245
6-24 months   PROBIT           BELARUS                        0               0    15914   16598
6-24 months   PROBIT           BELARUS                        0               1        5   16598
6-24 months   PROBIT           BELARUS                        1               0      678   16598
6-24 months   PROBIT           BELARUS                        1               1        1   16598
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1712    2002
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      107    2002
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      177    2002
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        6    2002
6-24 months   ZVITAMBO         ZIMBABWE                       0               0     9699   10769
6-24 months   ZVITAMBO         ZIMBABWE                       0               1      402   10769
6-24 months   ZVITAMBO         ZIMBABWE                       1               0      629   10769
6-24 months   ZVITAMBO         ZIMBABWE                       1               1       39   10769


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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
![](/tmp/c6f40dc9-723e-43c4-b920-e52b3a96a42b/85ff1d22-81f1-4467-86ec-56634c052669/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c6f40dc9-723e-43c4-b920-e52b3a96a42b/85ff1d22-81f1-4467-86ec-56634c052669/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c6f40dc9-723e-43c4-b920-e52b3a96a42b/85ff1d22-81f1-4467-86ec-56634c052669/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c6f40dc9-723e-43c4-b920-e52b3a96a42b/85ff1d22-81f1-4467-86ec-56634c052669/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.1155596   0.0966506   0.1344686
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.1326531   0.0654682   0.1998379
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.1825316   0.1685394   0.1965237
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.2432432   0.1469379   0.3395486
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.0625000   0.0266809   0.0983191
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.0882353   0.0404892   0.1359814
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0520688   0.0426781   0.0614595
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0312500   0.0084599   0.0540401
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0410485   0.0376390   0.0444580
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0604333   0.0446621   0.0762045
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.0211604   0.0159465   0.0263744
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.0810811   0.0197904   0.1423718
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0114516   0.0096172   0.0132860
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0196305   0.0103906   0.0288703
6-24 months   COHORTS          GUATEMALA                      0                    NA                0.1141732   0.0946094   0.1337370
6-24 months   COHORTS          GUATEMALA                      1                    NA                0.1382979   0.0684801   0.2081157
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.1902295   0.1754280   0.2050309
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.2361111   0.1379966   0.3342257
6-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.0625000   0.0228875   0.1021125
6-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.0956522   0.0417937   0.1495107
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0588235   0.0480079   0.0696391
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0327869   0.0069796   0.0585942
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0397980   0.0359856   0.0436104
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0583832   0.0406020   0.0761644


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1169591   0.0987457   0.1351724
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1840266   0.1701694   0.1978839
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.0737179   0.0446760   0.1027599
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0501053   0.0413295   0.0588811
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0422728   0.0389260   0.0456196
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0226365   0.0173166   0.0279564
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0119652   0.0101504   0.0137800
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1162162   0.0973542   0.1350783
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1914203   0.1767774   0.2060633
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.0772201   0.0446475   0.1097927
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0564436   0.0463321   0.0665551
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0409509   0.0372078   0.0446940


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      1                    0                 1.1479190   0.6741541   1.954624
0-24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    1                    0                 1.3326092   0.8903545   1.994540
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0                 1.4117647   0.6418745   3.105092
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6001674   0.2831440   1.272147
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.4722411   1.1195393   1.936059
0-6 months    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    1                    0                 3.8317350   1.7302287   8.485695
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.7142188   1.0426406   2.818369
6-24 months   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      1                    0                 1.2112986   0.7107524   2.064354
6-24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    1                    0                 1.2411911   0.8132682   1.894277
6-24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0                 1.5304348   0.6555784   3.572770
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5573770   0.2483727   1.250819
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.4669877   1.0660297   2.018755


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0013995   -0.0043209   0.0071199
0-24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0014951   -0.0009610   0.0039511
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0112179   -0.0148387   0.0372746
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019635   -0.0043012   0.0003741
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012243    0.0002022   0.0022464
0-6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0014761   -0.0000972   0.0030493
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0005136   -0.0000789   0.0011061
6-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0020430   -0.0041100   0.0081959
6-24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0011909   -0.0013988   0.0037806
6-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0147201   -0.0150335   0.0444737
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0023800   -0.0049588   0.0001989
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0011528    0.0000216   0.0022840


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0119654   -0.0381471   0.0596590
0-24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0081242   -0.0053058   0.0213747
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.1521739   -0.2796753   0.4382879
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0391883   -0.0864337   0.0060025
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0289616    0.0045818   0.0527443
0-6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0652078   -0.0052026   0.1306862
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0429269   -0.0074536   0.0907881
6-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0175792   -0.0367571   0.0690678
6-24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0062212   -0.0073955   0.0196540
6-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.1906250   -0.2911290   0.4926240
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0421655   -0.0882963   0.0020098
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0281517    0.0002452   0.0552793
