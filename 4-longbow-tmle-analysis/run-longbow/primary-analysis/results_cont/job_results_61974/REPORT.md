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

agecat      studyid          country                        single    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      0            654     691  whz              
Birth       COHORTS          GUATEMALA                      1             37     691  whz              
Birth       COHORTS          INDIA                          0           4456    4463  whz              
Birth       COHORTS          INDIA                          1              7    4463  whz              
Birth       COHORTS          PHILIPPINES                    0           2789    2860  whz              
Birth       COHORTS          PHILIPPINES                    1             71    2860  whz              
Birth       JiVitA-4         BANGLADESH                     0           2388    2393  whz              
Birth       JiVitA-4         BANGLADESH                     1              5    2393  whz              
Birth       MAL-ED           BANGLADESH                     0            215     215  whz              
Birth       MAL-ED           BANGLADESH                     1              0     215  whz              
Birth       MAL-ED           BRAZIL                         0             54      62  whz              
Birth       MAL-ED           BRAZIL                         1              8      62  whz              
Birth       MAL-ED           INDIA                          0             45      45  whz              
Birth       MAL-ED           INDIA                          1              0      45  whz              
Birth       MAL-ED           NEPAL                          0             26      26  whz              
Birth       MAL-ED           NEPAL                          1              0      26  whz              
Birth       MAL-ED           PERU                           0            205     228  whz              
Birth       MAL-ED           PERU                           1             23     228  whz              
Birth       MAL-ED           SOUTH AFRICA                   0             63     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   1             57     120  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            112     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     115  whz              
Birth       PROBIT           BELARUS                        0          13277   13817  whz              
Birth       PROBIT           BELARUS                        1            540   13817  whz              
Birth       ZVITAMBO         ZIMBABWE                       0          12065   12864  whz              
Birth       ZVITAMBO         ZIMBABWE                       1            799   12864  whz              
6 months    COHORTS          GUATEMALA                      0            827     894  whz              
6 months    COHORTS          GUATEMALA                      1             67     894  whz              
6 months    COHORTS          INDIA                          0           4955    4964  whz              
6 months    COHORTS          INDIA                          1              9    4964  whz              
6 months    COHORTS          PHILIPPINES                    0           2606    2674  whz              
6 months    COHORTS          PHILIPPINES                    1             68    2674  whz              
6 months    Guatemala BSC    GUATEMALA                      0            248     277  whz              
6 months    Guatemala BSC    GUATEMALA                      1             29     277  whz              
6 months    JiVitA-4         BANGLADESH                     0           4816    4824  whz              
6 months    JiVitA-4         BANGLADESH                     1              8    4824  whz              
6 months    MAL-ED           BANGLADESH                     0            241     241  whz              
6 months    MAL-ED           BANGLADESH                     1              0     241  whz              
6 months    MAL-ED           BRAZIL                         0            179     209  whz              
6 months    MAL-ED           BRAZIL                         1             30     209  whz              
6 months    MAL-ED           INDIA                          0            234     234  whz              
6 months    MAL-ED           INDIA                          1              0     234  whz              
6 months    MAL-ED           NEPAL                          0            236     236  whz              
6 months    MAL-ED           NEPAL                          1              0     236  whz              
6 months    MAL-ED           PERU                           0            240     273  whz              
6 months    MAL-ED           PERU                           1             33     273  whz              
6 months    MAL-ED           SOUTH AFRICA                   0            140     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   1            114     254  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            239     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              8     247  whz              
6 months    PROBIT           BELARUS                        0          15114   15757  whz              
6 months    PROBIT           BELARUS                        1            643   15757  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1834    2012  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2012  whz              
6 months    ZVITAMBO         ZIMBABWE                       0           7971    8474  whz              
6 months    ZVITAMBO         ZIMBABWE                       1            503    8474  whz              
24 months   COHORTS          GUATEMALA                      0            932    1021  whz              
24 months   COHORTS          GUATEMALA                      1             89    1021  whz              
24 months   COHORTS          INDIA                          0           3717    3726  whz              
24 months   COHORTS          INDIA                          1              9    3726  whz              
24 months   COHORTS          PHILIPPINES                    0           2361    2420  whz              
24 months   COHORTS          PHILIPPINES                    1             59    2420  whz              
24 months   JiVitA-4         BANGLADESH                     0           4721    4727  whz              
24 months   JiVitA-4         BANGLADESH                     1              6    4727  whz              
24 months   MAL-ED           BANGLADESH                     0            212     212  whz              
24 months   MAL-ED           BANGLADESH                     1              0     212  whz              
24 months   MAL-ED           BRAZIL                         0            148     169  whz              
24 months   MAL-ED           BRAZIL                         1             21     169  whz              
24 months   MAL-ED           INDIA                          0            225     225  whz              
24 months   MAL-ED           INDIA                          1              0     225  whz              
24 months   MAL-ED           NEPAL                          0            228     228  whz              
24 months   MAL-ED           NEPAL                          1              0     228  whz              
24 months   MAL-ED           PERU                           0            176     201  whz              
24 months   MAL-ED           PERU                           1             25     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   0            131     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   1            107     238  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            208     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              6     214  whz              
24 months   PROBIT           BELARUS                        0           3828    3970  whz              
24 months   PROBIT           BELARUS                        1            142    3970  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       0            388     432  whz              
24 months   ZVITAMBO         ZIMBABWE                       1             44     432  whz              


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
![](/tmp/41682045-76c7-4030-b828-d58a0d5191ad/22e446bb-d7cc-4ebc-b1b1-bcccbf452b1d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/41682045-76c7-4030-b828-d58a0d5191ad/22e446bb-d7cc-4ebc-b1b1-bcccbf452b1d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/41682045-76c7-4030-b828-d58a0d5191ad/22e446bb-d7cc-4ebc-b1b1-bcccbf452b1d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      0                    NA                -1.0662022   -1.1760260   -0.9563784
Birth       COHORTS          GUATEMALA                      1                    NA                -0.8963663   -1.3351200   -0.4576125
Birth       COHORTS          INDIA                          0                    NA                -0.9764901   -1.0121932   -0.9407871
Birth       COHORTS          INDIA                          1                    NA                -0.9871429   -1.0249916   -0.9492941
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.7373553   -0.7911350   -0.6835757
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.1252204    0.0741593    0.1762815
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.6889322   -0.7427226   -0.6351417
Birth       JiVitA-4         BANGLADESH                     1                    NA                -0.6340000   -0.6780019   -0.5899981
Birth       MAL-ED           BRAZIL                         0                    NA                 0.3496296    0.0129664    0.6862928
Birth       MAL-ED           BRAZIL                         1                    NA                 0.7625000   -0.0474852    1.5724852
Birth       MAL-ED           PERU                           0                    NA                -0.0096688   -0.1584355    0.1390979
Birth       MAL-ED           PERU                           1                    NA                 0.2349877   -0.0819951    0.5519705
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.0032067   -0.3609087    0.3544954
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -0.4695460   -0.7346235   -0.2044684
Birth       PROBIT           BELARUS                        0                    NA                -1.1381611   -1.3520645   -0.9242577
Birth       PROBIT           BELARUS                        1                    NA                -1.0731010   -1.2187383   -0.9274638
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.5098417   -0.5367145   -0.4829688
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -0.5974021   -0.7169062   -0.4778979
6 months    COHORTS          GUATEMALA                      0                    NA                 0.1602074    0.0847877    0.2356272
6 months    COHORTS          GUATEMALA                      1                    NA                 0.3713027   -0.1703793    0.9129848
6 months    COHORTS          INDIA                          0                    NA                -0.7098951   -0.7430287   -0.6767615
6 months    COHORTS          INDIA                          1                    NA                -1.0322222   -1.0700926   -0.9943519
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.2926464   -0.3436587   -0.2416340
6 months    COHORTS          PHILIPPINES                    1                    NA                -0.5677993   -0.6152377   -0.5203608
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0336205   -0.1549619    0.0877209
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.3434362   -0.7316053    0.0447329
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.3903686   -0.4286532   -0.3520840
6 months    JiVitA-4         BANGLADESH                     1                    NA                -0.4493750   -0.4619543   -0.4367957
6 months    MAL-ED           BRAZIL                         0                    NA                 0.9958091    0.8200045    1.1716137
6 months    MAL-ED           BRAZIL                         1                    NA                 0.5878414    0.1075882    1.0680945
6 months    MAL-ED           PERU                           0                    NA                 1.0643269    0.9370271    1.1916268
6 months    MAL-ED           PERU                           1                    NA                 0.9074059    0.4867155    1.3280962
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.5716163    0.2881711    0.8550616
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                 0.5757815    0.3487081    0.8028550
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5343375    0.4035792    0.6650959
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5925000   -0.4882365    1.6732365
6 months    PROBIT           BELARUS                        0                    NA                 0.5697194    0.5104328    0.6290059
6 months    PROBIT           BELARUS                        1                    NA                 0.4833739    0.4147376    0.5520101
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0836597    0.0223301    0.1449893
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0620024   -0.1010908    0.2250957
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.3157298    0.2890399    0.3424196
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                 0.1756135    0.0650019    0.2862251
24 months   COHORTS          GUATEMALA                      0                    NA                -0.2553851   -0.3140260   -0.1967442
24 months   COHORTS          GUATEMALA                      1                    NA                -0.5323129   -0.8450164   -0.2196094
24 months   COHORTS          INDIA                          0                    NA                -0.6594835   -0.6934635   -0.6255034
24 months   COHORTS          INDIA                          1                    NA                -0.6300000   -0.6887577   -0.5712423
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.6098990   -0.6520294   -0.5677687
24 months   COHORTS          PHILIPPINES                    1                    NA                 0.0576800    0.0226786    0.0926815
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.2245351   -1.2573027   -1.1917674
24 months   JiVitA-4         BANGLADESH                     1                    NA                -0.7950000   -0.8090439   -0.7809561
24 months   MAL-ED           BRAZIL                         0                    NA                 0.4636597    0.2502136    0.6771058
24 months   MAL-ED           BRAZIL                         1                    NA                 0.6021330   -0.1437065    1.3479725
24 months   MAL-ED           PERU                           0                    NA                 0.0984897   -0.0440862    0.2410657
24 months   MAL-ED           PERU                           1                    NA                 0.9767238    0.6338132    1.3196344
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.4452410    0.2063741    0.6841079
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.5671321    0.3881247    0.7461394
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0763782   -0.0483716    0.2011280
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6933333   -1.6135001    0.2268334
24 months   PROBIT           BELARUS                        0                    NA                 0.7055327    0.5858254    0.8252401
24 months   PROBIT           BELARUS                        1                    NA                 0.4108341    0.2044149    0.6172532
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.2024179   -1.3099609   -1.0948748
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.0660135   -1.2752301   -0.8567969


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
Birth       COHORTS          GUATEMALA                      1                    0                  0.1698359   -0.2819589    0.6216308
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                 -0.0106527   -0.0626838    0.0413784
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                  0.8625758    0.7890447    0.9361068
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.0549322   -0.0162654    0.1261297
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                  0.4128704   -0.4642944    1.2900352
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                  0.2446565   -0.1039312    0.5932443
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                 -0.4663393   -0.9171409   -0.0155377
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                  0.0650600   -0.1262261    0.2563462
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -0.0875604   -0.2099813    0.0348605
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                  0.2110953   -0.3359322    0.7581228
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.3223272   -0.3726461   -0.2720082
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                 -0.2751529   -0.3448875   -0.2054183
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.3098157   -0.7165718    0.0969405
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.0590064   -0.0997170   -0.0182959
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.4079677   -0.9238341    0.1078986
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -0.1569211   -0.5974098    0.2835677
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                  0.0041652   -0.3582028    0.3665333
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0581625   -1.0304555    1.1467805
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -0.0863455   -0.1645726   -0.0081184
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0216573   -0.1959575    0.1526430
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.1401163   -0.2537206   -0.0265119
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.2769278   -0.5951904    0.0413347
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                  0.0294835   -0.0383923    0.0973592
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                  0.6675791    0.6130184    0.7221398
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                  0.4295351    0.3935671    0.4655030
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                  0.1384733   -0.6381502    0.9150968
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                  0.8782341    0.5091865    1.2472816
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.1218910   -0.1780912    0.4218733
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.7697115   -1.6982961    0.1588731
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.2946987   -0.5411100   -0.0482874
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.1364044   -0.0989838    0.3717925


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      0                    NA                 0.0109779   -0.0131552   0.0351110
Birth       COHORTS          INDIA                          0                    NA                -0.0000167   -0.0013175   0.0012841
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.0004349   -0.0244118   0.0235420
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0001148   -0.0016450   0.0018746
Birth       MAL-ED           BRAZIL                         0                    NA                 0.0532736   -0.0651185   0.1716657
Birth       MAL-ED           PERU                           0                    NA                -0.0423487   -0.1172255   0.0325281
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.1893767   -0.4439241   0.0651708
Birth       PROBIT           BELARUS                        0                    NA                -0.0110171   -0.0232943   0.0012601
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.0050192   -0.0122525   0.0022142
6 months    COHORTS          GUATEMALA                      0                    NA                 0.0318060    0.0068623   0.0567498
6 months    COHORTS          INDIA                          0                    NA                -0.0005844   -0.0018989   0.0007302
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0010485   -0.0284444   0.0263475
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0232628   -0.0648190   0.0182935
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0000979   -0.0011182   0.0009225
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0237317   -0.0977562   0.0502927
6 months    MAL-ED           PERU                           0                    NA                -0.0114454   -0.0628287   0.0399380
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0294378   -0.2535035   0.1946279
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018838   -0.0333985   0.0371662
6 months    PROBIT           BELARUS                        0                    NA                 0.0043906   -0.0061563   0.0149375
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0039020   -0.0343504   0.0265464
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0048306   -0.0117744   0.0021132
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0243113   -0.0495037   0.0008811
24 months   COHORTS          INDIA                          0                    NA                 0.0000712   -0.0016263   0.0017687
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0001588   -0.0189812   0.0186635
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0005452   -0.0004095   0.0014999
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0010364   -0.0925172   0.0904444
24 months   MAL-ED           PERU                           0                    NA                 0.0127084   -0.0561790   0.0815958
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0362109   -0.2333648   0.1609430
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0215807   -0.0527095   0.0095481
24 months   PROBIT           BELARUS                        0                    NA                -0.0073921   -0.0216324   0.0068482
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0226956   -0.0017351   0.0471264
