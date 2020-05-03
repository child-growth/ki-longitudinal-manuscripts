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
![](/tmp/ddf7da8b-2806-4e0f-9bdc-b1f5345d175e/fe79908c-d8fd-422b-8287-0211d7b4740d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ddf7da8b-2806-4e0f-9bdc-b1f5345d175e/fe79908c-d8fd-422b-8287-0211d7b4740d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ddf7da8b-2806-4e0f-9bdc-b1f5345d175e/fe79908c-d8fd-422b-8287-0211d7b4740d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                 0.2052724    0.0067614    0.4037833
Birth       COHORTS          GUATEMALA                      Low                  NA                 0.1702582    0.0207351    0.3197814
Birth       COHORTS          GUATEMALA                      Medium               NA                 0.1930732    0.0103259    0.3758204
Birth       COHORTS          INDIA                          High                 NA                -0.5637539   -0.6629027   -0.4646051
Birth       COHORTS          INDIA                          Low                  NA                -0.6875902   -0.7854940   -0.5896864
Birth       COHORTS          INDIA                          Medium               NA                -0.5536088   -0.6840127   -0.4232048
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.2204158   -0.3056033   -0.1352283
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.3831633   -0.4673226   -0.2990040
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.2231765   -0.3054714   -0.1408817
Birth       GMS-Nepal        NEPAL                          High                 NA                -1.0778979   -1.2517616   -0.9040341
Birth       GMS-Nepal        NEPAL                          Low                  NA                -1.1395187   -1.2662027   -1.0128348
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.0512441   -1.2147213   -0.8877669
Birth       JiVitA-3         BANGLADESH                     High                 NA                -1.5508456   -1.6006529   -1.5010382
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -1.5874676   -1.6186973   -1.5562379
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -1.5951644   -1.6290049   -1.5613239
Birth       JiVitA-4         BANGLADESH                     High                 NA                -1.4429531   -1.5651560   -1.3207501
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -1.5632622   -1.6451078   -1.4814166
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -1.5199962   -1.6450316   -1.3949609
Birth       MAL-ED           BANGLADESH                     High                 NA                -1.2236829   -1.5039464   -0.9434195
Birth       MAL-ED           BANGLADESH                     Low                  NA                -1.1586721   -1.5100665   -0.8072776
Birth       MAL-ED           BANGLADESH                     Medium               NA                -1.0606702   -1.4052819   -0.7160586
Birth       MAL-ED           PERU                           High                 NA                -0.8301612   -0.9960488   -0.6642737
Birth       MAL-ED           PERU                           Low                  NA                -0.8500091   -1.0716618   -0.6283564
Birth       MAL-ED           PERU                           Medium               NA                -0.9276557   -1.1273621   -0.7279494
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.4350000   -0.9433959    0.0733959
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.3378571   -0.8038006    0.1280863
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                -1.0355556   -1.4792485   -0.5918626
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.0443045   -1.3221837   -0.7664252
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.2436183   -1.7069648   -0.7802717
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.7064717   -2.7236973   -0.6892461
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.8832427   -1.0146530   -0.7518325
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -0.8934906   -1.0357618   -0.7512194
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -0.9603970   -1.1238709   -0.7969231
Birth       PROBIT           BELARUS                        High                 NA                 1.3257752    1.1571204    1.4944299
Birth       PROBIT           BELARUS                        Low                  NA                 1.3213184    1.1335973    1.5090394
Birth       PROBIT           BELARUS                        Medium               NA                 1.3282208    1.1676302    1.4888115
Birth       PROVIDE          BANGLADESH                     High                 NA                -0.9060811   -1.0399589   -0.7722033
Birth       PROVIDE          BANGLADESH                     Low                  NA                -0.9374715   -1.0542268   -0.8207161
Birth       PROVIDE          BANGLADESH                     Medium               NA                -0.8601423   -0.9746377   -0.7456469
Birth       SAS-CompFeed     INDIA                          High                 NA                -1.4974604   -1.6683849   -1.3265359
Birth       SAS-CompFeed     INDIA                          Low                  NA                -1.4970565   -1.6100936   -1.3840194
Birth       SAS-CompFeed     INDIA                          Medium               NA                -1.4075023   -1.6012584   -1.2137463
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.4755468   -0.5617412   -0.3893524
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5462103   -0.6155184   -0.4769023
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.4960705   -0.5216367   -0.4705043
6 months    COHORTS          GUATEMALA                      High                 NA                -1.7521776   -1.9620305   -1.5423246
6 months    COHORTS          GUATEMALA                      Low                  NA                -1.7049116   -1.8256637   -1.5841595
6 months    COHORTS          GUATEMALA                      Medium               NA                -1.8939366   -2.0435151   -1.7443581
6 months    COHORTS          INDIA                          High                 NA                -0.8021752   -0.8960346   -0.7083159
6 months    COHORTS          INDIA                          Low                  NA                -1.1872342   -1.2891480   -1.0853204
6 months    COHORTS          INDIA                          Medium               NA                -0.9879952   -1.1368566   -0.8391339
6 months    COHORTS          PHILIPPINES                    High                 NA                -1.0720410   -1.1652822   -0.9787999
6 months    COHORTS          PHILIPPINES                    Low                  NA                -1.3612159   -1.4479101   -1.2745218
6 months    COHORTS          PHILIPPINES                    Medium               NA                -1.1649216   -1.2532960   -1.0765473
6 months    GMS-Nepal        NEPAL                          High                 NA                -1.2540346   -1.4148854   -1.0931839
6 months    GMS-Nepal        NEPAL                          Low                  NA                -1.4913391   -1.6121938   -1.3704844
6 months    GMS-Nepal        NEPAL                          Medium               NA                -1.3427363   -1.4831438   -1.2023289
6 months    JiVitA-3         BANGLADESH                     High                 NA                -1.2354997   -1.3004338   -1.1705655
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -1.3909449   -1.4384824   -1.3434074
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -1.3232781   -1.3664128   -1.2801435
6 months    JiVitA-4         BANGLADESH                     High                 NA                -1.2311101   -1.3461148   -1.1161054
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -1.4687243   -1.5422155   -1.3952330
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -1.3558518   -1.4199711   -1.2917325
6 months    LCNI-5           MALAWI                         High                 NA                -1.6561761   -1.7980999   -1.5142523
6 months    LCNI-5           MALAWI                         Low                  NA                -1.6157894   -1.7368040   -1.4947747
6 months    LCNI-5           MALAWI                         Medium               NA                -1.6843684   -1.7974800   -1.5712568
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.9824525   -1.1912596   -0.7736453
6 months    MAL-ED           BANGLADESH                     Low                  NA                -1.1656995   -1.4754854   -0.8559136
6 months    MAL-ED           BANGLADESH                     Medium               NA                -1.0546948   -1.3153084   -0.7940811
6 months    MAL-ED           INDIA                          High                 NA                -1.0954843   -1.3439198   -0.8470488
6 months    MAL-ED           INDIA                          Low                  NA                -1.0379550   -1.2968047   -0.7791052
6 months    MAL-ED           INDIA                          Medium               NA                -1.1079494   -1.3747134   -0.8411853
6 months    MAL-ED           NEPAL                          High                 NA                -0.6052114   -0.8396447   -0.3707781
6 months    MAL-ED           NEPAL                          Low                  NA                -0.4988806   -0.8171255   -0.1806358
6 months    MAL-ED           NEPAL                          Medium               NA                -0.8326272   -1.2484442   -0.4168102
6 months    MAL-ED           PERU                           High                 NA                -1.3355543   -1.5029049   -1.1682037
6 months    MAL-ED           PERU                           Low                  NA                -1.3877640   -1.6250776   -1.1504503
6 months    MAL-ED           PERU                           Medium               NA                -1.2215171   -1.4555236   -0.9875107
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -1.0121536   -1.3029018   -0.7214053
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                -0.9053330   -1.2565059   -0.5541602
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                -1.3112090   -1.6535872   -0.9688308
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2770055   -1.4489135   -1.1050975
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.4360040   -1.6827925   -1.1892155
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.6722563   -2.1969395   -1.1475731
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -1.1235730   -1.2440027   -1.0031434
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                -1.2425976   -1.3789940   -1.1062011
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                -1.2855024   -1.4574243   -1.1135805
6 months    PROBIT           BELARUS                        High                 NA                 0.2017250    0.1035883    0.2998618
6 months    PROBIT           BELARUS                        Low                  NA                 0.0484448   -0.0433487    0.1402383
6 months    PROBIT           BELARUS                        Medium               NA                 0.1395884    0.0451161    0.2340607
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.9562110   -1.0840945   -0.8283274
6 months    PROVIDE          BANGLADESH                     Low                  NA                -1.3225673   -1.4591603   -1.1859742
6 months    PROVIDE          BANGLADESH                     Medium               NA                -1.1020498   -1.2391464   -0.9649532
6 months    SAS-CompFeed     INDIA                          High                 NA                -1.3432048   -1.5553841   -1.1310256
6 months    SAS-CompFeed     INDIA                          Low                  NA                -1.6239931   -1.7126527   -1.5353336
6 months    SAS-CompFeed     INDIA                          Medium               NA                -1.3376076   -1.4984487   -1.1767665
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -1.7078541   -1.9143118   -1.5013964
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -1.9281205   -2.1148451   -1.7413960
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -2.0043372   -2.2051901   -1.8034842
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3676403   -0.4897008   -0.2455798
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.5268996   -0.6014791   -0.4523201
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5186825   -0.6238463   -0.4135188
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.8411254   -0.9458401   -0.7364106
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                -1.0004169   -1.0820042   -0.9188296
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                -0.8549647   -0.8861267   -0.8238027
24 months   COHORTS          GUATEMALA                      High                 NA                -2.8500465   -3.0268374   -2.6732556
24 months   COHORTS          GUATEMALA                      Low                  NA                -3.0145224   -3.1361586   -2.8928863
24 months   COHORTS          GUATEMALA                      Medium               NA                -2.9958025   -3.1426350   -2.8489701
24 months   COHORTS          INDIA                          High                 NA                -1.8569666   -1.9612535   -1.7526796
24 months   COHORTS          INDIA                          Low                  NA                -2.5412399   -2.6485562   -2.4339236
24 months   COHORTS          INDIA                          Medium               NA                -2.1548436   -2.2946897   -2.0149975
24 months   COHORTS          PHILIPPINES                    High                 NA                -2.1794063   -2.2731381   -2.0856745
24 months   COHORTS          PHILIPPINES                    Low                  NA                -2.7606224   -2.8571190   -2.6641257
24 months   COHORTS          PHILIPPINES                    Medium               NA                -2.4902202   -2.5799002   -2.4005401
24 months   GMS-Nepal        NEPAL                          High                 NA                -1.7696784   -1.9544433   -1.5849135
24 months   GMS-Nepal        NEPAL                          Low                  NA                -2.0177964   -2.1322291   -1.9033637
24 months   GMS-Nepal        NEPAL                          Medium               NA                -1.9701339   -2.1634475   -1.7768204
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.9690099   -2.0551743   -1.8828456
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -2.0716629   -2.1236915   -2.0196342
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -2.0019190   -2.0577124   -1.9461256
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.6692857   -1.7545949   -1.5839764
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.8825138   -1.9450515   -1.8199762
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.8206220   -1.8765472   -1.7646969
24 months   LCNI-5           MALAWI                         High                 NA                -1.9094398   -2.0577488   -1.7611307
24 months   LCNI-5           MALAWI                         Low                  NA                -1.7942649   -1.9308766   -1.6576531
24 months   LCNI-5           MALAWI                         Medium               NA                -1.9486995   -2.0945518   -1.8028472
24 months   MAL-ED           BANGLADESH                     High                 NA                -1.6344157   -1.8672817   -1.4015497
24 months   MAL-ED           BANGLADESH                     Low                  NA                -1.9756381   -2.2353805   -1.7158957
24 months   MAL-ED           BANGLADESH                     Medium               NA                -2.0200931   -2.3231005   -1.7170857
24 months   MAL-ED           INDIA                          High                 NA                -1.7381812   -1.9938498   -1.4825127
24 months   MAL-ED           INDIA                          Low                  NA                -1.7960544   -2.1067258   -1.4853831
24 months   MAL-ED           INDIA                          Medium               NA                -1.9065824   -2.1570397   -1.6561250
24 months   MAL-ED           NEPAL                          High                 NA                -1.1548328   -1.4711099   -0.8385557
24 months   MAL-ED           NEPAL                          Low                  NA                -1.5241869   -1.7823911   -1.2659827
24 months   MAL-ED           NEPAL                          Medium               NA                -1.4992560   -1.9001156   -1.0983964
24 months   MAL-ED           PERU                           High                 NA                -1.7544138   -1.9497669   -1.5590608
24 months   MAL-ED           PERU                           Low                  NA                -1.7095190   -1.9536434   -1.4653947
24 months   MAL-ED           PERU                           Medium               NA                -1.7831568   -1.9893397   -1.5769739
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -1.4581269   -1.7775663   -1.1386876
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                -1.6789479   -2.0231767   -1.3347191
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                -1.9605179   -2.3797752   -1.5412606
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.5395851   -2.7263921   -2.3527781
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.7165783   -2.9888880   -2.4442686
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.4969494   -2.9356513   -2.0582476
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -1.3223461   -1.4730809   -1.1716113
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -1.7105089   -1.8738336   -1.5471843
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -1.4933689   -1.6673605   -1.3193774
24 months   PROBIT           BELARUS                        High                 NA                 0.0305444   -0.2361986    0.2972875
24 months   PROBIT           BELARUS                        Low                  NA                -0.2165523   -0.5577232    0.1246187
24 months   PROBIT           BELARUS                        Medium               NA                -0.1139122   -0.3903874    0.1625631
24 months   PROVIDE          BANGLADESH                     High                 NA                -1.3345630   -1.4699849   -1.1991412
24 months   PROVIDE          BANGLADESH                     Low                  NA                -1.9327337   -2.0597365   -1.8057310
24 months   PROVIDE          BANGLADESH                     Medium               NA                -1.6910750   -1.8565090   -1.5256409
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.2301364   -1.5240318   -0.9362409
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.6860784   -1.8435083   -1.5286485
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.5737878   -1.6384985   -1.5090770


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
Birth       COHORTS          GUATEMALA                      Low                  High              -0.0350141   -0.2828966    0.2128683
Birth       COHORTS          GUATEMALA                      Medium               High              -0.0121992   -0.2822779    0.2578794
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High              -0.1238363   -0.2598472    0.0121746
Birth       COHORTS          INDIA                          Medium               High               0.0101451   -0.1504640    0.1707542
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High              -0.1627475   -0.2809283   -0.0445667
Birth       COHORTS          PHILIPPINES                    Medium               High              -0.0027607   -0.1191450    0.1136235
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High              -0.0616209   -0.2738398    0.1505980
Birth       GMS-Nepal        NEPAL                          Medium               High               0.0266538   -0.2090360    0.2623435
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              -0.0366220   -0.0915662    0.0183221
Birth       JiVitA-3         BANGLADESH                     Medium               High              -0.0443188   -0.0994651    0.0108274
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              -0.1203091   -0.2685095    0.0278913
Birth       JiVitA-4         BANGLADESH                     Medium               High              -0.0770432   -0.2516061    0.0975198
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High               0.0650109   -0.3858274    0.5158491
Birth       MAL-ED           BANGLADESH                     Medium               High               0.1630127   -0.2830919    0.6091173
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High              -0.0198479   -0.2747901    0.2350944
Birth       MAL-ED           PERU                           Medium               High              -0.0974945   -0.3372240    0.1422350
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High               0.0971429   -0.5924727    0.7867584
Birth       MAL-ED           SOUTH AFRICA                   Medium               High              -0.6005556   -1.2753368    0.0742257
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1993138   -0.7393236    0.3406960
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.6621673   -1.7165700    0.3922355
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High              -0.0102479   -0.2005267    0.1800310
Birth       NIH-Crypto       BANGLADESH                     Medium               High              -0.0771543   -0.2833740    0.1290655
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.0044568   -0.1242004    0.1152869
Birth       PROBIT           BELARUS                        Medium               High               0.0024457   -0.0939263    0.0988177
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High              -0.0313903   -0.1972240    0.1344434
Birth       PROVIDE          BANGLADESH                     Medium               High               0.0459388   -0.1179553    0.2098330
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High               0.0004039   -0.1937971    0.1946050
Birth       SAS-CompFeed     INDIA                          Medium               High               0.0899581   -0.1513268    0.3312429
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High              -0.0706635   -0.1807664    0.0394393
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              -0.0205237   -0.1097848    0.0687373
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High               0.0472659   -0.1944627    0.2889945
6 months    COHORTS          GUATEMALA                      Medium               High              -0.1417591   -0.3993147    0.1157965
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.3850590   -0.5243088   -0.2458091
6 months    COHORTS          INDIA                          Medium               High              -0.1858200   -0.3621904   -0.0094496
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High              -0.2891749   -0.4170429   -0.1613069
6 months    COHORTS          PHILIPPINES                    Medium               High              -0.0928806   -0.2214050    0.0356438
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.2373045   -0.4397539   -0.0348551
6 months    GMS-Nepal        NEPAL                          Medium               High              -0.0887017   -0.3020999    0.1246965
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.1554452   -0.2340755   -0.0768150
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.0877785   -0.1627503   -0.0128067
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              -0.2376142   -0.3694779   -0.1057505
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.1247417   -0.2536014    0.0041180
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High               0.0403867   -0.1459118    0.2266852
6 months    LCNI-5           MALAWI                         Medium               High              -0.0281923   -0.2092352    0.1528505
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.1832470   -0.5578144    0.1913203
6 months    MAL-ED           BANGLADESH                     Medium               High              -0.0722423   -0.4068562    0.2623716
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High               0.0575294   -0.3019666    0.4170253
6 months    MAL-ED           INDIA                          Medium               High              -0.0124651   -0.3772665    0.3523363
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High               0.1063308   -0.2905861    0.5032477
6 months    MAL-ED           NEPAL                          Medium               High              -0.2274158   -0.7098970    0.2550653
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High              -0.0522097   -0.3429678    0.2385485
6 months    MAL-ED           PERU                           Medium               High               0.1140371   -0.1738399    0.4019142
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High               0.1068205   -0.3525202    0.5661613
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.2990554   -0.7417657    0.1436549
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1589985   -0.4610101    0.1430131
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3952508   -0.9452265    0.1547249
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.1190245   -0.3010877    0.0630387
6 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.1619293   -0.3722424    0.0483838
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High              -0.1532803   -0.2289601   -0.0776005
6 months    PROBIT           BELARUS                        Medium               High              -0.0621367   -0.1303351    0.0060617
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.3663563   -0.5539296   -0.1787830
6 months    PROVIDE          BANGLADESH                     Medium               High              -0.1458388   -0.3326974    0.0410198
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.2807883   -0.4703599   -0.0912168
6 months    SAS-CompFeed     INDIA                          Medium               High               0.0055972   -0.3040178    0.3152122
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              -0.2202664   -0.4992275    0.0586946
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.2964831   -0.5847202   -0.0082460
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1592593   -0.3005685   -0.0179500
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1510422   -0.3105688    0.0084843
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.1592915   -0.2910659   -0.0275171
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0138393   -0.1218148    0.0941362
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High              -0.1644759   -0.3782218    0.0492700
24 months   COHORTS          GUATEMALA                      Medium               High              -0.1457560   -0.3747858    0.0832739
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -0.6842733   -0.8357414   -0.5328052
24 months   COHORTS          INDIA                          Medium               High              -0.2978770   -0.4728406   -0.1229134
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.5812161   -0.7172003   -0.4452318
24 months   COHORTS          PHILIPPINES                    Medium               High              -0.3108139   -0.4409959   -0.1806318
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High              -0.2481180   -0.4659107   -0.0303253
24 months   GMS-Nepal        NEPAL                          Medium               High              -0.2004555   -0.4666407    0.0657296
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High              -0.1026530   -0.1988856   -0.0064203
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.0329091   -0.1309080    0.0650898
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.2132282   -0.3141515   -0.1123048
24 months   JiVitA-4         BANGLADESH                     Medium               High              -0.1513364   -0.2486622   -0.0540106
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High               0.1151749   -0.0866051    0.3169549
24 months   LCNI-5           MALAWI                         Medium               High              -0.0392598   -0.2473811    0.1688615
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.3412224   -0.6858529    0.0034081
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.3856774   -0.7640056   -0.0073492
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High              -0.0578732   -0.4571479    0.3414015
24 months   MAL-ED           INDIA                          Medium               High              -0.1684011   -0.5256035    0.1888012
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.3693541   -0.7856873    0.0469792
24 months   MAL-ED           NEPAL                          Medium               High              -0.3444232   -0.8566075    0.1677611
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High               0.0448948   -0.2661323    0.3559219
24 months   MAL-ED           PERU                           Medium               High              -0.0287430   -0.3084510    0.2509650
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.2208209   -0.6908346    0.2491928
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.5023909   -1.0236300    0.0188481
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1769933   -0.5070921    0.1531056
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0426356   -0.4336439    0.5189152
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.3881629   -0.6099872   -0.1663385
24 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.1710229   -0.4011305    0.0590847
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.2470967   -0.6113623    0.1171689
24 months   PROBIT           BELARUS                        Medium               High              -0.1444566   -0.4006492    0.1117359
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.5981707   -0.7847188   -0.4116226
24 months   PROVIDE          BANGLADESH                     Medium               High              -0.3565119   -0.5700911   -0.1429328
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.4559420   -0.7883325   -0.1235516
24 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.3436514   -0.6437216   -0.0435812


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                -0.0683694   -0.2561132    0.1193744
Birth       COHORTS          INDIA                          High                 NA                -0.0374426   -0.1149783    0.0400932
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.0203221   -0.0951410    0.0544968
Birth       GMS-Nepal        NEPAL                          High                 NA                -0.0106180   -0.1655263    0.1442903
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.0335162   -0.0790218    0.0119893
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.0812695   -0.1992077    0.0366686
Birth       MAL-ED           BANGLADESH                     High                 NA                 0.0627527   -0.1768507    0.3023561
Birth       MAL-ED           PERU                           High                 NA                -0.0343749   -0.1484084    0.0796587
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.1225758   -0.5581866    0.3130351
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0463751   -0.2213821    0.1286318
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.0262518   -0.1334634    0.0809598
Birth       PROBIT           BELARUS                        High                 NA                -0.0061499   -0.0950135    0.0827138
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.0209791   -0.0848297    0.1267878
Birth       SAS-CompFeed     INDIA                          High                 NA                 0.0674444   -0.0667026    0.2015914
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0221793   -0.1057612    0.0614026
6 months    COHORTS          GUATEMALA                      High                 NA                -0.0552339   -0.2533689    0.1429010
6 months    COHORTS          INDIA                          High                 NA                -0.1733266   -0.2518710   -0.0947821
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0698934   -0.1527003    0.0129134
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0985113   -0.2412907    0.0442682
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0718113   -0.1326083   -0.0110143
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.1109053   -0.2164440   -0.0053665
6 months    LCNI-5           MALAWI                         High                 NA                 0.0119027   -0.1039198    0.1277251
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.0962344   -0.2774494    0.0849806
6 months    MAL-ED           INDIA                          High                 NA                 0.0134191   -0.2005181    0.2273563
6 months    MAL-ED           NEPAL                          High                 NA                -0.0127360   -0.2184265    0.1929545
6 months    MAL-ED           PERU                           High                 NA                 0.0147023   -0.1071855    0.1365902
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.0292369   -0.2164669    0.2749407
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0512947   -0.1552454    0.0526561
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0751053   -0.1755805    0.0253699
6 months    PROBIT           BELARUS                        High                 NA                -0.0938314   -0.1501924   -0.0374705
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.1354805   -0.2443712   -0.0265898
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0574328   -0.2330464    0.1181807
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.1908301   -0.3744927   -0.0071675
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1765640   -0.2913127   -0.0618152
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0195704   -0.1207985    0.0816576
24 months   COHORTS          GUATEMALA                      High                 NA                -0.1334414   -0.3032207    0.0363379
24 months   COHORTS          INDIA                          High                 NA                -0.2909392   -0.3793175   -0.2025609
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.2474563   -0.3309482   -0.1639644
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.1192333   -0.2849709    0.0465043
24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0380418   -0.1175809    0.0414973
24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.1124268   -0.1902612   -0.0345924
24 months   LCNI-5           MALAWI                         High                 NA                 0.0306832   -0.0935679    0.1549343
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.2423365   -0.4489324   -0.0357406
24 months   MAL-ED           INDIA                          High                 NA                -0.0887506   -0.3114312    0.1339301
24 months   MAL-ED           NEPAL                          High                 NA                -0.1869254   -0.4279266    0.0540757
24 months   MAL-ED           PERU                           High                 NA                -0.0045801   -0.1355447    0.1263845
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.1984115   -0.4581933    0.0613703
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0451042   -0.1508443    0.0606359
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.1189185   -0.2383852    0.0005481
24 months   PROBIT           BELARUS                        High                 NA                -0.1680302   -0.4302360    0.0941757
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.2678591   -0.3865825   -0.1491357
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.3602432   -0.6454224   -0.0750639
