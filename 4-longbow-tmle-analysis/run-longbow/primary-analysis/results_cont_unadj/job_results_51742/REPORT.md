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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            52     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             38     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          54     144
Birth       ki0047075b-MAL-ED          INDIA                          High            38     123
Birth       ki0047075b-MAL-ED          INDIA                          Low             50     123
Birth       ki0047075b-MAL-ED          INDIA                          Medium          35     123
Birth       ki0047075b-MAL-ED          NEPAL                          High            27      67
Birth       ki0047075b-MAL-ED          NEPAL                          Low             19      67
Birth       ki0047075b-MAL-ED          NEPAL                          Medium          21      67
Birth       ki0047075b-MAL-ED          PERU                           High           116     236
Birth       ki0047075b-MAL-ED          PERU                           Low             65     236
Birth       ki0047075b-MAL-ED          PERU                           Medium          55     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            35      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          26      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High            65     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             29     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           7     101
Birth       ki1000304b-SAS-CompFeed    INDIA                          High            34     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low             79     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium          74     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             8      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low             12      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           7      27
Birth       ki1119695-PROBIT           BELARUS                        High          2058   13416
Birth       ki1119695-PROBIT           BELARUS                        Low           5316   13416
Birth       ki1119695-PROBIT           BELARUS                        Medium        6042   13416
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High           976   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2276   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium       10208   13460
Birth       ki1135781-COHORTS          GUATEMALA                      High           155     804
Birth       ki1135781-COHORTS          GUATEMALA                      Low            355     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         294     804
Birth       ki1135781-COHORTS          INDIA                          High           527    1354
Birth       ki1135781-COHORTS          INDIA                          Low            439    1354
Birth       ki1135781-COHORTS          INDIA                          Medium         388    1354
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1027    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            827    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium        1019    2873
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          3844   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           8468   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        6551   18863
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High            53     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            333     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium          65     451
6 months    ki0047075b-MAL-ED          BANGLADESH                     High            50     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low             36     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          46     132
6 months    ki0047075b-MAL-ED          INDIA                          High            43     138
6 months    ki0047075b-MAL-ED          INDIA                          Low             54     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium          41     138
6 months    ki0047075b-MAL-ED          NEPAL                          High            40      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low             27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium          28      95
6 months    ki0047075b-MAL-ED          PERU                           High           107     224
6 months    ki0047075b-MAL-ED          PERU                           Low             60     224
6 months    ki0047075b-MAL-ED          PERU                           Medium          57     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            33      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low             35      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          24      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           127     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             55     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          19     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           348    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            550    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         435    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High           101     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            132     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium         147     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           203     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            201     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         179     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           279     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            223     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1083    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2018
6 months    ki1113344-GMS-Nepal        NEPAL                          High           136     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            243     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium         183     562
6 months    ki1119695-PROBIT           BELARUS                        High          2513   15211
6 months    ki1119695-PROBIT           BELARUS                        Low           5962   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium        6736   15211
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           556    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1404    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6103    8063
6 months    ki1135781-COHORTS          GUATEMALA                      High           165     904
6 months    ki1135781-COHORTS          GUATEMALA                      Low            406     904
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         333     904
6 months    ki1135781-COHORTS          INDIA                          High           544    1385
6 months    ki1135781-COHORTS          INDIA                          Low            450    1385
6 months    ki1135781-COHORTS          INDIA                          Medium         391    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High           891    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            746    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         927    2564
6 months    ki1148112-LCNI-5           MALAWI                         High           251     812
6 months    ki1148112-LCNI-5           MALAWI                         Low            290     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium         271     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4279   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6304   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5549   16132
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High           346    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1994    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium         406    2746
24 months   ki0047075b-MAL-ED          BANGLADESH                     High            40     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             35     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          42     117
24 months   ki0047075b-MAL-ED          INDIA                          High            42     132
24 months   ki0047075b-MAL-ED          INDIA                          Low             51     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium          39     132
24 months   ki0047075b-MAL-ED          NEPAL                          High            38      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low             27      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium          26      91
24 months   ki0047075b-MAL-ED          PERU                           High            77     164
24 months   ki0047075b-MAL-ED          PERU                           Low             44     164
24 months   ki0047075b-MAL-ED          PERU                           Medium          43     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low             34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          23      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           114     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             47     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          16     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           202     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            196     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         179     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           211     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            144     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         159     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High           116     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            221     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         161     498
24 months   ki1119695-PROBIT           BELARUS                        High           627    3913
24 months   ki1119695-PROBIT           BELARUS                        Low           1516    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium        1770    3913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            19     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            105     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         310     434
24 months   ki1135781-COHORTS          GUATEMALA                      High           177     995
24 months   ki1135781-COHORTS          GUATEMALA                      Low            464     995
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         354     995
24 months   ki1135781-COHORTS          INDIA                          High           539    1380
24 months   ki1135781-COHORTS          INDIA                          Low            450    1380
24 months   ki1135781-COHORTS          INDIA                          Medium         391    1380
24 months   ki1135781-COHORTS          PHILIPPINES                    High           798    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            692    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         824    2314
24 months   ki1148112-LCNI-5           MALAWI                         High           173     571
24 months   ki1148112-LCNI-5           MALAWI                         Low            203     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium         195     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2070    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3379    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2844    8293
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High           333    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1963    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         398    2694


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/ef613e55-fe80-435e-9fbb-4dd59da5b5c2/e5555a37-91f3-4a45-9439-92d7378f4736/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ef613e55-fe80-435e-9fbb-4dd59da5b5c2/e5555a37-91f3-4a45-9439-92d7378f4736/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ef613e55-fe80-435e-9fbb-4dd59da5b5c2/e5555a37-91f3-4a45-9439-92d7378f4736/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.2300000   -1.4838603   -0.9761397
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.0389474   -1.3970784   -0.6808164
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0420370   -1.3390022   -0.7450719
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -0.9807895   -1.3137126   -0.6478663
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.7452000   -1.0398693   -0.4505307
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.0128571   -1.2886675   -0.7370468
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.4788889   -0.8145510   -0.1432268
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.5826316   -1.0294361   -0.1358270
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               NA                -1.0342857   -1.6877780   -0.3807935
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.9062931   -1.0768668   -0.7357194
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.8835385   -1.1343662   -0.6327108
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.9309091   -1.1257413   -0.7360769
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.8471429   -1.2004791   -0.4938066
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.5620000   -0.8823507   -0.2416493
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.8850000   -1.1842018   -0.5857982
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.8247692   -1.1152019   -0.5343366
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.0258621   -1.4907115   -0.5610127
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.4028571   -2.4977820   -0.3079322
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.2214706   -1.4935953   -0.9493458
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.4784810   -1.7827919   -1.1741701
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3847297   -1.6578394   -1.1116201
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0037500   -1.6907705   -0.3167295
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.9183333   -1.4761431   -0.3605236
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.5600000   -2.3817661   -0.7382339
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                 1.4041399    1.2358387    1.5724412
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                 1.2876279    1.1059335    1.4693223
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                 1.3517925    1.1959385    1.5076464
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.3994877   -0.4780099   -0.3209655
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5761555   -0.6274212   -0.5248898
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.4903870   -0.5142118   -0.4665621
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0483226   -0.1355878    0.2322330
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0623099   -0.0775841    0.2022038
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.2736735    0.1393658    0.4079812
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.5201708   -0.6170768   -0.4232648
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.7242825   -0.8211851   -0.6273799
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -0.5719845   -0.6800311   -0.4639379
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0591431   -0.1231379    0.0048516
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3975453   -0.4734748   -0.3216159
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2964966   -0.3640541   -0.2289390
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.3709313   -1.4112670   -1.3305957
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.6184117   -1.6458283   -1.5909950
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.6201954   -1.6523086   -1.5880822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.5249057   -1.8111865   -1.2386248
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.5288589   -1.6476782   -1.4100395
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.4658462   -1.7887418   -1.1429505
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.0097667   -1.2130902   -0.8064431
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.1874537   -1.4894083   -0.8854991
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0727899   -1.3303500   -0.8152297
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -1.1004651   -1.3408536   -0.8600766
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.0597531   -1.3132495   -0.8062566
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.1380488   -1.3878793   -0.8882183
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.5380000   -0.7790474   -0.2969526
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.5626543   -0.8802382   -0.2450705
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.7701190   -1.1811154   -0.3591227
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -1.3199065   -1.4914186   -1.1483945
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -1.3956944   -1.6330679   -1.1583210
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -1.2523684   -1.4727792   -1.0319577
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.9476768   -1.2394634   -0.6558901
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.8677143   -1.2196287   -0.5157998
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.2011806   -1.5290401   -0.8733210
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2561680   -1.4284347   -1.0839012
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.3922727   -1.6405138   -1.1440316
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.5131579   -2.0106955   -1.0156203
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.1475144   -1.3541898   -0.9408389
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.6239273   -1.7079039   -1.5399506
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3208161   -1.4612433   -1.1803889
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -1.7020792   -1.9030473   -1.5011111
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.9225758   -2.1091291   -1.7360224
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -2.0123129   -2.2058633   -1.8187626
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8662890   -0.9950084   -0.7375696
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.2863930   -1.4189111   -1.1538750
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.1137430   -1.2417414   -0.9857446
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0493369   -1.1605686   -0.9381052
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2724888   -1.4005643   -1.1444133
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.3170188   -1.4488452   -1.1851923
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3964510   -0.5109556   -0.2819465
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.6137619   -0.6801760   -0.5473479
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5078310   -0.6011359   -0.4145261
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1146201   -1.2778700   -0.9513702
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.4828601   -1.6064630   -1.3592571
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.2990073   -1.4204261   -1.1775885
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.2816116    0.1836297    0.3795936
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0034192   -0.0998488    0.1066871
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.1586810    0.0697614    0.2476005
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.7911151   -0.8888107   -0.6934195
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.0276567   -1.0914643   -0.9638491
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.8594421   -0.8896222   -0.8292619
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.8371515   -1.9958562   -1.6784468
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.8064532   -1.9115920   -1.7013145
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.7938438   -1.9111142   -1.6765734
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.7388787   -0.8281218   -0.6496356
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -1.2498444   -1.3486213   -1.1510676
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.9889770   -1.0979763   -0.8799777
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.9092929   -0.9801816   -0.8384042
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -1.3719571   -1.4487397   -1.2951745
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -1.1804315   -1.2522771   -1.1085859
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -1.6161753   -1.7495414   -1.4828092
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.6368276   -1.7546974   -1.5189578
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.6782657   -1.7883651   -1.5681662
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.0143538   -1.0550907   -0.9736169
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.4504759   -1.4817235   -1.4192282
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3705749   -1.4040063   -1.3371435
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.3533092   -1.4821899   -1.2244286
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.3476705   -1.4038584   -1.2914826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.3574384   -1.4736202   -1.2412566
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.6077500   -1.8294967   -1.3860033
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.9787143   -2.2401470   -1.7172815
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.9510714   -2.2525477   -1.6495952
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -1.7091667   -1.9690884   -1.4492449
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.7809804   -2.0900481   -1.4719127
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.8793590   -2.1395982   -1.6191197
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.0814474   -1.3866066   -0.7762881
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.4670370   -1.7341118   -1.1999622
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -1.4634615   -1.8406315   -1.0862916
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -1.7255844   -1.9280980   -1.5230708
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -1.7329545   -1.9818063   -1.4841028
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -1.8344186   -2.0377750   -1.6310622
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -1.4579412   -1.7807055   -1.1351768
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.6460294   -1.9892333   -1.3028255
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.8732609   -2.2800352   -1.4664865
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.5093421   -2.6955887   -2.3230955
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.6568085   -2.9277214   -2.3858956
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.4781250   -2.9051381   -2.0511119
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.1838119   -1.3149701   -1.0526537
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.8782143   -2.0135206   -1.7429079
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.7202793   -1.8680368   -1.5725219
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.2053081   -1.3367668   -1.0738493
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.6942361   -1.8352739   -1.5531983
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.4873585   -1.6371174   -1.3375996
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.5968247   -1.7801127   -1.4135368
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.9784615   -2.0969967   -1.8599264
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.9645342   -2.1156124   -1.8134559
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0339181   -0.2268774    0.2947136
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2140204   -0.7682543    0.3402134
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.1047599   -0.4118891    0.2023693
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.4300000   -2.0343717   -0.8256283
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -2.6279048   -2.8552546   -2.4005550
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -2.3333871   -2.4727289   -2.1940453
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -2.8534463   -2.9979348   -2.7089579
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -2.9003233   -3.0020180   -2.7986286
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -2.7887571   -2.9005345   -2.6769797
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -1.5243970   -1.6178289   -1.4309652
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -2.3945778   -2.4962173   -2.2929382
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -1.9618670   -2.0684779   -1.8552561
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -1.9754637   -2.0512004   -1.8997269
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -2.7553468   -2.8328206   -2.6778731
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -2.5185437   -2.5933434   -2.4437440
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -1.8684104   -2.0172331   -1.7195878
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.7929064   -1.9261758   -1.6596370
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.9455128   -2.0880151   -1.8030106
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.6783140   -1.7292846   -1.6273434
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -2.1761320   -2.2151692   -2.1370948
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -2.0426231   -2.0847175   -2.0005286
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.7257658   -1.8597890   -1.5917425
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.7433571   -1.7958970   -1.6908172
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.8039196   -1.9158523   -1.6919869


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1090972   -1.2821831   -0.9360114
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.8941463   -1.0718260   -0.7164667
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.6823881   -0.9646995   -0.4000766
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9057627   -1.0235263   -0.7879991
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7639560   -0.9583680   -0.5695441
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9225743   -1.1664549   -0.6786936
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3343977    1.1746915    1.4941040
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4982987   -0.5191445   -0.4774528
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1369030    0.0500914    0.2237146
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6011965   -0.6594222   -0.5429708
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2407379   -0.2807613   -0.2007145
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5685983   -1.5887531   -1.5484435
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5193126   -1.6248757   -1.4137496
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0801894   -1.2248166   -0.9355622
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0957005   -1.2405754   -0.9508256
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.6134211   -0.7965750   -0.4302671
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3230208   -1.4411177   -1.2049240
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.9833877   -1.1756113   -0.7911640
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3177032   -1.4548809   -1.1805254
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4006377   -1.4802862   -1.3209891
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442042   -0.5932639   -0.4951446
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3338820   -1.4121646   -1.2555993
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1181349    0.0244298    0.2118400
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8840215   -0.9103442   -0.8576988
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8074115   -1.8776669   -1.7371562
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9755018   -1.0332483   -0.9177553
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1419345   -1.1847445   -1.0991244
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6442734   -1.7137349   -1.5748119
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3073109   -1.3309979   -1.2836240
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3498252   -1.3977574   -1.3018930
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.8419658   -1.9985654   -1.6853663
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.7871970   -1.9519446   -1.6224494
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3050000   -1.4938380   -1.1161620
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7560976   -1.8841319   -1.6280632
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6331868   -1.8397539   -1.4266197
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5456780   -2.6911200   -2.4002359
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8850636   -1.9697435   -1.8003837
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1248692   -0.4220079    0.1722694
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.3650922   -2.4839447   -2.2462396
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8522915   -2.9193797   -2.7852032
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -1.9321014   -1.9930806   -1.8711223
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4020743   -2.4479290   -2.3562197
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8678984   -1.9495904   -1.7862065
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0060871   -2.0338879   -1.9782862
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7501299   -1.7959342   -1.7043256


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.1910526   -0.2479267    0.6300320
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.1879630   -0.2027202    0.5786461
Birth       ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low                  High               0.2355895   -0.2090090    0.6801879
Birth       ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0320677   -0.4643976    0.4002622
Birth       ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.1037427   -0.6625838    0.4550984
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.5553968   -1.2900540    0.1792603
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High               0.0227546   -0.2805767    0.3260860
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.0246160   -0.2835658    0.2343338
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.2851429   -0.1917964    0.7620821
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0378571   -0.5008563    0.4251420
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.2010928   -0.7492134    0.3470277
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.5780879   -1.7108772    0.5547014
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.2570104   -0.6489379    0.1349171
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.1632591   -0.3991139    0.0725956
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               0.0854167   -0.7995404    0.9703737
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.5562500   -1.6273694    0.5148694
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.1165120   -0.2200044   -0.0130197
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0523475   -0.1371295    0.0324346
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1766678   -0.2704437   -0.0828920
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0908992   -0.1729563   -0.0088422
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0139873   -0.2170828    0.2450573
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.2253509   -0.0023805    0.4530823
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              -0.2041117   -0.3411551   -0.0670683
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0518138   -0.1969511    0.0933236
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.3384022   -0.4377028   -0.2391016
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.2373534   -0.3304090   -0.1442978
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.2474803   -0.2962594   -0.1987013
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.2492641   -0.2979433   -0.2005848
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0039532   -0.3136304    0.3057240
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.0590595   -0.3620066    0.4801256
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1776870   -0.5417160    0.1863419
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0630232   -0.3911660    0.2651196
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0407120   -0.3086404    0.3900644
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0375837   -0.3842851    0.3091178
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0246543   -0.4233564    0.3740477
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.2321190   -0.7085871    0.2443490
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              -0.0757879   -0.3686403    0.2170645
6 months    ki0047075b-MAL-ED          PERU                           Medium               High               0.0675381   -0.2117418    0.3468180
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0799625   -0.3771844    0.5371093
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.2535038   -0.6924017    0.1853941
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1361047   -0.4382628    0.1660533
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.2569899   -0.7835063    0.2695265
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.4764129   -0.6656993   -0.2871265
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.1733017   -0.4450232    0.0984198
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.2204965   -0.4947051    0.0537120
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.3102337   -0.5892497   -0.0312177
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.4201040   -0.6048464   -0.2353617
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.2474540   -0.4289817   -0.0659264
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.2231519   -0.3927862   -0.0535175
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2676819   -0.4401658   -0.0951980
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.2173109   -0.3496821   -0.0849397
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1113799   -0.2590861    0.0363262
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3682400   -0.5730038   -0.1634762
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.1843872   -0.3878400    0.0190656
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              -0.2781925   -0.3555216   -0.2008633
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              -0.1229307   -0.1885288   -0.0573325
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.2365416   -0.3532285   -0.1198546
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0683270   -0.1705780    0.0339240
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0306983   -0.1596733    0.2210699
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0433077   -0.1540234    0.2406387
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.5109658   -0.6440868   -0.3778448
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.2500983   -0.3909712   -0.1092254
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.4626642   -0.5671667   -0.3581617
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.2711386   -0.3720692   -0.1702080
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0206523   -0.1986405    0.1573359
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0620904   -0.2350308    0.1108501
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.4361221   -0.4853756   -0.3868685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.3562211   -0.4053900   -0.3070521
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0056387   -0.1349087    0.1461862
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0041292   -0.1763569    0.1680985
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3709643   -0.7137743   -0.0281543
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.3433214   -0.7175667    0.0309239
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0718137   -0.4756480    0.3320206
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.1701923   -0.5380017    0.1976171
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3855897   -0.7911154    0.0199360
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3820142   -0.8671733    0.1031449
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              -0.0073701   -0.3282111    0.3134709
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.1088342   -0.3958282    0.1781598
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1880882   -0.6592206    0.2830442
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.4153197   -0.9345906    0.1039512
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1474664   -0.4762241    0.1812913
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0312171   -0.4346455    0.4970797
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.6944024   -0.8828441   -0.5059607
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.5364674   -0.7340396   -0.3388953
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.4889281   -0.6817313   -0.2961249
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2820504   -0.4813220   -0.0827789
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3816368   -0.5999143   -0.1633594
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3677094   -0.6052365   -0.1301824
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.2479386   -0.8288158    0.3329386
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1386780   -0.3859396    0.1085835
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -1.1979048   -1.8436238   -0.5521857
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.9033871   -1.5236139   -0.2831603
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0468769   -0.2235651    0.1298112
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0646893   -0.1179883    0.2473668
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.8701807   -1.0082391   -0.7321224
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.4374700   -0.5792282   -0.2957118
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.7798832   -0.8882263   -0.6715400
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.5430800   -0.6495274   -0.4366326
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               0.0755040   -0.1242681    0.2752761
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0771024   -0.2831487    0.1289439
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.4978180   -0.5595873   -0.4360487
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.3643091   -0.4286891   -0.2999290
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0175913   -0.1603523    0.1251696
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0781538   -0.2514889    0.0951812


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1209028   -0.0978668    0.3396723
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0866431   -0.1852442    0.3585304
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2034992   -0.5221854    0.1151871
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                 0.0005304   -0.1193087    0.1203695
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0831868   -0.1748960    0.3412696
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0978050   -0.2855765    0.0899665
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1731818   -0.3734493    0.0270856
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1062500   -0.6989121    0.4864121
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0697422   -0.1391892   -0.0002952
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0988110   -0.1743498   -0.0232721
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0885804   -0.0796994    0.2568602
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0810257   -0.1549913   -0.0070601
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1815948   -0.2342191   -0.1289705
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1976670   -0.2331726   -0.1621613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0055930   -0.2635785    0.2747645
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0704227   -0.2463175    0.1054720
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0047646   -0.2020285    0.2115578
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0754211   -0.2821084    0.1312663
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0031143   -0.1266461    0.1204175
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0357109   -0.2827151    0.2112933
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0615352   -0.1663816    0.0433113
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.2531233   -0.4152824   -0.0909642
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.1966050   -0.3747455   -0.0184645
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.2208151   -0.3250977   -0.1165325
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1493414   -0.2377547   -0.0609281
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1477532   -0.2511807   -0.0443257
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2192619   -0.3602591   -0.0782646
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.1634767   -0.2135820   -0.1133715
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0929063   -0.1873574    0.0015447
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0297400   -0.1149271    0.1744071
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.2366231   -0.3076339   -0.1656124
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.2326415   -0.2906532   -0.1746299
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0280981   -0.1358725    0.0796763
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.2929571   -0.3256858   -0.2602284
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0034840   -0.1175353    0.1245034
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2342158   -0.4343993   -0.0340323
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0780303   -0.3054260    0.1493654
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2235526   -0.4494057    0.0023004
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0305131   -0.1679668    0.1069405
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1752456   -0.4379249    0.0874336
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0363359   -0.1419701    0.0692984
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.4023060   -0.5122521   -0.2923598
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.2242250   -0.3243349   -0.1241151
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2882389   -0.4467151   -0.1297626
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1587874   -0.4311706    0.1135959
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.9350922   -1.5245066   -0.3456777
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0011549   -0.1328234    0.1351331
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.4077044   -0.4827299   -0.3326789
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.4266107   -0.4889201   -0.3643013
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0005120   -0.1235886    0.1246126
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.3277731   -0.3704704   -0.2850757
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0243642   -0.1480958    0.0993675
