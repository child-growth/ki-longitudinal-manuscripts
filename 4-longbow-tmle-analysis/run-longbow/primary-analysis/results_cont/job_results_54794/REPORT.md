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

agecat      studyid                    country                        feducyrs    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            47     129  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             36     129  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          46     129  haz              
Birth       ki0047075b-MAL-ED          INDIA                          High             7      24  haz              
Birth       ki0047075b-MAL-ED          INDIA                          Low             14      24  haz              
Birth       ki0047075b-MAL-ED          INDIA                          Medium           3      24  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          High             3      10  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          Low              4      10  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           3      10  haz              
Birth       ki0047075b-MAL-ED          PERU                           High            86     194  haz              
Birth       ki0047075b-MAL-ED          PERU                           Low             58     194  haz              
Birth       ki0047075b-MAL-ED          PERU                           Medium          50     194  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            10      33  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             14      33  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           9      33  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High            66     103  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             27     103  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          10     103  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          High           299    1249  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low            543    1249  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium         407    1249  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     High           163     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low            187     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium         189     539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High           284     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low            235     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     732  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          High           172     694  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Low            296     694  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium         226     694  haz              
Birth       ki1119695-PROBIT           BELARUS                        High          2059   13421  haz              
Birth       ki1119695-PROBIT           BELARUS                        Low           5319   13421  haz              
Birth       ki1119695-PROBIT           BELARUS                        Medium        6043   13421  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High           982   13501  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2281   13501  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium       10238   13501  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      High           155     804  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      Low            355     804  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         294     804  haz              
Birth       ki1135781-COHORTS          INDIA                          High           527    1354  haz              
Birth       ki1135781-COHORTS          INDIA                          Low            439    1354  haz              
Birth       ki1135781-COHORTS          INDIA                          Medium         388    1354  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1027    2873  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            827    2873  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium        1019    2873  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          4726   21624  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           9468   21624  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        7430   21624  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High           582    2740  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low           1102    2740  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium        1056    2740  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     High            50     132  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low             36     132  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          46     132  haz              
6 months    ki0047075b-MAL-ED          INDIA                          High            43     138  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Low             54     138  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Medium          41     138  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          High            40      95  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Low             27      95  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Medium          28      95  haz              
6 months    ki0047075b-MAL-ED          PERU                           High           107     224  haz              
6 months    ki0047075b-MAL-ED          PERU                           Low             60     224  haz              
6 months    ki0047075b-MAL-ED          PERU                           Medium          57     224  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            33      92  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low             35      92  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          24      92  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           127     201  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             55     201  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          19     201  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           348    1333  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            550    1333  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         435    1333  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High           101     380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            132     380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium         147     380  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           209     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            209     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         186     604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           279     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            223     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2018  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1083    2018  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2018  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          High           137     563  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            243     563  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium         183     563  haz              
6 months    ki1119695-PROBIT           BELARUS                        High          2513   15211  haz              
6 months    ki1119695-PROBIT           BELARUS                        Low           5962   15211  haz              
6 months    ki1119695-PROBIT           BELARUS                        Medium        6736   15211  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           586    8429  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1459    8429  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6384    8429  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      High           165     904  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      Low            406     904  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         333     904  haz              
6 months    ki1135781-COHORTS          INDIA                          High           544    1385  haz              
6 months    ki1135781-COHORTS          INDIA                          Low            450    1385  haz              
6 months    ki1135781-COHORTS          INDIA                          Medium         391    1385  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    High           891    2564  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            746    2564  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         927    2564  haz              
6 months    ki1148112-LCNI-5           MALAWI                         High           251     812  haz              
6 months    ki1148112-LCNI-5           MALAWI                         Low            290     812  haz              
6 months    ki1148112-LCNI-5           MALAWI                         Medium         271     812  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4279   16132  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6304   16132  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5549   16132  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High          1099    4689  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1725    4689  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium        1865    4689  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     High            40     117  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             35     117  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          42     117  haz              
24 months   ki0047075b-MAL-ED          INDIA                          High            42     132  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Low             51     132  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Medium          39     132  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          High            38      91  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Low             27      91  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Medium          26      91  haz              
24 months   ki0047075b-MAL-ED          PERU                           High            77     164  haz              
24 months   ki0047075b-MAL-ED          PERU                           Low             44     164  haz              
24 months   ki0047075b-MAL-ED          PERU                           Medium          43     164  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            34      91  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low             34      91  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          23      91  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           114     177  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             47     177  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          16     177  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           202     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            197     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         179     578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           211     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            144     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         159     514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          High           113     487  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            219     487  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         155     487  haz              
24 months   ki1119695-PROBIT           BELARUS                        High           627    3913  haz              
24 months   ki1119695-PROBIT           BELARUS                        Low           1516    3913  haz              
24 months   ki1119695-PROBIT           BELARUS                        Medium        1770    3913  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            96    1594  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            298    1594  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium        1200    1594  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      High           177     992  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      Low            462     992  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         353     992  haz              
24 months   ki1135781-COHORTS          INDIA                          High           539    1380  haz              
24 months   ki1135781-COHORTS          INDIA                          Low            450    1380  haz              
24 months   ki1135781-COHORTS          INDIA                          Medium         391    1380  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    High           798    2314  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            692    2314  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         824    2314  haz              
24 months   ki1148112-LCNI-5           MALAWI                         High           173     571  haz              
24 months   ki1148112-LCNI-5           MALAWI                         Low            203     571  haz              
24 months   ki1148112-LCNI-5           MALAWI                         Medium         195     571  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2070    8293  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3379    8293  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2844    8293  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High          1096    4619  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1703    4619  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium        1820    4619  haz              


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
![](/tmp/73b1fe37-2fc0-45ca-958c-a7c49e9a3c9e/bfe33aa0-410c-4051-a3e6-7bbae9deb495/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/73b1fe37-2fc0-45ca-958c-a7c49e9a3c9e/bfe33aa0-410c-4051-a3e6-7bbae9deb495/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/73b1fe37-2fc0-45ca-958c-a7c49e9a3c9e/bfe33aa0-410c-4051-a3e6-7bbae9deb495/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.2352144   -1.5140701   -0.9563587
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.0249252   -1.3847906   -0.6650597
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.9625477   -1.3151024   -0.6099930
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.8569644   -1.0253032   -0.6886257
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.8605806   -1.0800896   -0.6410715
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.8993939   -1.1065942   -0.6921936
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.4350000   -0.9433959    0.0733959
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.3378571   -0.8038006    0.1280863
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.0355556   -1.4792485   -0.5918626
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.0117429   -1.2963208   -0.7271651
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.0647888   -1.5152826   -0.6142949
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.1321436   -2.1379864   -0.1263009
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.3854509   -1.5537179   -1.2171839
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.4726596   -1.5602580   -1.3850613
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.4174059   -1.5795890   -1.2552228
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8910323   -1.0182266   -0.7638380
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.9188807   -1.0352433   -0.8025182
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8546984   -0.9642700   -0.7451268
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.8151681   -0.9278174   -0.7025189
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.9247402   -1.0393817   -0.8100987
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.0145661   -1.1497627   -0.8793694
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.0038835   -1.1709743   -0.8367926
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.1716484   -1.2924141   -1.0508828
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.0484306   -1.1863652   -0.9104960
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                 1.3740499    1.2132195    1.5348803
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                 1.3176904    1.1255135    1.5098674
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                 1.3463862    1.1856793    1.5070931
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.4488223   -0.5263138   -0.3713307
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5370493   -0.5918684   -0.4822301
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.4969738   -0.5212225   -0.4727251
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1262379   -0.0924384    0.3449142
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1300485   -0.0039102    0.2640071
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.2154660    0.0689065    0.3620254
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.5504528   -0.6423186   -0.4585871
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.7073239   -0.8038607   -0.6107871
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -0.5625712   -0.6714212   -0.4537212
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1556479   -0.2243545   -0.0869413
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3351234   -0.4099919   -0.2602549
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2499114   -0.3200643   -0.1797584
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.5620117   -1.5964366   -1.5275868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.5856963   -1.6110671   -1.5603256
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.5917420   -1.6211743   -1.5623097
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.3888586   -1.4895445   -1.2881726
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.6021659   -1.6771058   -1.5272261
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.5175302   -1.6042041   -1.4308563
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.0285215   -1.2310672   -0.8259759
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.2017643   -1.5078308   -0.8956978
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.1053332   -1.3655404   -0.8451259
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -1.0997270   -1.3456645   -0.8537896
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.0467529   -1.2997581   -0.7937478
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.1114798   -1.3678541   -0.8551056
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.5071315   -0.7565459   -0.2577170
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.5084005   -0.8596537   -0.1571472
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.7629280   -1.1860603   -0.3397958
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -1.3362862   -1.5019817   -1.1705908
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -1.3796337   -1.6046694   -1.1545980
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -1.2492617   -1.4852629   -1.0132605
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.9176147   -1.2079483   -0.6272810
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.8293025   -1.2037974   -0.4548076
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.2429735   -1.5801234   -0.9058236
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2792843   -1.4523553   -1.1062133
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.4076279   -1.6505353   -1.1647206
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.5411851   -2.0424704   -1.0398999
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.2232460   -1.4229964   -1.0234956
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.6035364   -1.6905382   -1.5165346
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3188579   -1.4537485   -1.1839674
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -1.7059555   -1.9074390   -1.5044720
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.9265262   -2.1144029   -1.7386494
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -2.0145824   -2.2088733   -1.8202914
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.9134430   -1.0313291   -0.7955569
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.2686458   -1.4088035   -1.1284880
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.1141072   -1.2395043   -0.9887100
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0654789   -1.1765537   -0.9544040
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2591463   -1.3901700   -1.1281225
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.3038301   -1.4429580   -1.1647021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4052980   -0.5176564   -0.2929395
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.6027838   -0.6685817   -0.5369859
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5235187   -0.6148569   -0.4321805
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1513658   -1.3245447   -0.9781868
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.4863509   -1.6081433   -1.3645585
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.3173146   -1.4376411   -1.1969880
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.2505834    0.1482330    0.3529337
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0220255   -0.0797743    0.1238254
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.1563002    0.0656572    0.2469432
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.7781223   -0.8769773   -0.6792673
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.9707651   -1.0349758   -0.9065544
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.8484603   -0.8779893   -0.8189313
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.8542071   -2.0491094   -1.6593049
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.7789254   -1.8944105   -1.6634404
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.8446501   -1.9718657   -1.7174346
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.7603590   -0.8495974   -0.6711206
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -1.2201594   -1.3201159   -1.1202029
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.9888036   -1.1070777   -0.8705294
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.9647117   -1.0428829   -0.8865406
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -1.3361090   -1.4157239   -1.2564940
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -1.1676883   -1.2463501   -1.0890264
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -1.6220606   -1.7563718   -1.4877494
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.6278080   -1.7468835   -1.5087325
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.6827512   -1.7930072   -1.5724952
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.1713269   -1.2124884   -1.1301655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.3942214   -1.4280378   -1.3604051
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3275454   -1.3644386   -1.2906521
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.1455522   -1.2258797   -1.0652246
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.4598601   -1.5145674   -1.4051528
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.3469439   -1.4005201   -1.2933676
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.6102047   -1.8355279   -1.3848815
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.9691226   -2.2371331   -1.7011121
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.9981029   -2.2996204   -1.6965854
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -1.7848072   -2.0394821   -1.5301324
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.8365963   -2.1415334   -1.5316591
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.9475108   -2.2015009   -1.6935208
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.1120014   -1.4170181   -0.8069847
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.4556835   -1.7289016   -1.1824653
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -1.4626666   -1.8699999   -1.0553333
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -1.7490265   -1.9422324   -1.5558206
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -1.7251414   -1.9784121   -1.4718707
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -1.7866162   -1.9957265   -1.5775060
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -1.5462959   -1.8676781   -1.2249136
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.7156786   -2.0573359   -1.3740213
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.9894693   -2.4089214   -1.5700173
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.5338417   -2.7222643   -2.3454191
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.6768774   -2.9497246   -2.4040303
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.3768712   -2.8203810   -1.9333613
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.2707445   -1.3915700   -1.1499190
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.8626344   -2.0040066   -1.7212621
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.7275961   -1.8771864   -1.5780058
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.2323692   -1.3689991   -1.0957393
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.7096028   -1.8560396   -1.5631659
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.4831016   -1.6409569   -1.3252462
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.5988459   -1.7860854   -1.4116063
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.9676664   -2.0858741   -1.8494587
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.9984425   -2.1550269   -1.8418581
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0260724   -0.2401497    0.2922946
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2173102   -0.7002291    0.2656086
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.0998961   -0.4079173    0.2081251
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.2458521   -1.5272719   -0.9644323
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.7700651   -1.9252028   -1.6149275
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.5709224   -1.6355712   -1.5062736
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -2.9675029   -3.1381003   -2.7969054
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -3.0136149   -3.1218036   -2.9054262
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -2.9466983   -3.0602793   -2.8331173
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -1.7588654   -1.8527433   -1.6649876
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -2.5874326   -2.6918133   -2.4830519
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -2.1794253   -2.2924390   -2.0664116
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -2.0477907   -2.1275043   -1.9680772
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -2.7424911   -2.8241577   -2.6608246
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -2.5417401   -2.6221030   -2.4613772
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -1.8864475   -2.0343177   -1.7385773
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.8168025   -1.9485029   -1.6851021
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.9559846   -2.0977489   -1.8142202
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.8254435   -1.8794347   -1.7714523
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -2.1271027   -2.1678892   -2.0863161
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -2.0168631   -2.0630015   -1.9707247
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.5423698   -1.6120412   -1.4726984
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.9118128   -1.9654437   -1.8581819
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.8035702   -1.8532368   -1.7539035


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.2102892   -0.2491907    0.6697691
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.2726667   -0.1768714    0.7222048
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High              -0.0036162   -0.2573035    0.2500712
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.0424295   -0.2907394    0.2058804
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0971429   -0.5924727    0.7867584
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.6005556   -1.2753368    0.0742257
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0530458   -0.5880199    0.4819283
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1204007   -1.1676723    0.9268709
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.0872088   -0.2836848    0.1092673
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0319550   -0.2599794    0.1960694
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0278485   -0.1880582    0.1323612
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High               0.0363338   -0.1193439    0.1920116
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1095721   -0.2669168    0.0477726
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.1993979   -0.3719923   -0.0268036
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.1677650   -0.3717529    0.0362230
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0445471   -0.2590769    0.1699827
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0563595   -0.1722057    0.0594867
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0276637   -0.1131200    0.0577926
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0882270   -0.1825863    0.0061323
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0481516   -0.1286668    0.0323637
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0038106   -0.2522793    0.2599004
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0892281   -0.1744427    0.3528988
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              -0.1568711   -0.2866801   -0.0270620
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0121184   -0.1512121    0.1269753
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1794755   -0.2790488   -0.0799021
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0942635   -0.1902131    0.0016862
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0236847   -0.0623133    0.0149440
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0297303   -0.0695492    0.0100887
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.2133074   -0.3368819   -0.0897328
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.1286716   -0.2604264    0.0030832
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1732428   -0.5413970    0.1949115
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0768117   -0.4077098    0.2540864
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0529741   -0.3005848    0.4065329
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0117528   -0.3677161    0.3442105
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0012690   -0.4353922    0.4328542
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.2557966   -0.7492315    0.2376383
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              -0.0433475   -0.3220324    0.2353375
6 months    ki0047075b-MAL-ED          PERU                           Medium               High               0.0870245   -0.2010264    0.3750754
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0883122   -0.3955095    0.5721339
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.3253588   -0.7619006    0.1111830
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1283436   -0.4249867    0.1682994
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.2619008   -0.7907417    0.2669401
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.3802904   -0.5595443   -0.2010365
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0956119   -0.3602658    0.1690419
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.2205707   -0.4958384    0.0546970
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.3086269   -0.5885230   -0.0287309
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.3552027   -0.5390089   -0.1713966
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.2006641   -0.3727599   -0.0285683
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1936674   -0.3657680   -0.0215668
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2383512   -0.4167402   -0.0599622
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1974858   -0.3267568   -0.0682148
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1182207   -0.2620056    0.0255642
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3349852   -0.5470097   -0.1229606
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.1659488   -0.3775776    0.0456801
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              -0.2285578   -0.3106173   -0.1464984
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              -0.0942832   -0.1669055   -0.0216608
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1926428   -0.3094043   -0.0758813
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0703380   -0.1722169    0.0315408
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0752817   -0.1515119    0.3020754
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0095570   -0.2233314    0.2424455
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.4598004   -0.5941318   -0.3254689
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.2284445   -0.3768494   -0.0800397
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.3713972   -0.4832735   -0.2595209
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.2029765   -0.3140889   -0.0918642
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0057474   -0.1852618    0.1737670
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0606906   -0.2344806    0.1130993
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.2228945   -0.2739378   -0.1718511
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1562184   -0.2076352   -0.1048017
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.3143080   -0.4058712   -0.2227447
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.2013917   -0.2961174   -0.1066659
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3589179   -0.7056504   -0.0121854
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.3878982   -0.7619820   -0.0138143
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0517890   -0.4425912    0.3390131
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.1627036   -0.5182401    0.1928329
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3436821   -0.7542142    0.0668500
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3506652   -0.8614218    0.1600914
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.0238850   -0.2927861    0.3405561
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.0375898   -0.3163676    0.2411881
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1693828   -0.6414551    0.3026896
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.4431735   -0.9693362    0.0829893
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1430357   -0.4742410    0.1881696
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.1569706   -0.3256957    0.6396368
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.5918899   -0.7767419   -0.4070380
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.4568517   -0.6471175   -0.2665859
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.4772336   -0.6776818   -0.2767854
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2507324   -0.4597382   -0.0417265
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3688205   -0.5892350   -0.1484060
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3995966   -0.6415395   -0.1576537
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.2433827   -0.7650422    0.2782768
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1259685   -0.4016793    0.1497423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.5242131   -0.8449114   -0.2035147
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.3250703   -0.6132128   -0.0369278
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0461120   -0.2472342    0.1550101
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0208045   -0.1833935    0.2250026
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.8285672   -0.9694459   -0.6876884
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.4205599   -0.5678189   -0.2733008
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.6947004   -0.8094613   -0.5799395
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.4939494   -0.6074278   -0.3804710
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               0.0696450   -0.1273654    0.2666554
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0695370   -0.2739781    0.1349040
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.3016591   -0.3659538   -0.2373645
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1914196   -0.2596573   -0.1231819
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.3694431   -0.4543134   -0.2845727
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.2612004   -0.3425663   -0.1798345


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0742842   -0.1630859    0.3116542
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0075717   -0.1229545    0.1078112
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1225758   -0.5581866    0.3130351
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0789367   -0.2613719    0.1034986
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0445651   -0.1896346    0.1005044
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0059302   -0.0908668    0.1027273
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0943264   -0.1800022   -0.0086506
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0846324   -0.2282343    0.0589696
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0383365   -0.1080751    0.0314021
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0489038   -0.1234284    0.0256207
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0106651   -0.1917252    0.2130554
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0507436   -0.1194925    0.0180052
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0850900   -0.1417822   -0.0283978
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0223501   -0.0507241    0.0060239
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1353641   -0.2250714   -0.0456568
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0501654   -0.2270945    0.1267638
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0176618   -0.1939358    0.2292594
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1108159   -0.3260938    0.1044620
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0154343   -0.1040632    0.1349318
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0653020   -0.3186870    0.1880830
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0490158   -0.1534876    0.0554559
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1773917   -0.3339571   -0.0208262
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.1927287   -0.3713445   -0.0141130
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1782485   -0.2752656   -0.0812313
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1331995   -0.2223792   -0.0440198
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1389063   -0.2398751   -0.0379374
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2011801   -0.3517051   -0.0506552
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.1324485   -0.1893487   -0.0755482
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0825735   -0.1776479    0.0125009
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0467956   -0.1347512    0.2283425
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.2151428   -0.2870515   -0.1432340
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1772227   -0.2432043   -0.1112412
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0222128   -0.1309067    0.0864810
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1359840   -0.1701505   -0.1018175
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1964632   -0.2620943   -0.1308321
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2665475   -0.4694853   -0.0636097
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0421246   -0.2618351    0.1775860
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2297568   -0.4561934   -0.0033203
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0099674   -0.1389550    0.1190201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1102426   -0.3761601    0.1556748
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0508476   -0.1585249    0.0568298
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.3316777   -0.4328446   -0.2305108
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.2088954   -0.3138861   -0.1039048
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2900658   -0.4511319   -0.1289997
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1509417   -0.4399161    0.1380328
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.3445275   -0.6171634   -0.0718915
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0159850   -0.1767666    0.1447966
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.3890404   -0.4653134   -0.3127673
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3790718   -0.4462931   -0.3118506
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0076909   -0.1151226    0.1305045
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1816082   -0.2275289   -0.1356875
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.2393427   -0.2972328   -0.1814526
