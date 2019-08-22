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

**Outcome Variable:** whz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            49     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             35     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          50     134
Birth       ki0047075b-MAL-ED          INDIA                          High            38     121
Birth       ki0047075b-MAL-ED          INDIA                          Low             48     121
Birth       ki0047075b-MAL-ED          INDIA                          Medium          35     121
Birth       ki0047075b-MAL-ED          NEPAL                          High            27      64
Birth       ki0047075b-MAL-ED          NEPAL                          Low             18      64
Birth       ki0047075b-MAL-ED          NEPAL                          Medium          19      64
Birth       ki0047075b-MAL-ED          PERU                           High           112     230
Birth       ki0047075b-MAL-ED          PERU                           Low             63     230
Birth       ki0047075b-MAL-ED          PERU                           Medium          55     230
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            35      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          26      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High            63      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             27      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           6      96
Birth       ki1000304b-SAS-CompFeed    INDIA                          High            33     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low             68     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium          65     166
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             7      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low             11      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           5      23
Birth       ki1119695-PROBIT           BELARUS                        High          2050   13359
Birth       ki1119695-PROBIT           BELARUS                        Low           5294   13359
Birth       ki1119695-PROBIT           BELARUS                        Medium        6015   13359
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High           914   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2090   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        9568   12572
Birth       ki1135781-COHORTS          GUATEMALA                      High           136     718
Birth       ki1135781-COHORTS          GUATEMALA                      Low            311     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         271     718
Birth       ki1135781-COHORTS          INDIA                          High           507    1291
Birth       ki1135781-COHORTS          INDIA                          Low            414    1291
Birth       ki1135781-COHORTS          INDIA                          Medium         370    1291
Birth       ki1135781-COHORTS          PHILIPPINES                    High           994    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            773    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         961    2728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          3267   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           6675   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        5185   15127
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High            44     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            280     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium          55     379
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           349    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            548    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         434    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High           101     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            132     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium         147     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           203     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            200     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         179     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           279     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            223     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1082    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2017
6 months    ki1113344-GMS-Nepal        NEPAL                          High           136     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            243     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium         183     562
6 months    ki1119695-PROBIT           BELARUS                        High          2512   15207
6 months    ki1119695-PROBIT           BELARUS                        Low           5958   15207
6 months    ki1119695-PROBIT           BELARUS                        Medium        6737   15207
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           552    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1398    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6082    8032
6 months    ki1135781-COHORTS          GUATEMALA                      High           165     905
6 months    ki1135781-COHORTS          GUATEMALA                      Low            406     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         334     905
6 months    ki1135781-COHORTS          INDIA                          High           544    1385
6 months    ki1135781-COHORTS          INDIA                          Low            450    1385
6 months    ki1135781-COHORTS          INDIA                          Medium         391    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High           892    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            744    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         926    2562
6 months    ki1148112-LCNI-5           MALAWI                         High           251     812
6 months    ki1148112-LCNI-5           MALAWI                         Low            290     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium         271     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4271   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6291   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5543   16105
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High           346    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1995    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium         405    2746
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           202     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            197     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         179     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           211     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            144     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         159     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High           116     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            220     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         161     497
24 months   ki1119695-PROBIT           BELARUS                        High           620    3852
24 months   ki1119695-PROBIT           BELARUS                        Low           1488    3852
24 months   ki1119695-PROBIT           BELARUS                        Medium        1744    3852
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            13     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            100     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         287     400
24 months   ki1135781-COHORTS          GUATEMALA                      High           178    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Low            465    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         359    1002
24 months   ki1135781-COHORTS          INDIA                          High           536    1370
24 months   ki1135781-COHORTS          INDIA                          Low            448    1370
24 months   ki1135781-COHORTS          INDIA                          Medium         386    1370
24 months   ki1135781-COHORTS          PHILIPPINES                    High           798    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            693    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         828    2319
24 months   ki1148112-LCNI-5           MALAWI                         High           170     555
24 months   ki1148112-LCNI-5           MALAWI                         Low            194     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium         191     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2055    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3371    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2838    8264
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High           333    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1955    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         395    2683


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
![](/tmp/6cea885f-387a-42a2-a61d-aa5fe901cfb1/64699876-7352-4f8c-9d24-5b51a8429fbd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6cea885f-387a-42a2-a61d-aa5fe901cfb1/64699876-7352-4f8c-9d24-5b51a8429fbd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6cea885f-387a-42a2-a61d-aa5fe901cfb1/64699876-7352-4f8c-9d24-5b51a8429fbd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.7157143   -1.0156620   -0.4157666
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.2708571   -1.6420997   -0.8996146
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.9760000   -1.2429268   -0.7090732
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -1.1152632   -1.3442570   -0.8862693
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.0304167   -1.3244199   -0.7364134
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.8125714   -1.1605108   -0.4646320
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.7003704   -1.0528584   -0.3478823
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.8177778   -1.1137612   -0.5217944
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.2915789   -0.6987524    0.1155945
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0540179   -0.2018779    0.0938422
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0671429   -0.3083663    0.1740806
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0712727   -0.3339838    0.1914384
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0837143   -0.1919929    0.3594215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.1496667   -0.2872731    0.5866064
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.3992308    0.0686731    0.7297885
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.7669841    0.5145747    1.0193936
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.5718519    0.1177775    1.0259262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.1133333    0.4136753    1.8129914
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.2760606   -0.7803813    0.2282601
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.3004412   -0.6367391    0.0358568
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.2344615   -0.5292230    0.0602999
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.4200000   -2.3657984   -0.4742016
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.4800000   -1.1381374    0.1781374
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.4100000   -1.0437501    0.2237501
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -1.1125268   -1.3195993   -0.9054543
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                -1.1469720   -1.3891835   -0.9047605
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                -1.1458687   -1.3493014   -0.9424359
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.5535667   -0.6476891   -0.4594444
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.4441340   -0.5082035   -0.3800644
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5187960   -0.5488631   -0.4887288
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.1294853   -1.3658088   -0.8931618
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.9410289   -1.1050635   -0.7769944
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.1287823   -1.2879384   -0.9696262
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -1.0067456   -1.1079815   -0.9055096
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.9271498   -1.0315479   -0.8227516
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -1.0795135   -1.2006237   -0.9584034
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.8783501   -0.9578790   -0.7988212
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.5826132   -0.6684841   -0.4967423
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6719979   -0.7527577   -0.5912382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.6495623   -0.6883398   -0.6107848
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.7394517   -0.7668780   -0.7120254
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.7429161   -0.7743391   -0.7114931
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.4213636   -0.6962360   -0.1464913
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.3741429   -0.4922776   -0.2560081
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.3247273   -0.6196535   -0.0298010
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2322667   -0.4955513    0.0310180
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.5311111   -0.7721367   -0.2900855
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.2081522   -0.5786004    0.1622961
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.6618217   -0.9311150   -0.3925284
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.6070370   -0.8718608   -0.3422132
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.9179268   -1.2626876   -0.5731661
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1245000   -0.1537996    0.4027996
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.2646296   -0.6455441    0.1162848
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                 0.1835714   -0.1969363    0.5640792
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 1.0486916    0.8600673    1.2373159
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 1.3013333    1.0311131    1.5715535
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                 0.9320175    0.6713078    1.1927273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.5998485    0.2065871    0.9931099
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.1914286   -0.2352316    0.6180888
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.3643750   -0.0154536    0.7442036
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.4410892    0.2574104    0.6247681
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.5108182    0.2651087    0.7565277
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.0939474    0.6707504    1.5171443
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.5768481   -0.7269927   -0.4267036
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7380657   -0.8828273   -0.5933041
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.6408871   -0.8030360   -0.4787382
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.9590099   -1.1802891   -0.7377307
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.9258333   -1.1073915   -0.7442752
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.1261905   -1.3248843   -0.9274966
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0772250   -0.2249702    0.0705203
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3076250   -0.4554295   -0.1598205
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.2462011   -0.3852059   -0.1071963
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1100538   -0.0127060    0.2328135
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0692377   -0.2145273    0.0760520
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.0282394   -0.1162245    0.1727034
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1248113   -0.0002257    0.2498483
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0770464    0.0074323    0.1466604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0532506   -0.0518261    0.1583273
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.5400368   -0.7140373   -0.3660362
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.6446296   -0.7783583   -0.5109009
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.5980419   -0.7460043   -0.4500795
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.5563396    0.4746874    0.6379918
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.5861052    0.5178181    0.6543924
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.5796104    0.5165059    0.6427149
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3687862    0.2677530    0.4698195
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1574535    0.0901749    0.2247321
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                 0.3392396    0.3094835    0.3689956
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2140606    0.0366930    0.3914282
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1866256    0.0785255    0.2947258
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.2058982    0.0837418    0.3280546
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.5941544   -0.6904715   -0.4978373
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.7121556   -0.8192470   -0.6050641
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.6570844   -0.7669329   -0.5472359
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.2752915   -0.3454299   -0.2051531
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2886828   -0.3685466   -0.2088190
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2886069   -0.3597715   -0.2174423
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.4151793    0.2862696    0.5440890
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.4733448    0.3548362    0.5918535
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                 0.4316974    0.3063677    0.5570271
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.5112819   -0.5475636   -0.4750002
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.6565840   -0.6855934   -0.6275746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.5765272   -0.6075094   -0.5455449
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.4101879   -0.5399243   -0.2804514
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.3752206   -0.4317835   -0.3186576
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.3977284   -0.5090380   -0.2864188
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.8190000   -1.0723493   -0.5656507
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.0530000   -1.3334079   -0.7725921
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.8586905   -1.1878206   -0.5295603
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.9196429   -1.1172293   -0.7220564
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.9011765   -1.1246081   -0.6777449
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.0301282   -1.3396214   -0.7206350
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2439474   -0.5138874    0.0259927
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6744444   -0.9422280   -0.4066608
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.5769231   -0.9563979   -0.1974483
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0334416   -0.1530588    0.2199419
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.4031818    0.1924778    0.6138859
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                 0.0662791   -0.2209011    0.3534592
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.5997059    0.2743107    0.9251010
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3152941   -0.0269540    0.6575422
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.1167391   -0.1527373    0.3862155
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1500000   -0.0288354    0.3288354
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0409574   -0.2967693    0.2148544
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1887500   -0.1726265    0.5501265
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.7205941   -0.8626942   -0.5784939
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.0742640   -1.2029365   -0.9455915
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8717318   -1.0280267   -0.7154370
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.4881043   -0.6455949   -0.3306136
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.8966667   -1.0523746   -0.7409588
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.5132704   -0.6793435   -0.3471974
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1640948   -1.3418865   -0.9863032
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.1002045   -1.2323422   -0.9680669
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.1414907   -1.2966294   -0.9863520
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.7186989    0.5972868    0.8401110
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.6946214    0.5100842    0.8791587
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                 0.6617288    0.5561303    0.7673272
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.1300000   -1.5806717   -0.6793283
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.3290000   -1.5649618   -1.0930382
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1407666   -1.2583314   -1.0232017
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.3884831   -0.5105737   -0.2663926
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1953333   -0.2761675   -0.1144992
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.2974095   -0.3949226   -0.1998963
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.4396269   -0.5211828   -0.3580709
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.8353571   -0.9259263   -0.7447879
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.5678238   -0.6700155   -0.4656321
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.5049875   -0.5654642   -0.4445108
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.6840548   -0.7526209   -0.6154888
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6648309   -0.7307766   -0.5988852
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0103235   -0.1445318    0.1651788
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0771134   -0.2043602    0.0501334
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0598691   -0.2075656    0.0878274
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.2168224   -1.2632801   -1.1703646
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.3254109   -1.3606840   -1.2901377
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3254898   -1.3644439   -1.2865357
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.1674174   -1.2832522   -1.0515826
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.2464859   -1.2933880   -1.1995839
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.1746076   -1.2947935   -1.0544217


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9578358   -1.1387078   -0.7769639
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9940496   -1.1654347   -0.8226645
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.6120312   -0.8275323   -0.3965302
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0617391   -0.1779184    0.0544402
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.1956044   -0.0084906    0.3996994
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7337500    0.5184571    0.9490429
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.2697590   -0.5399211    0.0004030
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.7508696   -1.2358912   -0.2658480
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1411895   -1.3517005   -0.9306784
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5089119   -0.5350685   -0.4827552
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0475905   -1.1510656   -0.9441155
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -1.0020759   -1.0646599   -0.9394920
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7218585   -0.7694262   -0.6742908
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7212256   -0.7411702   -0.7012810
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3724538   -0.4743874   -0.2705203
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.3053662   -0.4828374   -0.1278949
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7164734   -0.8860809   -0.5468660
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0313158   -0.1673661    0.2299977
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0866741    0.9521834    1.2211648
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3830435    0.1435272    0.6225598
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5218823    0.3795317    0.6642328
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0791782    0.0263777    0.1319787
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6041489   -0.6904591   -0.5178387
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5783110    0.5188487    0.6377732
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3096296    0.2832594    0.3359998
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1987403    0.1250477    0.2724329
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6502599   -0.7103477   -0.5901722
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2839930   -0.3263706   -0.2416154
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4414655    0.3698299    0.5131012
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5904964   -0.6106039   -0.5703890
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3829461   -0.4315670   -0.3343252
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9032479   -1.0730238   -0.7334719
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9451515   -1.0860650   -0.8042380
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.4668132   -0.6466833   -0.2869431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1412500    0.0103684    0.2721316
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3713736    0.1781064    0.5646408
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1027966   -0.0354562    0.2410495
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1284909   -1.2160945   -1.0408874
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6836046    0.5719211    0.7952881
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1874750   -1.2917540   -1.0831960
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2662176   -0.3220630   -0.2103721
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6051533   -0.6581071   -0.5521995
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6155714   -0.6532287   -0.5779140
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0443964   -0.1269881    0.0381953
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2984354   -1.3225016   -1.2743692
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2260902   -1.2680212   -1.1841592


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.5551429   -1.0324160   -0.0778697
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.2602857   -0.6618060    0.1412345
Birth       ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low                  High               0.0848465   -0.2878143    0.4575073
Birth       ki0047075b-MAL-ED          INDIA                          Medium               High               0.3026917   -0.1138416    0.7192251
Birth       ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.1174074   -0.5776834    0.3428686
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               High               0.4087914   -0.1297604    0.9473432
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High              -0.0131250   -0.2960584    0.2698084
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.0172549   -0.3187175    0.2842078
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0659524   -0.4507011    0.5826058
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.3155165   -0.1149285    0.7459614
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1951323   -0.7146456    0.3243810
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.3463492   -0.3974464    1.0901448
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.0243806   -0.5561512    0.5073901
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High               0.0415991   -0.5190051    0.6022032
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               0.9400000   -0.2122497    2.0922497
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               1.0100000   -0.1284963    2.1484963
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0344452   -0.1622595    0.0933691
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0333418   -0.1238488    0.0571651
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               0.1094328   -0.0044265    0.2232920
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0347708   -0.0640374    0.1335789
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High               0.1884564   -0.0992173    0.4761300
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0007030   -0.2842171    0.2856232
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High               0.0795958   -0.0658267    0.2250183
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0727680   -0.2306172    0.0850813
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High               0.2957369    0.1786957    0.4127781
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.2063522    0.0930077    0.3196967
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0898894   -0.1356650   -0.0441138
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0933538   -0.1400062   -0.0467014
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0472208   -0.2523476    0.3467891
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.0966364   -0.3101722    0.5034449
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2988444   -0.6557928    0.0581039
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.0241145   -0.4303640    0.4785930
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0547847   -0.3229064    0.4324757
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.2561051   -0.6935738    0.1813636
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3891296   -0.8608780    0.0826187
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High               0.0590714   -0.4123486    0.5304914
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High               0.2526417   -0.0769005    0.5821840
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              -0.1166740   -0.4384639    0.2051158
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.4084199   -0.9886729    0.1718330
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.2354735   -0.7822132    0.3112662
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0697289   -0.2370463    0.3765042
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.6528581    0.1915193    1.1141970
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1612176   -0.2585250   -0.0639102
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0640390   -0.1466954    0.0186175
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               0.0331766   -0.2530538    0.3194070
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.1671806   -0.4645755    0.1302143
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.2304000   -0.4393852   -0.0214149
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.1689762   -0.3718332    0.0338809
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1792914   -0.3694993    0.0109164
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0818143   -0.2713923    0.1077636
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0477650   -0.1908746    0.0953446
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0715607   -0.2348866    0.0917652
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.1045929   -0.3240457    0.1148600
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0580051   -0.2864106    0.1704004
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High               0.0297657   -0.0403281    0.0998595
6 months    ki1119695-PROBIT           BELARUS                        Medium               High               0.0232708   -0.0428048    0.0893464
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.2113327   -0.3327169   -0.0899485
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0295467   -0.1348707    0.0757773
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0274350   -0.2351485    0.1802785
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0081624   -0.2235259    0.2072011
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.1180011   -0.2620344    0.0260321
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.0629300   -0.2090247    0.0831647
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.0133913   -0.1196816    0.0928990
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0133154   -0.1132344    0.0866035
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High               0.0581655   -0.1169402    0.2332712
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High               0.0165181   -0.1632741    0.1963103
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.1453021   -0.1899773   -0.1006270
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0652453   -0.1091264   -0.0213641
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0349673   -0.1031796    0.1731142
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.0124595   -0.1532298    0.1781487
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2340000   -0.6119080    0.1439080
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0396905   -0.4550368    0.3756558
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High               0.0184664   -0.2797988    0.3167315
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.1104853   -0.4776726    0.2567019
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.4304971   -0.8107282   -0.0502660
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3329757   -0.7986674    0.1327160
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.3697403    0.0883534    0.6511271
24 months   ki0047075b-MAL-ED          PERU                           Medium               High               0.0328375   -0.3095874    0.3752624
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.2844118   -0.7566572    0.1878337
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.4829668   -0.9054588   -0.0604747
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1909574   -0.5030821    0.1211672
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0387500   -0.3644560    0.4419560
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.3536699   -0.5453704   -0.1619694
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.1511378   -0.3623735    0.0600979
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.4085624   -0.6300308   -0.1870940
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0251662   -0.2540407    0.2037084
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.0638903   -0.1576278    0.2854083
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.0226041   -0.2133575    0.2585658
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.0240775   -0.2100550    0.1618999
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.0569701   -0.1955656    0.0816253
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1990000   -0.7077071    0.3097071
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0107666   -0.4765202    0.4549871
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               0.1931498    0.0467249    0.3395748
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0910737   -0.0651790    0.2473264
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.3957303   -0.5176079   -0.2738526
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.1281970   -0.2589430    0.0025491
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1790674   -0.2704935   -0.0876413
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.1598434   -0.2493212   -0.0703657
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0874369   -0.2878663    0.1129924
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0701926   -0.2841889    0.1438037
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.1085885   -0.1646115   -0.0525655
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1086674   -0.1672726   -0.0500622
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0790685   -0.2027138    0.0445768
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0071902   -0.1754972    0.1611168


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2421215   -0.4806280   -0.0036151
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1212136   -0.0998626    0.3422897
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0883391   -0.1682821    0.3449603
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0077213   -0.1263297    0.1108871
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1118901   -0.1314133    0.3551935
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0332341   -0.1958425    0.1293742
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0063016   -0.4204065    0.4330096
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.6691304   -0.0959063    1.4341672
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0286626   -0.1053625    0.0480372
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0446549   -0.0462026    0.1355123
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0818948   -0.1311749    0.2949645
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.0046697   -0.0735336    0.0828729
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1564916    0.0934173    0.2195659
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0716633   -0.1043953   -0.0389313
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0489098   -0.2133582    0.3111778
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0730995   -0.2928734    0.1466745
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0546517   -0.2914906    0.1821871
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0931842   -0.3205684    0.1342000
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0379825   -0.1022890    0.1782541
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.2168050   -0.5347276    0.1011176
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0807930   -0.0258260    0.1874120
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0872578   -0.1287260   -0.0457896
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0531480   -0.2438450    0.1375490
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1311456   -0.2483177   -0.0139735
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0802915   -0.1779600    0.0173770
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0456331   -0.1581974    0.0669312
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0641121   -0.2160081    0.0877839
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0219714   -0.0298408    0.0737836
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0591566   -0.1566248    0.0383116
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0153203   -0.1747522    0.1441116
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0561055   -0.1309380    0.0187270
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0087015   -0.0660577    0.0486547
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0262862   -0.0808392    0.1334117
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0792145   -0.1081531   -0.0502759
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0272418   -0.0911118    0.1455953
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0842479   -0.3058826    0.1373869
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0255087   -0.2100436    0.1590263
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2228658   -0.4334944   -0.0122372
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.1078084   -0.0309390    0.2465559
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.2283323   -0.4815389    0.0248744
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0472034   -0.1466954    0.0522887
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1673471   -0.2811696   -0.0535247
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1222459   -0.2380089   -0.0064830
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0356039   -0.1210126    0.1922204
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0350943   -0.1532499    0.0830612
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0574750   -0.5055567    0.3906067
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1222656    0.0094434    0.2350877
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.1655264   -0.2307253   -0.1003275
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1105839   -0.1611641   -0.0600037
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0547199   -0.1816491    0.0722092
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0816130   -0.1199269   -0.0432991
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0586728   -0.1667287    0.0493831
