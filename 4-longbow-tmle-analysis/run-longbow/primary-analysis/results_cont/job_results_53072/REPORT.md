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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          6333   25693
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low          10593   25693
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        8767   25693
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4267   16075
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6282   16075
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5526   16075
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2054    8228
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3355    8228
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2819    8228
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
![](/tmp/8dc91970-2116-4155-af27-ff308abcd6de/6f07d92d-0b5a-42ef-9087-73bad990e1f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8dc91970-2116-4155-af27-ff308abcd6de/6f07d92d-0b5a-42ef-9087-73bad990e1f3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8dc91970-2116-4155-af27-ff308abcd6de/6f07d92d-0b5a-42ef-9087-73bad990e1f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.2080181   -1.4877860   -0.9282502
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.1300103   -1.4766041   -0.7834165
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0362553   -1.3813845   -0.6911261
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.8245624   -0.9947866   -0.6543381
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.8663125   -1.0847155   -0.6479095
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.9273081   -1.1238062   -0.7308099
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.4350000   -0.9433959    0.0733959
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.3378571   -0.8038006    0.1280863
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.0355556   -1.4792485   -0.5918626
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.0811287   -1.3617359   -0.8005215
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.3808730   -1.8538877   -0.9078582
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.0559413   -2.8657218   -1.2461608
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.3902829   -1.5583177   -1.2222482
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.4745654   -1.5634357   -1.3856951
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.4157996   -1.5734007   -1.2581986
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8950456   -1.0225371   -0.7675541
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.9174817   -1.0348307   -0.8001328
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8580636   -0.9686853   -0.7474420
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.8224634   -0.9347701   -0.7101567
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.9279803   -1.0423554   -0.8136052
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.0111135   -1.1481344   -0.8740926
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.9931376   -1.1541844   -0.8320909
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.1888419   -1.3106790   -1.0670049
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.0330219   -1.1697783   -0.8962654
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                 1.3605625    1.1988490    1.5222760
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                 1.3210748    1.1277035    1.5144462
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                 1.3487141    1.1916199    1.5058082
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.4406299   -0.5170326   -0.3642273
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5436783   -0.5983836   -0.4889729
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.4964241   -0.5208026   -0.4720455
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0782646   -0.1305208    0.2870499
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1347371   -0.0073504    0.2768246
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1983959    0.0490789    0.3477128
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.5475429   -0.6397590   -0.4553269
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.6994302   -0.7963763   -0.6024841
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -0.5665944   -0.6790529   -0.4541358
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1695730   -0.2376991   -0.1014470
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3470666   -0.4236077   -0.2705256
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2517999   -0.3229561   -0.1806437
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.1028080   -1.1523918   -1.0532243
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.2035142   -1.2428739   -1.1641546
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.1802195   -1.2198111   -1.1406279
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.3930027   -1.4937335   -1.2922719
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.6032081   -1.6781189   -1.5282973
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.5177171   -1.6041148   -1.4313194
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.9944867   -1.2028909   -0.7860824
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.1512798   -1.4596573   -0.8429022
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0626087   -1.3259537   -0.7992637
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -1.1133103   -1.3637799   -0.8628407
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.0589809   -1.3187531   -0.7992086
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.1104236   -1.3650624   -0.8557847
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.5737376   -0.8196215   -0.3278537
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6245667   -0.9587208   -0.2904126
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.8496558   -1.2780711   -0.4212405
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -1.3247717   -1.4940564   -1.1554869
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -1.3927147   -1.6383537   -1.1470757
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -1.2578922   -1.4821701   -1.0336144
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.9445880   -1.2366139   -0.6525621
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.8689341   -1.2441833   -0.4936849
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.2340601   -1.5557865   -0.9123337
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2779857   -1.4514938   -1.1044776
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.4318048   -1.6775873   -1.1860224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.6269520   -2.1238139   -1.1300901
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.2304864   -1.4331651   -1.0278077
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.5972419   -1.6867395   -1.5077443
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3186794   -1.4578110   -1.1795478
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -1.6589757   -1.8616732   -1.4562782
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.9113948   -2.0984326   -1.7243569
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -2.0110916   -2.2051410   -1.8170422
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.9210420   -1.0404356   -0.8016484
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.2734999   -1.4107510   -1.1362488
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.1241767   -1.2500939   -0.9982595
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0569456   -1.1708035   -0.9430876
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2625906   -1.3942016   -1.1309797
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.3019875   -1.4396112   -1.1643638
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4058975   -0.5188397   -0.2929553
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.6033025   -0.6691631   -0.5374419
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5197795   -0.6113683   -0.4281907
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1484047   -1.3160370   -0.9807724
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.4873283   -1.6089706   -1.3656859
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.3230075   -1.4440808   -1.2019343
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.2582628    0.1578465    0.3586791
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0173866   -0.0853758    0.1201490
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.1590991    0.0678723    0.2503259
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.7767462   -0.8794653   -0.6740271
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.9797168   -1.0439047   -0.9155290
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.8483915   -0.8778991   -0.8188839
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.8342894   -2.0315615   -1.6370173
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.7645119   -1.8786681   -1.6503558
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.8605581   -1.9910016   -1.7301146
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.7612543   -0.8501337   -0.6723748
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -1.2130380   -1.3134248   -1.1126513
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.9981679   -1.1167385   -0.8795974
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.9531888   -1.0289422   -0.8774353
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -1.3089558   -1.3887280   -1.2291836
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -1.1737723   -1.2510597   -1.0964848
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -1.6094597   -1.7430154   -1.4759039
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.6319784   -1.7507780   -1.5131787
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.6805791   -1.7906051   -1.5705531
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.2106830   -1.2524387   -1.1689273
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.4012955   -1.4348725   -1.3677185
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3443455   -1.3803245   -1.3083664
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.1442382   -1.2246287   -1.0638478
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.4607436   -1.5155983   -1.4058890
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.3464670   -1.3999620   -1.2929719
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.6330116   -1.8667200   -1.3993031
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -2.0051146   -2.2700626   -1.7401666
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -2.0070173   -2.3180713   -1.6959632
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -1.7287596   -1.9931463   -1.4643729
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.8292332   -2.1389394   -1.5195269
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.9028190   -2.1678547   -1.6377833
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.0823396   -1.3903532   -0.7743259
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.4197565   -1.6908358   -1.1486772
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -1.4681616   -1.8532305   -1.0830927
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -1.7473576   -1.9406601   -1.5540551
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -1.7150486   -1.9715431   -1.4585541
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -1.8400069   -2.0439482   -1.6360656
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -1.4886852   -1.8145767   -1.1627936
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.6772444   -2.0179440   -1.3365447
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.9432397   -2.3662092   -1.5202702
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.5290418   -2.7167824   -2.3413011
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.6618956   -2.9394776   -2.3843136
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.4657598   -2.8791931   -2.0523265
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.2809749   -1.4045410   -1.1574087
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.8670285   -2.0083034   -1.7257537
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.7152160   -1.8632663   -1.5671656
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.2241460   -1.3578926   -1.0903995
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.7122423   -1.8587030   -1.5657815
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.4964939   -1.6525062   -1.3404816
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.6100659   -1.8013335   -1.4187982
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.9689185   -2.0858884   -1.8519486
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.9953780   -2.1509411   -1.8398149
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0270100   -0.2350832    0.2891031
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2234805   -0.6961560    0.2491950
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.0945916   -0.3943794    0.2051962
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.2519694   -1.5437055   -0.9602333
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.8064425   -1.9596368   -1.6532483
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.5731596   -1.6375785   -1.5087407
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -2.9621861   -3.1390454   -2.7853267
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -3.0133006   -3.1150057   -2.9115956
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -2.9577127   -3.0685684   -2.8468569
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -1.7625746   -1.8568253   -1.6683240
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -2.5740859   -2.6782542   -2.4699176
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -2.1761718   -2.2889701   -2.0633734
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -2.0586370   -2.1379770   -1.9792971
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -2.7368656   -2.8202906   -2.6534406
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -2.5351406   -2.6158779   -2.4544033
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -1.8840405   -2.0331560   -1.7349249
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.8041254   -1.9378202   -1.6704305
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.9594062   -2.1031191   -1.8156933
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.8666866   -1.9169127   -1.8164604
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -2.1075701   -2.1467423   -2.0683980
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -2.0178418   -2.0605538   -1.9751298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.5424487   -1.6127514   -1.4721460
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.9116282   -1.9650399   -1.8582165
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.8035793   -1.8530968   -1.7540618


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1656619   -1.1941706   -1.1371531
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5242226   -1.5742923   -1.4741529
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0793561   -1.2238184   -0.9348937
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0814372   -1.2260563   -0.9368181
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.6134211   -0.7965750   -0.4302671
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3245982   -1.4425874   -1.2066090
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.9833877   -1.1756113   -0.7911640
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3298034   -1.3534367   -1.3061701
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3420154   -1.3798750   -1.3041557
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.8775641   -2.0346758   -1.7204524
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8269318   -1.9896129   -1.6642507
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3417582   -1.5289233   -1.1545932
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7614634   -1.8900568   -1.6328700
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6659341   -1.8736055   -1.4582627
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5842090   -2.7302958   -2.4381223
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8889117   -1.9744778   -1.8033456
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1248692   -0.4220079    0.1722694
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5903795   -1.6477380   -1.5330211
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9834879   -3.0503374   -2.9166384
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.1479058   -2.2089283   -2.0868833
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4268626   -2.4728444   -2.3808807
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8787566   -1.9605168   -1.7969964
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0128026   -2.0405337   -1.9850716
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7817125   -1.8182569   -1.7451681


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.0780078   -0.3685317    0.5245473
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.1717628   -0.2738804    0.6174059
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High              -0.0417501   -0.2956584    0.2121582
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.1027457   -0.3431863    0.1376949
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0971429   -0.5924727    0.7867584
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.6005556   -1.2753368    0.0742257
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.2997443   -0.8500753    0.2505868
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.9748126   -1.8297776   -0.1198476
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.0842825   -0.2774752    0.1089102
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0255167   -0.2497213    0.1986879
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0224361   -0.1846808    0.1398086
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High               0.0369820   -0.1204430    0.1944070
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1055169   -0.2623896    0.0513558
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.1886501   -0.3624049   -0.0148954
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.1957043   -0.3952995    0.0038909
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0398843   -0.2489238    0.1691553
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0394877   -0.1572396    0.0782642
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0118485   -0.1014072    0.0777103
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1030483   -0.1964378   -0.0096589
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0557941   -0.1352938    0.0237055
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0564725   -0.1961134    0.3090584
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.1201313   -0.1369478    0.3772103
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              -0.1518873   -0.2821517   -0.0216228
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0190514   -0.1611953    0.1230924
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1774936   -0.2779063   -0.0770809
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0822269   -0.1783544    0.0139007
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.1007062   -0.1614866   -0.0399258
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0774115   -0.1306851   -0.0241378
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.2102054   -0.3337313   -0.0866794
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.1247144   -0.2562946    0.0068658
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1567931   -0.5293401    0.2157540
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0681220   -0.4052360    0.2689920
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0543295   -0.3067782    0.4154371
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High               0.0028867   -0.3560911    0.3618646
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0508291   -0.4672063    0.3655481
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.2759181   -0.7724144    0.2205781
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              -0.0679430   -0.3667688    0.2308827
6 months    ki0047075b-MAL-ED          PERU                           Medium               High               0.0668794   -0.2144670    0.3482259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0756539   -0.4041605    0.5554683
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.2894721   -0.7181046    0.1391603
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1538191   -0.4543076    0.1466694
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3489663   -0.8741593    0.1762267
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.3667555   -0.5476666   -0.1858443
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0881930   -0.3563653    0.1799793
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.2524190   -0.5288470    0.0240089
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.3521159   -0.6330409   -0.0711909
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.3524579   -0.5350640   -0.1698517
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.2031347   -0.3765101   -0.0297593
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.2056451   -0.3801117   -0.0311784
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2450419   -0.4240297   -0.0660541
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1974050   -0.3273132   -0.0674968
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1138820   -0.2584032    0.0306393
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3389236   -0.5463915   -0.1314557
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.1746028   -0.3818237    0.0326180
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              -0.2408762   -0.3270326   -0.1547198
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              -0.0991637   -0.1715561   -0.0267713
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.2029706   -0.3229847   -0.0829565
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0716453   -0.1772493    0.0339587
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0697775   -0.1582738    0.2978287
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0262687   -0.2628173    0.2102800
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.4517838   -0.5862245   -0.3173431
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.2369137   -0.3852571   -0.0885702
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.3557671   -0.4658090   -0.2457251
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.2205835   -0.3287795   -0.1123875
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0225187   -0.2013418    0.1563044
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0711194   -0.2442249    0.1019860
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.1906125   -0.2423616   -0.1388634
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1336625   -0.1849149   -0.0824100
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.3165054   -0.4080366   -0.2249741
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.2022287   -0.2969047   -0.1075527
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3721030   -0.7261350   -0.0180711
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.3740057   -0.7634618    0.0154504
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.1004736   -0.5057850    0.3048378
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.1740594   -0.5484875    0.2003687
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3374170   -0.7513425    0.0765085
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3858220   -0.8790961    0.1074521
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.0323091   -0.2873771    0.3519952
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.0926493   -0.3696708    0.1843722
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1885592   -0.6577650    0.2806465
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.4545545   -0.9856699    0.0765608
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1328539   -0.4683351    0.2026274
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0632820   -0.3918852    0.5184492
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.5860536   -0.7739074   -0.3981999
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.4342411   -0.6261944   -0.2422878
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.4880962   -0.6863798   -0.2898127
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2723479   -0.4779366   -0.0667591
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3588526   -0.5824559   -0.1352493
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3853122   -0.6307471   -0.1398773
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.2504905   -0.7577746    0.2567937
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1216016   -0.3889646    0.1457615
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.5544731   -0.8833277   -0.2256184
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.3211902   -0.6193312   -0.0230492
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0511146   -0.2539384    0.1517092
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0044734   -0.2031704    0.2121172
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.8115113   -0.9526543   -0.6703682
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.4135971   -0.5610035   -0.2661908
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.6782285   -0.7939834   -0.5624736
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.4765036   -0.5900935   -0.3629137
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               0.0799151   -0.1203642    0.2801943
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0753658   -0.2825799    0.1318484
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.2408836   -0.3004684   -0.1812987
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1511552   -0.2131791   -0.0891314
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.3691794   -0.4547587   -0.2836002
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.2611306   -0.3429179   -0.1793432


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0470879   -0.1912440    0.2854198
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0399737   -0.1561466    0.0761992
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1225758   -0.5581866    0.3130351
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0095509   -0.1874015    0.1682997
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0397331   -0.1845659    0.1050997
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0099436   -0.0875917    0.1074789
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0870312   -0.1723116   -0.0017507
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0953782   -0.2335474    0.0427909
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0248491   -0.0990635    0.0493653
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0570962   -0.1305655    0.0163732
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0586384   -0.1347545    0.2520313
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0536535   -0.1227080    0.0154010
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0711649   -0.1270684   -0.0152613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0628538   -0.0995433   -0.0261643
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1312199   -0.2209024   -0.0415375
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0848694   -0.2654020    0.0956633
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0318731   -0.1837275    0.2474737
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0396834   -0.2498125    0.1704457
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0001735   -0.1230770    0.1234240
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0387997   -0.2882144    0.2106150
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0503144   -0.1554517    0.0548229
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1701512   -0.3292059   -0.0110966
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.2397085   -0.4203280   -0.0590890
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1706495   -0.2682705   -0.0730285
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1417327   -0.2332560   -0.0502094
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1383067   -0.2398800   -0.0367335
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2041412   -0.3493892   -0.0588932
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.1401279   -0.1984786   -0.0817772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0839496   -0.1828254    0.0149262
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0268779   -0.1567811    0.2105368
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.2142476   -0.2857785   -0.1427166
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1887457   -0.2523179   -0.1251735
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0348137   -0.1428256    0.0731982
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1191204   -0.1539420   -0.0842988
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1977771   -0.2633635   -0.1321907
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2445525   -0.4539655   -0.0351396
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0981722   -0.3282072    0.1318627
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2594187   -0.4903811   -0.0284562
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0141058   -0.1452304    0.1170187
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1772489   -0.4415436    0.0870458
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0551673   -0.1629189    0.0525843
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.3214473   -0.4254010   -0.2174936
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.2171186   -0.3195156   -0.1147216
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2788459   -0.4440880   -0.1136037
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1518792   -0.4385431    0.1347847
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.3384101   -0.6210179   -0.0558023
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0213018   -0.1880261    0.1454225
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.3853312   -0.4623566   -0.3083057
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3682255   -0.4354540   -0.3009971
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0052839   -0.1192846    0.1298524
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1461161   -0.1880616   -0.1041705
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.2392638   -0.2977824   -0.1807451
