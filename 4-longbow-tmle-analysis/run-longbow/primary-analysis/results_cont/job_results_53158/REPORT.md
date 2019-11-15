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
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            47     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             36     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          46     129
Birth       ki0047075b-MAL-ED          INDIA                          High             7      24
Birth       ki0047075b-MAL-ED          INDIA                          Low             14      24
Birth       ki0047075b-MAL-ED          INDIA                          Medium           3      24
Birth       ki0047075b-MAL-ED          NEPAL                          High             3      10
Birth       ki0047075b-MAL-ED          NEPAL                          Low              4      10
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           3      10
Birth       ki0047075b-MAL-ED          PERU                           High            86     194
Birth       ki0047075b-MAL-ED          PERU                           Low             58     194
Birth       ki0047075b-MAL-ED          PERU                           Medium          50     194
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            10      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             14      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           9      33
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High            66     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             27     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          10     103
Birth       ki1000304b-SAS-CompFeed    INDIA                          High           299    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low            543    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium         407    1249
Birth       ki1017093b-PROVIDE         BANGLADESH                     High           163     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low            187     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium         189     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High           284     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low            235     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     732
Birth       ki1113344-GMS-Nepal        NEPAL                          High           172     694
Birth       ki1113344-GMS-Nepal        NEPAL                          Low            296     694
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium         226     694
Birth       ki1119695-PROBIT           BELARUS                        High          2059   13421
Birth       ki1119695-PROBIT           BELARUS                        Low           5319   13421
Birth       ki1119695-PROBIT           BELARUS                        Medium        6043   13421
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High           982   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2281   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium       10238   13501
Birth       ki1135781-COHORTS          GUATEMALA                      High           155     804
Birth       ki1135781-COHORTS          GUATEMALA                      Low            355     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         294     804
Birth       ki1135781-COHORTS          INDIA                          High           527    1354
Birth       ki1135781-COHORTS          INDIA                          Low            439    1354
Birth       ki1135781-COHORTS          INDIA                          Medium         388    1354
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1027    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            827    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium        1019    2873
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          4726   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           9468   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        7430   21624
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High           582    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low           1102    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium        1056    2740
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           209     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            209     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         186     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           279     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            223     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1083    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2018
6 months    ki1113344-GMS-Nepal        NEPAL                          High           137     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            243     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium         183     563
6 months    ki1119695-PROBIT           BELARUS                        High          2513   15211
6 months    ki1119695-PROBIT           BELARUS                        Low           5962   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium        6736   15211
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           586    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1459    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6384    8429
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High          1099    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1725    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium        1865    4689
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
24 months   ki1113344-GMS-Nepal        NEPAL                          High           113     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            219     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         155     487
24 months   ki1119695-PROBIT           BELARUS                        High           627    3913
24 months   ki1119695-PROBIT           BELARUS                        Low           1516    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium        1770    3913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            96    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            298    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium        1200    1594
24 months   ki1135781-COHORTS          GUATEMALA                      High           177     992
24 months   ki1135781-COHORTS          GUATEMALA                      Low            462     992
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         353     992
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
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High          1096    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1703    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium        1820    4619


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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0f385ee5-9e0e-4041-9ae2-088644a55f08/e4f5318f-fd0d-4d37-a8ff-18c7b9ac9a3a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0f385ee5-9e0e-4041-9ae2-088644a55f08/e4f5318f-fd0d-4d37-a8ff-18c7b9ac9a3a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0f385ee5-9e0e-4041-9ae2-088644a55f08/e4f5318f-fd0d-4d37-a8ff-18c7b9ac9a3a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.2299541   -1.5105779   -0.9493304
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.1253594   -1.4841668   -0.7665519
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0517836   -1.3964781   -0.7070890
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.8403871   -1.0089354   -0.6718388
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.8466957   -1.0624700   -0.6309215
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.9231529   -1.1226715   -0.7236343
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.4350000   -0.9433959    0.0733959
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.3378571   -0.8038006    0.1280863
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.0355556   -1.4792485   -0.5918626
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.0427818   -1.3187143   -0.7668494
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.2020998   -1.6498924   -0.7543073
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.4556388   -2.4245607   -0.4867169
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.3854509   -1.5537179   -1.2171839
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.4726596   -1.5602580   -1.3850613
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.4174059   -1.5795890   -1.2552228
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8827830   -1.0137097   -0.7518563
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.9047349   -1.0251492   -0.7843206
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8648466   -0.9743196   -0.7553736
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.8098047   -0.9200682   -0.6995413
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.9266674   -1.0413524   -0.8119823
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.0305704   -1.1661965   -0.8949442
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.9981169   -1.1561587   -0.8400750
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.1870925   -1.3083931   -1.0657919
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.0486995   -1.1837199   -0.9136791
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                 1.3713414    1.2115890    1.5310939
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                 1.3242725    1.1317480    1.5167969
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                 1.3440710    1.1853206    1.5028214
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.4366608   -0.5142931   -0.3590286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5330277   -0.5875800   -0.4784754
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.4961425   -0.5203671   -0.4719178
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0924967   -0.1096763    0.2946698
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1293032   -0.0104863    0.2690927
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1959751    0.0456926    0.3462575
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.5477791   -0.6410326   -0.4545255
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.7103944   -0.8062594   -0.6145293
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -0.5653992   -0.6758524   -0.4549460
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1627513   -0.2317061   -0.0937965
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3541724   -0.4297245   -0.2786203
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2506034   -0.3216571   -0.1795498
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.5614432   -1.5967892   -1.5260973
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.5856108   -1.6110946   -1.5601271
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.5920286   -1.6215185   -1.5625387
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.3902754   -1.4908856   -1.2896653
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.5999287   -1.6751096   -1.5247478
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.5166873   -1.6034810   -1.4298935
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.0235980   -1.2280964   -0.8190996
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.2095227   -1.5062532   -0.9127923
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.1275846   -1.3915344   -0.8636349
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -1.1277274   -1.3659957   -0.8894590
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.0680242   -1.3192274   -0.8168211
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.1354417   -1.3926482   -0.8782353
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.5799383   -0.8307914   -0.3290852
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6592811   -0.9977990   -0.3207633
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.7882233   -1.2012277   -0.3752189
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -1.3345252   -1.5030330   -1.1660173
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -1.3762261   -1.6022462   -1.1502060
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -1.2469973   -1.4876906   -1.0063040
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.9214854   -1.2110995   -0.6318712
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.8513689   -1.2133935   -0.4893442
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.1684286   -1.4892475   -0.8476097
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2775058   -1.4505677   -1.1044439
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.4037817   -1.6470792   -1.1604841
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.5574006   -2.0801178   -1.0346835
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.2232460   -1.4229964   -1.0234956
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.6035364   -1.6905382   -1.5165346
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3188579   -1.4537485   -1.1839674
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -1.7194790   -1.9218078   -1.5171501
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.9301409   -2.1175722   -1.7427095
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -2.0188932   -2.2121434   -1.8256430
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.9323004   -1.0528171   -0.8117836
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.2671423   -1.4102973   -1.1239873
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.0954356   -1.2236557   -0.9672155
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0737223   -1.1851554   -0.9622891
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2472290   -1.3833836   -1.1110745
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.2872414   -1.4278707   -1.1466122
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4175760   -0.5282790   -0.3068729
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.5937709   -0.6583580   -0.5291837
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5269910   -0.6159368   -0.4380453
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1518605   -1.3211067   -0.9826142
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.4806704   -1.6017878   -1.3595530
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.3210699   -1.4442561   -1.1978837
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.2541898    0.1568766    0.3515029
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0223027   -0.0810018    0.1256072
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.1557571    0.0653223    0.2461919
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.7749344   -0.8735720   -0.6762968
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.9823816   -1.0486634   -0.9160998
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.8489084   -0.8786375   -0.8191792
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.7897087   -1.9777026   -1.6017148
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.7471520   -1.8617547   -1.6325494
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.8480001   -1.9779641   -1.7180360
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.7608790   -0.8495759   -0.6721820
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -1.2153282   -1.3148449   -1.1158115
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -1.0001468   -1.1177429   -0.8825507
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.9533760   -1.0308312   -0.8759208
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -1.3288045   -1.4070940   -1.2505151
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -1.1728027   -1.2509911   -1.0946144
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -1.6224164   -1.7559230   -1.4889097
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.6305559   -1.7496837   -1.5114282
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.6790807   -1.7880984   -1.5700630
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.1730169   -1.2140482   -1.1319856
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.3960188   -1.4292149   -1.3628227
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3245456   -1.3607326   -1.2883585
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.1451553   -1.2249714   -1.0653393
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.4617945   -1.5166951   -1.4068938
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.3470122   -1.4005093   -1.2935152
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.5913753   -1.8226231   -1.3601274
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -2.0186879   -2.2868410   -1.7505348
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -2.0126905   -2.3154761   -1.7099050
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -1.7271501   -1.9853657   -1.4689346
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.7957592   -2.1067781   -1.4847403
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.8569174   -2.1230885   -1.5907464
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.1781745   -1.4927595   -0.8635894
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.5236308   -1.7902995   -1.2569621
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -1.5135311   -1.9276681   -1.0993942
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -1.7384256   -1.9382903   -1.5385610
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -1.7271342   -1.9742180   -1.4800504
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -1.8044737   -2.0137377   -1.5952097
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -1.3532972   -1.6844281   -1.0221663
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.5646630   -1.9091626   -1.2201635
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.7752506   -2.1888545   -1.3616467
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.5422989   -2.7301626   -2.3544351
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.7203225   -2.9980388   -2.4426062
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.4821055   -2.9403188   -2.0238922
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.2711675   -1.3942480   -1.1480869
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.8744496   -2.0127752   -1.7361240
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.7219905   -1.8688000   -1.5751810
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.2238749   -1.3579174   -1.0898325
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.7183972   -1.8650241   -1.5717702
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.4877489   -1.6450924   -1.3304053
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.6013115   -1.7922755   -1.4103475
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.9742958   -2.0907419   -1.8578497
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.9874985   -2.1436057   -1.8313913
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0166857   -0.2452077    0.2785790
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2115952   -0.6883637    0.2651733
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.1027986   -0.4085440    0.2029468
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.2382572   -1.5118801   -0.9646342
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.7953433   -1.9458830   -1.6448036
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.5730659   -1.6376977   -1.5084340
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -2.9353359   -3.0938836   -2.7767883
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -3.0009359   -3.1081365   -2.8937353
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -2.9458864   -3.0636104   -2.8281624
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -1.7597004   -1.8535068   -1.6658939
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -2.5841242   -2.6865893   -2.4816590
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -2.1779937   -2.2919123   -2.0640752
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -2.0515817   -2.1309448   -1.9722187
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -2.7384184   -2.8202400   -2.6565968
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -2.5370523   -2.6172449   -2.4568597
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -1.8802554   -2.0272265   -1.7332842
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.7970373   -1.9284724   -1.6656023
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.9526287   -2.0962777   -1.8089796
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.8309311   -1.8852556   -1.7766065
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -2.1245163   -2.1650946   -2.0839379
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -2.0140172   -2.0596664   -1.9683679
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.5433558   -1.6134937   -1.4732179
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.9099925   -1.9633395   -1.8566456
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.8040682   -1.8536554   -1.7544811


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1609302   -1.3461119   -0.9757486
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8645361   -0.9887014   -0.7403707
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.5575758   -0.8541170   -0.2610345
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.0906796   -1.3207118   -0.8606474
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4300160   -1.5090211   -1.3510109
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0885159   -1.1686181   -1.0084136
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3357134    1.1759964    1.4954304
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4977261   -0.5185420   -0.4769102
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1369030    0.0500914    0.2237146
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6011965   -0.6594222   -0.5429708
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2407379   -0.2807613   -0.2007145
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5843618   -1.6039583   -1.5647653
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5242226   -1.5742923   -1.4741529
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0786869   -1.2229595   -0.9344142
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0820652   -1.2263805   -0.9377499
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.6179474   -0.8011766   -0.4347182
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3208519   -1.4383850   -1.2033189
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.9829167   -1.1753367   -0.7904967
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3283002   -1.4654809   -1.1911194
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4006377   -1.4802862   -1.3209891
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442042   -0.5932639   -0.4951446
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3525459   -1.4308373   -1.2742545
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1181349    0.0244298    0.2118400
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8606958   -0.8865994   -0.8347923
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8074115   -1.8776669   -1.7371562
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9755018   -1.0332483   -0.9177553
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1419345   -1.1847445   -1.0991244
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6442734   -1.7137349   -1.5748119
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3073109   -1.3309979   -1.2836240
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3420154   -1.3798750   -1.3041557
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.8767521   -2.0339896   -1.7195147
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8269318   -1.9896129   -1.6642507
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3417582   -1.5289233   -1.1545932
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7589939   -1.8878675   -1.6301203
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6565385   -1.8628022   -1.4502747
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5846893   -2.7309103   -2.4384682
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8889117   -1.9744778   -1.8033456
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1248692   -0.4220079    0.1722694
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5903795   -1.6477380   -1.5330211
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9834879   -3.0503374   -2.9166384
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.1479058   -2.2089283   -2.0868833
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4268626   -2.4728444   -2.3808807
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8787566   -1.9605168   -1.7969964
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0070517   -2.0348225   -1.9792810
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7817125   -1.8182569   -1.7451681


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.1045948   -0.3520570    0.5612465
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.1781706   -0.2677785    0.6241196
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High              -0.0063087   -0.2566832    0.2440658
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.0827658   -0.3243683    0.1588366
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0971429   -0.5924727    0.7867584
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.6005556   -1.2753368    0.0742257
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1593180   -0.6861064    0.3674705
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.4128569   -1.4218628    0.5961489
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.0872088   -0.2836848    0.1092673
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0319550   -0.2599794    0.1960694
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0219519   -0.1894435    0.1455396
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High               0.0179364   -0.1424109    0.1782837
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1168626   -0.2723593    0.0386340
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2207657   -0.3919564   -0.0495749
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.1889756   -0.3859555    0.0080043
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0505826   -0.2553817    0.1542165
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0470690   -0.1633867    0.0692488
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0272704   -0.1129050    0.0583642
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0963669   -0.1906855   -0.0020482
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0594816   -0.1401348    0.0211716
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0368065   -0.2089626    0.2825755
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.1034783   -0.1487427    0.3556993
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              -0.1626153   -0.2928917   -0.0323389
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0176201   -0.1588395    0.1235992
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1914212   -0.2918092   -0.0910331
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0878522   -0.1846223    0.0089180
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0241676   -0.0639151    0.0155799
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0305854   -0.0711527    0.0099820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.2096533   -0.3334267   -0.0858799
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.1264118   -0.2579931    0.0051695
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1859247   -0.5461369    0.1742874
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1039866   -0.4371569    0.2291837
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0597031   -0.2882080    0.4076142
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0077144   -0.3575807    0.3421519
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0793428   -0.5043843    0.3456986
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.2082850   -0.6944168    0.2778468
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              -0.0417009   -0.3220638    0.2386619
6 months    ki0047075b-MAL-ED          PERU                           Medium               High               0.0875279   -0.2057356    0.3807913
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0701165   -0.3913470    0.5315800
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.2469432   -0.6715540    0.1776675
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1262758   -0.4246536    0.1721019
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.2798948   -0.8291361    0.2693464
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.3802904   -0.5595443   -0.2010365
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0956119   -0.3602658    0.1690419
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.2106619   -0.4871426    0.0658188
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.2994142   -0.5789486   -0.0198799
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.3348419   -0.5226172   -0.1470667
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.1631353   -0.3393489    0.0130784
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1735068   -0.3499453    0.0029317
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2135192   -0.3933613   -0.0336771
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1761949   -0.3022947   -0.0500951
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1094151   -0.2494482    0.0306180
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3288099   -0.5371716   -0.1204482
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.1692094   -0.3789521    0.0405333
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              -0.2318871   -0.3119140   -0.1518602
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              -0.0984326   -0.1675410   -0.0293243
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.2074472   -0.3251647   -0.0897297
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0739739   -0.1756931    0.0277452
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0425566   -0.1776111    0.2627243
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0582914   -0.2867607    0.1701778
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.4544492   -0.5880850   -0.3208135
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.2392679   -0.3866984   -0.0918374
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.3754285   -0.4858147   -0.2650423
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.2194267   -0.3296683   -0.1091851
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0081396   -0.1870923    0.1708132
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0566643   -0.2290038    0.1156752
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.2230019   -0.2736648   -0.1723391
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1515287   -0.2018176   -0.1012397
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.3166391   -0.4077364   -0.2255419
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.2018569   -0.2961292   -0.1075846
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.4273126   -0.7758769   -0.0787483
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.4213152   -0.8016903   -0.0409402
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0686091   -0.4740280    0.3368099
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.1297673   -0.4997261    0.2401915
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3454564   -0.7619883    0.0710756
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3353567   -0.8555041    0.1847908
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.0112914   -0.3064282    0.3290110
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.0660481   -0.3563449    0.2242488
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.2113658   -0.6942936    0.2715620
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.4219533   -0.9523878    0.1084811
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1780237   -0.5136385    0.1575911
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0601933   -0.4351078    0.5554944
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.6032821   -0.7877328   -0.4188315
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.4508231   -0.6409942   -0.2606519
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.4945222   -0.6932600   -0.2957844
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2638739   -0.4707576   -0.0569902
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3729844   -0.5964071   -0.1495616
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3861870   -0.6317845   -0.1405895
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.2282808   -0.7439174    0.2873557
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1194843   -0.3845726    0.1456041
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.5570861   -0.8687559   -0.2454164
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.3348087   -0.6153437   -0.0542737
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0655999   -0.2554489    0.1242490
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0105504   -0.2068408    0.1857399
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.8244238   -0.9638982   -0.6849494
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.4182934   -0.5662433   -0.2703434
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.6868367   -0.8015081   -0.5721652
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.4854706   -0.5986973   -0.3722439
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               0.0832180   -0.1124986    0.2789346
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0723733   -0.2776859    0.1329393
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.2935852   -0.3587216   -0.2284488
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1830861   -0.2509203   -0.1152520
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.3666367   -0.4516207   -0.2816528
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.2607124   -0.3424557   -0.1789692


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0690239   -0.1698555    0.3079033
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0241490   -0.1384139    0.0901159
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1225758   -0.5581866    0.3130351
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0478978   -0.2252914    0.1294958
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0445651   -0.1896346    0.1005044
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0023191   -0.1030327    0.0983946
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0996898   -0.1828833   -0.0164963
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0903990   -0.2256301    0.0448322
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0356280   -0.1066073    0.0353513
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0610653   -0.1357754    0.0136449
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0444063   -0.1434281    0.2322406
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0534174   -0.1229968    0.0161620
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0779866   -0.1344703   -0.0215029
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0229186   -0.0523349    0.0064977
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1339472   -0.2235349   -0.0443595
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0550889   -0.2318486    0.1216709
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0456621   -0.1604449    0.2517692
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0380091   -0.2547352    0.1787171
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0136732   -0.1071110    0.1344575
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0614313   -0.3058078    0.1829453
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0507944   -0.1555073    0.0539185
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1773917   -0.3339571   -0.0208262
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.1792052   -0.3586167    0.0002062
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1593911   -0.2583179   -0.0604644
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1249561   -0.2153018   -0.0346103
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1266283   -0.2254150   -0.0278416
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2006854   -0.3474854   -0.0538855
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.1360549   -0.1898569   -0.0822529
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0857614   -0.1806457    0.0091230
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0177028   -0.1917992    0.1563935
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.2146228   -0.2859090   -0.1433367
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1885585   -0.2538731   -0.1232438
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0218570   -0.1297954    0.0860813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1342941   -0.1680157   -0.1005725
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1968600   -0.2619404   -0.1317796
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2853769   -0.4917526   -0.0790011
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0997817   -0.3272870    0.1277236
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1635838   -0.3955226    0.0683551
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0205683   -0.1564023    0.1152657
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.3032412   -0.5833287   -0.0231538
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0423904   -0.1490451    0.0642643
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.3312547   -0.4345300   -0.2279793
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.2173897   -0.3201598   -0.1146195
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2876002   -0.4524537   -0.1227468
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1415549   -0.4282086    0.1450989
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.3521224   -0.6171223   -0.0871225
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0481520   -0.1965238    0.1002199
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.3882054   -0.4646846   -0.3117263
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3752809   -0.4425461   -0.3080156
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0014988   -0.1209918    0.1239894
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1761207   -0.2223913   -0.1298501
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.2383567   -0.2966562   -0.1800572
