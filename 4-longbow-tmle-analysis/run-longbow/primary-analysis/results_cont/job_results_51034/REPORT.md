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

* arm
* W_mage
* meducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
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
![](/tmp/58374ec9-a227-40f7-9aca-baa440fe1627/8598b3bb-b734-4f86-967d-01921290412d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/58374ec9-a227-40f7-9aca-baa440fe1627/8598b3bb-b734-4f86-967d-01921290412d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/58374ec9-a227-40f7-9aca-baa440fe1627/8598b3bb-b734-4f86-967d-01921290412d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.7171102   -1.0268648   -0.4073555
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.2464511   -1.6156011   -0.8773010
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.9906031   -1.2659828   -0.7152234
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -1.0571702   -1.2986339   -0.8157066
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.9832507   -1.2865546   -0.6799467
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.7827368   -1.1385973   -0.4268763
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.7679489   -1.1488283   -0.3870694
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.0195140   -1.3759305   -0.6630974
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.3721166   -0.7761293    0.0318961
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0415464   -0.1901853    0.1070925
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0802089   -0.3277514    0.1673336
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0822261   -0.3490040    0.1845518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1102058   -0.1511293    0.3715409
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3937263    0.0095093    0.7779433
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.2420618   -0.1302170    0.6143407
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.7669841    0.5145747    1.0193936
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.5718519    0.1177775    1.0259262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.1133333    0.4136753    1.8129914
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.2967595   -0.8133506    0.2198315
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.3082328   -0.6588317    0.0423662
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.2437014   -0.5453082    0.0579054
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.4200000   -2.3657984   -0.4742016
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.4800000   -1.1381374    0.1781374
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.4100000   -1.0437501    0.2237501
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -1.1306179   -1.3296188   -0.9316170
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                -1.1405439   -1.3934730   -0.8876149
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                -1.1470333   -1.3509930   -0.9430737
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.5335269   -0.6243025   -0.4427513
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5128369   -0.5787011   -0.4469726
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5128037   -0.5424519   -0.4831554
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.1352251   -1.3549659   -0.9154843
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.0132044   -1.1660499   -0.8603589
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.0864372   -1.2494133   -0.9234612
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -1.0023181   -1.1022099   -0.9024262
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.9419687   -1.0433379   -0.8405995
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -1.0786754   -1.2016306   -0.9557201
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.8072196   -0.8849360   -0.7295032
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.6236120   -0.7077597   -0.5394643
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6980801   -0.7772114   -0.6189489
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.7064522   -0.7459522   -0.6669522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.7292527   -0.7568735   -0.7016319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.7322287   -0.7641616   -0.7002959
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.4278053   -0.6621981   -0.1934125
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.3771603   -0.4891934   -0.2651273
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.3883484   -0.6441371   -0.1325597
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2129080   -0.4806286    0.0548126
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.5192544   -0.7828132   -0.2556956
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.2138982   -0.5689942    0.1411977
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.6586354   -0.9417261   -0.3755448
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.6158436   -0.8854341   -0.3462531
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.9314792   -1.2904858   -0.5724726
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1389634   -0.1403478    0.4182745
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.1843151   -0.5687647    0.2001345
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                 0.2678942   -0.1069352    0.6427236
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 1.0488552    0.8605279    1.2371824
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 1.2850047    1.0100535    1.5599559
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                 0.9292466    0.6670778    1.1914155
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.5204047    0.0905813    0.9502280
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.1609275   -0.2559604    0.5778154
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.3041271   -0.1216274    0.7298817
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.4368447    0.2514789    0.6222105
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.5152973    0.2687280    0.7618666
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.0473109    0.5751753    1.5194466
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.5783499   -0.7303078   -0.4263920
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7306616   -0.8698650   -0.5914582
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.6437260   -0.8067924   -0.4806596
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.9501518   -1.1747217   -0.7255819
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.9266550   -1.1098397   -0.7434703
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.1236972   -1.3238503   -0.9235441
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1050336   -0.2506175    0.0405504
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2936232   -0.4424676   -0.1447788
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.2359301   -0.3753720   -0.0964881
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1102143   -0.0136234    0.2340521
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0574227   -0.2025181    0.0876728
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.0095938   -0.1376934    0.1568811
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1228213   -0.0036933    0.2493359
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0819471    0.0126490    0.1512452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0434301   -0.0626788    0.1495390
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.5435559   -0.7188145   -0.3682972
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.6369797   -0.7702480   -0.5037114
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.6064364   -0.7574960   -0.4553768
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.5638836    0.4822896    0.6454776
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.5840091    0.5157798    0.6522383
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.5775559    0.5130632    0.6420486
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3202501    0.2085246    0.4319756
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1533931    0.0793173    0.2274688
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                 0.3385180    0.3083053    0.3687307
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1792492   -0.0071797    0.3656780
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1332690    0.0256736    0.2408644
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1912305    0.0594927    0.3229684
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.6101503   -0.7071395   -0.5131612
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.7027039   -0.8074904   -0.5979175
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.6543058   -0.7686375   -0.5399741
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.2713359   -0.3428256   -0.1998462
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2680231   -0.3466741   -0.1893720
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.3061516   -0.3779601   -0.2343431
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.4167934    0.2869157    0.5466711
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.4759237    0.3555472    0.5963003
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                 0.4371679    0.3090295    0.5653063
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.5502029   -0.5876361   -0.5127697
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.6307802   -0.6611785   -0.6003820
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.5751505   -0.6066572   -0.5436439
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.3914258   -0.5195215   -0.2633301
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.3786305   -0.4351207   -0.3221403
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.3932417   -0.5037628   -0.2827206
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.8355756   -1.0905462   -0.5806051
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.0528860   -1.3420714   -0.7637005
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.8699917   -1.1965303   -0.5434530
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.9917130   -1.1951762   -0.7882497
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.9565604   -1.1768638   -0.7362570
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.0513781   -1.3639793   -0.7387770
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2478398   -0.5220390    0.0263593
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6692663   -0.9410626   -0.3974699
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.6028281   -0.9975504   -0.2081058
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0716883   -0.1049898    0.2483665
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.3672817    0.1469187    0.5876447
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                 0.0618203   -0.2359766    0.3596171
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.5676322    0.2198340    0.9154305
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3313497   -0.0185560    0.6812554
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.1335970   -0.1497198    0.4169139
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1346052   -0.0456690    0.3148794
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0309907   -0.2926044    0.2306230
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.2618275   -0.1550173    0.6786722
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.7327004   -0.8730943   -0.5923064
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.0560190   -1.1849336   -0.9271043
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8790128   -1.0345850   -0.7234405
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.4997136   -0.6569549   -0.3424723
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.8844357   -1.0409388   -0.7279326
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.5078318   -0.6775504   -0.3381133
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1492879   -1.3259856   -0.9725902
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.0992025   -1.2317084   -0.9666966
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.1335069   -1.2890555   -0.9779582
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.7273957    0.6100828    0.8447086
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.7090466    0.5355485    0.8825446
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                 0.6433086    0.5399961    0.7466210
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.2058503   -1.7405152   -0.6711854
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.3417512   -1.5861633   -1.0973391
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1461716   -1.2645016   -1.0278416
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.4936489   -0.6364335   -0.3508643
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.2276585   -0.3158927   -0.1394242
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.2965567   -0.4062688   -0.1868445
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.4567181   -0.5383708   -0.3750654
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.8266863   -0.9188994   -0.7344731
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.5722513   -0.6803527   -0.4641499
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.5277942   -0.5889144   -0.4666740
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.6619645   -0.7287680   -0.5951610
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6745016   -0.7391573   -0.6098459
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0064143   -0.1532047    0.1660332
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0779501   -0.2070740    0.0511738
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0645981   -0.2157733    0.0865771
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.2854138   -1.3313307   -1.2394969
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.2947407   -1.3318947   -1.2575866
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3187850   -1.3613321   -1.2762379
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.1595324   -1.2750804   -1.0439844
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.2479290   -1.2946281   -1.2012300
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.1765045   -1.2973952   -1.0556138


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.5293409   -1.0110447   -0.0476371
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.2734929   -0.6877288    0.1407429
Birth       ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low                  High               0.0739196   -0.3147903    0.4626294
Birth       ki0047075b-MAL-ED          INDIA                          Medium               High               0.2744335   -0.1605091    0.7093760
Birth       ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2515651   -0.7740971    0.2709669
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               High               0.3958322   -0.1591265    0.9507910
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High              -0.0386625   -0.3283548    0.2510299
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.0406797   -0.3463994    0.2650399
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.2835205   -0.1749183    0.7419593
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.1318560   -0.3231100    0.5868220
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1951323   -0.7146456    0.3243810
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.3463492   -0.3974464    1.0901448
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.0114732   -0.5630550    0.5401085
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High               0.0530581   -0.5451481    0.6512644
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               0.9400000   -0.2122497    2.0922497
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               1.0100000   -0.1284963    2.1484963
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0099260   -0.1367232    0.1168712
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0164154   -0.0918200    0.0589892
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               0.0206900   -0.0901525    0.1315326
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0207232   -0.0732154    0.1146618
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High               0.1220207   -0.1396036    0.3836449
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0487879   -0.2191112    0.3166869
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High               0.0603493   -0.0797155    0.2004142
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0763573   -0.2326909    0.0799763
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High               0.1836076    0.0709845    0.2962307
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.1091395    0.0004824    0.2177965
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0228005   -0.0687676    0.0231666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0257766   -0.0725384    0.0209853
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0506450   -0.1967486    0.2980387
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.0394569   -0.3001922    0.3791061
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3063464   -0.6829120    0.0702192
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0009902   -0.4493217    0.4473412
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0427918   -0.3481722    0.4337559
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.2728438   -0.7302056    0.1845181
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3232785   -0.7902203    0.1436634
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High               0.1289308   -0.3343587    0.5922203
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High               0.2361495   -0.0982011    0.5705001
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              -0.1196086   -0.4413654    0.2021483
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.3594771   -0.9590181    0.2400639
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.2162775   -0.8162450    0.3836899
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0784526   -0.2304496    0.3873548
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.6104662    0.1020916    1.1188409
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1523117   -0.2332599   -0.0713634
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0653761   -0.1527534    0.0220013
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               0.0234968   -0.2663444    0.3133380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.1735454   -0.4746653    0.1275745
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1885896   -0.3955283    0.0183491
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.1308965   -0.3317340    0.0699410
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1676370   -0.3573684    0.0220944
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.1006205   -0.2922922    0.0910512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0408742   -0.1849398    0.1031914
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0793912   -0.2443982    0.0856159
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0934238   -0.3138215    0.1269738
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0628805   -0.2934170    0.1676559
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High               0.0201255   -0.0489386    0.0891896
6 months    ki1119695-PROBIT           BELARUS                        Medium               High               0.0136723   -0.0557057    0.0830503
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1668570   -0.3008019   -0.0329122
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0182679   -0.0973725    0.1339084
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0459802   -0.2616344    0.1696740
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0119814   -0.2159176    0.2398804
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.0925536   -0.2350791    0.0499719
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.0441555   -0.1937749    0.1054639
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High               0.0033128   -0.1027186    0.1093442
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0348157   -0.1356499    0.0660184
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High               0.0591303   -0.1188707    0.2371314
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High               0.0203745   -0.1628820    0.2036310
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0805773   -0.1277712   -0.0333835
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0249476   -0.0710603    0.0211650
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0127953   -0.1234877    0.1490783
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0018159   -0.1653356    0.1617038
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2173103   -0.6023634    0.1677428
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0344160   -0.4489024    0.3800703
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High               0.0351525   -0.2639926    0.3342977
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0596652   -0.4335554    0.3142250
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.4214264   -0.8086351   -0.0342178
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3549883   -0.8376053    0.1276288
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.2955934    0.0126929    0.5784939
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.0098681   -0.3524357    0.3326996
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.2362825   -0.7302617    0.2576966
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.4340352   -0.8859081    0.0178378
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1655960   -0.4832265    0.1520346
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.1272223   -0.3284534    0.5828979
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.3233186   -0.5136003   -0.1330370
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.1463124   -0.3553583    0.0627335
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.3847221   -0.6061169   -0.1633274
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0081182   -0.2392013    0.2229648
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.0500854   -0.1723051    0.2724759
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.0157810   -0.2202764    0.2518383
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.0183491   -0.1859359    0.1492377
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.0840871   -0.2128777    0.0447034
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1359009   -0.7249481    0.4531463
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0596787   -0.4875676    0.6069250
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               0.2659904    0.0971621    0.4348187
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.1970922    0.0165761    0.3776083
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.3699682   -0.4927744   -0.2471620
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.1155332   -0.2506521    0.0195858
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1341703   -0.2242226   -0.0441180
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.1467074   -0.2347684   -0.0586465
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0843644   -0.2909490    0.1222203
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0710124   -0.2922284    0.1502037
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0093269   -0.0653305    0.0466767
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0333712   -0.0927356    0.0259933
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0883967   -0.2114476    0.0346543
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0169721   -0.1856055    0.1516613


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2407257   -0.4881005    0.0066492
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0631206   -0.1704462    0.2966875
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1559176   -0.1235527    0.4353880
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0201927   -0.1400370    0.0996515
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0853986   -0.1555056    0.3263028
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0332341   -0.1958425    0.1293742
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0270005   -0.4288144    0.4828155
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.6691304   -0.0959063    1.4341672
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0105716   -0.0761211    0.0549780
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0246150   -0.0624702    0.1117002
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0876346   -0.1096588    0.2849279
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.0002422   -0.0764055    0.0768899
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0853611    0.0246325    0.1460897
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0147734   -0.0483143    0.0187674
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0553515   -0.1614664    0.2721695
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0924582   -0.3204261    0.1355098
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0578380   -0.3057227    0.1900467
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1076476   -0.3307459    0.1154507
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0378189   -0.1023871    0.1780250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1373612   -0.4843169    0.2095945
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0850376   -0.0235484    0.1936236
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0857560   -0.1162344   -0.0552777
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0620061   -0.2556267    0.1316145
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1033370   -0.2183437    0.0116697
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0804521   -0.1791091    0.0182049
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0436430   -0.1576474    0.0703613
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0605930   -0.2141004    0.0929144
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0144274   -0.0405680    0.0694228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0106205   -0.1187259    0.0974849
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0194912   -0.1504322    0.1894145
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0401096   -0.1158055    0.0355863
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0126571   -0.0713239    0.0460097
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0246721   -0.0840350    0.1333793
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0402935   -0.0720556   -0.0085314
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0084797   -0.1082204    0.1251798
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0676722   -0.2915988    0.1562544
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0465614   -0.1440094    0.2371323
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2189734   -0.4335532   -0.0043935
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0695617   -0.0618881    0.2010114
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1962586   -0.4666553    0.0741380
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0318086   -0.1333571    0.0697399
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1552408   -0.2676411   -0.0428405
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1106366   -0.2261135    0.0048404
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0207969   -0.1361017    0.1776956
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0437911   -0.1539504    0.0663682
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0183753   -0.5125398    0.5492904
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2274313    0.0917558    0.3631068
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.1484352   -0.2138698   -0.0830006
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0877772   -0.1384502   -0.0371041
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0508107   -0.1826016    0.0809803
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0130216   -0.0513638    0.0253207
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0665578   -0.1744008    0.0412851
