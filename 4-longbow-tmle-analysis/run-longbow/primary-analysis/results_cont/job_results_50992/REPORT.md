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

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d98e40c3-d7ed-43a7-81f9-42bae62f8acc/bf281cf8-f861-4b3a-b0dd-a74f27e14977/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d98e40c3-d7ed-43a7-81f9-42bae62f8acc/bf281cf8-f861-4b3a-b0dd-a74f27e14977/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d98e40c3-d7ed-43a7-81f9-42bae62f8acc/bf281cf8-f861-4b3a-b0dd-a74f27e14977/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.2292632   -1.5102947   -0.9482316
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.0198062   -1.3879454   -0.6516671
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0688957   -1.3754766   -0.7623148
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -0.9549490   -1.2648758   -0.6450223
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.7285427   -0.9885061   -0.4685794
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.9159221   -1.1828724   -0.6489718
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.5096619   -0.8597445   -0.1595792
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6759615   -1.1644702   -0.1874528
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               NA                -1.0742078   -1.7607102   -0.3877055
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.9016171   -1.0667419   -0.7364923
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.8735354   -1.1037413   -0.6433295
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.9812760   -1.1811259   -0.7814261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.7855947   -1.0776741   -0.4935153
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.6037734   -0.8777079   -0.3298389
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.8666820   -1.1348027   -0.5985613
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.8247692   -1.1152019   -0.5343366
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.0258621   -1.4907115   -0.5610127
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.4028571   -2.4977820   -0.3079322
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.2415999   -1.5139595   -0.9692402
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.4845088   -1.7822505   -1.1867671
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.4008444   -1.6729033   -1.1287854
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0037500   -1.6907705   -0.3167295
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.9183333   -1.4761431   -0.3605236
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.5600000   -2.3817661   -0.7382339
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                 1.3729213    1.2106806    1.5351620
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                 1.3265696    1.1316281    1.5215111
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                 1.3379738    1.1811208    1.4948268
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.4490812   -0.5338501   -0.3643123
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5390173   -0.5960416   -0.4819931
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.4969094   -0.5209211   -0.4728977
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0944431   -0.1202413    0.3091274
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1215304   -0.0149547    0.2580156
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1832529    0.0408207    0.3256852
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.5404883   -0.6317830   -0.4491936
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.7113828   -0.8062958   -0.6164698
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -0.5719738   -0.6804153   -0.4635323
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1253092   -0.1900740   -0.0605444
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3475413   -0.4191988   -0.2758839
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2693135   -0.3357787   -0.2028483
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.5259216   -1.5643661   -1.4874771
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.5801938   -1.6062485   -1.5541392
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.5820193   -1.6119494   -1.5520892
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.4950446   -1.7405890   -1.2495002
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.5235206   -1.6383926   -1.4086486
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.4967364   -1.7428995   -1.2505734
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.0080880   -1.2119805   -0.8041955
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.1898619   -1.4983484   -0.8813755
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0720970   -1.3356688   -0.8085252
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -1.0706895   -1.3198934   -0.8214856
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.0511546   -1.3089333   -0.7933760
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.1230002   -1.3776318   -0.8683685
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.5060415   -0.7541810   -0.2579020
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.5131480   -0.8388252   -0.1874709
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.7443404   -1.1567523   -0.3319286
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -1.3174065   -1.4854397   -1.1493732
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -1.4023339   -1.6354486   -1.1692191
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -1.2574164   -1.4845624   -1.0302704
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.8599222   -1.1655385   -0.5543058
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.8378949   -1.1935671   -0.4822227
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.1543774   -1.4837169   -0.8250379
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2634452   -1.4341231   -1.0927672
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.4156845   -1.6664723   -1.1648966
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.5667705   -2.0642537   -1.0692872
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.1730685   -1.3759471   -0.9701898
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.6153495   -1.7001538   -1.5305453
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3167748   -1.4527504   -1.1807991
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -1.7313916   -1.9327850   -1.5299983
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.9269147   -2.1132400   -1.7405894
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -2.0138384   -2.2089918   -1.8186851
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8886018   -1.0140740   -0.7631297
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.2709377   -1.4083109   -1.1335646
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.1106030   -1.2457544   -0.9754517
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0878465   -1.2001205   -0.9755724
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2551032   -1.3893738   -1.1208327
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.3043808   -1.4402442   -1.1685174
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4083643   -0.5211196   -0.2956091
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.6020094   -0.6678182   -0.5362007
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5204986   -0.6115770   -0.4294202
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1374830   -1.3077417   -0.9672243
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.4757598   -1.5977911   -1.3537285
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.2870149   -1.4122897   -1.1617401
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.2438834    0.1393140    0.3484527
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0282096   -0.0743626    0.1307817
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.1532649    0.0630234    0.2435065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.8119827   -0.9159256   -0.7080398
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.0031172   -1.0681695   -0.9380648
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.8693582   -0.8994750   -0.8392415
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.8236509   -2.0054751   -1.6418267
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.7756700   -1.8862055   -1.6651344
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.8415478   -1.9703366   -1.7127591
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.7699914   -0.8597939   -0.6801890
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -1.2087555   -1.3084514   -1.1090596
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.9993231   -1.1176990   -0.8809471
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.9537405   -1.0268858   -0.8805952
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -1.3389165   -1.4158743   -1.2619586
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -1.1608997   -1.2350597   -1.0867397
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -1.6177485   -1.7512761   -1.4842209
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.6358215   -1.7539225   -1.5177206
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.6832693   -1.7934635   -1.5730752
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.1785665   -1.2207107   -1.1364222
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.3872319   -1.4209788   -1.3534851
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3276041   -1.3630706   -1.2921375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.3557550   -1.4848044   -1.2267056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.3477752   -1.4039885   -1.2915619
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.3589945   -1.4753877   -1.2426013
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.6138829   -1.8536309   -1.3741350
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.9662885   -2.2332446   -1.6993324
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.9349983   -2.2437320   -1.6262647
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -1.7567334   -2.0232215   -1.4902453
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.8041535   -2.1184968   -1.4898101
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.8910519   -2.1651312   -1.6169725
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.0671639   -1.3769958   -0.7573320
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.4072662   -1.6841969   -1.1303355
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -1.4258797   -1.7897890   -1.0619704
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -1.7429439   -1.9388137   -1.5470741
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -1.7268296   -1.9824903   -1.4711689
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -1.7833991   -1.9964028   -1.5703955
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -1.5480608   -1.8820223   -1.2140992
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.6785572   -2.0263889   -1.3307256
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.9550003   -2.3631491   -1.5468516
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.5289952   -2.7155990   -2.3423914
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.7058993   -2.9776594   -2.4341393
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.5617053   -2.9976931   -2.1257175
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.1958844   -1.3261439   -1.0656249
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.8638072   -1.9996691   -1.7279453
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.7168686   -1.8656439   -1.5680933
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.2359785   -1.3708337   -1.1011234
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.6761562   -1.8253598   -1.5269526
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.4874266   -1.6412614   -1.3335918
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.6268243   -1.8130245   -1.4406241
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.9700463   -2.0880887   -1.8520040
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.9601233   -2.1195654   -1.8006813
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0278617   -0.2274630    0.2831864
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2180027   -0.6276743    0.1916690
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.0981601   -0.4099215    0.2136014
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.4075883   -2.0382256   -0.7769511
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -2.6107006   -2.8448469   -2.3765542
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -2.3294836   -2.4690119   -2.1899553
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -2.8067338   -2.9859108   -2.6275568
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -2.9136149   -3.0179659   -2.8092640
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -2.8194563   -2.9398756   -2.6990369
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -1.5502519   -1.6436812   -1.4568225
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -2.3751278   -2.4780832   -2.2721723
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -1.9626670   -2.0750152   -1.8503188
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -2.0171445   -2.0947345   -1.9395544
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -2.7311961   -2.8093270   -2.6530652
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -2.5076083   -2.5841649   -2.4310517
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -1.8825968   -2.0319837   -1.7332099
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.7950859   -1.9281842   -1.6619877
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.9491649   -2.0917971   -1.8065328
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.8462061   -1.8956269   -1.7967853
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -2.1103772   -2.1489407   -2.0718137
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -2.0176344   -2.0608575   -1.9744113
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.7277288   -1.8485455   -1.6069121
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.7448339   -1.7969684   -1.6926993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.7988786   -1.9050779   -1.6926792


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.2094570   -0.2549215    0.6738354
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.1603675   -0.2576800    0.5784151
Birth       ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low                  High               0.2264063   -0.1477643    0.6005769
Birth       ki0047075b-MAL-ED          INDIA                          Medium               High               0.0390270   -0.3535455    0.4315994
Birth       ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.1662997   -0.7680490    0.4354497
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.5645460   -1.3384011    0.2093092
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High               0.0280817   -0.2510667    0.3072301
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.0796589   -0.3322062    0.1728884
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.1818213   -0.1706595    0.5343020
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0810873   -0.4364023    0.2742278
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.2010928   -0.7492134    0.3470277
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.5780879   -1.7108772    0.5547014
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.2429089   -0.6044733    0.1186554
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.1592445   -0.4227077    0.1042186
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               0.0854167   -0.7995404    0.9703737
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.5562500   -1.6273694    0.5148694
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0463517   -0.1674246    0.0747212
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0349475   -0.1215056    0.0516106
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0899361   -0.1915370    0.0116648
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0478282   -0.1352724    0.0396161
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0270874   -0.2273532    0.2815279
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0888099   -0.1690155    0.3466352
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              -0.1708945   -0.2991400   -0.0426489
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0314855   -0.1698585    0.1068875
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.2222321   -0.3167702   -0.1276941
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.1440043   -0.2345944   -0.0534142
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0542722   -0.0976516   -0.0108929
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0560977   -0.0986162   -0.0135793
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0284760   -0.2845834    0.2276314
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0016918   -0.3269287    0.3235451
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1817739   -0.5507716    0.1872237
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0640090   -0.3967378    0.2687198
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0195349   -0.3393029    0.3783726
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0523107   -0.4079862    0.3033648
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0071066   -0.4190763    0.4048632
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.2382990   -0.7218858    0.2452879
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              -0.0849274   -0.3714916    0.2016368
6 months    ki0047075b-MAL-ED          PERU                           Medium               High               0.0599900   -0.2225675    0.3425476
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0220273   -0.4434905    0.4875451
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.2944552   -0.7401775    0.1512671
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1522393   -0.4538260    0.1493474
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3033253   -0.8273110    0.2206604
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.4422811   -0.6317520   -0.2528101
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.1437063   -0.4132334    0.1258207
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.1955231   -0.4701137    0.0790675
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.2824468   -0.5634866   -0.0014070
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.3823359   -0.5689151   -0.1957567
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.2220012   -0.4065068   -0.0374956
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1672568   -0.3424292    0.0079157
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2165343   -0.3932416   -0.0398271
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1936451   -0.3231684   -0.0641218
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1121343   -0.2559648    0.0316962
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3382768   -0.5473690   -0.1291846
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.1495319   -0.3605250    0.0614611
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              -0.2156738   -0.2967297   -0.1346179
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              -0.0906185   -0.1608941   -0.0203428
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1911345   -0.3126864   -0.0695826
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0573755   -0.1643795    0.0496284
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0479809   -0.1648446    0.2608064
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0178969   -0.2407376    0.2049437
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.4387641   -0.5733358   -0.3041923
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.2293316   -0.3780146   -0.0806487
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.3851759   -0.4915852   -0.2787667
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.2071592   -0.3115082   -0.1028102
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0180730   -0.1962892    0.1601432
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0655208   -0.2387159    0.1076742
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.2086655   -0.2604872   -0.1568437
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1490376   -0.2003757   -0.0976995
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0079798   -0.1327469    0.1487065
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0032395   -0.1757478    0.1692689
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3524056   -0.7145148    0.0097037
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.3211154   -0.7153380    0.0731072
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0474200   -0.4571198    0.3622797
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.1343184   -0.5140261    0.2453892
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3401023   -0.7537859    0.0735814
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3587158   -0.8326246    0.1151931
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.0161143   -0.3057787    0.3380074
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.0404552   -0.3259215    0.2450111
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1304965   -0.6066237    0.3456307
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.4069396   -0.9400317    0.1261525
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1769042   -0.5058469    0.1520386
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0327102   -0.5019264    0.4365061
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.6679229   -0.8556425   -0.4802032
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.5209843   -0.7181613   -0.3238072
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.4401777   -0.6413236   -0.2390317
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2514481   -0.4559310   -0.0469651
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3432220   -0.5643763   -0.1220678
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3332990   -0.5779935   -0.0886045
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.2458643   -0.6510170    0.1592883
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1260217   -0.3744472    0.1224037
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -1.2031122   -1.8728157   -0.5334087
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.9218952   -1.5677096   -0.2760808
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.1068811   -0.3131279    0.0993657
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0127224   -0.2274088    0.2019639
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.8248759   -0.9645334   -0.6852183
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.4124152   -0.5588563   -0.2659740
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.7140517   -0.8246121   -0.6034912
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.4904639   -0.5996464   -0.3812813
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               0.0875109   -0.1129407    0.2879625
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0665681   -0.2731717    0.1400355
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.2641711   -0.3218953   -0.2064469
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1714283   -0.2328716   -0.1099851
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0171050   -0.1451063    0.1108962
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0711497   -0.2305792    0.0882798


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1201660   -0.1227712    0.3631032
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0608027   -0.1767431    0.2983485
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1727262   -0.5020535    0.1566011
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0041456   -0.1186269    0.1103356
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0216387   -0.1711248    0.2144022
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0978050   -0.2855765    0.0899665
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1530526   -0.3524454    0.0463403
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1062500   -0.6989121    0.4864121
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0385236   -0.1111774    0.0341303
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0492175   -0.1309612    0.0325263
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0424599   -0.1557656    0.2406854
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0607081   -0.1287023    0.0072860
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1154287   -0.1677647   -0.0630927
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0426767   -0.0751761   -0.0101774
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0242680   -0.2464624    0.1979263
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0721014   -0.2490287    0.1048259
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0250110   -0.2394166    0.1893947
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1073796   -0.3215407    0.1067815
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0056144   -0.1269544    0.1157257
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1234655   -0.3806677    0.1337367
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0542580   -0.1577970    0.0492810
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.2275692   -0.3860223   -0.0691161
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.1672926   -0.3468240    0.0122388
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1985022   -0.3004542   -0.0965502
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1108319   -0.2007379   -0.0209259
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1358399   -0.2371100   -0.0345698
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1963990   -0.3440799   -0.0487181
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.1257485   -0.1806555   -0.0708415
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0720388   -0.1723371    0.0282596
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0162394   -0.1516158    0.1840946
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.2055104   -0.2778295   -0.1331913
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1881940   -0.2486778   -0.1277101
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0265249   -0.1344667    0.0814169
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1287445   -0.1637595   -0.0937294
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0059298   -0.1152610    0.1271206
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2280829   -0.4438355   -0.0123303
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0304636   -0.2628240    0.2018969
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2378361   -0.4657419   -0.0099303
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0131536   -0.1448788    0.1185716
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0851261   -0.3579318    0.1876797
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0166828   -0.1217971    0.0884315
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.3902335   -0.4995437   -0.2809233
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1935545   -0.2966621   -0.0904470
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2582393   -0.4198202   -0.0966584
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1527309   -0.3936775    0.0882156
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.9575038   -1.5724144   -0.3425932
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0455576   -0.2149317    0.1238165
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.3818496   -0.4577699   -0.3059293
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3849299   -0.4492371   -0.3206226
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0146984   -0.1101767    0.1395735
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1598810   -0.2008919   -0.1188701
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0224011   -0.1331707    0.0883685
