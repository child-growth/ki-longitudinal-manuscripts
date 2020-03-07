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

agecat      studyid          country                        feducyrs    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       COHORTS          GUATEMALA                      High           155     804
Birth       COHORTS          GUATEMALA                      Low            355     804
Birth       COHORTS          GUATEMALA                      Medium         294     804
Birth       COHORTS          INDIA                          High           527    1354
Birth       COHORTS          INDIA                          Low            439    1354
Birth       COHORTS          INDIA                          Medium         388    1354
Birth       COHORTS          PHILIPPINES                    High          1027    2873
Birth       COHORTS          PHILIPPINES                    Low            827    2873
Birth       COHORTS          PHILIPPINES                    Medium        1019    2873
Birth       GMS-Nepal        NEPAL                          High           172     694
Birth       GMS-Nepal        NEPAL                          Low            296     694
Birth       GMS-Nepal        NEPAL                          Medium         226     694
Birth       JiVitA-3         BANGLADESH                     High          4726   21624
Birth       JiVitA-3         BANGLADESH                     Low           9468   21624
Birth       JiVitA-3         BANGLADESH                     Medium        7430   21624
Birth       JiVitA-4         BANGLADESH                     High           582    2740
Birth       JiVitA-4         BANGLADESH                     Low           1102    2740
Birth       JiVitA-4         BANGLADESH                     Medium        1056    2740
Birth       MAL-ED           BANGLADESH                     High            47     129
Birth       MAL-ED           BANGLADESH                     Low             36     129
Birth       MAL-ED           BANGLADESH                     Medium          46     129
Birth       MAL-ED           INDIA                          High             7      24
Birth       MAL-ED           INDIA                          Low             14      24
Birth       MAL-ED           INDIA                          Medium           3      24
Birth       MAL-ED           NEPAL                          High             3      10
Birth       MAL-ED           NEPAL                          Low              4      10
Birth       MAL-ED           NEPAL                          Medium           3      10
Birth       MAL-ED           PERU                           High            86     194
Birth       MAL-ED           PERU                           Low             58     194
Birth       MAL-ED           PERU                           Medium          50     194
Birth       MAL-ED           SOUTH AFRICA                   High            10      33
Birth       MAL-ED           SOUTH AFRICA                   Low             14      33
Birth       MAL-ED           SOUTH AFRICA                   Medium           9      33
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High            66     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             27     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          10     103
Birth       NIH-Crypto       BANGLADESH                     High           284     732
Birth       NIH-Crypto       BANGLADESH                     Low            235     732
Birth       NIH-Crypto       BANGLADESH                     Medium         213     732
Birth       PROBIT           BELARUS                        High          2059   13424
Birth       PROBIT           BELARUS                        Low           5320   13424
Birth       PROBIT           BELARUS                        Medium        6045   13424
Birth       PROVIDE          BANGLADESH                     High           163     539
Birth       PROVIDE          BANGLADESH                     Low            187     539
Birth       PROVIDE          BANGLADESH                     Medium         189     539
Birth       SAS-CompFeed     INDIA                          High           299    1249
Birth       SAS-CompFeed     INDIA                          Low            543    1249
Birth       SAS-CompFeed     INDIA                          Medium         407    1249
Birth       ZVITAMBO         ZIMBABWE                       High           982   13501
Birth       ZVITAMBO         ZIMBABWE                       Low           2281   13501
Birth       ZVITAMBO         ZIMBABWE                       Medium       10238   13501
6 months    COHORTS          GUATEMALA                      High           165     904
6 months    COHORTS          GUATEMALA                      Low            406     904
6 months    COHORTS          GUATEMALA                      Medium         333     904
6 months    COHORTS          INDIA                          High           544    1385
6 months    COHORTS          INDIA                          Low            450    1385
6 months    COHORTS          INDIA                          Medium         391    1385
6 months    COHORTS          PHILIPPINES                    High           891    2564
6 months    COHORTS          PHILIPPINES                    Low            746    2564
6 months    COHORTS          PHILIPPINES                    Medium         927    2564
6 months    GMS-Nepal        NEPAL                          High           137     563
6 months    GMS-Nepal        NEPAL                          Low            243     563
6 months    GMS-Nepal        NEPAL                          Medium         183     563
6 months    JiVitA-3         BANGLADESH                     High          4279   16132
6 months    JiVitA-3         BANGLADESH                     Low           6304   16132
6 months    JiVitA-3         BANGLADESH                     Medium        5549   16132
6 months    JiVitA-4         BANGLADESH                     High          1099    4689
6 months    JiVitA-4         BANGLADESH                     Low           1725    4689
6 months    JiVitA-4         BANGLADESH                     Medium        1865    4689
6 months    LCNI-5           MALAWI                         High           251     812
6 months    LCNI-5           MALAWI                         Low            290     812
6 months    LCNI-5           MALAWI                         Medium         271     812
6 months    MAL-ED           BANGLADESH                     High            50     132
6 months    MAL-ED           BANGLADESH                     Low             36     132
6 months    MAL-ED           BANGLADESH                     Medium          46     132
6 months    MAL-ED           INDIA                          High            43     138
6 months    MAL-ED           INDIA                          Low             54     138
6 months    MAL-ED           INDIA                          Medium          41     138
6 months    MAL-ED           NEPAL                          High            40      95
6 months    MAL-ED           NEPAL                          Low             27      95
6 months    MAL-ED           NEPAL                          Medium          28      95
6 months    MAL-ED           PERU                           High           107     224
6 months    MAL-ED           PERU                           Low             60     224
6 months    MAL-ED           PERU                           Medium          57     224
6 months    MAL-ED           SOUTH AFRICA                   High            33      92
6 months    MAL-ED           SOUTH AFRICA                   Low             35      92
6 months    MAL-ED           SOUTH AFRICA                   Medium          24      92
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           127     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             55     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          19     201
6 months    NIH-Crypto       BANGLADESH                     High           279     715
6 months    NIH-Crypto       BANGLADESH                     Low            223     715
6 months    NIH-Crypto       BANGLADESH                     Medium         213     715
6 months    PROBIT           BELARUS                        High          2513   15210
6 months    PROBIT           BELARUS                        Low           5961   15210
6 months    PROBIT           BELARUS                        Medium        6736   15210
6 months    PROVIDE          BANGLADESH                     High           209     604
6 months    PROVIDE          BANGLADESH                     Low            209     604
6 months    PROVIDE          BANGLADESH                     Medium         186     604
6 months    SAS-CompFeed     INDIA                          High           348    1333
6 months    SAS-CompFeed     INDIA                          Low            550    1333
6 months    SAS-CompFeed     INDIA                          Medium         435    1333
6 months    SAS-FoodSuppl    INDIA                          High           101     380
6 months    SAS-FoodSuppl    INDIA                          Low            132     380
6 months    SAS-FoodSuppl    INDIA                          Medium         147     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1083    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2018
6 months    ZVITAMBO         ZIMBABWE                       High           586    8429
6 months    ZVITAMBO         ZIMBABWE                       Low           1459    8429
6 months    ZVITAMBO         ZIMBABWE                       Medium        6384    8429
24 months   COHORTS          GUATEMALA                      High           177     992
24 months   COHORTS          GUATEMALA                      Low            462     992
24 months   COHORTS          GUATEMALA                      Medium         353     992
24 months   COHORTS          INDIA                          High           539    1380
24 months   COHORTS          INDIA                          Low            450    1380
24 months   COHORTS          INDIA                          Medium         391    1380
24 months   COHORTS          PHILIPPINES                    High           798    2314
24 months   COHORTS          PHILIPPINES                    Low            692    2314
24 months   COHORTS          PHILIPPINES                    Medium         824    2314
24 months   GMS-Nepal        NEPAL                          High           113     487
24 months   GMS-Nepal        NEPAL                          Low            219     487
24 months   GMS-Nepal        NEPAL                          Medium         155     487
24 months   JiVitA-3         BANGLADESH                     High          2070    8293
24 months   JiVitA-3         BANGLADESH                     Low           3379    8293
24 months   JiVitA-3         BANGLADESH                     Medium        2844    8293
24 months   JiVitA-4         BANGLADESH                     High          1096    4619
24 months   JiVitA-4         BANGLADESH                     Low           1703    4619
24 months   JiVitA-4         BANGLADESH                     Medium        1820    4619
24 months   LCNI-5           MALAWI                         High           173     571
24 months   LCNI-5           MALAWI                         Low            203     571
24 months   LCNI-5           MALAWI                         Medium         195     571
24 months   MAL-ED           BANGLADESH                     High            40     117
24 months   MAL-ED           BANGLADESH                     Low             35     117
24 months   MAL-ED           BANGLADESH                     Medium          42     117
24 months   MAL-ED           INDIA                          High            42     132
24 months   MAL-ED           INDIA                          Low             51     132
24 months   MAL-ED           INDIA                          Medium          39     132
24 months   MAL-ED           NEPAL                          High            38      91
24 months   MAL-ED           NEPAL                          Low             27      91
24 months   MAL-ED           NEPAL                          Medium          26      91
24 months   MAL-ED           PERU                           High            77     164
24 months   MAL-ED           PERU                           Low             44     164
24 months   MAL-ED           PERU                           Medium          43     164
24 months   MAL-ED           SOUTH AFRICA                   High            34      91
24 months   MAL-ED           SOUTH AFRICA                   Low             34      91
24 months   MAL-ED           SOUTH AFRICA                   Medium          23      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           114     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             47     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          16     177
24 months   NIH-Crypto       BANGLADESH                     High           211     514
24 months   NIH-Crypto       BANGLADESH                     Low            144     514
24 months   NIH-Crypto       BANGLADESH                     Medium         159     514
24 months   PROBIT           BELARUS                        High           627    3913
24 months   PROBIT           BELARUS                        Low           1516    3913
24 months   PROBIT           BELARUS                        Medium        1770    3913
24 months   PROVIDE          BANGLADESH                     High           202     578
24 months   PROVIDE          BANGLADESH                     Low            197     578
24 months   PROVIDE          BANGLADESH                     Medium         179     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ZVITAMBO         ZIMBABWE                       High            96    1594
24 months   ZVITAMBO         ZIMBABWE                       Low            298    1594
24 months   ZVITAMBO         ZIMBABWE                       Medium        1200    1594


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
![](/tmp/f730aa2d-2551-48c6-818f-f8edacc4504c/6b065d7d-66b6-4193-9c39-1eece6d4f488/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f730aa2d-2551-48c6-818f-f8edacc4504c/6b065d7d-66b6-4193-9c39-1eece6d4f488/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f730aa2d-2551-48c6-818f-f8edacc4504c/6b065d7d-66b6-4193-9c39-1eece6d4f488/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                 0.2191110    0.0220646    0.4161574
Birth       COHORTS          GUATEMALA                      Low                  NA                 0.1547167    0.0153382    0.2940953
Birth       COHORTS          GUATEMALA                      Medium               NA                 0.1876362   -0.0009550    0.3762275
Birth       COHORTS          INDIA                          High                 NA                -0.5778880   -0.6759820   -0.4797939
Birth       COHORTS          INDIA                          Low                  NA                -0.6769076   -0.7752100   -0.5786053
Birth       COHORTS          INDIA                          Medium               NA                -0.5594121   -0.6902039   -0.4286203
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.2076646   -0.2945487   -0.1207805
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.4063596   -0.4945455   -0.3181737
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.2486146   -0.3324348   -0.1647945
Birth       GMS-Nepal        NEPAL                          High                 NA                -1.0557783   -1.2283732   -0.8831834
Birth       GMS-Nepal        NEPAL                          Low                  NA                -1.1623916   -1.2906780   -1.0341051
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.1114559   -1.2763313   -0.9465806
Birth       JiVitA-3         BANGLADESH                     High                 NA                -1.5513936   -1.6026605   -1.5001266
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -1.5899603   -1.6205917   -1.5593289
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -1.5866676   -1.6204159   -1.5529193
Birth       JiVitA-4         BANGLADESH                     High                 NA                -1.4433033   -1.5519754   -1.3346311
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -1.5648480   -1.6551362   -1.4745599
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -1.5005612   -1.6263457   -1.3747766
Birth       MAL-ED           BANGLADESH                     High                 NA                -1.2355545   -1.5148491   -0.9562598
Birth       MAL-ED           BANGLADESH                     Low                  NA                -1.1983540   -1.5565307   -0.8401773
Birth       MAL-ED           BANGLADESH                     Medium               NA                -1.0719124   -1.4181577   -0.7256670
Birth       MAL-ED           PERU                           High                 NA                -0.8388161   -1.0090326   -0.6685996
Birth       MAL-ED           PERU                           Low                  NA                -0.8565223   -1.0747941   -0.6382504
Birth       MAL-ED           PERU                           Medium               NA                -0.9146211   -1.1184213   -0.7108209
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.4350000   -0.9433959    0.0733959
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.3378571   -0.8038006    0.1280863
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                -1.0355556   -1.4792485   -0.5918626
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.0397138   -1.3168562   -0.7625713
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.2233063   -1.6611178   -0.7854948
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.9123345   -2.9786156   -0.8460535
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.8633344   -0.9871023   -0.7395666
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -0.9327559   -1.0714232   -0.7940885
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -0.9611676   -1.1215471   -0.8007881
Birth       PROBIT           BELARUS                        High                 NA                 1.3336097    1.1607000    1.5065194
Birth       PROBIT           BELARUS                        Low                  NA                 1.3239444    1.1360549    1.5118338
Birth       PROBIT           BELARUS                        Medium               NA                 1.3230463    1.1642480    1.4818446
Birth       PROVIDE          BANGLADESH                     High                 NA                -0.9183841   -1.0517827   -0.7849855
Birth       PROVIDE          BANGLADESH                     Low                  NA                -0.9241582   -1.0450608   -0.8032556
Birth       PROVIDE          BANGLADESH                     Medium               NA                -0.8868425   -1.0068421   -0.7668428
Birth       SAS-CompFeed     INDIA                          High                 NA                -1.4974604   -1.6683849   -1.3265359
Birth       SAS-CompFeed     INDIA                          Low                  NA                -1.4970565   -1.6100936   -1.3840194
Birth       SAS-CompFeed     INDIA                          Medium               NA                -1.4075023   -1.6012584   -1.2137463
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.4963812   -0.5836050   -0.4091575
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5455388   -0.6159239   -0.4751536
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.4977830   -0.5228743   -0.4726917
6 months    COHORTS          GUATEMALA                      High                 NA                -1.7401215   -1.9257594   -1.5544836
6 months    COHORTS          GUATEMALA                      Low                  NA                -1.7213551   -1.8311161   -1.6115942
6 months    COHORTS          GUATEMALA                      Medium               NA                -1.8397541   -1.9746109   -1.7048972
6 months    COHORTS          INDIA                          High                 NA                -0.8035077   -0.9001666   -0.7068488
6 months    COHORTS          INDIA                          Low                  NA                -1.1838633   -1.2874907   -1.0802358
6 months    COHORTS          INDIA                          Medium               NA                -0.9949419   -1.1519888   -0.8378950
6 months    COHORTS          PHILIPPINES                    High                 NA                -1.0655019   -1.1603814   -0.9706223
6 months    COHORTS          PHILIPPINES                    Low                  NA                -1.3580901   -1.4490784   -1.2671017
6 months    COHORTS          PHILIPPINES                    Medium               NA                -1.1605782   -1.2466746   -1.0744819
6 months    GMS-Nepal        NEPAL                          High                 NA                -1.2575589   -1.4269892   -1.0881287
6 months    GMS-Nepal        NEPAL                          Low                  NA                -1.4961248   -1.6159293   -1.3763203
6 months    GMS-Nepal        NEPAL                          Medium               NA                -1.3321575   -1.4704550   -1.1938600
6 months    JiVitA-3         BANGLADESH                     High                 NA                -1.2313964   -1.2952838   -1.1675090
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -1.3900355   -1.4358147   -1.3442563
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -1.3191263   -1.3610889   -1.2771637
6 months    JiVitA-4         BANGLADESH                     High                 NA                -1.2405133   -1.3597798   -1.1212468
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -1.4696225   -1.5414440   -1.3978009
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -1.3634479   -1.4275996   -1.2992961
6 months    LCNI-5           MALAWI                         High                 NA                -1.6490405   -1.7871888   -1.5108921
6 months    LCNI-5           MALAWI                         Low                  NA                -1.6240391   -1.7469065   -1.5011717
6 months    LCNI-5           MALAWI                         Medium               NA                -1.6818645   -1.7944865   -1.5692426
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.9815405   -1.1802017   -0.7828793
6 months    MAL-ED           BANGLADESH                     Low                  NA                -1.1325817   -1.4346585   -0.8305049
6 months    MAL-ED           BANGLADESH                     Medium               NA                -1.0144092   -1.2812536   -0.7475647
6 months    MAL-ED           INDIA                          High                 NA                -1.0687958   -1.3156922   -0.8218994
6 months    MAL-ED           INDIA                          Low                  NA                -1.0330268   -1.2863659   -0.7796877
6 months    MAL-ED           INDIA                          Medium               NA                -1.1177512   -1.3759464   -0.8595561
6 months    MAL-ED           NEPAL                          High                 NA                -0.5717103   -0.8121018   -0.3313188
6 months    MAL-ED           NEPAL                          Low                  NA                -0.5211695   -0.8289090   -0.2134301
6 months    MAL-ED           NEPAL                          Medium               NA                -0.8374155   -1.2478302   -0.4270007
6 months    MAL-ED           PERU                           High                 NA                -1.3328205   -1.4990601   -1.1665809
6 months    MAL-ED           PERU                           Low                  NA                -1.3674195   -1.6046803   -1.1301586
6 months    MAL-ED           PERU                           Medium               NA                -1.2616309   -1.5101056   -1.0131562
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -1.0005485   -1.3080217   -0.6930753
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                -0.8966885   -1.2553349   -0.5380421
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                -1.3276124   -1.6753694   -0.9798553
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2741796   -1.4466870   -1.1016721
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.3869907   -1.6379167   -1.1360647
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.5010216   -2.0193890   -0.9826541
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -1.1158996   -1.2345360   -0.9972632
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                -1.2486291   -1.3966393   -1.1006189
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                -1.2855328   -1.4508218   -1.1202438
6 months    PROBIT           BELARUS                        High                 NA                 0.2132458    0.1170114    0.3094803
6 months    PROBIT           BELARUS                        Low                  NA                 0.0385373   -0.0516210    0.1286956
6 months    PROBIT           BELARUS                        Medium               NA                 0.1397606    0.0423715    0.2371498
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.9570224   -1.0748632   -0.8391815
6 months    PROVIDE          BANGLADESH                     Low                  NA                -1.3113091   -1.4465191   -1.1760991
6 months    PROVIDE          BANGLADESH                     Medium               NA                -1.1004470   -1.2373232   -0.9635708
6 months    SAS-CompFeed     INDIA                          High                 NA                -1.3432048   -1.5553841   -1.1310256
6 months    SAS-CompFeed     INDIA                          Low                  NA                -1.6239931   -1.7126527   -1.5353336
6 months    SAS-CompFeed     INDIA                          Medium               NA                -1.3376076   -1.4984487   -1.1767665
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -1.7377929   -1.9397074   -1.5358784
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -1.9131806   -2.0996183   -1.7267428
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -1.9926398   -2.1967997   -1.7884798
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3747759   -0.5038490   -0.2457028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.5364948   -0.6121313   -0.4608584
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5102206   -0.6157559   -0.4046852
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.8272185   -0.9348698   -0.7195671
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                -1.0087761   -1.0891541   -0.9283982
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                -0.8536709   -0.8853510   -0.8219909
24 months   COHORTS          GUATEMALA                      High                 NA                -2.8618457   -3.0487992   -2.6748923
24 months   COHORTS          GUATEMALA                      Low                  NA                -2.9942130   -3.1158833   -2.8725426
24 months   COHORTS          GUATEMALA                      Medium               NA                -2.9801332   -3.1308987   -2.8293676
24 months   COHORTS          INDIA                          High                 NA                -1.8628035   -1.9679196   -1.7576875
24 months   COHORTS          INDIA                          Low                  NA                -2.5650862   -2.6746546   -2.4555179
24 months   COHORTS          INDIA                          Medium               NA                -2.1706973   -2.3176577   -2.0237369
24 months   COHORTS          PHILIPPINES                    High                 NA                -2.1810274   -2.2738170   -2.0882379
24 months   COHORTS          PHILIPPINES                    Low                  NA                -2.7618610   -2.8582698   -2.6654523
24 months   COHORTS          PHILIPPINES                    Medium               NA                -2.5032279   -2.5912865   -2.4151694
24 months   GMS-Nepal        NEPAL                          High                 NA                -1.7268072   -1.9205193   -1.5330951
24 months   GMS-Nepal        NEPAL                          Low                  NA                -1.9981293   -2.1133768   -1.8828819
24 months   GMS-Nepal        NEPAL                          Medium               NA                -2.0069017   -2.1960568   -1.8177466
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.9550869   -2.0418848   -1.8682890
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -2.0735374   -2.1249075   -2.0221672
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -1.9995608   -2.0542321   -1.9448895
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.6637207   -1.7516686   -1.5757729
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.8776853   -1.9423207   -1.8130499
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.8212905   -1.8790968   -1.7634842
24 months   LCNI-5           MALAWI                         High                 NA                -1.9191352   -2.0692459   -1.7690246
24 months   LCNI-5           MALAWI                         Low                  NA                -1.7961821   -1.9333871   -1.6589772
24 months   LCNI-5           MALAWI                         Medium               NA                -1.9468807   -2.0897460   -1.8040153
24 months   MAL-ED           BANGLADESH                     High                 NA                -1.5963885   -1.8171592   -1.3756178
24 months   MAL-ED           BANGLADESH                     Low                  NA                -1.9923047   -2.2506631   -1.7339462
24 months   MAL-ED           BANGLADESH                     Medium               NA                -2.0338652   -2.3338676   -1.7338628
24 months   MAL-ED           INDIA                          High                 NA                -1.7600917   -2.0246989   -1.4954844
24 months   MAL-ED           INDIA                          Low                  NA                -1.8033091   -2.1161901   -1.4904281
24 months   MAL-ED           INDIA                          Medium               NA                -1.9305062   -2.1961262   -1.6648861
24 months   MAL-ED           NEPAL                          High                 NA                -1.1392723   -1.4423781   -0.8361664
24 months   MAL-ED           NEPAL                          Low                  NA                -1.4044576   -1.6806373   -1.1282780
24 months   MAL-ED           NEPAL                          Medium               NA                -1.4673684   -1.8478336   -1.0869031
24 months   MAL-ED           PERU                           High                 NA                -1.7607036   -1.9569642   -1.5644430
24 months   MAL-ED           PERU                           Low                  NA                -1.6711899   -1.9370113   -1.4053684
24 months   MAL-ED           PERU                           Medium               NA                -1.8123144   -2.0191891   -1.6054398
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -1.4728371   -1.7987769   -1.1468972
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                -1.6854929   -2.0360798   -1.3349060
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                -1.9577514   -2.3793138   -1.5361889
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.5462403   -2.7356285   -2.3568521
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.7115002   -2.9914441   -2.4315563
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.5303595   -2.9940252   -2.0666938
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -1.3112492   -1.4583075   -1.1641908
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -1.7002840   -1.8569942   -1.5435738
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -1.4651495   -1.6515392   -1.2787598
24 months   PROBIT           BELARUS                        High                 NA                 0.0031614   -0.2622227    0.2685456
24 months   PROBIT           BELARUS                        Low                  NA                -0.2090321   -0.5478184    0.1297542
24 months   PROBIT           BELARUS                        Medium               NA                -0.1224490   -0.3934033    0.1485053
24 months   PROVIDE          BANGLADESH                     High                 NA                -1.3401015   -1.4782760   -1.2019271
24 months   PROVIDE          BANGLADESH                     Low                  NA                -1.9281178   -2.0574919   -1.7987438
24 months   PROVIDE          BANGLADESH                     Medium               NA                -1.7048869   -1.8685411   -1.5412328
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.2502041   -1.5564610   -0.9439473
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.7230298   -1.8836850   -1.5623747
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.5703129   -1.6364528   -1.5041730


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
Birth       COHORTS          GUATEMALA                      Low                  High              -0.0643943   -0.3055492    0.1767606
Birth       COHORTS          GUATEMALA                      Medium               High              -0.0314748   -0.3041698    0.2412202
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High              -0.0990197   -0.2355160    0.0374767
Birth       COHORTS          INDIA                          Medium               High               0.0184759   -0.1427217    0.1796734
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High              -0.1986950   -0.3208960   -0.0764940
Birth       COHORTS          PHILIPPINES                    Medium               High              -0.0409500   -0.1595407    0.0776407
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High              -0.1066133   -0.3198731    0.1066465
Birth       GMS-Nepal        NEPAL                          Medium               High              -0.0556776   -0.2922383    0.1808830
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              -0.0385667   -0.0944333    0.0172998
Birth       JiVitA-3         BANGLADESH                     Medium               High              -0.0352740   -0.0915837    0.0210356
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              -0.1215448   -0.2629882    0.0198987
Birth       JiVitA-4         BANGLADESH                     Medium               High              -0.0572579   -0.2231255    0.1086098
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High               0.0372005   -0.4195727    0.4939737
Birth       MAL-ED           BANGLADESH                     Medium               High               0.1636421   -0.2829699    0.6102542
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High              -0.0177062   -0.2717265    0.2363141
Birth       MAL-ED           PERU                           Medium               High              -0.0758050   -0.3215073    0.1698974
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High               0.0971429   -0.5924727    0.7867584
Birth       MAL-ED           SOUTH AFRICA                   Medium               High              -0.6005556   -1.2753368    0.0742257
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1835926   -0.7047573    0.3375722
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.8726208   -1.9745133    0.2292717
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High              -0.0694214   -0.2520096    0.1131667
Birth       NIH-Crypto       BANGLADESH                     Medium               High              -0.0978331   -0.2970145    0.1013482
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.0096653   -0.1290489    0.1097182
Birth       PROBIT           BELARUS                        Medium               High              -0.0105634   -0.1081583    0.0870315
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High              -0.0057741   -0.1746225    0.1630743
Birth       PROVIDE          BANGLADESH                     Medium               High               0.0315416   -0.1353985    0.1984818
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High               0.0004039   -0.1937971    0.1946050
Birth       SAS-CompFeed     INDIA                          Medium               High               0.0899581   -0.1513268    0.3312429
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High              -0.0491575   -0.1607355    0.0624204
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              -0.0014018   -0.0915201    0.0887165
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High               0.0187664   -0.1965776    0.2341103
6 months    COHORTS          GUATEMALA                      Medium               High              -0.0996325   -0.3288282    0.1295631
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.3803556   -0.5228824   -0.2378287
6 months    COHORTS          INDIA                          Medium               High              -0.1914342   -0.3763207   -0.0065477
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High              -0.2925882   -0.4244213   -0.1607551
6 months    COHORTS          PHILIPPINES                    Medium               High              -0.0950764   -0.2230928    0.0329401
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.2385659   -0.4469708   -0.0301610
6 months    GMS-Nepal        NEPAL                          Medium               High              -0.0745986   -0.2933250    0.1441278
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.1586391   -0.2354003   -0.0818780
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.0877299   -0.1616662   -0.0137936
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              -0.2291092   -0.3632269   -0.0949915
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.1229346   -0.2559840    0.0101148
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High               0.0250014   -0.1594875    0.2094902
6 months    LCNI-5           MALAWI                         Medium               High              -0.0328241   -0.2102271    0.1445790
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.1510412   -0.5083029    0.2062204
6 months    MAL-ED           BANGLADESH                     Medium               High              -0.0328687   -0.3637061    0.2979688
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High               0.0357690   -0.3191649    0.3907029
6 months    MAL-ED           INDIA                          Medium               High              -0.0489554   -0.4077695    0.3098586
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High               0.0505407   -0.3402668    0.4413483
6 months    MAL-ED           NEPAL                          Medium               High              -0.2657052   -0.7462883    0.2148779
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High              -0.0345989   -0.3253874    0.2561895
6 months    MAL-ED           PERU                           Medium               High               0.0711896   -0.2287358    0.3711150
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High               0.1038600   -0.3682440    0.5759640
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.3270639   -0.7874191    0.1332914
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1128111   -0.4168979    0.1912757
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.2268420   -0.7721896    0.3185056
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.1327295   -0.3225299    0.0570709
6 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.1696332   -0.3734524    0.0341861
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High              -0.1747086   -0.2499836   -0.0994336
6 months    PROBIT           BELARUS                        Medium               High              -0.0734852   -0.1450278   -0.0019426
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.3542867   -0.5347710   -0.1738024
6 months    PROVIDE          BANGLADESH                     Medium               High              -0.1434246   -0.3243788    0.0375296
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.2807883   -0.4703599   -0.0912168
6 months    SAS-CompFeed     INDIA                          Medium               High               0.0055972   -0.3040178    0.3152122
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              -0.1753876   -0.4503628    0.0995875
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.2548468   -0.5418168    0.0321231
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1617189   -0.3104665   -0.0129712
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1354446   -0.3011803    0.0302911
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.1815577   -0.3149489   -0.0481665
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0264525   -0.1374294    0.0845244
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High              -0.1323672   -0.3545102    0.0897758
24 months   COHORTS          GUATEMALA                      Medium               High              -0.1182874   -0.3577392    0.1211644
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -0.7022827   -0.8562176   -0.5483478
24 months   COHORTS          INDIA                          Medium               High              -0.3078937   -0.4890885   -0.1266990
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.5808336   -0.7161397   -0.4455275
24 months   COHORTS          PHILIPPINES                    Medium               High              -0.3222005   -0.4505922   -0.1938088
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High              -0.2713221   -0.4955938   -0.0470503
24 months   GMS-Nepal        NEPAL                          Medium               High              -0.2800945   -0.5495050   -0.0106839
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High              -0.1184504   -0.2146328   -0.0222680
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.0444738   -0.1433328    0.0543852
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.2139646   -0.3190322   -0.1088970
24 months   JiVitA-4         BANGLADESH                     Medium               High              -0.1575698   -0.2593150   -0.0558246
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High               0.1229531   -0.0807297    0.3266358
24 months   LCNI-5           MALAWI                         Medium               High              -0.0277454   -0.2348183    0.1793274
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.3959162   -0.7284974   -0.0633349
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.4374767   -0.8080151   -0.0669383
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High              -0.0432175   -0.4547665    0.3683316
24 months   MAL-ED           INDIA                          Medium               High              -0.1704145   -0.5467132    0.2058842
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.2651854   -0.6781174    0.1477467
24 months   MAL-ED           NEPAL                          Medium               High              -0.3280961   -0.8213853    0.1651931
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High               0.0895137   -0.2408564    0.4198838
24 months   MAL-ED           PERU                           Medium               High              -0.0516108   -0.3311841    0.2279624
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.2126558   -0.6897382    0.2644265
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.4849143   -1.0161241    0.0462954
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1652599   -0.5035888    0.1730691
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0158808   -0.4856719    0.5174335
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.3890348   -0.6035007   -0.1745690
24 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.1539003   -0.3909997    0.0831990
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.2121935   -0.5932764    0.1688893
24 months   PROBIT           BELARUS                        Medium               High              -0.1256104   -0.4064126    0.1551917
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.5880163   -0.7776897   -0.3983429
24 months   PROVIDE          BANGLADESH                     Medium               High              -0.3647854   -0.5781110   -0.1514599
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.4728257   -0.8183287   -0.1273227
24 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.3201088   -0.6330242   -0.0071933


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                -0.0822080   -0.2698101    0.1053941
Birth       COHORTS          INDIA                          High                 NA                -0.0233085   -0.1003045    0.0536876
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.0330733   -0.1093496    0.0432030
Birth       GMS-Nepal        NEPAL                          High                 NA                -0.0327376   -0.1877070    0.1222319
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.0329683   -0.0796953    0.0137588
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.0809194   -0.1863223    0.0244836
Birth       MAL-ED           BANGLADESH                     High                 NA                 0.0746242   -0.1629420    0.3121905
Birth       MAL-ED           PERU                           High                 NA                -0.0257200   -0.1427970    0.0913570
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                -0.1225758   -0.5581866    0.3130351
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0509659   -0.2296306    0.1276989
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.0461601   -0.1454397    0.0531195
Birth       PROBIT           BELARUS                        High                 NA                -0.0139844   -0.1057263    0.0777575
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.0332821   -0.0724255    0.1389896
Birth       SAS-CompFeed     INDIA                          High                 NA                 0.0674444   -0.0667026    0.2015914
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0013449   -0.0859937    0.0833040
6 months    COHORTS          GUATEMALA                      High                 NA                -0.0672900   -0.2409825    0.1064025
6 months    COHORTS          INDIA                          High                 NA                -0.1719941   -0.2535356   -0.0904526
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0764326   -0.1607954    0.0079302
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0949870   -0.2449561    0.0549822
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0759145   -0.1355251   -0.0163040
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.1015021   -0.2110353    0.0080312
6 months    LCNI-5           MALAWI                         High                 NA                 0.0047671   -0.1075155    0.1170496
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.0971464   -0.2679775    0.0736848
6 months    MAL-ED           INDIA                          High                 NA                -0.0132694   -0.2265045    0.1999657
6 months    MAL-ED           NEPAL                          High                 NA                -0.0462371   -0.2553652    0.1628910
6 months    MAL-ED           PERU                           High                 NA                 0.0119686   -0.1087856    0.1327228
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.0176318   -0.2395530    0.2748167
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0541206   -0.1585369    0.0502957
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0827787   -0.1825294    0.0169720
6 months    PROBIT           BELARUS                        High                 NA                -0.1053522   -0.1629381   -0.0477664
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.1346691   -0.2358697   -0.0334686
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0574328   -0.2330464    0.1181807
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.1608913   -0.3411453    0.0193628
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1694283   -0.2914389   -0.0474178
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0334774   -0.1376756    0.0707209
24 months   COHORTS          GUATEMALA                      High                 NA                -0.1216422   -0.3000229    0.0567386
24 months   COHORTS          INDIA                          High                 NA                -0.2851023   -0.3739154   -0.1962891
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.2458351   -0.3286797   -0.1629906
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.1621045   -0.3352403    0.0110313
24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0519648   -0.1324354    0.0285058
24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.1179918   -0.1990888   -0.0368948
24 months   LCNI-5           MALAWI                         High                 NA                 0.0403787   -0.0855676    0.1663250
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.2803636   -0.4779675   -0.0827598
24 months   MAL-ED           INDIA                          High                 NA                -0.0668402   -0.2987305    0.1650502
24 months   MAL-ED           NEPAL                          High                 NA                -0.2024860   -0.4321938    0.0272219
24 months   MAL-ED           PERU                           High                 NA                 0.0017097   -0.1296418    0.1330612
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.1837014   -0.4498728    0.0824700
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0384489   -0.1463488    0.0694510
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.1300154   -0.2463224   -0.0137084
24 months   PROBIT           BELARUS                        High                 NA                -0.1406472   -0.4351286    0.1538342
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.2623206   -0.3827268   -0.1419145
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.3401754   -0.6383035   -0.0420474
