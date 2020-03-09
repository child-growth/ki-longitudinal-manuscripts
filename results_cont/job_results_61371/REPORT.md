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

agecat      studyid          country                        feducyrs    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      High           155     804  haz              
Birth       COHORTS          GUATEMALA                      Low            355     804  haz              
Birth       COHORTS          GUATEMALA                      Medium         294     804  haz              
Birth       COHORTS          INDIA                          High           527    1354  haz              
Birth       COHORTS          INDIA                          Low            439    1354  haz              
Birth       COHORTS          INDIA                          Medium         388    1354  haz              
Birth       COHORTS          PHILIPPINES                    High          1027    2873  haz              
Birth       COHORTS          PHILIPPINES                    Low            827    2873  haz              
Birth       COHORTS          PHILIPPINES                    Medium        1019    2873  haz              
Birth       GMS-Nepal        NEPAL                          High           172     694  haz              
Birth       GMS-Nepal        NEPAL                          Low            296     694  haz              
Birth       GMS-Nepal        NEPAL                          Medium         226     694  haz              
Birth       JiVitA-3         BANGLADESH                     High          4726   21624  haz              
Birth       JiVitA-3         BANGLADESH                     Low           9468   21624  haz              
Birth       JiVitA-3         BANGLADESH                     Medium        7430   21624  haz              
Birth       JiVitA-4         BANGLADESH                     High           582    2740  haz              
Birth       JiVitA-4         BANGLADESH                     Low           1102    2740  haz              
Birth       JiVitA-4         BANGLADESH                     Medium        1056    2740  haz              
Birth       MAL-ED           BANGLADESH                     High            47     129  haz              
Birth       MAL-ED           BANGLADESH                     Low             36     129  haz              
Birth       MAL-ED           BANGLADESH                     Medium          46     129  haz              
Birth       MAL-ED           INDIA                          High             7      24  haz              
Birth       MAL-ED           INDIA                          Low             14      24  haz              
Birth       MAL-ED           INDIA                          Medium           3      24  haz              
Birth       MAL-ED           NEPAL                          High             3      10  haz              
Birth       MAL-ED           NEPAL                          Low              4      10  haz              
Birth       MAL-ED           NEPAL                          Medium           3      10  haz              
Birth       MAL-ED           PERU                           High            86     194  haz              
Birth       MAL-ED           PERU                           Low             58     194  haz              
Birth       MAL-ED           PERU                           Medium          50     194  haz              
Birth       MAL-ED           SOUTH AFRICA                   High            10      33  haz              
Birth       MAL-ED           SOUTH AFRICA                   Low             14      33  haz              
Birth       MAL-ED           SOUTH AFRICA                   Medium           9      33  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High            66     103  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             27     103  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          10     103  haz              
Birth       NIH-Crypto       BANGLADESH                     High           284     732  haz              
Birth       NIH-Crypto       BANGLADESH                     Low            235     732  haz              
Birth       NIH-Crypto       BANGLADESH                     Medium         213     732  haz              
Birth       PROBIT           BELARUS                        High          2059   13424  haz              
Birth       PROBIT           BELARUS                        Low           5320   13424  haz              
Birth       PROBIT           BELARUS                        Medium        6045   13424  haz              
Birth       PROVIDE          BANGLADESH                     High           163     539  haz              
Birth       PROVIDE          BANGLADESH                     Low            187     539  haz              
Birth       PROVIDE          BANGLADESH                     Medium         189     539  haz              
Birth       SAS-CompFeed     INDIA                          High           299    1249  haz              
Birth       SAS-CompFeed     INDIA                          Low            543    1249  haz              
Birth       SAS-CompFeed     INDIA                          Medium         407    1249  haz              
Birth       ZVITAMBO         ZIMBABWE                       High           982   13501  haz              
Birth       ZVITAMBO         ZIMBABWE                       Low           2281   13501  haz              
Birth       ZVITAMBO         ZIMBABWE                       Medium       10238   13501  haz              
6 months    COHORTS          GUATEMALA                      High           165     904  haz              
6 months    COHORTS          GUATEMALA                      Low            406     904  haz              
6 months    COHORTS          GUATEMALA                      Medium         333     904  haz              
6 months    COHORTS          INDIA                          High           544    1385  haz              
6 months    COHORTS          INDIA                          Low            450    1385  haz              
6 months    COHORTS          INDIA                          Medium         391    1385  haz              
6 months    COHORTS          PHILIPPINES                    High           891    2564  haz              
6 months    COHORTS          PHILIPPINES                    Low            746    2564  haz              
6 months    COHORTS          PHILIPPINES                    Medium         927    2564  haz              
6 months    GMS-Nepal        NEPAL                          High           137     563  haz              
6 months    GMS-Nepal        NEPAL                          Low            243     563  haz              
6 months    GMS-Nepal        NEPAL                          Medium         183     563  haz              
6 months    JiVitA-3         BANGLADESH                     High          4279   16132  haz              
6 months    JiVitA-3         BANGLADESH                     Low           6304   16132  haz              
6 months    JiVitA-3         BANGLADESH                     Medium        5549   16132  haz              
6 months    JiVitA-4         BANGLADESH                     High          1099    4689  haz              
6 months    JiVitA-4         BANGLADESH                     Low           1725    4689  haz              
6 months    JiVitA-4         BANGLADESH                     Medium        1865    4689  haz              
6 months    LCNI-5           MALAWI                         High           251     812  haz              
6 months    LCNI-5           MALAWI                         Low            290     812  haz              
6 months    LCNI-5           MALAWI                         Medium         271     812  haz              
6 months    MAL-ED           BANGLADESH                     High            50     132  haz              
6 months    MAL-ED           BANGLADESH                     Low             36     132  haz              
6 months    MAL-ED           BANGLADESH                     Medium          46     132  haz              
6 months    MAL-ED           INDIA                          High            43     138  haz              
6 months    MAL-ED           INDIA                          Low             54     138  haz              
6 months    MAL-ED           INDIA                          Medium          41     138  haz              
6 months    MAL-ED           NEPAL                          High            40      95  haz              
6 months    MAL-ED           NEPAL                          Low             27      95  haz              
6 months    MAL-ED           NEPAL                          Medium          28      95  haz              
6 months    MAL-ED           PERU                           High           107     224  haz              
6 months    MAL-ED           PERU                           Low             60     224  haz              
6 months    MAL-ED           PERU                           Medium          57     224  haz              
6 months    MAL-ED           SOUTH AFRICA                   High            33      92  haz              
6 months    MAL-ED           SOUTH AFRICA                   Low             35      92  haz              
6 months    MAL-ED           SOUTH AFRICA                   Medium          24      92  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           127     201  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             55     201  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          19     201  haz              
6 months    NIH-Crypto       BANGLADESH                     High           279     715  haz              
6 months    NIH-Crypto       BANGLADESH                     Low            223     715  haz              
6 months    NIH-Crypto       BANGLADESH                     Medium         213     715  haz              
6 months    PROBIT           BELARUS                        High          2513   15210  haz              
6 months    PROBIT           BELARUS                        Low           5961   15210  haz              
6 months    PROBIT           BELARUS                        Medium        6736   15210  haz              
6 months    PROVIDE          BANGLADESH                     High           209     604  haz              
6 months    PROVIDE          BANGLADESH                     Low            209     604  haz              
6 months    PROVIDE          BANGLADESH                     Medium         186     604  haz              
6 months    SAS-CompFeed     INDIA                          High           348    1333  haz              
6 months    SAS-CompFeed     INDIA                          Low            550    1333  haz              
6 months    SAS-CompFeed     INDIA                          Medium         435    1333  haz              
6 months    SAS-FoodSuppl    INDIA                          High           101     380  haz              
6 months    SAS-FoodSuppl    INDIA                          Low            132     380  haz              
6 months    SAS-FoodSuppl    INDIA                          Medium         147     380  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2018  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1083    2018  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2018  haz              
6 months    ZVITAMBO         ZIMBABWE                       High           586    8429  haz              
6 months    ZVITAMBO         ZIMBABWE                       Low           1459    8429  haz              
6 months    ZVITAMBO         ZIMBABWE                       Medium        6384    8429  haz              
24 months   COHORTS          GUATEMALA                      High           177     992  haz              
24 months   COHORTS          GUATEMALA                      Low            462     992  haz              
24 months   COHORTS          GUATEMALA                      Medium         353     992  haz              
24 months   COHORTS          INDIA                          High           539    1380  haz              
24 months   COHORTS          INDIA                          Low            450    1380  haz              
24 months   COHORTS          INDIA                          Medium         391    1380  haz              
24 months   COHORTS          PHILIPPINES                    High           798    2314  haz              
24 months   COHORTS          PHILIPPINES                    Low            692    2314  haz              
24 months   COHORTS          PHILIPPINES                    Medium         824    2314  haz              
24 months   GMS-Nepal        NEPAL                          High           113     487  haz              
24 months   GMS-Nepal        NEPAL                          Low            219     487  haz              
24 months   GMS-Nepal        NEPAL                          Medium         155     487  haz              
24 months   JiVitA-3         BANGLADESH                     High          2070    8293  haz              
24 months   JiVitA-3         BANGLADESH                     Low           3379    8293  haz              
24 months   JiVitA-3         BANGLADESH                     Medium        2844    8293  haz              
24 months   JiVitA-4         BANGLADESH                     High          1096    4619  haz              
24 months   JiVitA-4         BANGLADESH                     Low           1703    4619  haz              
24 months   JiVitA-4         BANGLADESH                     Medium        1820    4619  haz              
24 months   LCNI-5           MALAWI                         High           173     571  haz              
24 months   LCNI-5           MALAWI                         Low            203     571  haz              
24 months   LCNI-5           MALAWI                         Medium         195     571  haz              
24 months   MAL-ED           BANGLADESH                     High            40     117  haz              
24 months   MAL-ED           BANGLADESH                     Low             35     117  haz              
24 months   MAL-ED           BANGLADESH                     Medium          42     117  haz              
24 months   MAL-ED           INDIA                          High            42     132  haz              
24 months   MAL-ED           INDIA                          Low             51     132  haz              
24 months   MAL-ED           INDIA                          Medium          39     132  haz              
24 months   MAL-ED           NEPAL                          High            38      91  haz              
24 months   MAL-ED           NEPAL                          Low             27      91  haz              
24 months   MAL-ED           NEPAL                          Medium          26      91  haz              
24 months   MAL-ED           PERU                           High            77     164  haz              
24 months   MAL-ED           PERU                           Low             44     164  haz              
24 months   MAL-ED           PERU                           Medium          43     164  haz              
24 months   MAL-ED           SOUTH AFRICA                   High            34      91  haz              
24 months   MAL-ED           SOUTH AFRICA                   Low             34      91  haz              
24 months   MAL-ED           SOUTH AFRICA                   Medium          23      91  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           114     177  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             47     177  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          16     177  haz              
24 months   NIH-Crypto       BANGLADESH                     High           211     514  haz              
24 months   NIH-Crypto       BANGLADESH                     Low            144     514  haz              
24 months   NIH-Crypto       BANGLADESH                     Medium         159     514  haz              
24 months   PROBIT           BELARUS                        High           627    3913  haz              
24 months   PROBIT           BELARUS                        Low           1516    3913  haz              
24 months   PROBIT           BELARUS                        Medium        1770    3913  haz              
24 months   PROVIDE          BANGLADESH                     High           202     578  haz              
24 months   PROVIDE          BANGLADESH                     Low            197     578  haz              
24 months   PROVIDE          BANGLADESH                     Medium         179     578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       High            96    1594  haz              
24 months   ZVITAMBO         ZIMBABWE                       Low            298    1594  haz              
24 months   ZVITAMBO         ZIMBABWE                       Medium        1200    1594  haz              


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/6128a455-764f-4170-80fa-72de03b6d9c2/aeb05578-d6eb-4513-8619-45fb6dc8fcb4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6128a455-764f-4170-80fa-72de03b6d9c2/aeb05578-d6eb-4513-8619-45fb6dc8fcb4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6128a455-764f-4170-80fa-72de03b6d9c2/aeb05578-d6eb-4513-8619-45fb6dc8fcb4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                 0.0037010   -0.2811134    0.2885155
Birth       COHORTS          GUATEMALA                      Low                  NA                 0.1754156    0.0404012    0.3104299
Birth       COHORTS          GUATEMALA                      Medium               NA                 0.1862447    0.0130279    0.3594616
Birth       COHORTS          INDIA                          High                 NA                -0.5722219   -0.6671569   -0.4772869
Birth       COHORTS          INDIA                          Low                  NA                -0.7073342   -0.8049757   -0.6096927
Birth       COHORTS          INDIA                          Medium               NA                -0.5700630   -0.6971894   -0.4429366
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.2185038   -0.3100752   -0.1269325
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.3865473   -0.4716389   -0.3014557
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.2597776   -0.3452492   -0.1743060
Birth       GMS-Nepal        NEPAL                          High                 NA                -1.0640258   -1.2365137   -0.8915378
Birth       GMS-Nepal        NEPAL                          Low                  NA                -1.1730374   -1.2980748   -1.0479999
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.0813673   -1.2555721   -0.9071624
Birth       JiVitA-3         BANGLADESH                     High                 NA                -1.5423616   -1.5927764   -1.4919469
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -1.5875338   -1.6188410   -1.5562267
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -1.5891198   -1.6225185   -1.5557211
Birth       JiVitA-4         BANGLADESH                     High                 NA                -1.4679770   -1.5761438   -1.3598103
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -1.5730738   -1.6606689   -1.4854787
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -1.5283262   -1.6699689   -1.3866836
Birth       MAL-ED           BANGLADESH                     High                 NA                -1.2444661   -1.5283839   -0.9605484
Birth       MAL-ED           BANGLADESH                     Low                  NA                -1.1906539   -1.5368500   -0.8444578
Birth       MAL-ED           BANGLADESH                     Medium               NA                -1.0479571   -1.3942860   -0.7016282
Birth       MAL-ED           PERU                           High                 NA                -0.8429897   -1.0123786   -0.6736007
Birth       MAL-ED           PERU                           Low                  NA                -0.8487863   -1.0675864   -0.6299863
Birth       MAL-ED           PERU                           Medium               NA                -0.9157949   -1.1196856   -0.7119042
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.4350000   -0.9433959    0.0733959
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.3378571   -0.8038006    0.1280863
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                -1.0355556   -1.4792485   -0.5918626
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.0323355   -1.3116578   -0.7530132
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.1697714   -1.6073960   -0.7321468
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.3959510   -2.3852602   -0.4066417
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.8553604   -0.9768926   -0.7338283
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -0.8946583   -1.0271306   -0.7621861
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -0.9774435   -1.1360563   -0.8188308
Birth       PROBIT           BELARUS                        High                 NA                 1.3314266    1.1605812    1.5022721
Birth       PROBIT           BELARUS                        Low                  NA                 1.3197930    1.1323002    1.5072857
Birth       PROBIT           BELARUS                        Medium               NA                 1.3225403    1.1617494    1.4833311
Birth       PROVIDE          BANGLADESH                     High                 NA                -0.9072940   -1.0376867   -0.7769014
Birth       PROVIDE          BANGLADESH                     Low                  NA                -0.9216319   -1.0451638   -0.7981001
Birth       PROVIDE          BANGLADESH                     Medium               NA                -0.8529591   -0.9704092   -0.7355090
Birth       SAS-CompFeed     INDIA                          High                 NA                -1.4974604   -1.6683849   -1.3265359
Birth       SAS-CompFeed     INDIA                          Low                  NA                -1.4970565   -1.6100936   -1.3840194
Birth       SAS-CompFeed     INDIA                          Medium               NA                -1.4075023   -1.6012584   -1.2137463
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.4897452   -0.5731220   -0.4063683
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5485985   -0.6153719   -0.4818251
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.4982577   -0.5241650   -0.4723504
6 months    COHORTS          GUATEMALA                      High                 NA                -1.7143376   -1.8948371   -1.5338381
6 months    COHORTS          GUATEMALA                      Low                  NA                -1.7667328   -1.8922632   -1.6412024
6 months    COHORTS          GUATEMALA                      Medium               NA                -1.8384525   -1.9796122   -1.6972927
6 months    COHORTS          INDIA                          High                 NA                -0.8161577   -0.9128807   -0.7194347
6 months    COHORTS          INDIA                          Low                  NA                -1.1897025   -1.2989206   -1.0804845
6 months    COHORTS          INDIA                          Medium               NA                -1.0111202   -1.1635649   -0.8586754
6 months    COHORTS          PHILIPPINES                    High                 NA                -1.0677512   -1.1591029   -0.9763995
6 months    COHORTS          PHILIPPINES                    Low                  NA                -1.3323940   -1.4164767   -1.2483113
6 months    COHORTS          PHILIPPINES                    Medium               NA                -1.1521749   -1.2371695   -1.0671802
6 months    GMS-Nepal        NEPAL                          High                 NA                -1.2324457   -1.4010780   -1.0638134
6 months    GMS-Nepal        NEPAL                          Low                  NA                -1.4926381   -1.6143968   -1.3708795
6 months    GMS-Nepal        NEPAL                          Medium               NA                -1.3416556   -1.4757479   -1.2075634
6 months    JiVitA-3         BANGLADESH                     High                 NA                -1.2275472   -1.2922093   -1.1628852
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -1.3860583   -1.4318526   -1.3402641
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -1.3143784   -1.3557285   -1.2730284
6 months    JiVitA-4         BANGLADESH                     High                 NA                -1.2366676   -1.3528927   -1.1204425
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -1.4681487   -1.5400487   -1.3962487
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -1.3557735   -1.4211719   -1.2903750
6 months    LCNI-5           MALAWI                         High                 NA                -1.6399146   -1.7786006   -1.5012285
6 months    LCNI-5           MALAWI                         Low                  NA                -1.6209609   -1.7423620   -1.4995598
6 months    LCNI-5           MALAWI                         Medium               NA                -1.6848832   -1.7959991   -1.5737673
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.9792957   -1.1808934   -0.7776979
6 months    MAL-ED           BANGLADESH                     Low                  NA                -1.1396179   -1.4465282   -0.8327076
6 months    MAL-ED           BANGLADESH                     Medium               NA                -1.0719414   -1.3265764   -0.8173064
6 months    MAL-ED           INDIA                          High                 NA                -1.1061556   -1.3480205   -0.8642906
6 months    MAL-ED           INDIA                          Low                  NA                -1.0458482   -1.3026219   -0.7890745
6 months    MAL-ED           INDIA                          Medium               NA                -1.1174939   -1.3771711   -0.8578166
6 months    MAL-ED           NEPAL                          High                 NA                -0.5962811   -0.8377055   -0.3548567
6 months    MAL-ED           NEPAL                          Low                  NA                -0.5337430   -0.8548398   -0.2126462
6 months    MAL-ED           NEPAL                          Medium               NA                -0.9037005   -1.2880358   -0.5193652
6 months    MAL-ED           PERU                           High                 NA                -1.3514289   -1.5199495   -1.1829083
6 months    MAL-ED           PERU                           Low                  NA                -1.3811011   -1.6093807   -1.1528214
6 months    MAL-ED           PERU                           Medium               NA                -1.2473607   -1.4976019   -0.9971195
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.9055967   -1.1959616   -0.6152319
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                -0.8356500   -1.1977556   -0.4735443
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                -1.1229519   -1.4561917   -0.7897120
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2695866   -1.4418946   -1.0972786
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.3641357   -1.6171189   -1.1111524
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2840447   -1.7559333   -0.8121561
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -1.1440372   -1.2695605   -1.0185138
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                -1.2594805   -1.4050791   -1.1138818
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                -1.2494238   -1.4171726   -1.0816749
6 months    PROBIT           BELARUS                        High                 NA                 0.1986605    0.1003535    0.2969675
6 months    PROBIT           BELARUS                        Low                  NA                 0.0479144   -0.0424023    0.1382311
6 months    PROBIT           BELARUS                        Medium               NA                 0.1380331    0.0404844    0.2355818
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.9628520   -1.0884455   -0.8372584
6 months    PROVIDE          BANGLADESH                     Low                  NA                -1.3225378   -1.4508273   -1.1942484
6 months    PROVIDE          BANGLADESH                     Medium               NA                -1.0679599   -1.2117770   -0.9241428
6 months    SAS-CompFeed     INDIA                          High                 NA                -1.3432048   -1.5553841   -1.1310256
6 months    SAS-CompFeed     INDIA                          Low                  NA                -1.6239931   -1.7126527   -1.5353336
6 months    SAS-CompFeed     INDIA                          Medium               NA                -1.3376076   -1.4984487   -1.1767665
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -1.7197980   -1.9286637   -1.5109324
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -1.9201947   -2.1083526   -1.7320368
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -2.0048487   -2.2086327   -1.8010646
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3782819   -0.5017341   -0.2548297
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.5225866   -0.5955263   -0.4496469
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5129224   -0.6196400   -0.4062047
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.8174870   -0.9266835   -0.7082905
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                -0.9952844   -1.0740724   -0.9164964
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                -0.8557064   -0.8868866   -0.8245261
24 months   COHORTS          GUATEMALA                      High                 NA                -2.8774243   -3.1039908   -2.6508578
24 months   COHORTS          GUATEMALA                      Low                  NA                -2.9927349   -3.1028880   -2.8825818
24 months   COHORTS          GUATEMALA                      Medium               NA                -2.9974139   -3.1472595   -2.8475682
24 months   COHORTS          INDIA                          High                 NA                -1.8550987   -1.9580316   -1.7521658
24 months   COHORTS          INDIA                          Low                  NA                -2.5777604   -2.6876418   -2.4678790
24 months   COHORTS          INDIA                          Medium               NA                -2.1611695   -2.3089266   -2.0134123
24 months   COHORTS          PHILIPPINES                    High                 NA                -2.1929391   -2.2860831   -2.0997951
24 months   COHORTS          PHILIPPINES                    Low                  NA                -2.7461967   -2.8425799   -2.6498135
24 months   COHORTS          PHILIPPINES                    Medium               NA                -2.4948115   -2.5844073   -2.4052156
24 months   GMS-Nepal        NEPAL                          High                 NA                -1.7444847   -1.9486079   -1.5403616
24 months   GMS-Nepal        NEPAL                          Low                  NA                -2.0129354   -2.1242309   -1.9016399
24 months   GMS-Nepal        NEPAL                          Medium               NA                -2.0083377   -2.2095576   -1.8071178
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.9659057   -2.0527854   -1.8790260
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -2.0700344   -2.1215736   -2.0184953
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -1.9994875   -2.0551144   -1.9438605
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.6588804   -1.7432235   -1.5745373
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.8925327   -1.9560404   -1.8290249
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.8182275   -1.8762161   -1.7602390
24 months   LCNI-5           MALAWI                         High                 NA                -1.9057383   -2.0563173   -1.7551593
24 months   LCNI-5           MALAWI                         Low                  NA                -1.7981768   -1.9348831   -1.6614705
24 months   LCNI-5           MALAWI                         Medium               NA                -1.9445719   -2.0894242   -1.7997196
24 months   MAL-ED           BANGLADESH                     High                 NA                -1.6248853   -1.8491677   -1.4006029
24 months   MAL-ED           BANGLADESH                     Low                  NA                -1.9912291   -2.2448376   -1.7376205
24 months   MAL-ED           BANGLADESH                     Medium               NA                -2.0226855   -2.3329755   -1.7123955
24 months   MAL-ED           INDIA                          High                 NA                -1.8261410   -2.0885423   -1.5637397
24 months   MAL-ED           INDIA                          Low                  NA                -1.8254092   -2.1277600   -1.5230583
24 months   MAL-ED           INDIA                          Medium               NA                -1.9764273   -2.2172075   -1.7356472
24 months   MAL-ED           NEPAL                          High                 NA                -1.1601780   -1.4700766   -0.8502793
24 months   MAL-ED           NEPAL                          Low                  NA                -1.4383933   -1.7148333   -1.1619533
24 months   MAL-ED           NEPAL                          Medium               NA                -1.4700535   -1.8624761   -1.0776310
24 months   MAL-ED           PERU                           High                 NA                -1.7775456   -1.9721365   -1.5829546
24 months   MAL-ED           PERU                           Low                  NA                -1.6673366   -1.9348952   -1.3997780
24 months   MAL-ED           PERU                           Medium               NA                -1.8143729   -2.0336957   -1.5950501
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -1.4573620   -1.7818339   -1.1328901
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                -1.6249837   -1.9727976   -1.2771697
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                -1.8529217   -2.2892716   -1.4165718
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.5430362   -2.7300666   -2.3560058
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.7358695   -3.0129839   -2.4587552
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.5624537   -3.0018469   -2.1230606
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -1.3141425   -1.4646695   -1.1636155
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -1.6961211   -1.8666174   -1.5256247
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -1.4968980   -1.6765928   -1.3172033
24 months   PROBIT           BELARUS                        High                 NA                 0.0195482   -0.2424240    0.2815205
24 months   PROBIT           BELARUS                        Low                  NA                -0.2059298   -0.5512709    0.1394114
24 months   PROBIT           BELARUS                        Medium               NA                -0.1133796   -0.3945765    0.1678174
24 months   PROVIDE          BANGLADESH                     High                 NA                -1.3329932   -1.4745170   -1.1914694
24 months   PROVIDE          BANGLADESH                     Low                  NA                -1.8839506   -2.0152383   -1.7526630
24 months   PROVIDE          BANGLADESH                     Medium               NA                -1.6849983   -1.8554158   -1.5145807
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.2753862   -1.5770216   -0.9737509
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.7026870   -1.8593268   -1.5460471
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.5685598   -1.6342899   -1.5028297


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1369030    0.0500914    0.2237146
Birth       COHORTS          INDIA                          NA                   NA                -0.6011965   -0.6594222   -0.5429708
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2407379   -0.2807613   -0.2007145
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0885159   -1.1686181   -1.0084136
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5843618   -1.6039583   -1.5647653
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5242226   -1.5742923   -1.4741529
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1609302   -1.3461119   -0.9757486
Birth       MAL-ED           PERU                           NA                   NA                -0.8645361   -0.9887014   -0.7403707
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.5575758   -0.8541170   -0.2610345
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.0906796   -1.3207118   -0.8606474
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        NA                   NA                 1.3196253    1.1597759    1.4794747
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4300160   -1.5090211   -1.3510109
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4977261   -0.5185420   -0.4769102
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8074115   -1.8776669   -1.7371562
6 months    COHORTS          INDIA                          NA                   NA                -0.9755018   -1.0332483   -0.9177553
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1419345   -1.1847445   -1.0991244
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3525459   -1.4308373   -1.2742545
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3073109   -1.3309979   -1.2836240
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3420154   -1.3798750   -1.3041557
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6442734   -1.7137349   -1.5748119
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.0786869   -1.2229595   -0.9344142
6 months    MAL-ED           INDIA                          NA                   NA                -1.0820652   -1.2263805   -0.9377499
6 months    MAL-ED           NEPAL                          NA                   NA                -0.6179474   -0.8011766   -0.4347182
6 months    MAL-ED           PERU                           NA                   NA                -1.3208519   -1.4383850   -1.2033189
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.9829167   -1.1753367   -0.7904967
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3283002   -1.4654809   -1.1911194
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.1078936    0.0168981    0.1988891
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4006377   -1.4802862   -1.3209891
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442042   -0.5932639   -0.4951446
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8606958   -0.8865994   -0.8347923
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9834879   -3.0503374   -2.9166384
24 months   COHORTS          INDIA                          NA                   NA                -2.1479058   -2.2089283   -2.0868833
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4268626   -2.4728444   -2.3808807
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8889117   -1.9744778   -1.8033456
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0070517   -2.0348225   -1.9792810
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7817125   -1.8182569   -1.7451681
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8787566   -1.9605168   -1.7969964
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.8767521   -2.0339896   -1.7195147
24 months   MAL-ED           INDIA                          NA                   NA                -1.8269318   -1.9896129   -1.6642507
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3417582   -1.5289233   -1.1545932
24 months   MAL-ED           PERU                           NA                   NA                -1.7589939   -1.8878675   -1.6301203
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6565385   -1.8628022   -1.4502747
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5846893   -2.7309103   -2.4384682
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1374857   -0.4188811    0.1439096
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5903795   -1.6477380   -1.5330211


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low                  High               0.1717145   -0.1433889    0.4868180
Birth       COHORTS          GUATEMALA                      Medium               High               0.1825437   -0.1509171    0.5160045
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High              -0.1351123   -0.2679103   -0.0023143
Birth       COHORTS          INDIA                          Medium               High               0.0021589   -0.1532016    0.1575194
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High              -0.1680435   -0.2915331   -0.0445540
Birth       COHORTS          PHILIPPINES                    Medium               High              -0.0412738   -0.1645540    0.0820065
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High              -0.1090116   -0.3199252    0.1019020
Birth       GMS-Nepal        NEPAL                          Medium               High              -0.0173415   -0.2600012    0.2253182
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              -0.0451722   -0.1004401    0.0100957
Birth       JiVitA-3         BANGLADESH                     Medium               High              -0.0467582   -0.1020238    0.0085074
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              -0.1050967   -0.2436647    0.0334712
Birth       JiVitA-4         BANGLADESH                     Medium               High              -0.0603492   -0.2385226    0.1178242
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High               0.0538122   -0.3955259    0.5031503
Birth       MAL-ED           BANGLADESH                     Medium               High               0.1965090   -0.2530298    0.6460479
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High              -0.0057967   -0.2603315    0.2487382
Birth       MAL-ED           PERU                           Medium               High              -0.0728052   -0.3192171    0.1736066
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High               0.0971429   -0.5924727    0.7867584
Birth       MAL-ED           SOUTH AFRICA                   Medium               High              -0.6005556   -1.2753368    0.0742257
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1374359   -0.6597103    0.3848385
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3636155   -1.3927821    0.6655511
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High              -0.0392979   -0.2163577    0.1377618
Birth       NIH-Crypto       BANGLADESH                     Medium               High              -0.1220831   -0.3189825    0.0748163
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.0116337   -0.1313142    0.1080469
Birth       PROBIT           BELARUS                        Medium               High              -0.0088864   -0.1015077    0.0837349
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High              -0.0143379   -0.1819690    0.1532933
Birth       PROVIDE          BANGLADESH                     Medium               High               0.0543350   -0.1087347    0.2174047
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High               0.0004039   -0.1937971    0.1946050
Birth       SAS-CompFeed     INDIA                          Medium               High               0.0899581   -0.1513268    0.3312429
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High              -0.0588533   -0.1651755    0.0474689
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              -0.0085125   -0.0951696    0.0781446
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High              -0.0523952   -0.2720308    0.1672404
6 months    COHORTS          GUATEMALA                      Medium               High              -0.1241149   -0.3529522    0.1047224
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.3735448   -0.5201859   -0.2269037
6 months    COHORTS          INDIA                          Medium               High              -0.1949625   -0.3758102   -0.0141147
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High              -0.2646428   -0.3892901   -0.1399954
6 months    COHORTS          PHILIPPINES                    Medium               High              -0.0844236   -0.2092587    0.0404115
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.2601924   -0.4691259   -0.0512590
6 months    GMS-Nepal        NEPAL                          Medium               High              -0.1092099   -0.3247135    0.1062936
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.1585111   -0.2357858   -0.0812364
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.0868312   -0.1602711   -0.0133912
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              -0.2314811   -0.3633716   -0.0995906
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.1191059   -0.2500892    0.0118774
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High               0.0189536   -0.1654386    0.2033458
6 months    LCNI-5           MALAWI                         Medium               High              -0.0449687   -0.2227228    0.1327855
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.1603222   -0.5269895    0.2063450
6 months    MAL-ED           BANGLADESH                     Medium               High              -0.0926457   -0.4155451    0.2302536
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High               0.0603074   -0.2930362    0.4136509
6 months    MAL-ED           INDIA                          Medium               High              -0.0113383   -0.3666531    0.3439766
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High               0.0625381   -0.3413320    0.4664081
6 months    MAL-ED           NEPAL                          Medium               High              -0.3074194   -0.7667449    0.1519061
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High              -0.0296722   -0.3146471    0.2553027
6 months    MAL-ED           PERU                           Medium               High               0.1040682   -0.1992513    0.4073877
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High               0.0699468   -0.3981973    0.5380909
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.2173551   -0.6585144    0.2238041
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0945491   -0.3998243    0.2107261
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0144581   -0.5172490    0.4883328
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.1154433   -0.3078187    0.0769321
6 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.1053866   -0.3150894    0.1043163
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High              -0.1507461   -0.2246618   -0.0768304
6 months    PROBIT           BELARUS                        Medium               High              -0.0606274   -0.1289654    0.0077107
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.3596859   -0.5383282   -0.1810436
6 months    PROVIDE          BANGLADESH                     Medium               High              -0.1051080   -0.2945362    0.0843203
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.2807883   -0.4703599   -0.0912168
6 months    SAS-CompFeed     INDIA                          Medium               High               0.0055972   -0.3040178    0.3152122
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              -0.2003967   -0.4818004    0.0810070
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.2850506   -0.5767247    0.0066235
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1443047   -0.2857758   -0.0028337
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1346405   -0.2961533    0.0268723
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.1777974   -0.3114685   -0.0441264
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0382194   -0.1505395    0.0741008
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High              -0.1153106   -0.3661887    0.1355675
24 months   COHORTS          GUATEMALA                      Medium               High              -0.1199896   -0.3906059    0.1506267
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -0.7226617   -0.8753458   -0.5699776
24 months   COHORTS          INDIA                          Medium               High              -0.3060707   -0.4867500   -0.1253915
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.5532575   -0.6887378   -0.4177773
24 months   COHORTS          PHILIPPINES                    Medium               High              -0.3018723   -0.4316408   -0.1721039
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High              -0.2684507   -0.5012411   -0.0356602
24 months   GMS-Nepal        NEPAL                          Medium               High              -0.2638530   -0.5506347    0.0229288
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High              -0.1041287   -0.2004503   -0.0078071
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.0335818   -0.1329154    0.0657519
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.2336523   -0.3346900   -0.1326146
24 months   JiVitA-4         BANGLADESH                     Medium               High              -0.1593471   -0.2582463   -0.0604479
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High               0.1075615   -0.0959262    0.3110492
24 months   LCNI-5           MALAWI                         Medium               High              -0.0388336   -0.2478261    0.1701590
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.3663437   -0.6932653   -0.0394222
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.3978002   -0.7748116   -0.0207888
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High               0.0007318   -0.3948444    0.3963081
24 months   MAL-ED           INDIA                          Medium               High              -0.1502863   -0.5085445    0.2079718
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.2782154   -0.6975161    0.1410853
24 months   MAL-ED           NEPAL                          Medium               High              -0.3098755   -0.8161666    0.1964155
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High               0.1102089   -0.2187269    0.4391448
24 months   MAL-ED           PERU                           Medium               High              -0.0368273   -0.3253269    0.2516722
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.1676216   -0.6467547    0.3115114
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.3955597   -0.9391133    0.1479939
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1928333   -0.5266771    0.1410104
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0194175   -0.4949492    0.4561141
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.3819786   -0.6095744   -0.1543827
24 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.1827556   -0.4179440    0.0524329
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.2254780   -0.6086927    0.1577367
24 months   PROBIT           BELARUS                        Medium               High              -0.1329278   -0.4085106    0.1426550
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.5509574   -0.7447211   -0.3571937
24 months   PROVIDE          BANGLADESH                     Medium               High              -0.3520050   -0.5727631   -0.1312469
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.4273007   -0.7666104   -0.0879911
24 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.2931736   -0.6013116    0.0149645


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                 0.1332019   -0.1370667    0.4034706
Birth       COHORTS          INDIA                          High                 NA                -0.0289745   -0.1019986    0.0440495
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.0222341   -0.1033210    0.0588528
Birth       GMS-Nepal        NEPAL                          High                 NA                -0.0244901   -0.1783235    0.1293434
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.0420002   -0.0881007    0.0041003
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.0562456   -0.1605581    0.0480670
Birth       MAL-ED           BANGLADESH                     High                 NA                 0.0835359   -0.1580738    0.3251456
Birth       MAL-ED           PERU                           High                 NA                -0.0215464   -0.1375440    0.0944512
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.1225758   -0.5581866    0.3130351
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0583441   -0.2374398    0.1207515
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.0541341   -0.1520194    0.0437511
Birth       PROBIT           BELARUS                        High                 NA                -0.0118013   -0.1001981    0.0765955
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.0221920   -0.0808940    0.1252780
Birth       SAS-CompFeed     INDIA                          High                 NA                 0.0674444   -0.0667026    0.2015914
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0079809   -0.0889016    0.0729397
6 months    COHORTS          GUATEMALA                      High                 NA                -0.0930739   -0.2626197    0.0764719
6 months    COHORTS          INDIA                          High                 NA                -0.1593441   -0.2404404   -0.0782478
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0741832   -0.1553416    0.0069751
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.1201002   -0.2692322    0.0290319
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0797637   -0.1401092   -0.0194182
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.1053478   -0.2118644    0.0011689
6 months    LCNI-5           MALAWI                         High                 NA                -0.0043588   -0.1175013    0.1087836
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.0993912   -0.2741439    0.0753615
6 months    MAL-ED           INDIA                          High                 NA                 0.0240904   -0.1840971    0.2322778
6 months    MAL-ED           NEPAL                          High                 NA                -0.0216663   -0.2341585    0.1908260
6 months    MAL-ED           PERU                           High                 NA                 0.0305770   -0.0921498    0.1533037
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0773199   -0.3279646    0.1733247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0587136   -0.1634976    0.0460704
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0546411   -0.1607091    0.0514269
6 months    PROBIT           BELARUS                        High                 NA                -0.0907669   -0.1458458   -0.0356880
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.1288395   -0.2356034   -0.0220757
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0574328   -0.2330464    0.1181807
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.1788862   -0.3648273    0.0070549
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1659224   -0.2818155   -0.0500292
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0432088   -0.1489350    0.0625173
24 months   COHORTS          GUATEMALA                      High                 NA                -0.1060636   -0.3241984    0.1120712
24 months   COHORTS          INDIA                          High                 NA                -0.2928071   -0.3801799   -0.2054342
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.2339234   -0.3171434   -0.1507035
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.1444270   -0.3287582    0.0399043
24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0411460   -0.1214661    0.0391741
24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.1228321   -0.2001125   -0.0455516
24 months   LCNI-5           MALAWI                         High                 NA                 0.0269817   -0.0992238    0.1531873
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.2518668   -0.4488432   -0.0548904
24 months   MAL-ED           INDIA                          High                 NA                -0.0007908   -0.2327646    0.2311830
24 months   MAL-ED           NEPAL                          High                 NA                -0.1815803   -0.4138100    0.0506494
24 months   MAL-ED           PERU                           High                 NA                 0.0185517   -0.1126349    0.1497382
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.1991764   -0.4660452    0.0676923
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0416531   -0.1467394    0.0634333
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.1271221   -0.2469330   -0.0073112
24 months   PROBIT           BELARUS                        High                 NA                -0.1570340   -0.4470726    0.1330047
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.2694289   -0.3941695   -0.1446883
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.3149933   -0.6081997   -0.0217869
