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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        single    n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      0            654     691
Birth       COHORTS          GUATEMALA                      1             37     691
Birth       COHORTS          INDIA                          0           4456    4463
Birth       COHORTS          INDIA                          1              7    4463
Birth       COHORTS          PHILIPPINES                    0           2789    2860
Birth       COHORTS          PHILIPPINES                    1             71    2860
Birth       JiVitA-4         BANGLADESH                     0           2388    2393
Birth       JiVitA-4         BANGLADESH                     1              5    2393
Birth       MAL-ED           BANGLADESH                     0            215     215
Birth       MAL-ED           BANGLADESH                     1              0     215
Birth       MAL-ED           BRAZIL                         0             54      62
Birth       MAL-ED           BRAZIL                         1              8      62
Birth       MAL-ED           INDIA                          0             45      45
Birth       MAL-ED           INDIA                          1              0      45
Birth       MAL-ED           NEPAL                          0             26      26
Birth       MAL-ED           NEPAL                          1              0      26
Birth       MAL-ED           PERU                           0            205     228
Birth       MAL-ED           PERU                           1             23     228
Birth       MAL-ED           SOUTH AFRICA                   0             63     120
Birth       MAL-ED           SOUTH AFRICA                   1             57     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            112     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     115
Birth       PROBIT           BELARUS                        0          13277   13817
Birth       PROBIT           BELARUS                        1            540   13817
Birth       ZVITAMBO         ZIMBABWE                       0          12065   12864
Birth       ZVITAMBO         ZIMBABWE                       1            799   12864
6 months    COHORTS          GUATEMALA                      0            827     894
6 months    COHORTS          GUATEMALA                      1             67     894
6 months    COHORTS          INDIA                          0           4955    4964
6 months    COHORTS          INDIA                          1              9    4964
6 months    COHORTS          PHILIPPINES                    0           2606    2674
6 months    COHORTS          PHILIPPINES                    1             68    2674
6 months    Guatemala BSC    GUATEMALA                      0            248     277
6 months    Guatemala BSC    GUATEMALA                      1             29     277
6 months    JiVitA-4         BANGLADESH                     0           4816    4824
6 months    JiVitA-4         BANGLADESH                     1              8    4824
6 months    MAL-ED           BANGLADESH                     0            241     241
6 months    MAL-ED           BANGLADESH                     1              0     241
6 months    MAL-ED           BRAZIL                         0            179     209
6 months    MAL-ED           BRAZIL                         1             30     209
6 months    MAL-ED           INDIA                          0            234     234
6 months    MAL-ED           INDIA                          1              0     234
6 months    MAL-ED           NEPAL                          0            236     236
6 months    MAL-ED           NEPAL                          1              0     236
6 months    MAL-ED           PERU                           0            240     273
6 months    MAL-ED           PERU                           1             33     273
6 months    MAL-ED           SOUTH AFRICA                   0            140     254
6 months    MAL-ED           SOUTH AFRICA                   1            114     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            239     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              8     247
6 months    PROBIT           BELARUS                        0          15114   15757
6 months    PROBIT           BELARUS                        1            643   15757
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1834    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2012
6 months    ZVITAMBO         ZIMBABWE                       0           7971    8474
6 months    ZVITAMBO         ZIMBABWE                       1            503    8474
24 months   COHORTS          GUATEMALA                      0            932    1021
24 months   COHORTS          GUATEMALA                      1             89    1021
24 months   COHORTS          INDIA                          0           3717    3726
24 months   COHORTS          INDIA                          1              9    3726
24 months   COHORTS          PHILIPPINES                    0           2361    2420
24 months   COHORTS          PHILIPPINES                    1             59    2420
24 months   JiVitA-4         BANGLADESH                     0           4721    4727
24 months   JiVitA-4         BANGLADESH                     1              6    4727
24 months   MAL-ED           BANGLADESH                     0            212     212
24 months   MAL-ED           BANGLADESH                     1              0     212
24 months   MAL-ED           BRAZIL                         0            148     169
24 months   MAL-ED           BRAZIL                         1             21     169
24 months   MAL-ED           INDIA                          0            225     225
24 months   MAL-ED           INDIA                          1              0     225
24 months   MAL-ED           NEPAL                          0            228     228
24 months   MAL-ED           NEPAL                          1              0     228
24 months   MAL-ED           PERU                           0            176     201
24 months   MAL-ED           PERU                           1             25     201
24 months   MAL-ED           SOUTH AFRICA                   0            131     238
24 months   MAL-ED           SOUTH AFRICA                   1            107     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            208     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6     214
24 months   PROBIT           BELARUS                        0           3828    3970
24 months   PROBIT           BELARUS                        1            142    3970
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6
24 months   ZVITAMBO         ZIMBABWE                       0            388     432
24 months   ZVITAMBO         ZIMBABWE                       1             44     432


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/e9156107-7f3b-45cf-8d3d-fd496de9cf9d/fc6570aa-7e73-4f92-a100-1b9271a27835/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e9156107-7f3b-45cf-8d3d-fd496de9cf9d/fc6570aa-7e73-4f92-a100-1b9271a27835/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e9156107-7f3b-45cf-8d3d-fd496de9cf9d/fc6570aa-7e73-4f92-a100-1b9271a27835/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    NA                -1.0662845   -1.1761521   -0.9564169
Birth       COHORTS          GUATEMALA                      1                    NA                -0.8659969   -1.3573834   -0.3746104
Birth       COHORTS          INDIA                          0                    NA                -0.9764901   -1.0121932   -0.9407871
Birth       COHORTS          INDIA                          1                    NA                -0.9871429   -1.0249916   -0.9492941
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.7365129   -0.7914377   -0.6815880
Birth       COHORTS          PHILIPPINES                    1                    NA                -0.2353224   -0.3053180   -0.1653268
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.6889322   -0.7427226   -0.6351417
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.6340000   -0.6780019   -0.5899981
Birth       MAL-ED           BRAZIL                         0                    NA                 0.3496296    0.0129664    0.6862928
Birth       MAL-ED           BRAZIL                         1                    NA                 0.7625000   -0.0474852    1.5724852
Birth       MAL-ED           PERU                           0                    NA                -0.0159820   -0.1681724    0.1362084
Birth       MAL-ED           PERU                           1                    NA                 0.2221393   -0.0804477    0.5247262
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0072066   -0.3338358    0.3482490
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.4918774   -0.7702943   -0.2134604
Birth       PROBIT           BELARUS                        0                    NA                -1.1387187   -1.3525425   -0.9248949
Birth       PROBIT           BELARUS                        1                    NA                -1.0862736   -1.2290225   -0.9435246
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.5101910   -0.5370098   -0.4833722
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.6083529   -0.7291940   -0.4875119
6 months    COHORTS          GUATEMALA                      0                    NA                 0.1652968    0.0889353    0.2416583
6 months    COHORTS          GUATEMALA                      1                    NA                 0.3336304   -0.2134253    0.8806861
6 months    COHORTS          INDIA                          0                    NA                -0.7098951   -0.7430287   -0.6767615
6 months    COHORTS          INDIA                          1                    NA                -1.0322222   -1.0700926   -0.9943519
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.2931770   -0.3440353   -0.2423187
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.4761004   -0.5151682   -0.4370327
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0339273   -0.1551791    0.0873246
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.3841860   -0.7592113   -0.0091608
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.3903686   -0.4286532   -0.3520840
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.4493750   -0.4619543   -0.4367957
6 months    MAL-ED           BRAZIL                         0                    NA                 1.0053293    0.8301370    1.1805216
6 months    MAL-ED           BRAZIL                         1                    NA                 0.9140096    0.4674846    1.3605345
6 months    MAL-ED           PERU                           0                    NA                 1.0591338    0.9321658    1.1861019
6 months    MAL-ED           PERU                           1                    NA                 1.0166457    0.5638478    1.4694437
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.6016104    0.3137254    0.8894954
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                 0.5838722    0.3691306    0.7986138
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5343375    0.4035792    0.6650959
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5925000   -0.4882365    1.6732365
6 months    PROBIT           BELARUS                        0                    NA                 0.5707657    0.5124209    0.6291105
6 months    PROBIT           BELARUS                        1                    NA                 0.4872878    0.4219800    0.5525957
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0846426    0.0237737    0.1455115
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0002918   -0.1956371    0.1962208
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.3167267    0.2901984    0.3432549
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.1678599    0.0578868    0.2778329
24 months   COHORTS          GUATEMALA                      0                    NA                -0.2527609   -0.3113585   -0.1941633
24 months   COHORTS          GUATEMALA                      1                    NA                -0.7142472   -1.0483343   -0.3801600
24 months   COHORTS          INDIA                          0                    NA                -0.6594835   -0.6934635   -0.6255034
24 months   COHORTS          INDIA                          1                    NA                -0.6300000   -0.6887577   -0.5712423
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.6105556   -0.6556563   -0.5654549
24 months   COHORTS          PHILIPPINES                    1                    NA                -0.0787888   -0.1145977   -0.0429799
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.2245351   -1.2573027   -1.1917674
24 months   JiVitA-4         BANGLADESH                     1                    NA                -0.7950000   -0.8090439   -0.7809561
24 months   MAL-ED           BRAZIL                         0                    NA                 0.4662693    0.2525315    0.6800071
24 months   MAL-ED           BRAZIL                         1                    NA                 0.6169013   -0.1144112    1.3482137
24 months   MAL-ED           PERU                           0                    NA                 0.0928501   -0.0487661    0.2344663
24 months   MAL-ED           PERU                           1                    NA                 0.9494342    0.6189239    1.2799445
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.4590701    0.2236933    0.6944469
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.4864163    0.3051030    0.6677296
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0763782   -0.0483716    0.2011280
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6933333   -1.6135001    0.2268334
24 months   PROBIT           BELARUS                        0                    NA                 0.7040966    0.5835961    0.8245971
24 months   PROBIT           BELARUS                        1                    NA                 0.3698976    0.1571598    0.5826353
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.2016508   -1.3092618   -1.0940399
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.9992027   -1.2076511   -0.7907543


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0552243   -1.1617873   -0.9486614
Birth       COHORTS          INDIA                          NA                   NA                -0.9765068   -1.0113301   -0.9416835
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7377902   -0.7844819   -0.6910986
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6888174   -0.7412201   -0.6364147
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       MAL-ED           PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       PROBIT           BELARUS                        NA                   NA                -1.1491782   -1.3593933   -0.9389630
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5148609   -0.5407634   -0.4889583
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1920134    0.1173734    0.2666534
6 months    COHORTS          INDIA                          NA                   NA                -0.7104795   -0.7428008   -0.6781581
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2936948   -0.3352840   -0.2521057
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0568833   -0.1722874    0.0585208
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3904664   -0.4277855   -0.3531473
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED           PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    PROBIT           BELARUS                        NA                   NA                 0.5741099    0.5141290    0.6340908
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0797577    0.0268998    0.1326156
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3108992    0.2851818    0.3366167
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2796964   -0.3351582   -0.2242346
24 months   COHORTS          INDIA                          NA                   NA                -0.6594122   -0.6925753   -0.6262491
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6100579   -0.6471813   -0.5729344
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2239898   -1.2559235   -1.1920562
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   PROBIT           BELARUS                        NA                   NA                 0.6981406    0.5843775    0.8119038
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1797222   -1.2787189   -1.0807256


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                  0.2002876   -0.3031789    0.7037542
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                 -0.0106527   -0.0626838    0.0413784
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                  0.5011904    0.4125264    0.5898545
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.0549322   -0.0162654    0.1261297
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                  0.4128704   -0.4642944    1.2900352
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                  0.2381213   -0.0995235    0.5757660
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                 -0.4990840   -0.9432121   -0.0549558
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                  0.0524451   -0.1387009    0.2435911
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -0.0981619   -0.2218882    0.0255644
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                  0.1683336   -0.3851589    0.7218260
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.3223272   -0.3726461   -0.2720082
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                 -0.1829234   -0.2470673   -0.1187795
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.3502588   -0.7443855    0.0438679
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.0590064   -0.0997170   -0.0182959
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.0913198   -0.5739952    0.3913557
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -0.0424881   -0.5122460    0.4272698
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.0177382   -0.3763419    0.3408654
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0581625   -1.0304555    1.1467805
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0834779   -0.1581620   -0.0087937
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0843508   -0.2896630    0.1209615
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.1488668   -0.2618087   -0.0359249
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.4614863   -0.8007171   -0.1222555
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                  0.0294835   -0.0383923    0.0973592
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                  0.5317668    0.4744736    0.5890601
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                  0.4295351    0.3935671    0.4655030
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                  0.1506320   -0.6138686    0.9151326
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                  0.8565841    0.4999258    1.2132424
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0273462   -0.2713515    0.3260439
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.7697115   -1.6982961    0.1588731
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.3341991   -0.5762952   -0.0921029
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.2024482   -0.0321466    0.4370430


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    NA                 0.0110602   -0.0133008    0.0354212
Birth       COHORTS          INDIA                          0                    NA                -0.0000167   -0.0013175    0.0012841
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.0012773   -0.0268218    0.0242671
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0001148   -0.0016450    0.0018746
Birth       MAL-ED           BRAZIL                         0                    NA                 0.0532736   -0.0651185    0.1716657
Birth       MAL-ED           PERU                           0                    NA                -0.0360355   -0.1172363    0.0451653
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.1997899   -0.4376231    0.0380433
Birth       PROBIT           BELARUS                        0                    NA                -0.0104595   -0.0225569    0.0016379
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.0046698   -0.0117838    0.0024441
6 months    COHORTS          GUATEMALA                      0                    NA                 0.0267166    0.0017286    0.0517046
6 months    COHORTS          INDIA                          0                    NA                -0.0005844   -0.0018989    0.0007302
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0005178   -0.0276170    0.0265814
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0229560   -0.0642482    0.0183362
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0000979   -0.0011182    0.0009225
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0332520   -0.1061294    0.0396255
6 months    MAL-ED           PERU                           0                    NA                -0.0062523   -0.0570333    0.0445287
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0594319   -0.2879260    0.1690622
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018838   -0.0333985    0.0371662
6 months    PROBIT           BELARUS                        0                    NA                 0.0033442   -0.0069215    0.0136100
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0048849   -0.0340324    0.0242626
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0058274   -0.0124546    0.0007998
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0269355   -0.0515407   -0.0023303
24 months   COHORTS          INDIA                          0                    NA                 0.0000712   -0.0016263    0.0017687
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0004978   -0.0238221    0.0248176
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0005452   -0.0004095    0.0014999
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0036460   -0.0967423    0.0894503
24 months   MAL-ED           PERU                           0                    NA                 0.0183481   -0.0504947    0.0871909
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0500400   -0.2437543    0.1436743
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0215807   -0.0527095    0.0095481
24 months   PROBIT           BELARUS                        0                    NA                -0.0059560   -0.0226170    0.0107050
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0219286   -0.0022933    0.0461505
