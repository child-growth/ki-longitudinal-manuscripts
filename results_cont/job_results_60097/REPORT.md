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
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
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

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        feducyrs    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       COHORTS          GUATEMALA                      High           136     718
Birth       COHORTS          GUATEMALA                      Low            311     718
Birth       COHORTS          GUATEMALA                      Medium         271     718
Birth       COHORTS          INDIA                          High           507    1291
Birth       COHORTS          INDIA                          Low            414    1291
Birth       COHORTS          INDIA                          Medium         370    1291
Birth       COHORTS          PHILIPPINES                    High           994    2728
Birth       COHORTS          PHILIPPINES                    Low            773    2728
Birth       COHORTS          PHILIPPINES                    Medium         961    2728
Birth       GMS-Nepal        NEPAL                          High           162     640
Birth       GMS-Nepal        NEPAL                          Low            266     640
Birth       GMS-Nepal        NEPAL                          Medium         212     640
Birth       JiVitA-3         BANGLADESH                     High          4049   17367
Birth       JiVitA-3         BANGLADESH                     Low           7452   17367
Birth       JiVitA-3         BANGLADESH                     Medium        5866   17367
Birth       JiVitA-4         BANGLADESH                     High           510    2323
Birth       JiVitA-4         BANGLADESH                     Low            913    2323
Birth       JiVitA-4         BANGLADESH                     Medium         900    2323
Birth       MAL-ED           BANGLADESH                     High            44     119
Birth       MAL-ED           BANGLADESH                     Low             33     119
Birth       MAL-ED           BANGLADESH                     Medium          42     119
Birth       MAL-ED           INDIA                          High             7      23
Birth       MAL-ED           INDIA                          Low             13      23
Birth       MAL-ED           INDIA                          Medium           3      23
Birth       MAL-ED           NEPAL                          High             3       9
Birth       MAL-ED           NEPAL                          Low              3       9
Birth       MAL-ED           NEPAL                          Medium           3       9
Birth       MAL-ED           PERU                           High            84     190
Birth       MAL-ED           PERU                           Low             56     190
Birth       MAL-ED           PERU                           Medium          50     190
Birth       MAL-ED           SOUTH AFRICA                   High            10      33
Birth       MAL-ED           SOUTH AFRICA                   Low             14      33
Birth       MAL-ED           SOUTH AFRICA                   Medium           9      33
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High            62      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             26      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           8      96
Birth       NIH-Crypto       BANGLADESH                     High           277     707
Birth       NIH-Crypto       BANGLADESH                     Low            229     707
Birth       NIH-Crypto       BANGLADESH                     Medium         201     707
Birth       PROBIT           BELARUS                        High          2047   13350
Birth       PROBIT           BELARUS                        Low           5292   13350
Birth       PROBIT           BELARUS                        Medium        6011   13350
Birth       PROVIDE          BANGLADESH                     High           161     532
Birth       PROVIDE          BANGLADESH                     Low            185     532
Birth       PROVIDE          BANGLADESH                     Medium         186     532
Birth       SAS-CompFeed     INDIA                          High           270    1101
Birth       SAS-CompFeed     INDIA                          Low            476    1101
Birth       SAS-CompFeed     INDIA                          Medium         355    1101
Birth       ZVITAMBO         ZIMBABWE                       High           914   12573
Birth       ZVITAMBO         ZIMBABWE                       Low           2091   12573
Birth       ZVITAMBO         ZIMBABWE                       Medium        9568   12573
6 months    COHORTS          GUATEMALA                      High           165     905
6 months    COHORTS          GUATEMALA                      Low            406     905
6 months    COHORTS          GUATEMALA                      Medium         334     905
6 months    COHORTS          INDIA                          High           544    1385
6 months    COHORTS          INDIA                          Low            450    1385
6 months    COHORTS          INDIA                          Medium         391    1385
6 months    COHORTS          PHILIPPINES                    High           892    2562
6 months    COHORTS          PHILIPPINES                    Low            744    2562
6 months    COHORTS          PHILIPPINES                    Medium         926    2562
6 months    GMS-Nepal        NEPAL                          High           137     563
6 months    GMS-Nepal        NEPAL                          Low            243     563
6 months    GMS-Nepal        NEPAL                          Medium         183     563
6 months    JiVitA-3         BANGLADESH                     High          4271   16105
6 months    JiVitA-3         BANGLADESH                     Low           6291   16105
6 months    JiVitA-3         BANGLADESH                     Medium        5543   16105
6 months    JiVitA-4         BANGLADESH                     High          1098    4690
6 months    JiVitA-4         BANGLADESH                     Low           1726    4690
6 months    JiVitA-4         BANGLADESH                     Medium        1866    4690
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
6 months    PROBIT           BELARUS                        High          2512   15207
6 months    PROBIT           BELARUS                        Low           5957   15207
6 months    PROBIT           BELARUS                        Medium        6738   15207
6 months    PROVIDE          BANGLADESH                     High           209     603
6 months    PROVIDE          BANGLADESH                     Low            208     603
6 months    PROVIDE          BANGLADESH                     Medium         186     603
6 months    SAS-CompFeed     INDIA                          High           349    1331
6 months    SAS-CompFeed     INDIA                          Low            548    1331
6 months    SAS-CompFeed     INDIA                          Medium         434    1331
6 months    SAS-FoodSuppl    INDIA                          High           101     380
6 months    SAS-FoodSuppl    INDIA                          Low            132     380
6 months    SAS-FoodSuppl    INDIA                          Medium         147     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1082    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2017
6 months    ZVITAMBO         ZIMBABWE                       High           569    8266
6 months    ZVITAMBO         ZIMBABWE                       Low           1433    8266
6 months    ZVITAMBO         ZIMBABWE                       Medium        6264    8266
24 months   COHORTS          GUATEMALA                      High           178    1002
24 months   COHORTS          GUATEMALA                      Low            465    1002
24 months   COHORTS          GUATEMALA                      Medium         359    1002
24 months   COHORTS          INDIA                          High           536    1370
24 months   COHORTS          INDIA                          Low            448    1370
24 months   COHORTS          INDIA                          Medium         386    1370
24 months   COHORTS          PHILIPPINES                    High           798    2319
24 months   COHORTS          PHILIPPINES                    Low            693    2319
24 months   COHORTS          PHILIPPINES                    Medium         828    2319
24 months   GMS-Nepal        NEPAL                          High           113     486
24 months   GMS-Nepal        NEPAL                          Low            218     486
24 months   GMS-Nepal        NEPAL                          Medium         155     486
24 months   JiVitA-3         BANGLADESH                     High          2055    8264
24 months   JiVitA-3         BANGLADESH                     Low           3371    8264
24 months   JiVitA-3         BANGLADESH                     Medium        2838    8264
24 months   JiVitA-4         BANGLADESH                     High          1092    4602
24 months   JiVitA-4         BANGLADESH                     Low           1694    4602
24 months   JiVitA-4         BANGLADESH                     Medium        1816    4602
24 months   LCNI-5           MALAWI                         High           170     555
24 months   LCNI-5           MALAWI                         Low            194     555
24 months   LCNI-5           MALAWI                         Medium         191     555
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
24 months   PROBIT           BELARUS                        High           620    3851
24 months   PROBIT           BELARUS                        Low           1488    3851
24 months   PROBIT           BELARUS                        Medium        1743    3851
24 months   PROVIDE          BANGLADESH                     High           202     579
24 months   PROVIDE          BANGLADESH                     Low            198     579
24 months   PROVIDE          BANGLADESH                     Medium         179     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ZVITAMBO         ZIMBABWE                       High            13     410
24 months   ZVITAMBO         ZIMBABWE                       Low            103     410
24 months   ZVITAMBO         ZIMBABWE                       Medium         294     410


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
![](/tmp/ede6a25d-18d9-47a2-a397-c20fc4de674b/de86d226-89b1-41ea-9b1d-072d42833169/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ede6a25d-18d9-47a2-a397-c20fc4de674b/de86d226-89b1-41ea-9b1d-072d42833169/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ede6a25d-18d9-47a2-a397-c20fc4de674b/de86d226-89b1-41ea-9b1d-072d42833169/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                -1.1169254   -1.3365486   -0.8973022
Birth       COHORTS          GUATEMALA                      Low                  NA                -1.0241134   -1.1829967   -0.8652301
Birth       COHORTS          GUATEMALA                      Medium               NA                -1.0890077   -1.2783010   -0.8997145
Birth       COHORTS          INDIA                          High                 NA                -1.0257549   -1.1339302   -0.9175795
Birth       COHORTS          INDIA                          Low                  NA                -0.9616108   -1.0774462   -0.8457754
Birth       COHORTS          INDIA                          Medium               NA                -1.0754607   -1.2081435   -0.9427779
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.7805773   -0.8659202   -0.6952343
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.6442451   -0.7436988   -0.5447914
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.7013520   -0.7893361   -0.6133679
Birth       GMS-Nepal        NEPAL                          High                 NA                -1.2589261   -1.4345556   -1.0832966
Birth       GMS-Nepal        NEPAL                          Low                  NA                -1.0342802   -1.1676783   -0.9008822
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.1733258   -1.3322543   -1.0143973
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.7866314   -0.8517852   -0.7214776
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -0.7706832   -0.8046240   -0.7367425
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -0.7690558   -0.8016669   -0.7364447
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.7370135   -0.8428975   -0.6311295
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -0.6927322   -0.7893734   -0.5960910
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -0.6838475   -0.8240170   -0.5436779
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.6724345   -0.9995845   -0.3452845
Birth       MAL-ED           BANGLADESH                     Low                  NA                -1.2481976   -1.6628764   -0.8335188
Birth       MAL-ED           BANGLADESH                     Medium               NA                -0.9811446   -1.3036020   -0.6586872
Birth       MAL-ED           PERU                           High                 NA                 0.0290728   -0.1499292    0.2080748
Birth       MAL-ED           PERU                           Low                  NA                -0.1645548   -0.4210652    0.0919556
Birth       MAL-ED           PERU                           Medium               NA                 0.0285818   -0.2646479    0.3218115
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                 0.2810000   -0.1017325    0.6637325
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0364286   -0.7135146    0.6406575
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                 0.8666667    0.3467047    1.3866286
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.7446774    0.5287317    0.9606232
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.6161538    0.1324976    1.0998101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.2775000    0.4059642    2.1490358
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -1.2977290   -1.4327286   -1.1627295
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -1.2749746   -1.4301277   -1.1198216
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -1.2310870   -1.4291476   -1.0330264
Birth       PROBIT           BELARUS                        High                 NA                -1.1197091   -1.3271866   -0.9122316
Birth       PROBIT           BELARUS                        Low                  NA                -1.1478751   -1.3869062   -0.9088440
Birth       PROBIT           BELARUS                        Medium               NA                -1.1561518   -1.3625370   -0.9497666
Birth       PROVIDE          BANGLADESH                     High                 NA                -1.2999320   -1.4359553   -1.1639086
Birth       PROVIDE          BANGLADESH                     Low                  NA                -1.3303885   -1.4564064   -1.2043705
Birth       PROVIDE          BANGLADESH                     Medium               NA                -1.3022681   -1.4361030   -1.1684331
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.6068212   -0.8552553   -0.3583870
Birth       SAS-CompFeed     INDIA                          Low                  NA                -0.7241917   -0.9073167   -0.5410666
Birth       SAS-CompFeed     INDIA                          Medium               NA                -0.6545037   -0.8521782   -0.4568292
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.5535470   -0.6480440   -0.4590500
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.4815137   -0.5595937   -0.4034337
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5104481   -0.5412957   -0.4796005
6 months    COHORTS          GUATEMALA                      High                 NA                 0.1568162   -0.0511756    0.3648081
6 months    COHORTS          GUATEMALA                      Low                  NA                 0.1465897    0.0260410    0.2671384
6 months    COHORTS          GUATEMALA                      Medium               NA                 0.1612821    0.0180963    0.3044678
6 months    COHORTS          INDIA                          High                 NA                -0.6177591   -0.7199235   -0.5155946
6 months    COHORTS          INDIA                          Low                  NA                -0.7317405   -0.8395930   -0.6238879
6 months    COHORTS          INDIA                          Medium               NA                -0.6341392   -0.7623187   -0.5059598
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.2921449   -0.3749537   -0.2093362
6 months    COHORTS          PHILIPPINES                    Low                  NA                -0.2850516   -0.3687118   -0.2013914
6 months    COHORTS          PHILIPPINES                    Medium               NA                -0.3169061   -0.3942150   -0.2395972
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.5993928   -0.7794448   -0.4193408
6 months    GMS-Nepal        NEPAL                          Low                  NA                -0.6193107   -0.7691592   -0.4694622
6 months    GMS-Nepal        NEPAL                          Medium               NA                -0.6094110   -0.7693891   -0.4494328
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.5841247   -0.6400528   -0.5281967
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -0.6008886   -0.6452249   -0.5565522
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -0.5850993   -0.6210898   -0.5491087
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.3920059   -0.5123314   -0.2716803
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -0.3767663   -0.4680455   -0.2854871
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -0.4159693   -0.4769364   -0.3550022
6 months    LCNI-5           MALAWI                         High                 NA                 0.3896128    0.2594676    0.5197580
6 months    LCNI-5           MALAWI                         Low                  NA                 0.4835305    0.3632512    0.6038098
6 months    LCNI-5           MALAWI                         Medium               NA                 0.4466398    0.3175318    0.5757479
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.2592706   -0.5829518    0.0644106
6 months    MAL-ED           BANGLADESH                     Low                  NA                -0.4796393   -0.7692356   -0.1900431
6 months    MAL-ED           BANGLADESH                     Medium               NA                -0.0619998   -0.4694924    0.3454929
6 months    MAL-ED           INDIA                          High                 NA                -0.5969892   -0.8815382   -0.3124403
6 months    MAL-ED           INDIA                          Low                  NA                -0.5888351   -0.8645506   -0.3131195
6 months    MAL-ED           INDIA                          Medium               NA                -0.8830765   -1.2510543   -0.5150987
6 months    MAL-ED           NEPAL                          High                 NA                 0.1341692   -0.1399329    0.4082712
6 months    MAL-ED           NEPAL                          Low                  NA                -0.1298090   -0.5109210    0.2513031
6 months    MAL-ED           NEPAL                          Medium               NA                 0.2394285   -0.1373114    0.6161684
6 months    MAL-ED           PERU                           High                 NA                 1.0818691    0.8925533    1.2711850
6 months    MAL-ED           PERU                           Low                  NA                 1.3074003    1.0432967    1.5715039
6 months    MAL-ED           PERU                           Medium               NA                 0.9677570    0.7058142    1.2296998
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.5629371    0.1497698    0.9761043
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                 0.1827377   -0.2379787    0.6034541
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                 0.3233545   -0.0935994    0.7403083
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.4620349    0.2744634    0.6496063
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.4985235    0.2496673    0.7473797
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.1552923    0.6690713    1.6415134
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0916865   -0.0397613    0.2231342
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                 0.0194986   -0.1356312    0.1746284
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                -0.0028101   -0.1705364    0.1649163
6 months    PROBIT           BELARUS                        High                 NA                 0.5812031    0.4995339    0.6628722
6 months    PROBIT           BELARUS                        Low                  NA                 0.5778040    0.5140089    0.6415991
6 months    PROBIT           BELARUS                        Medium               NA                 0.5663817    0.5059038    0.6268597
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0959916   -0.2455248    0.0535416
6 months    PROVIDE          BANGLADESH                     Low                  NA                -0.2507743   -0.4204693   -0.0810793
6 months    PROVIDE          BANGLADESH                     Medium               NA                -0.1904282   -0.3499518   -0.0309046
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.5907215   -0.7511578   -0.4302852
6 months    SAS-CompFeed     INDIA                          Low                  NA                -0.7273637   -0.8706429   -0.5840845
6 months    SAS-CompFeed     INDIA                          Medium               NA                -0.6470498   -0.8308872   -0.4632124
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.9502887   -1.1833148   -0.7172625
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -0.8843396   -1.0674189   -0.7012603
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -1.1326184   -1.3387219   -0.9265148
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1087542   -0.0687790    0.2862874
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0682363   -0.0079797    0.1444523
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0429554   -0.0838122    0.1697231
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.3311667    0.2270114    0.4353220
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                 0.2583598    0.1665278    0.3501917
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                 0.3256180    0.2941825    0.3570534
24 months   COHORTS          GUATEMALA                      High                 NA                -0.5222365   -0.6711321   -0.3733408
24 months   COHORTS          GUATEMALA                      Low                  NA                -0.2395097   -0.3339515   -0.1450680
24 months   COHORTS          GUATEMALA                      Medium               NA                -0.3614299   -0.4862541   -0.2366057
24 months   COHORTS          INDIA                          High                 NA                -0.4912730   -0.5815491   -0.4009970
24 months   COHORTS          INDIA                          Low                  NA                -0.7984870   -0.8891758   -0.7077982
24 months   COHORTS          INDIA                          Medium               NA                -0.5950853   -0.7190855   -0.4710851
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.5915748   -0.6591831   -0.5239665
24 months   COHORTS          PHILIPPINES                    Low                  NA                -0.6766946   -0.7512514   -0.6021379
24 months   COHORTS          PHILIPPINES                    Medium               NA                -0.6685451   -0.7411559   -0.5959343
24 months   GMS-Nepal        NEPAL                          High                 NA                -1.1136591   -1.3142298   -0.9130883
24 months   GMS-Nepal        NEPAL                          Low                  NA                -1.0440079   -1.1880952   -0.8999206
24 months   GMS-Nepal        NEPAL                          Medium               NA                -1.1673115   -1.3485192   -0.9861038
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.2867917   -1.3679104   -1.2056731
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -1.2812917   -1.3229521   -1.2396313
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -1.3117253   -1.3604799   -1.2629707
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.2313714   -1.3185530   -1.1441897
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.2530185   -1.3116691   -1.1943678
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.2315554   -1.2858737   -1.1772372
24 months   LCNI-5           MALAWI                         High                 NA                -0.0757158   -0.2203185    0.0688870
24 months   LCNI-5           MALAWI                         Low                  NA                -0.0500325   -0.1772701    0.0772051
24 months   LCNI-5           MALAWI                         Medium               NA                -0.0181243   -0.1693694    0.1331209
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.8220561   -1.0707717   -0.5733404
24 months   MAL-ED           BANGLADESH                     Low                  NA                -1.0339443   -1.3114131   -0.7564754
24 months   MAL-ED           BANGLADESH                     Medium               NA                -0.8756206   -1.1985360   -0.5527051
24 months   MAL-ED           INDIA                          High                 NA                -0.9254043   -1.1291621   -0.7216464
24 months   MAL-ED           INDIA                          Low                  NA                -0.9068883   -1.1323731   -0.6814036
24 months   MAL-ED           INDIA                          Medium               NA                -1.0414060   -1.3553379   -0.7274741
24 months   MAL-ED           NEPAL                          High                 NA                -0.2367941   -0.5003659    0.0267778
24 months   MAL-ED           NEPAL                          Low                  NA                -0.4924721   -0.8009131   -0.1840311
24 months   MAL-ED           NEPAL                          Medium               NA                -0.4589631   -0.8291458   -0.0887804
24 months   MAL-ED           PERU                           High                 NA                 0.0246751   -0.1643643    0.2137146
24 months   MAL-ED           PERU                           Low                  NA                 0.3659319    0.1641885    0.5676754
24 months   MAL-ED           PERU                           Medium               NA                 0.0387105   -0.2781156    0.3555365
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.5515279    0.2138060    0.8892499
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                 0.3082073   -0.0375544    0.6539690
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                 0.1275982   -0.1509870    0.4061834
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1383285   -0.0443412    0.3209982
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0197797   -0.2311163    0.2706758
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1653952   -0.2448757    0.5756661
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.6064296   -0.7549226   -0.4579365
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -0.8961331   -1.0560983   -0.7361679
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -0.5030100   -0.7023627   -0.3036573
24 months   PROBIT           BELARUS                        High                 NA                 0.7931544    0.6285890    0.9577198
24 months   PROBIT           BELARUS                        Low                  NA                 0.7329529    0.5806842    0.8852216
24 months   PROBIT           BELARUS                        Medium               NA                 0.6408975    0.5313778    0.7504171
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.8198179   -0.9579026   -0.6817333
24 months   PROVIDE          BANGLADESH                     Low                  NA                -1.0829935   -1.2060621   -0.9599248
24 months   PROVIDE          BANGLADESH                     Medium               NA                -0.8750506   -1.0471126   -0.7029886
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.3407126   -1.9116864   -0.7697389
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.3439095   -1.5763534   -1.1114656
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1469021   -1.2632782   -1.0305261


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0475905   -1.1510656   -0.9441155
Birth       COHORTS          INDIA                          NA                   NA                -1.0020759   -1.0646599   -0.9394920
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7218585   -0.7694262   -0.6742908
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1161562   -1.2038617   -1.0284508
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7747631   -0.7940385   -0.7554876
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6831985   -0.7361386   -0.6302583
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9483613   -1.1437809   -0.7529418
Birth       MAL-ED           PERU                           NA                   NA                -0.0145789   -0.1426994    0.1135416
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3060606   -0.0577506    0.6698718
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7542708    0.5468640    0.9616776
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        NA                   NA                -1.1437060   -1.3543158   -0.9330962
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6685468   -0.8459689   -0.4911247
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5092691   -0.5354330   -0.4831051
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1987403    0.1250477    0.2724329
6 months    COHORTS          INDIA                          NA                   NA                -0.6502599   -0.7103477   -0.5901722
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2839930   -0.3263706   -0.2416154
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6031912   -0.6894381   -0.5169444
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5904964   -0.6106039   -0.5703890
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3852207   -0.4232704   -0.3471709
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4414163    0.3697939    0.5130386
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.3007955   -0.4778591   -0.1237319
6 months    MAL-ED           INDIA                          NA                   NA                -0.7272766   -0.9000901   -0.5544630
6 months    MAL-ED           NEPAL                          NA                   NA                 0.0334035   -0.1647857    0.2315927
6 months    MAL-ED           PERU                           NA                   NA                 1.0860565    0.9516698    1.2204433
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3834783    0.1440275    0.6229290
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5336484    0.3899788    0.6773181
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5730055    0.5136977    0.6323133
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6641059   -0.8040033   -0.5242086
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0791782    0.0263777    0.1319787
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3153847    0.2894045    0.3413649
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2662176   -0.3220630   -0.2103721
24 months   COHORTS          INDIA                          NA                   NA                -0.6051533   -0.6581071   -0.5521995
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6155714   -0.6532287   -0.5779140
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1331550   -1.2220936   -1.0442165
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2984354   -1.3225016   -1.2743692
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2222794   -1.2547188   -1.1898401
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0443153   -0.1269075    0.0382769
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.9042735   -1.0737243   -0.7348227
24 months   MAL-ED           INDIA                          NA                   NA                -0.9451515   -1.0860650   -0.8042380
24 months   MAL-ED           NEPAL                          NA                   NA                -0.4668132   -0.6466833   -0.2869431
24 months   MAL-ED           PERU                           NA                   NA                 0.1321189   -0.0027984    0.2670362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3583333    0.1644154    0.5522513
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1084840   -0.0300100    0.2469780
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6953371    0.5818973    0.8087769
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1889512   -1.2920613   -1.0858411


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low                  High               0.0928120   -0.1697092    0.3553331
Birth       COHORTS          GUATEMALA                      Medium               High               0.0279177   -0.2543285    0.3101638
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High               0.0641441   -0.0926411    0.2209292
Birth       COHORTS          INDIA                          Medium               High              -0.0497058   -0.2194649    0.1200533
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High               0.1363321    0.0067630    0.2659013
Birth       COHORTS          PHILIPPINES                    Medium               High               0.0792252   -0.0415261    0.1999765
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High               0.2246459    0.0100096    0.4392821
Birth       GMS-Nepal        NEPAL                          Medium               High               0.0856003   -0.1458489    0.3170495
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High               0.0159482   -0.0613966    0.0932929
Birth       JiVitA-3         BANGLADESH                     Medium               High               0.0175756   -0.0544976    0.0896488
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High               0.0442813   -0.0981348    0.1866973
Birth       JiVitA-4         BANGLADESH                     Medium               High               0.0531660   -0.1193101    0.2256422
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High              -0.5757631   -1.1055130   -0.0460131
Birth       MAL-ED           BANGLADESH                     Medium               High              -0.3087101   -0.7717218    0.1543016
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High              -0.1936276   -0.5062395    0.1189843
Birth       MAL-ED           PERU                           Medium               High              -0.0004910   -0.3442412    0.3432592
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High              -0.3174286   -1.0952008    0.4603437
Birth       MAL-ED           SOUTH AFRICA                   Medium               High               0.5856667   -0.0599684    1.2313017
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1285236   -0.6581988    0.4011517
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.5328226   -0.3650679    1.4307130
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High               0.0227544   -0.1794106    0.2249194
Birth       NIH-Crypto       BANGLADESH                     Medium               High               0.0666420   -0.1697080    0.3029920
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.0281660   -0.1461602    0.0898281
Birth       PROBIT           BELARUS                        Medium               High              -0.0364427   -0.1243390    0.0514535
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High              -0.0304565   -0.2107756    0.1498625
Birth       PROVIDE          BANGLADESH                     Medium               High              -0.0023361   -0.1877180    0.1830457
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High              -0.1173705   -0.2509438    0.0162028
Birth       SAS-CompFeed     INDIA                          Medium               High              -0.0476825   -0.2759272    0.1805623
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High               0.0720333   -0.0494308    0.1934974
Birth       ZVITAMBO         ZIMBABWE                       Medium               High               0.0430990   -0.0548614    0.1410593
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High              -0.0102265   -0.2510235    0.2305704
6 months    COHORTS          GUATEMALA                      Medium               High               0.0044658   -0.2479493    0.2568810
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.1139814   -0.2626054    0.0346426
6 months    COHORTS          INDIA                          Medium               High              -0.0163802   -0.1803263    0.1475659
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High               0.0070934   -0.1103438    0.1245305
6 months    COHORTS          PHILIPPINES                    Medium               High              -0.0247612   -0.1374375    0.0879152
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.0199179   -0.2531832    0.2133475
6 months    GMS-Nepal        NEPAL                          Medium               High              -0.0100182   -0.2494292    0.2293928
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.0167638   -0.0882919    0.0547642
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.0009746   -0.0654844    0.0635353
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High               0.0152396   -0.1360479    0.1665270
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.0239634   -0.1545491    0.1066222
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High               0.0939177   -0.0833045    0.2711399
6 months    LCNI-5           MALAWI                         Medium               High               0.0570270   -0.1262903    0.2403443
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.2203687   -0.6506593    0.2099218
6 months    MAL-ED           BANGLADESH                     Medium               High               0.1972708   -0.3454294    0.7399711
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High               0.0081542   -0.3887399    0.4050482
6 months    MAL-ED           INDIA                          Medium               High              -0.2860873   -0.7526733    0.1804987
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High              -0.2639782   -0.7322404    0.2042841
6 months    MAL-ED           NEPAL                          Medium               High               0.1052593   -0.3623257    0.5728443
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High               0.2255312   -0.0993223    0.5503847
6 months    MAL-ED           PERU                           Medium               High              -0.1141121   -0.4376223    0.2093980
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.3801993   -0.9680177    0.2076190
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.2395826   -0.8258167    0.3466516
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0364886   -0.2746471    0.3476243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.6932574    0.1769762    1.2095387
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.0721879   -0.2748752    0.1304994
6 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.0944965   -0.3072635    0.1182705
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High              -0.0033990   -0.0806789    0.0738808
6 months    PROBIT           BELARUS                        Medium               High              -0.0148213   -0.0850643    0.0554216
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.1547827   -0.3813350    0.0717696
6 months    PROVIDE          BANGLADESH                     Medium               High              -0.0944366   -0.3132600    0.1243868
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.1366422   -0.2280755   -0.0452089
6 months    SAS-CompFeed     INDIA                          Medium               High              -0.0563283   -0.1457894    0.0331329
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High               0.0659491   -0.2305202    0.3624184
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.1823297   -0.4953905    0.1307311
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0405179   -0.2336285    0.1525927
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0657987   -0.2837093    0.1521118
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.0728069   -0.2114772    0.0658633
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0055488   -0.1141423    0.1030447
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High               0.2827267    0.1057284    0.4597251
24 months   COHORTS          GUATEMALA                      Medium               High               0.1608066   -0.0340132    0.3556264
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -0.3072140   -0.4356152   -0.1788128
24 months   COHORTS          INDIA                          Medium               High              -0.1038123   -0.2573459    0.0497214
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.0851198   -0.1853537    0.0151140
24 months   COHORTS          PHILIPPINES                    Medium               High              -0.0769703   -0.1751051    0.0211645
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High               0.0696512   -0.1780532    0.3173555
24 months   GMS-Nepal        NEPAL                          Medium               High              -0.0536524   -0.3240627    0.2167579
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High               0.0055000   -0.0838904    0.0948904
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.0249336   -0.1184144    0.0685473
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.0216471   -0.1273189    0.0840246
24 months   JiVitA-4         BANGLADESH                     Medium               High              -0.0001841   -0.1017363    0.1013681
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High               0.0256832   -0.1652850    0.2166515
24 months   LCNI-5           MALAWI                         Medium               High               0.0575915   -0.1496617    0.2648446
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.2118882   -0.5845295    0.1607531
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.0535645   -0.4618379    0.3547089
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High               0.0185160   -0.2852185    0.3222504
24 months   MAL-ED           INDIA                          Medium               High              -0.1160017   -0.4899408    0.2579374
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.2556781   -0.6704975    0.1591414
24 months   MAL-ED           NEPAL                          Medium               High              -0.2221690   -0.6748240    0.2304859
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High               0.3412568    0.0642232    0.6182904
24 months   MAL-ED           PERU                           Medium               High               0.0140353   -0.3483868    0.3764575
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.2433206   -0.7255427    0.2389015
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.4239298   -0.8636316    0.0157721
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1185488   -0.4283532    0.1912556
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0270667   -0.4246414    0.4787748
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.2897035   -0.5081580   -0.0712490
24 months   NIH-Crypto       BANGLADESH                     Medium               High               0.1034196   -0.1438879    0.3507271
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.0602015   -0.2514945    0.1310915
24 months   PROBIT           BELARUS                        Medium               High              -0.1522570   -0.3131078    0.0085939
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.2631756   -0.4483726   -0.0779785
24 months   PROVIDE          BANGLADESH                     Medium               High              -0.0552327   -0.2752553    0.1647900
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.0031968   -0.6210644    0.6146707
24 months   ZVITAMBO         ZIMBABWE                       Medium               High               0.1938105   -0.3896868    0.7773078


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                 0.0693349   -0.1329891    0.2716589
Birth       COHORTS          INDIA                          High                 NA                 0.0236790   -0.0637442    0.1111021
Birth       COHORTS          PHILIPPINES                    High                 NA                 0.0587187   -0.0136191    0.1310566
Birth       GMS-Nepal        NEPAL                          High                 NA                 0.1427698   -0.0128887    0.2984284
Birth       JiVitA-3         BANGLADESH                     High                 NA                 0.0118683   -0.0503575    0.0740942
Birth       JiVitA-4         BANGLADESH                     High                 NA                 0.0538150   -0.0446740    0.1523041
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.2759268   -0.5476547   -0.0041990
Birth       MAL-ED           PERU                           High                 NA                -0.0436518   -0.1964763    0.1091728
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                 0.0250606   -0.4109032    0.4610244
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0095934   -0.1619187    0.1811055
Birth       NIH-Crypto       BANGLADESH                     High                 NA                 0.0535777   -0.0568721    0.1640274
Birth       PROBIT           BELARUS                        High                 NA                -0.0239969   -0.1009089    0.0529151
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.0014733   -0.1140149    0.1169615
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.0617256   -0.1896305    0.0661793
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                 0.0442780   -0.0472331    0.1357891
6 months    COHORTS          GUATEMALA                      High                 NA                 0.0419241   -0.1520472    0.2358954
6 months    COHORTS          INDIA                          High                 NA                -0.0325009   -0.1158308    0.0508291
6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0081520   -0.0642572    0.0805611
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0037984   -0.1651955    0.1575986
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0063717   -0.0587017    0.0459583
6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0067852   -0.1042819    0.1178523
6 months    LCNI-5           MALAWI                         High                 NA                 0.0518034   -0.0571834    0.1607903
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.0415249   -0.3126158    0.2295661
6 months    MAL-ED           INDIA                          High                 NA                -0.1302873   -0.3831669    0.1225922
6 months    MAL-ED           NEPAL                          High                 NA                -0.1007657   -0.3289666    0.1274352
6 months    MAL-ED           PERU                           High                 NA                 0.0041874   -0.1380585    0.1464333
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.1794588   -0.5115078    0.1525902
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0716135   -0.0360872    0.1793142
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0619242   -0.1721987    0.0483502
6 months    PROBIT           BELARUS                        High                 NA                -0.0081975   -0.0697440    0.0533490
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.1030991   -0.2290326    0.0228345
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0733844   -0.1220361   -0.0247327
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.0618692   -0.2641268    0.1403884
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0295760   -0.1991895    0.1400376
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0157820   -0.1169957    0.0854316
24 months   COHORTS          GUATEMALA                      High                 NA                 0.2560189    0.1108267    0.4012112
24 months   COHORTS          INDIA                          High                 NA                -0.1138803   -0.1891429   -0.0386176
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0239966   -0.0838804    0.0358872
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0194959   -0.2013410    0.1623491
24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0116436   -0.0891019    0.0658146
24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0090919   -0.0716671    0.0898509
24 months   LCNI-5           MALAWI                         High                 NA                 0.0314004   -0.0871231    0.1499239
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0822174   -0.3019530    0.1375181
24 months   MAL-ED           INDIA                          High                 NA                -0.0197472   -0.2077494    0.1682549
24 months   MAL-ED           NEPAL                          High                 NA                -0.2300191   -0.4399007   -0.0201376
24 months   MAL-ED           PERU                           High                 NA                 0.1074438   -0.0391206    0.2540081
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.1931946   -0.4532613    0.0668721
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0298445   -0.1337922    0.0741032
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0039206   -0.1169603    0.1091190
24 months   PROBIT           BELARUS                        High                 NA                -0.0978173   -0.2439410    0.0483064
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0730491   -0.1900593    0.0439611
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1517614   -0.4160019    0.7195248
